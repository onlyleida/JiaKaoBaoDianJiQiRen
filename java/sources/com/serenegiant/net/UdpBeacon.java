package com.serenegiant.net;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.common.primitives.UnsignedBytes;
import com.serenegiant.utils.HandlerThreadHandler;
import java.io.IOException;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
public class UdpBeacon {
    public static final int BEACON_SIZE = 23;
    private static final int BEACON_UDP_PORT = 9999;
    private static final byte BEACON_VERSION = 1;
    private static final Charset CHARSET = Charset.forName("UTF-8");
    private static final long DEFAULT_BEACON_SEND_INTERVALS_MS = 3000;
    private static final int SO_TIMEOUT_MS = 2000;
    private static final String TAG = "UdpBeacon";
    private final byte[] beaconBytes;
    private Handler mAsyncHandler;
    private final long mBeaconIntervalsMs;
    private final Runnable mBeaconTask;
    private Thread mBeaconThread;
    private final CopyOnWriteArraySet<UdpBeaconCallback> mCallbacks;
    private volatile boolean mIsRunning;
    private final long mRcvMinIntervalsMs;
    private boolean mReceiveOnly;
    private volatile boolean mReleased;
    private final Object mSync;
    private final UUID uuid;

    private static class Beacon {
        public static final String BEACON_IDENTITY = "SAKI";
        private final int extraBytes;
        private final ByteBuffer extras;
        private final int listenPort;
        private final UUID uuid;

        public Beacon(ByteBuffer byteBuffer) {
            this.uuid = new UUID(byteBuffer.getLong(), byteBuffer.getLong());
            int i = byteBuffer.getShort();
            this.listenPort = i < 0 ? i & ExifInterface.COLOR_SPACE_UNCALIBRATED : i;
            if (byteBuffer.remaining() <= 1) {
                this.extraBytes = 0;
                this.extras = null;
                return;
            }
            int i2 = byteBuffer.get() & UnsignedBytes.MAX_VALUE;
            this.extraBytes = i2;
            if (i2 <= 0) {
                this.extras = null;
                return;
            }
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2);
            this.extras = byteBufferAllocateDirect;
            byteBufferAllocateDirect.put(byteBuffer);
            byteBufferAllocateDirect.flip();
        }

        public byte[] asBytes() {
            int i = this.extraBytes;
            byte[] bArr = new byte[(i > 0 ? i + 1 : 0) + 23];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.put(BEACON_IDENTITY.getBytes());
            byteBufferWrap.put((byte) 1);
            byteBufferWrap.putLong(this.uuid.getMostSignificantBits());
            byteBufferWrap.putLong(this.uuid.getLeastSignificantBits());
            byteBufferWrap.putShort((short) this.listenPort);
            int i2 = this.extraBytes;
            if (i2 > 0) {
                byteBufferWrap.put((byte) i2);
                this.extras.clear();
                this.extras.flip();
                byteBufferWrap.put(this.extras);
            }
            byteBufferWrap.flip();
            return bArr;
        }

        public ByteBuffer extra() {
            return this.extras;
        }

        public String toString() {
            return String.format(Locale.US, "Beacon(%s,port=%d,extra=%d)", this.uuid.toString(), Integer.valueOf(this.listenPort), Integer.valueOf(this.extraBytes));
        }

        public void extra(byte[] bArr) {
            extra(ByteBuffer.wrap(bArr));
        }

        public void extra(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer != null ? byteBuffer.remaining() : -1;
            int i = this.extraBytes;
            if (i <= 0 || i > iRemaining) {
                return;
            }
            this.extras.clear();
            this.extras.put(byteBuffer);
            this.extras.flip();
        }

        public Beacon(UUID uuid, int i) {
            this(uuid, i, 0);
        }

