package com.serenegiant.net;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.util.Log;
import com.serenegiant.utils.BuildCheck;
import com.serenegiant.utils.HandlerThreadHandler;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class ConnectivityHelper {
    private static final String ACTION_GLOBAL_CONNECTIVITY_CHANGE = "android.net.conn.CONNECTIVITY_CHANGE";
    private static final boolean DEBUG = false;
    public static final int NETWORK_TYPE_BLUETOOTH = 128;
    public static final int NETWORK_TYPE_ETHERNET = 512;
    public static final int NETWORK_TYPE_MOBILE = 1;
    public static final int NETWORK_TYPE_NON = 0;
    public static final int NETWORK_TYPE_WIFI = 2;
    private static final String TAG = "ConnectivityHelper";
    private final ConnectivityCallback mCallback;
    private ConnectivityManager.NetworkCallback mNetworkCallback;
    private BroadcastReceiver mNetworkChangedReceiver;
    private ConnectivityManager.OnNetworkActiveListener mOnNetworkActiveListener;
    private final WeakReference<Context> mWeakContext;
    private final Object mSync = new Object();
    private int mActiveNetworkType = 0;
    private Handler mAsyncHandler = HandlerThreadHandler.createHandler(TAG);

    public interface ConnectivityCallback {
        void onError(Throwable th);

        void onNetworkChanged(int i);
    }

    @TargetApi(21)
    private class MyNetworkCallback extends ConnectivityManager.NetworkCallback {
        private final String TAG = MyNetworkCallback.class.getSimpleName();

        public MyNetworkCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        @SuppressLint({"MissingPermission"})
        public void onAvailable(Network network) {
            super.onAvailable(network);
            ConnectivityHelper.this.updateActiveNetwork(network);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        @SuppressLint({"MissingPermission"})
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            super.onCapabilitiesChanged(network, networkCapabilities);
            ConnectivityHelper.this.updateActiveNetwork(network);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            super.onLinkPropertiesChanged(network, linkProperties);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLosing(Network network, int i) {
            super.onLosing(network, i);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        @SuppressLint({"MissingPermission"})
        public void onLost(Network network) {
            super.onLost(network);
            ConnectivityHelper.this.updateActiveNetwork(network);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            super.onUnavailable();
            ConnectivityHelper.this.updateActiveNetwork(0);
        }
    }

    @TargetApi(21)
    private class MyOnNetworkActiveListener implements ConnectivityManager.OnNetworkActiveListener {
        private final String TAG = MyOnNetworkActiveListener.class.getSimpleName();

        public MyOnNetworkActiveListener() {
        }

        @Override // android.net.ConnectivityManager.OnNetworkActiveListener
        public void onNetworkActive() {
        }
    }

    @SuppressLint({"MissingPermission"})
    private static class NetworkChangedReceiver extends BroadcastReceiver {
        private static final String TAG = NetworkChangedReceiver.class.getSimpleName();
        private final ConnectivityHelper mParent;

        public NetworkChangedReceiver(ConnectivityHelper connectivityHelper) {
            this.mParent = connectivityHelper;
        }

        private void onReceiveGlobal(Context context, Intent intent) {
            this.mParent.updateActiveNetwork(((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo());
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent != null ? intent.getAction() : null)) {
                onReceiveGlobal(context, intent);
            }
        }
    }

    public ConnectivityHelper(Context context, ConnectivityCallback connectivityCallback) {
        this.mWeakContext = new WeakReference<>(context);
        this.mCallback = connectivityCallback;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(Throwable th) {
        try {
            this.mCallback.onError(th);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(int i) {
        try {
            this.mCallback.onNetworkChanged(i);
        } catch (Exception e2) {
            callOnError(e2);
        }
    }

    private void callOnError(final Throwable th) {
        synchronized (this.mSync) {
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.serenegiant.net.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13647a.b(th);
                    }
                });
            } else {
                Log.w(TAG, "already released?");
            }
        }
    }

    private void callOnNetworkChanged(final int i) {
        synchronized (this.mSync) {
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.serenegiant.net.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13648a.d(i);
                    }
                });
            } else {
                Log.w(TAG, "already released?");
            }
        }
    }

    private Context getContext() {
        Context context = this.mWeakContext.get();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("context is already released");
    }

    public static String getNetworkTypeString(int i) {
        if (i == 0) {
            return "NON";
        }
        if (i == 1) {
            return "MOBILE";
        }
        if (i == 2) {
            return "WIFI";
        }
        if (i != 128) {
            return i != 512 ? String.format(Locale.US, "UNKNOWN(%d)", Integer.valueOf(i)) : "ETHERNET";
        }
        return "BLUETOOTH";
    }

    @SuppressLint({"NewApi"})
    private void init() {
        ConnectivityManager connectivityManagerRequireConnectivityManager = requireConnectivityManager();
        if (!BuildCheck.isLollipop()) {
            this.mNetworkChangedReceiver = new NetworkChangedReceiver(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            requireContext().registerReceiver(this.mNetworkChangedReceiver, intentFilter);
            return;
        }
        MyOnNetworkActiveListener myOnNetworkActiveListener = new MyOnNetworkActiveListener();
        this.mOnNetworkActiveListener = myOnNetworkActiveListener;
        connectivityManagerRequireConnectivityManager.addDefaultNetworkActiveListener(myOnNetworkActiveListener);
        this.mNetworkCallback = new MyNetworkCallback();
        if (BuildCheck.isNougat()) {
            connectivityManagerRequireConnectivityManager.registerDefaultNetworkCallback(this.mNetworkCallback);
        } else if (BuildCheck.isOreo()) {
            connectivityManagerRequireConnectivityManager.registerDefaultNetworkCallback(this.mNetworkCallback, this.mAsyncHandler);
        } else {
            connectivityManagerRequireConnectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), this.mNetworkCallback);
        }
    }

    @TargetApi(21)
    private static boolean isBluetoothNetworkReachable(NetworkCapabilities networkCapabilities, NetworkInfo networkInfo) {
        return networkCapabilities.hasTransport(2) && isNetworkReachable(networkCapabilities, networkInfo);
    }

    @SuppressLint({"NewApi"})
    public static boolean isMobileNetworkReachable(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (!BuildCheck.isLollipop()) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && activeNetworkInfo.getType() == 0;
        }
        if (BuildCheck.isMarshmallow()) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(activeNetwork);
            return (networkCapabilities == null || networkInfo == null || !isMobileNetworkReachable(networkCapabilities, networkInfo)) ? false : true;
        }
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkCapabilities networkCapabilities2 = connectivityManager.getNetworkCapabilities(network);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(network);
            if (networkCapabilities2 != null && networkInfo2 != null && isMobileNetworkReachable(networkCapabilities2, networkInfo2)) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    public static boolean isNetworkReachable(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (!BuildCheck.isLollipop()) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        if (BuildCheck.isMarshmallow()) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(activeNetwork);
            return (networkCapabilities == null || networkInfo == null || !isNetworkReachable(networkCapabilities, networkInfo)) ? false : true;
        }
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkCapabilities networkCapabilities2 = connectivityManager.getNetworkCapabilities(network);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(network);
            if (networkCapabilities2 != null && networkInfo2 != null && isNetworkReachable(networkCapabilities2, networkInfo2)) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    public static boolean isWifiNetworkReachable(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (!BuildCheck.isLollipop()) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                return false;
            }
            int type = activeNetworkInfo.getType();
            return type == 1 || type == 6 || type == 7 || type == 9;
        }
        if (BuildCheck.isMarshmallow()) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(activeNetwork);
            return (networkCapabilities == null || networkInfo == null || !isWifiNetworkReachable(networkCapabilities, networkInfo)) ? false : true;
        }
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkCapabilities networkCapabilities2 = connectivityManager.getNetworkCapabilities(network);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(network);
            if (networkCapabilities2 != null && networkInfo2 != null && isWifiNetworkReachable(networkCapabilities2, networkInfo2)) {
                return true;
            }
        }
        return false;
    }

    private ConnectivityManager requireConnectivityManager() throws IllegalStateException {
        ConnectivityManager connectivityManager = (ConnectivityManager) requireContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            return connectivityManager;
        }
        throw new IllegalStateException("failed to get ConnectivityManager");
    }

    private Context requireContext() throws IllegalStateException {
        Context context = this.mWeakContext.get();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("context is already released");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    @TargetApi(21)
    public void updateActiveNetwork(Network network) {
        int i;
        ConnectivityManager connectivityManagerRequireConnectivityManager = requireConnectivityManager();
        NetworkCapabilities networkCapabilities = connectivityManagerRequireConnectivityManager.getNetworkCapabilities(network);
        NetworkInfo networkInfo = connectivityManagerRequireConnectivityManager.getNetworkInfo(network);
        if (networkCapabilities == null || networkInfo == null) {
            i = 0;
        } else if (isWifiNetworkReachable(networkCapabilities, networkInfo)) {
            i = 2;
        } else if (isMobileNetworkReachable(networkCapabilities, networkInfo)) {
            i = 1;
        } else if (isBluetoothNetworkReachable(networkCapabilities, networkInfo)) {
            i = 128;
        } else if (isNetworkReachable(networkCapabilities, networkInfo)) {
            i = 512;
        } else {
            i = 0;
        }
        updateActiveNetwork(i);
    }

    protected void finalize() throws Throwable {
        try {
            release();
        } finally {
            super.finalize();
        }
    }

    public int getActiveNetworkType() {
        int i;
        synchronized (this.mSync) {
            i = this.mActiveNetworkType;
        }
        return i;
    }

    public boolean isValid() {
        try {
            requireConnectivityManager();
            return true;
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    public void release() {
        updateActiveNetwork(0);
        Context context = getContext();
        if (context != null) {
            if (BuildCheck.isLollipop()) {
                ConnectivityManager connectivityManagerRequireConnectivityManager = requireConnectivityManager();
                ConnectivityManager.OnNetworkActiveListener onNetworkActiveListener = this.mOnNetworkActiveListener;
                if (onNetworkActiveListener != null) {
                    try {
                        connectivityManagerRequireConnectivityManager.removeDefaultNetworkActiveListener(onNetworkActiveListener);
                    } catch (Exception e2) {
                        Log.w(TAG, e2);
                    }
                    this.mOnNetworkActiveListener = null;
                }
                ConnectivityManager.NetworkCallback networkCallback = this.mNetworkCallback;
                if (networkCallback != null) {
                    connectivityManagerRequireConnectivityManager.unregisterNetworkCallback(networkCallback);
                    this.mNetworkCallback = null;
                }
            }
            BroadcastReceiver broadcastReceiver = this.mNetworkChangedReceiver;
            if (broadcastReceiver != null) {
                try {
                    context.unregisterReceiver(broadcastReceiver);
                } catch (Exception e3) {
                    Log.w(TAG, e3);
                }
                this.mNetworkChangedReceiver = null;
            }
        }
        synchronized (this.mSync) {
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                try {
                    handler.removeCallbacksAndMessages(null);
                    this.mAsyncHandler.getLooper().quit();
                } catch (Exception e4) {
                    Log.w(TAG, e4);
                }
                this.mAsyncHandler = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActiveNetwork(NetworkInfo networkInfo) {
        int type = (networkInfo == null || !networkInfo.isConnectedOrConnecting()) ? -1 : networkInfo.getType();
        int i = 0;
        if (type == 0) {
            i = 1;
        } else if (type == 1) {
            i = 2;
        } else if (type == 9) {
            i = 512;
        }
        updateActiveNetwork(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActiveNetwork(int i) {
        synchronized (this.mSync) {
            if (this.mActiveNetworkType != i) {
                this.mActiveNetworkType = i;
                callOnNetworkChanged(i);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0038  */
    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    @SuppressLint({"NewApi"})
    @TargetApi(21)
    private static boolean isNetworkReachable(NetworkCapabilities networkCapabilities, NetworkInfo networkInfo) {
        boolean zHasCapability;
        NetworkInfo.DetailedState detailedState = networkInfo.getDetailedState();
        boolean z = detailedState == NetworkInfo.DetailedState.CONNECTED || detailedState == NetworkInfo.DetailedState.CONNECTING;
        if (BuildCheck.isPie()) {
            if (networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16) && (networkCapabilities.hasCapability(21) || networkCapabilities.hasCapability(19))) {
                zHasCapability = true;
            } else {
                zHasCapability = false;
            }
        } else if (BuildCheck.isMarshmallow()) {
            if (networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16)) {
                zHasCapability = true;
            } else {
                zHasCapability = false;
            }
        } else {
            zHasCapability = networkCapabilities.hasCapability(12);
        }
        return z && zHasCapability;
    }

    @SuppressLint({"NewApi"})
    @TargetApi(21)
    private static boolean isMobileNetworkReachable(NetworkCapabilities networkCapabilities, NetworkInfo networkInfo) {
        boolean zHasTransport;
        if (BuildCheck.isOreoMR1()) {
            zHasTransport = networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(6);
        } else {
            zHasTransport = networkCapabilities.hasTransport(0);
        }
        return zHasTransport && isNetworkReachable(networkCapabilities, networkInfo);
    }

    @SuppressLint({"NewApi"})
    @TargetApi(21)
    private static boolean isWifiNetworkReachable(NetworkCapabilities networkCapabilities, NetworkInfo networkInfo) {
        return (!BuildCheck.isOreo() ? networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(3) : networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(3)) && isNetworkReachable(networkCapabilities, networkInfo);
    }
}
