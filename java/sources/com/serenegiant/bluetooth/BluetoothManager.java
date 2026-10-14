package com.serenegiant.bluetooth;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.serenegiant.utils.HandlerThreadHandler;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"MissingPermission"})
public class BluetoothManager {
    public static final int STATE_CONNECTED = 3;
    public static final int STATE_CONNECTING = 2;
    public static final int STATE_LISTEN = 1;
    public static final int STATE_NONE = 0;
    public static final int STATE_RELEASED = -1;
    private static final String TAG = "BluetoothManager";
    public static final UUID UUID_SPP = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    private final BluetoothAdapter mAdapter;
    private Handler mAsyncHandler;
    private final BroadcastReceiver mBroadcastReceiver;
    private final Set<BluetoothManagerCallback> mCallbacks;
    private ConnectingThread mConnectingThread;
    private final List<BluetoothDeviceInfo> mDiscoveredDeviceList;
    private ListeningThread mInSecureListeningThread;
    private final UUID mInSecureProfileUUID;
    private final String mName;
    private ReceiverThread mReceiverThread;
    private ListeningThread mSecureListeningThread;
    private final UUID mSecureProfileUUID;
    private volatile int mState;
    private final Object mSync;
    private final WeakReference<Context> mWeakContext;

    public interface BluetoothManagerCallback {
        void onConnect(String str, String str2);

        void onDisconnect();

        void onDiscover(Collection<BluetoothDeviceInfo> collection);

        void onFailed();

        void onReceive(byte[] bArr, int i);
    }

    private static abstract class BluetoothSocketThread extends Thread {
        protected volatile boolean mIsCanceled;
        protected final BluetoothSocket mmSocket;

        public BluetoothSocketThread(String str, BluetoothSocket bluetoothSocket) {
            super(str);
            this.mmSocket = bluetoothSocket;
        }

        public void cancel() {
            this.mIsCanceled = true;
            try {
                this.mmSocket.close();
            } catch (IOException e2) {
                Log.e(BluetoothManager.TAG, "failed to call BluetoothSocket#close", e2);
            }
        }
    }

    private class ConnectingThread extends BluetoothSocketThread {
        private final BluetoothDevice mmDevice;

        public ConnectingThread(BluetoothDevice bluetoothDevice, boolean z) throws IOException {
            super("ConnectingThread:" + BluetoothManager.this.mName, BluetoothManager.this.createBluetoothSocket(bluetoothDevice, z));
            this.mmDevice = bluetoothDevice;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (BluetoothManager.this.mAdapter.isDiscovering()) {
                BluetoothManager.this.mAdapter.cancelDiscovery();
            }
            try {
                this.mmSocket.connect();
                synchronized (BluetoothManager.this.mSync) {
                    BluetoothManager.this.mConnectingThread = null;
                }
                BluetoothManager.this.onConnect(this.mmSocket, this.mmDevice);
            } catch (IOException e2) {
                Log.w(BluetoothManager.TAG, e2);
                try {
                    this.mmSocket.close();
                } catch (IOException e3) {
                    if (!this.mIsCanceled) {
                        Log.w(BluetoothManager.TAG, "failed to close socket", e3);
                    }
                }
                BluetoothManager.this.callOnFailed();
            }
        }
    }

    private class ListeningThread extends Thread {
        private volatile boolean mIsCanceled;
        private final BluetoothServerSocket mmServerSocket;

        public ListeningThread(boolean z) {
            BluetoothServerSocket bluetoothServerSocketListenUsingRfcommWithServiceRecord;
            super("ListeningThread:" + BluetoothManager.this.mName);
            try {
                bluetoothServerSocketListenUsingRfcommWithServiceRecord = z ? BluetoothManager.this.mAdapter.listenUsingRfcommWithServiceRecord(BluetoothManager.this.mName, BluetoothManager.this.mSecureProfileUUID) : BluetoothManager.this.mAdapter.listenUsingInsecureRfcommWithServiceRecord(BluetoothManager.this.mName, BluetoothManager.this.mInSecureProfileUUID);
            } catch (IOException e2) {
                Log.w(BluetoothManager.TAG, e2);
                bluetoothServerSocketListenUsingRfcommWithServiceRecord = null;
            }
            this.mmServerSocket = bluetoothServerSocketListenUsingRfcommWithServiceRecord;
        }