        public Beacon(UUID uuid, int i, int i2) {
            this.uuid = uuid;
            this.listenPort = i;
            int i3 = i2 & 255;
            this.extraBytes = i3;
            if (i3 > 0) {
                this.extras = ByteBuffer.allocateDirect(i3);
            } else {
                this.extras = null;
            }
        }
    }

    private final class BeaconShotTask implements Runnable {
        private final int shotNums;

        public BeaconShotTask(int i) {
            this.shotNums = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                UdpSocket udpSocket = new UdpSocket(UdpBeacon.BEACON_UDP_PORT);
                udpSocket.setReuseAddress(true);
                udpSocket.setSoTimeout(2000);
                for (int i = 0; i < this.shotNums && !UdpBeacon.this.mReleased; i++) {
                    try {
                        UdpBeacon.this.sendBeacon(udpSocket);
                        UdpBeacon udpBeacon = UdpBeacon.this;
                        if (udpBeacon.waitWithoutException(this, udpBeacon.mBeaconIntervalsMs)) {
                            break;
                        }
                    } finally {
                        udpSocket.release();
                    }
                }
            } catch (SocketException e2) {
                UdpBeacon.this.callOnError(e2);
            }
        }
    }

    private class ReceiverTask implements Runnable {
        private final UdpSocket mUdpSocket;

        @Override // java.lang.Runnable
        public void run() {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(256);
            UdpSocket udpSocket = this.mUdpSocket;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            while (UdpBeacon.this.mIsRunning && !UdpBeacon.this.mReleased) {
                if (UdpBeacon.this.mRcvMinIntervalsMs > 0) {
                    long jElapsedRealtime2 = jElapsedRealtime - SystemClock.elapsedRealtime();
                    if (jElapsedRealtime2 > 0 && UdpBeacon.this.waitWithoutException(this, jElapsedRealtime2)) {
                        return;
                    } else {
                        jElapsedRealtime = SystemClock.elapsedRealtime() + UdpBeacon.this.mRcvMinIntervalsMs;
                    }
                }
                try {
                    try {
                        byteBufferAllocateDirect.clear();
                        int iReceive = udpSocket.receive(byteBufferAllocateDirect);
                        if (!UdpBeacon.this.mIsRunning) {
                            return;
                        }
                        byteBufferAllocateDirect.rewind();
                        if (iReceive == 23 && byteBufferAllocateDirect.get() == 83 && byteBufferAllocateDirect.get() == 65 && byteBufferAllocateDirect.get() == 75 && byteBufferAllocateDirect.get() == 73 && byteBufferAllocateDirect.get() == 1) {
                            final Beacon beacon = new Beacon(byteBufferAllocateDirect);
                            if (UdpBeacon.this.uuid.equals(beacon.uuid)) {
                                continue;
                            } else {
                                final String strRemote = udpSocket.remote();
                                final int iRemotePort = udpSocket.remotePort();
                                synchronized (UdpBeacon.this.mSync) {
                                    try {
                                        if (UdpBeacon.this.mAsyncHandler == null) {
                                            return;
                                        } else {
                                            UdpBeacon.this.mAsyncHandler.post(new Runnable() { // from class: com.serenegiant.net.UdpBeacon.ReceiverTask.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    for (UdpBeaconCallback udpBeaconCallback : UdpBeacon.this.mCallbacks) {
                                                        try {
                                                            udpBeaconCallback.onReceiveBeacon(beacon.uuid, strRemote, iRemotePort);
                                                        } catch (Exception e2) {
                                                            UdpBeacon.this.mCallbacks.remove(udpBeaconCallback);
                                                            Log.w(UdpBeacon.TAG, e2);
                                                        }
                                                    }
                                                }
                                            });
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }
                    } catch (IllegalStateException | ClosedChannelException unused) {
                        return;
                    }
                } catch (IOException unused2) {
                } catch (Exception e2) {
                    Log.w(UdpBeacon.TAG, e2);
                    return;
                }
            }
        }

        private ReceiverTask(UdpSocket udpSocket) {
            this.mUdpSocket = udpSocket;
        }
    }

    public interface UdpBeaconCallback {
        void onError(Exception exc);

        void onReceiveBeacon(UUID uuid, String str, int i);
    }

    public UdpBeacon(UdpBeaconCallback udpBeaconCallback) {
        this(udpBeaconCallback, BEACON_UDP_PORT, DEFAULT_BEACON_SEND_INTERVALS_MS, false, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void callOnError(final Exception exc) {
        if (this.mReleased) {
            Log.w(TAG, exc);
            return;
        }
        synchronized (this.mSync) {
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.serenegiant.net.UdpBeacon.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (UdpBeaconCallback udpBeaconCallback : UdpBeacon.this.mCallbacks) {
                            try {
                                udpBeaconCallback.onError(exc);
                            } catch (Exception e2) {
                                UdpBeacon.this.mCallbacks.remove(udpBeaconCallback);
                                Log.w(UdpBeacon.TAG, e2);
                            }
                        }
                    }
                });
            }
        }
    }

    private void checkReleased() throws IllegalStateException {
        if (this.mReleased) {
            throw new IllegalStateException("already released");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBeacon(UdpSocket udpSocket) {
        try {
            udpSocket.broadcast(this.beaconBytes);
        } catch (IOException e2) {
            Log.w(TAG, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean waitWithoutException(Object obj, long j) {
        boolean z;
        synchronized (obj) {
            try {
                obj.wait(j);
                z = false;
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        return z;
    }

    public void addCallback(UdpBeaconCallback udpBeaconCallback) {
        if (udpBeaconCallback != null) {
            this.mCallbacks.add(udpBeaconCallback);
        }
    }

    public void finalize() throws Throwable {
        try {
            release();
        } finally {
            super.finalize();
        }
    }

    public boolean isActive() {
        return this.mIsRunning;
    }

    public boolean isReceiveOnly() {
        return this.mReceiveOnly;
    }

    public void release() {
        if (this.mReleased) {
            return;
        }
        this.mReleased = true;
        stop();
        this.mCallbacks.clear();
        synchronized (this.mSync) {
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                try {
                    handler.getLooper().quit();
                } catch (Exception unused) {
                }
                this.mAsyncHandler = null;
            }
        }
    }

    public void removeCallback(UdpBeaconCallback udpBeaconCallback) {
        this.mCallbacks.remove(udpBeaconCallback);
    }

    public void setReceiveOnly(boolean z) throws IllegalStateException {
        checkReleased();
        synchronized (this.mSync) {
            if (this.mIsRunning) {
                throw new IllegalStateException("beacon is already active");
            }
            this.mReceiveOnly = z;
        }
    }

    public void shot() throws IllegalStateException {
        shot(1);
    }

    public void start() {
        checkReleased();
        synchronized (this.mSync) {
            if (this.mBeaconThread == null) {
                this.mIsRunning = true;
                Thread thread = new Thread(this.mBeaconTask, "UdpBeaconTask");
                this.mBeaconThread = thread;
                thread.start();
            }
        }
    }

    public void stop() {
        Thread thread;
        this.mIsRunning = false;
        synchronized (this.mSync) {
            thread = this.mBeaconThread;
            this.mBeaconThread = null;
            this.mSync.notifyAll();
        }
        if (thread == null || !thread.isAlive()) {
            return;
        }
        thread.interrupt();
        try {
            thread.join();
        } catch (Exception e2) {
            Log.d(TAG, e2.getMessage());
        }
    }

    public UdpBeacon(UdpBeaconCallback udpBeaconCallback, long j) {
        this(udpBeaconCallback, BEACON_UDP_PORT, j, false, 0L);
    }

    public void shot(int i) throws IllegalStateException {
        checkReleased();
        synchronized (this.mSync) {
            new Thread(new BeaconShotTask(i), "UdpOneShotBeaconTask").start();
        }
    }

    public UdpBeacon(UdpBeaconCallback udpBeaconCallback, boolean z) {
        this(udpBeaconCallback, BEACON_UDP_PORT, DEFAULT_BEACON_SEND_INTERVALS_MS, false, 0L);
    }

    public UdpBeacon(UdpBeaconCallback udpBeaconCallback, boolean z, long j) {
        this(udpBeaconCallback, BEACON_UDP_PORT, DEFAULT_BEACON_SEND_INTERVALS_MS, false, j);
    }

    public UdpBeacon(UdpBeaconCallback udpBeaconCallback, long j, boolean z) {
        this(udpBeaconCallback, BEACON_UDP_PORT, j, z, 0L);
    }

    public UdpBeacon(UdpBeaconCallback udpBeaconCallback, long j, boolean z, long j2) {
        this(udpBeaconCallback, BEACON_UDP_PORT, j, z, j2);
    }

    public UdpBeacon(UdpBeaconCallback udpBeaconCallback, int i, long j, boolean z, long j2) {
        this.mSync = new Object();
        CopyOnWriteArraySet<UdpBeaconCallback> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        this.mCallbacks = copyOnWriteArraySet;
        this.mBeaconTask = new Runnable() { // from class: com.serenegiant.net.UdpBeacon.2
            /* JADX WARN: Code duplicated, block: B:49:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            public void run() {
                ByteBuffer.allocateDirect(256);
                try {
                    UdpSocket udpSocket = new UdpSocket(UdpBeacon.BEACON_UDP_PORT);
                    udpSocket.setReceiveBufferSize(256);
                    udpSocket.setReuseAddress(true);
                    udpSocket.setSoTimeout(2000);
                    Thread thread = new Thread(new ReceiverTask(udpSocket));
                    thread.start();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    try {
                        while (UdpBeacon.this.mIsRunning && !UdpBeacon.this.mReleased) {
                            try {
                                if (!UdpBeacon.this.mReceiveOnly) {
                                    long jElapsedRealtime2 = jElapsedRealtime - SystemClock.elapsedRealtime();
                                    if (!UdpBeacon.this.mReceiveOnly && jElapsedRealtime2 <= 0) {
                                        jElapsedRealtime = SystemClock.elapsedRealtime() + UdpBeacon.this.mBeaconIntervalsMs;
                                        UdpBeacon.this.sendBeacon(udpSocket);
                                    } else if (UdpBeacon.this.waitWithoutException(this, jElapsedRealtime2)) {
                                        break;
                                    }
                                } else if (UdpBeacon.this.waitWithoutException(this, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS)) {
                                    break;
                                }
                                UdpBeacon.this.mIsRunning = false;
                                synchronized (UdpBeacon.this.mSync) {
                                    UdpBeacon.this.mBeaconThread = null;
                                }
                            } catch (Throwable th) {
                                UdpBeacon.this.mIsRunning = false;
                                udpSocket.release();
                                try {
                                    thread.interrupt();
                                } catch (Exception e2) {
                                    Log.w(UdpBeacon.TAG, e2);
                                }
                                throw th;
                            }
                        }
                        thread.interrupt();
                    } catch (Exception e3) {
                        Log.w(UdpBeacon.TAG, e3);
                    }
                    UdpBeacon.this.mIsRunning = false;
                    udpSocket.release();
                } catch (Exception e4) {
                    UdpBeacon.this.callOnError(e4);
                }
                UdpBeacon.this.mIsRunning = false;
                synchronized (UdpBeacon.this.mSync) {
                    UdpBeacon.this.mBeaconThread = null;
                }
            }
        };
        if (udpBeaconCallback != null) {
            copyOnWriteArraySet.add(udpBeaconCallback);
        }
        this.mAsyncHandler = HandlerThreadHandler.createHandler("UdpBeaconAsync");
        UUID uuidRandomUUID = UUID.randomUUID();
        this.uuid = uuidRandomUUID;
        this.beaconBytes = new Beacon(uuidRandomUUID, i).asBytes();
        this.mBeaconIntervalsMs = j;
        this.mReceiveOnly = z;
        this.mRcvMinIntervalsMs = j2;
    }
}