        public void cancel() {
            this.mIsCanceled = true;
            try {
                this.mmServerSocket.close();
            } catch (IOException e2) {
                Log.e(BluetoothManager.TAG, "close() of server failed", e2);
            }
        }

        /* JADX WARN: Code duplicated, block: B:24:0x002c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (BluetoothManager.this.mState != 3) {
                try {
                    BluetoothSocket bluetoothSocketAccept = this.mmServerSocket.accept();
                    if (bluetoothSocketAccept != null) {
                        int i = BluetoothManager.this.mState;
                        if (i == 0) {
                            try {
                                bluetoothSocketAccept.close();
                            } catch (IOException e2) {
                                Log.w(BluetoothManager.TAG, "Could not close unwanted socket", e2);
                            }
                        } else if (i == 1 || i == 2) {
                            BluetoothManager.this.onConnect(bluetoothSocketAccept, bluetoothSocketAccept.getRemoteDevice());
                            return;
                        } else if (i == 3) {
                            bluetoothSocketAccept.close();
                        }
                    }
                } catch (IOException e3) {
                    if (this.mIsCanceled) {
                        return;
                    }
                    Log.d(BluetoothManager.TAG, e3.getMessage());
                    return;
                }
            }
        }
    }

    public BluetoothManager(Context context, String str, UUID uuid, BluetoothManagerCallback bluetoothManagerCallback) {
        this(context, str, uuid, null, bluetoothManagerCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(BluetoothDevice bluetoothDevice) {
        for (BluetoothManagerCallback bluetoothManagerCallback : this.mCallbacks) {
            try {
                bluetoothManagerCallback.onConnect(bluetoothDevice.getName(), bluetoothDevice.getAddress());
            } catch (Exception e2) {
                this.mCallbacks.remove(bluetoothManagerCallback);
                Log.w(TAG, e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d() {
        for (BluetoothManagerCallback bluetoothManagerCallback : this.mCallbacks) {
            try {
                bluetoothManagerCallback.onDisconnect();
            } catch (Exception e2) {
                this.mCallbacks.remove(bluetoothManagerCallback);
                Log.w(TAG, e2);
            }
        }
    }

    private void checkReleased() throws IllegalStateException {
        if (this.mState == -1) {
            throw new IllegalStateException("already released");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BluetoothSocket createBluetoothSocket(BluetoothDevice bluetoothDevice, boolean z) throws IOException {
        return z ? bluetoothDevice.createRfcommSocketToServiceRecord(this.mSecureProfileUUID) : bluetoothDevice.createInsecureRfcommSocketToServiceRecord(this.mInSecureProfileUUID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f(List list) {
        for (BluetoothManagerCallback bluetoothManagerCallback : this.mCallbacks) {
            try {
                bluetoothManagerCallback.onDiscover(list);
            } catch (Exception e2) {
                this.mCallbacks.remove(bluetoothManagerCallback);
                Log.w(TAG, e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h() {
        for (BluetoothManagerCallback bluetoothManagerCallback : this.mCallbacks) {
            try {
                bluetoothManagerCallback.onFailed();
            } catch (Exception e2) {
                this.mCallbacks.remove(bluetoothManagerCallback);
                Log.w(TAG, e2);
            }
        }
    }

    public static Set<BluetoothDevice> getBondedDevices() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            return null;
        }
        return defaultAdapter.getBondedDevices();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(byte[] bArr, int i) {
        for (BluetoothManagerCallback bluetoothManagerCallback : this.mCallbacks) {
            try {
                bluetoothManagerCallback.onReceive(bArr, i);
            } catch (Exception e2) {
                this.mCallbacks.remove(bluetoothManagerCallback);
                Log.w(TAG, e2);
            }
        }
    }

    private void internalCancel(int i, boolean z) {
        if (this.mAdapter.isDiscovering()) {
            this.mAdapter.cancelDiscovery();
        }
        ConnectingThread connectingThread = this.mConnectingThread;
        if (connectingThread != null) {
            connectingThread.cancel();
            this.mConnectingThread = null;
        }
        ReceiverThread receiverThread = this.mReceiverThread;
        if (receiverThread != null) {
            receiverThread.cancel();
            this.mReceiverThread = null;
        }
        if (this.mState == -1 || z) {
            ListeningThread listeningThread = this.mSecureListeningThread;
            if (listeningThread != null) {
                listeningThread.cancel();
                this.mSecureListeningThread = null;
            }
            ListeningThread listeningThread2 = this.mInSecureListeningThread;
            if (listeningThread2 != null) {
                listeningThread2.cancel();
                this.mInSecureListeningThread = null;
            }
        }
        setState(i);
    }

    private void internalStartListen() {
        synchronized (this.mSync) {
            internalCancel(1, false);
            if (isReleased()) {
                return;
            }
            if (this.mSecureListeningThread == null) {
                ListeningThread listeningThread = new ListeningThread(true);
                this.mSecureListeningThread = listeningThread;
                listeningThread.start();
            }
            if (this.mInSecureListeningThread == null) {
                ListeningThread listeningThread2 = new ListeningThread(false);
                this.mInSecureListeningThread = listeningThread2;
                listeningThread2.start();
            }
        }
    }

    public static boolean isAvailable() {
        try {
            return BluetoothAdapter.getDefaultAdapter() != null;
        } catch (Exception e2) {
            Log.w(TAG, e2);
            return false;
        }
    }

    public static boolean isEnabled() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            return defaultAdapter != null && defaultAdapter.isEnabled();
        } catch (Exception e2) {
            Log.w(TAG, e2);
            return false;
        }
    }

    public static boolean requestBluetoothEnable(Activity activity, int i) throws SecurityException {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && !defaultAdapter.isEnabled()) {
            activity.startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), i);
        }
        return defaultAdapter != null && defaultAdapter.isEnabled();
    }

    public static boolean requestDiscoverable(Activity activity, int i) throws IllegalStateException {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            throw new IllegalStateException("bluetoothに対応していないか無効になっている");
        }
        if (defaultAdapter.getScanMode() != 23) {
            Intent intent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
            intent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", i);
            activity.startActivity(intent);
        }
        return defaultAdapter.getScanMode() == 23;
    }

    private void setState(int i) {
        synchronized (this.mSync) {
            if (this.mState != -1) {
                this.mState = i;
            }
        }
    }

    public void addCallback(BluetoothManagerCallback bluetoothManagerCallback) {
        if (bluetoothManagerCallback != null) {
            this.mCallbacks.add(bluetoothManagerCallback);
        }
    }

    protected void callOnConnect(final BluetoothDevice bluetoothDevice) throws IllegalStateException {
        synchronized (this.mSync) {
            if (isReleased()) {
                return;
            }
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.serenegiant.bluetooth.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13646a.b(bluetoothDevice);
                    }
                });
            }
        }
    }

    protected void callOnDisConnect() {
        synchronized (this.mSync) {
            if (isReleased()) {
                return;
            }
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.serenegiant.bluetooth.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13645a.d();
                    }
                });
            }
            if (isReleased()) {
                return;
            }
            internalStartListen();
        }
    }

    protected void callOnDiscover() {
        final ArrayList arrayList;
        synchronized (this.mDiscoveredDeviceList) {
            arrayList = new ArrayList(this.mDiscoveredDeviceList);
        }
        synchronized (this.mSync) {
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.serenegiant.bluetooth.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13642a.f(arrayList);
                    }
                });
            }
        }
    }

    protected void callOnFailed() {
        synchronized (this.mSync) {
            if (isReleased()) {
                return;
            }
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.serenegiant.bluetooth.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13643a.h();
                    }
                });
            }
            if (isReleased()) {
                return;
            }
            internalStartListen();
        }
    }

    protected void callOnReceive(byte[] bArr, final int i) {
        final byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        synchronized (this.mSync) {
            if (isReleased()) {
                return;
            }
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.serenegiant.bluetooth.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13644a.j(bArr2, i);
                    }
                });
            }
        }
    }

    public void connect(BluetoothDeviceInfo bluetoothDeviceInfo) throws IllegalStateException {
        checkReleased();
        connect(this.mAdapter.getRemoteDevice(bluetoothDeviceInfo.address));
    }

    protected Context getContext() {
        return this.mWeakContext.get();
    }

    public Collection<BluetoothDeviceInfo> getPairedDevices() {
        checkReleased();
        ArrayList arrayList = new ArrayList();
        synchronized (this.mSync) {
            if (this.mAdapter.isDiscovering()) {
                this.mAdapter.cancelDiscovery();
            }
            Set<BluetoothDevice> bondedDevices = this.mAdapter.getBondedDevices();
            if (bondedDevices.size() > 0) {
                Iterator<BluetoothDevice> it = bondedDevices.iterator();
                while (it.hasNext()) {
                    arrayList.add(new BluetoothDeviceInfo(it.next()));
                }
            }
        }
        return arrayList;
    }

    public int getState() {
        int i;
        synchronized (this.mSync) {
            i = this.mState;
        }
        return i;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.mSync) {
            z = this.mState == 3;
        }
        return z;
    }

    public boolean isListening() {
        boolean z;
        synchronized (this.mSync) {
            z = true;
            if (this.mState != 1) {
                z = false;
            }
        }
        return z;
    }

    public boolean isReleased() {
        boolean z;
        synchronized (this.mSync) {
            z = this.mState == -1;
        }
        return z;
    }

    protected void onConnect(BluetoothSocket bluetoothSocket, BluetoothDevice bluetoothDevice) {
        synchronized (this.mSync) {
            internalCancel(3, true);
            ReceiverThread receiverThread = new ReceiverThread(bluetoothSocket);
            this.mReceiverThread = receiverThread;
            receiverThread.start();
            callOnConnect(bluetoothDevice);
        }
    }

    public void release() {
        this.mCallbacks.clear();
        synchronized (this.mSync) {
            if (this.mState != -1) {
                this.mState = -1;
                stop();
                Handler handler = this.mAsyncHandler;
                if (handler != null) {
                    try {
                        handler.getLooper().quit();
                    } catch (Exception unused) {
                    }
                    this.mAsyncHandler = null;
                }
                try {
                    getContext().unregisterReceiver(this.mBroadcastReceiver);
                } catch (Exception unused2) {
                }
            }
        }
    }

    public void removeCallback(BluetoothManagerCallback bluetoothManagerCallback) {
        this.mCallbacks.remove(bluetoothManagerCallback);
    }

    public void send(byte[] bArr) throws IllegalStateException {
        synchronized (this.mSync) {
            checkReleased();
            ReceiverThread receiverThread = this.mReceiverThread;
            if (receiverThread != null) {
                receiverThread.write(bArr);
            }
        }
    }

    public void startDiscovery() throws IllegalStateException {
        synchronized (this.mSync) {
            if (this.mAdapter.isDiscovering()) {
                this.mAdapter.cancelDiscovery();
            }
            Set<BluetoothDevice> bondedDevices = this.mAdapter.getBondedDevices();
            synchronized (this.mDiscoveredDeviceList) {
                this.mDiscoveredDeviceList.clear();
                if (bondedDevices.size() > 0) {
                    Iterator<BluetoothDevice> it = bondedDevices.iterator();
                    while (it.hasNext()) {
                        this.mDiscoveredDeviceList.add(new BluetoothDeviceInfo(it.next()));
                    }
                    callOnDiscover();
                }
            }
            this.mAdapter.startDiscovery();
        }
    }

    public void startListen() {
        synchronized (this.mSync) {
            checkReleased();
            internalStartListen();
        }
    }

    public void stop() {
        synchronized (this.mSync) {
            internalCancel(0, true);
        }
    }

    public void stopDiscovery() {
        synchronized (this.mSync) {
            if (this.mAdapter.isDiscovering()) {
                this.mAdapter.cancelDiscovery();
            }
        }
    }

    public BluetoothManager(Context context, String str, UUID uuid, UUID uuid2, BluetoothManagerCallback bluetoothManagerCallback) {
        this.mSync = new Object();
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        this.mCallbacks = copyOnWriteArraySet;
        this.mDiscoveredDeviceList = new ArrayList();
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.serenegiant.bluetooth.BluetoothManager.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent != null ? intent.getAction() : null;
                if (!"android.bluetooth.device.action.FOUND".equals(action)) {
                    if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                        BluetoothManager.this.callOnDiscover();
                    }
                } else {
                    BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    if (bluetoothDevice.getBondState() != 12) {
                        synchronized (BluetoothManager.this.mDiscoveredDeviceList) {
                            BluetoothManager.this.mDiscoveredDeviceList.add(new BluetoothDeviceInfo(bluetoothDevice));
                        }
                        BluetoothManager.this.callOnDiscover();
                    }
                }
            }
        };
        this.mBroadcastReceiver = broadcastReceiver;
        this.mWeakContext = new WeakReference<>(context);
        if (TextUtils.isEmpty(str)) {
            str = Build.MODEL + "_" + Build.ID;
        }
        this.mName = str;
        this.mSecureProfileUUID = uuid;
        this.mInSecureProfileUUID = uuid2 != null ? uuid2 : uuid;
        if (bluetoothManagerCallback != null) {
            copyOnWriteArraySet.add(bluetoothManagerCallback);
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mAdapter = defaultAdapter;
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            throw new IllegalStateException("bluetoothに対応していないか無効になっている");
        }
        this.mState = 0;
        this.mAsyncHandler = HandlerThreadHandler.createHandler(TAG);
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        context.registerReceiver(broadcastReceiver, intentFilter);
    }

    public void connect(String str) throws IllegalStateException, IllegalArgumentException {
        checkReleased();
        connect(this.mAdapter.getRemoteDevice(str));
    }

    private class ReceiverThread extends BluetoothSocketThread {
        private final InputStream mmInStream;
        private final OutputStream mmOutStream;

        public ReceiverThread(BluetoothSocket bluetoothSocket) {
            InputStream inputStream;
            super("ReceiverThread:" + BluetoothManager.this.mName, bluetoothSocket);
            OutputStream outputStream = null;
            try {
                inputStream = bluetoothSocket.getInputStream();
                try {
                    outputStream = bluetoothSocket.getOutputStream();
                } catch (IOException e2) {
                    e = e2;
                    Log.e(BluetoothManager.TAG, "temp sockets not created", e);
                }
            } catch (IOException e3) {
                e = e3;
                inputStream = null;
            }
            this.mmInStream = inputStream;
            this.mmOutStream = outputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            byte[] bArr = new byte[1024];
            while (BluetoothManager.this.mState == 3) {
                try {
                    int i = this.mmInStream.read(bArr);
                    if (i > 0) {
                        BluetoothManager.this.callOnReceive(bArr, i);
                    }
                } catch (IOException e2) {
                    if (!this.mIsCanceled) {
                        Log.d(BluetoothManager.TAG, "disconnected", e2);
                    }
                    BluetoothManager.this.callOnDisConnect();
                    return;
                }
            }
        }

        public void write(byte[] bArr) throws IllegalStateException {
            if (BluetoothManager.this.mState != 3) {
                throw new IllegalStateException("already disconnected");
            }
            try {
                this.mmOutStream.write(bArr);
            } catch (IOException e2) {
                if (!this.mIsCanceled) {
                    throw new IllegalStateException(e2);
                }
            }
        }

        public void write(byte[] bArr, int i, int i2) throws IllegalStateException {
            if (BluetoothManager.this.mState == 3) {
                try {
                    this.mmOutStream.write(bArr, i, i2);
                    return;
                } catch (IOException e2) {
                    if (!this.mIsCanceled) {
                        throw new IllegalStateException(e2);
                    }
                    return;
                }
            }
            throw new IllegalStateException("already disconnected");
        }
    }

    public void connect(BluetoothDevice bluetoothDevice) throws IllegalStateException {
        synchronized (this.mSync) {
            checkReleased();
            internalCancel(2, false);
            try {
                try {
                    this.mConnectingThread = new ConnectingThread(bluetoothDevice, true);
                } catch (IOException unused) {
                    this.mConnectingThread = new ConnectingThread(bluetoothDevice, false);
                }
                this.mConnectingThread.start();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }
    }

    public static boolean requestBluetoothEnable(Fragment fragment, int i) throws SecurityException {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && !defaultAdapter.isEnabled()) {
            fragment.startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), i);
        }
        return defaultAdapter != null && defaultAdapter.isEnabled();
    }

    public void send(byte[] bArr, int i, int i2) throws IllegalStateException {
        synchronized (this.mSync) {
            checkReleased();
            ReceiverThread receiverThread = this.mReceiverThread;
            if (receiverThread != null) {
                receiverThread.write(bArr, i, i2);
            }
        }
    }

    public static boolean requestDiscoverable(Fragment fragment, int i) throws IllegalStateException {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && defaultAdapter.isEnabled()) {
            if (defaultAdapter.getScanMode() != 23) {
                Intent intent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
                if (i > 0 && i <= 300) {
                    intent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", i);
                }
                fragment.startActivity(intent);
            }
            return defaultAdapter.getScanMode() == 23;
        }
        throw new IllegalStateException("bluetoothに対応していないか無効になっている");
    }

    public static boolean requestBluetoothEnable(androidx.fragment.app.Fragment fragment, int i) throws SecurityException {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && !defaultAdapter.isEnabled()) {
            fragment.startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), i);
        }
        return defaultAdapter != null && defaultAdapter.isEnabled();
    }
}
