package com.serenegiant.net;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.serenegiant.io.ChannelHelper;
import com.serenegiant.utils.HandlerThreadHandler;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.ClosedChannelException;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractChannelDataLink {
    private static final boolean DEBUG = false;
    private static final int REQ_RELEASE = -9;
    private static final String TAG = "AbstractChannelDataLink";
    private static final int TYPE_BOOL = 10;
    private static final int TYPE_BOOL_ARRAY = 31;
    private static final int TYPE_BYTE_ARRAY = 30;
    private static final int TYPE_BYTE_BUFFER = 1;
    private static final int TYPE_DOUBLE = 21;
    private static final int TYPE_DOUBLE_ARRAY = 41;
    private static final int TYPE_FLOAT = 20;
    private static final int TYPE_FLOAT_ARRAY = 40;
    private static final int TYPE_INT = 11;
    private static final int TYPE_INT_ARRAY = 32;
    private static final int TYPE_LONG = 12;
    private static final int TYPE_LONG_ARRAY = 33;
    private static final int TYPE_NULL = 0;
    private static final int TYPE_STRING = 2;
    private static final int TYPE_UNKNOWN = -1;
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private final Set<Callback> mCallbacks;
    private final Set<AbstractClient> mClients;

    public static abstract class AbstractClient implements Runnable, Handler.Callback {
        protected ByteChannel mChannel;
        private volatile boolean mIsInit;
        private volatile boolean mIsRunning = true;
        private Handler mSenderHandler = HandlerThreadHandler.createHandler(this);
        private final WeakReference<AbstractChannelDataLink> mWeakParent;

        public AbstractClient(AbstractChannelDataLink abstractChannelDataLink, ByteChannel byteChannel) {
            this.mWeakParent = new WeakReference<>(abstractChannelDataLink);
            this.mChannel = byteChannel;
        }

        private void doReceiveLoop() throws IOException, ClassNotFoundException {
            while (this.mIsRunning) {
                try {
                    int i = ChannelHelper.readInt(this.mChannel);
                    if (i == 0) {
                        callOnReceive(null);
                    } else if (i == 1) {
                        callOnReceive(ChannelHelper.readByteBuffer(this.mChannel));
                    } else if (i == 2) {
                        callOnReceive(ChannelHelper.readString(this.mChannel));
                    } else if (i == 20) {
                        callOnReceive(Float.valueOf(ChannelHelper.readFloat(this.mChannel)));
                    } else if (i == 21) {
                        callOnReceive(Double.valueOf(ChannelHelper.readDouble(this.mChannel)));
                    } else if (i == 40) {
                        callOnReceive(ChannelHelper.readFloatArray(this.mChannel));
                    } else if (i != 41) {
                        switch (i) {
                            case 10:
                                callOnReceive(Boolean.valueOf(ChannelHelper.readBoolean(this.mChannel)));
                                break;
                            case 11:
                                callOnReceive(Integer.valueOf(ChannelHelper.readInt(this.mChannel)));
                                break;
                            case 12:
                                callOnReceive(Long.valueOf(ChannelHelper.readLong(this.mChannel)));
                                break;
                            default:
                                switch (i) {
                                    case 30:
                                        callOnReceive(ChannelHelper.readByteArray(this.mChannel));
                                        break;
                                    case 31:
                                        callOnReceive(ChannelHelper.readBooleanArray(this.mChannel));
                                        break;
                                    case 32:
                                        callOnReceive(ChannelHelper.readIntArray(this.mChannel));
                                        break;
                                    case 33:
                                        callOnReceive(ChannelHelper.readLongArray(this.mChannel));
                                        break;
                                }
                                break;
                        }
                    } else {
                        callOnReceive(ChannelHelper.readDoubleArray(this.mChannel));
                    }
                } catch (SocketException | ClosedChannelException | IOException unused) {
                    return;
                }
            }
        }

        private void internalRelease() {
            ByteChannel byteChannel;
            this.mIsInit = false;
            this.mIsRunning = false;
            synchronized (this) {
                byteChannel = this.mChannel;
                this.mChannel = null;
                notifyAll();
            }
            if (byteChannel != null) {
                try {
                    byteChannel.close();
                } catch (Exception unused) {
                }
            }
            synchronized (this) {
                Handler handler = this.mSenderHandler;
                if (handler != null) {
                    try {
                        handler.getLooper().quit();
                    } catch (Exception unused2) {
                    }
                    this.mSenderHandler = null;
                }
            }
        }

        protected void callOnConnect() {
            AbstractChannelDataLink abstractChannelDataLink = this.mWeakParent.get();
            if (abstractChannelDataLink != null) {
                for (Callback callback : abstractChannelDataLink.mCallbacks) {
                    try {
                        callback.onConnect(this);
                    } catch (Exception unused) {
                        abstractChannelDataLink.mCallbacks.remove(callback);
                    }
                }
            }
        }

        protected void callOnDisconnect() {
            AbstractChannelDataLink abstractChannelDataLink = this.mWeakParent.get();
            if (abstractChannelDataLink != null) {
                for (Callback callback : abstractChannelDataLink.mCallbacks) {
                    try {
                        callback.onDisconnect();
                    } catch (Exception unused) {
                        abstractChannelDataLink.mCallbacks.remove(callback);
                    }
                }
            }
        }

        protected void callOnError(Exception exc) {
            AbstractChannelDataLink abstractChannelDataLink = this.mWeakParent.get();
            if (abstractChannelDataLink != null) {
                for (Callback callback : abstractChannelDataLink.mCallbacks) {
                    try {
                        callback.onError(this, exc);
                    } catch (Exception unused) {
                        abstractChannelDataLink.mCallbacks.remove(callback);
                    }
                }
            }
        }

        protected void callOnReceive(Object obj) {
            AbstractChannelDataLink abstractChannelDataLink = this.mWeakParent.get();
            if (abstractChannelDataLink != null) {
                for (Callback callback : abstractChannelDataLink.mCallbacks) {
                    try {
                        callback.onReceive(this, obj);
                    } catch (Exception unused) {
                        abstractChannelDataLink.mCallbacks.remove(callback);
                    }
                }
            }
        }

        protected void finalize() throws Throwable {
            try {
                release(-1L);
            } finally {
                super.finalize();
            }
        }

        @Override // android.os.Handler.Callback
        public synchronized boolean handleMessage(Message message) {
            ByteChannel byteChannel;
            try {
                if (!this.mIsRunning || (byteChannel = this.mChannel) == null) {
                    return false;
                }
                try {
                    try {
                        int i = message.what;
                        if (i == -9) {
                            internalRelease();
                            return true;
                        }
                        if (i == 0) {
                            ChannelHelper.write(byteChannel, 0);
                            return true;
                        }
                        if (i == 1) {
                            if (message.obj instanceof ByteBuffer) {
                                ChannelHelper.write(byteChannel, 1);
                                ChannelHelper.write(this.mChannel, (ByteBuffer) message.obj);
                            }
                            return true;
                        }
                        if (i != 2) {
                            if (i != 20) {
                                if (i != 21) {
                                    if (i != 40) {
                                        if (i != 41) {
                                            switch (i) {
                                                case 10:
                                                    if (message.obj instanceof Boolean) {
                                                        ChannelHelper.write(byteChannel, 10);
                                                        ChannelHelper.write(this.mChannel, ((Boolean) message.obj).booleanValue());
                                                        return true;
                                                    }
                                                    break;
                                                case 11:
                                                    if (message.obj instanceof Integer) {
                                                        ChannelHelper.write(byteChannel, 11);
                                                        ChannelHelper.write(this.mChannel, ((Integer) message.obj).intValue());
                                                        return true;
                                                    }
                                                    break;
                                                case 12:
                                                    if (message.obj instanceof Long) {
                                                        ChannelHelper.write(byteChannel, 12);
                                                        ChannelHelper.write(this.mChannel, ((Long) message.obj).longValue());
                                                        return true;
                                                    }
                                                    break;
                                                default:
                                                    switch (i) {
                                                        case 30:
                                                            if (message.obj instanceof byte[]) {
                                                                ChannelHelper.write(byteChannel, 30);
                                                                ChannelHelper.write(this.mChannel, (byte[]) message.obj);
                                                                return true;
                                                            }
                                                            break;
                                                        case 31:
                                                            if (message.obj instanceof boolean[]) {
                                                                ChannelHelper.write(byteChannel, 31);
                                                                ChannelHelper.write(this.mChannel, (boolean[]) message.obj);
                                                                return true;
                                                            }
                                                            break;
                                                        case 32:
                                                            if (message.obj instanceof int[]) {
                                                                ChannelHelper.write(byteChannel, 32);
                                                                ChannelHelper.write(this.mChannel, (int[]) message.obj);
                                                                return true;
                                                            }
                                                            break;
                                                        case 33:
                                                            if (message.obj instanceof long[]) {
                                                                ChannelHelper.write(byteChannel, 33);
                                                                ChannelHelper.write(this.mChannel, (long[]) message.obj);
                                                                return true;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                        } else if (message.obj instanceof double[]) {
                                            ChannelHelper.write(byteChannel, 41);
                                            ChannelHelper.write(this.mChannel, (double[]) message.obj);
                                            return true;
                                        }
                                    } else if (message.obj instanceof float[]) {
                                        ChannelHelper.write(byteChannel, 40);
                                        ChannelHelper.write(this.mChannel, (float[]) message.obj);
                                        return true;
                                    }
                                } else if (message.obj instanceof Double) {
                                    ChannelHelper.write(byteChannel, 21);
                                    ChannelHelper.write(this.mChannel, ((Double) message.obj).doubleValue());
                                    return true;
                                }
                            } else if (message.obj instanceof Float) {
                                ChannelHelper.write(byteChannel, 20);
                                ChannelHelper.write(this.mChannel, ((Float) message.obj).floatValue());
                                return true;
                            }
                        } else if (message.obj instanceof String) {
                            ChannelHelper.write(byteChannel, 2);
                            ChannelHelper.write(this.mChannel, (String) message.obj);
                            return true;
                        }
                        return false;
                    } catch (Exception e2) {
                        Log.w(AbstractChannelDataLink.TAG, e2);
                    }
                } catch (SocketException unused) {
                } catch (IOException e3) {
                    callOnError(e3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        protected abstract void init() throws IOException;

        protected void internalStart() {
            synchronized (this) {
                new Thread(this).start();
                while (this.mIsRunning && !this.mIsInit) {
                    try {
                        wait(300L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        public void release() {
            release(500L);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x002e A[PHI: r2
          0x002e: PHI (r2v8 com.serenegiant.net.AbstractChannelDataLink) = (r2v7 com.serenegiant.net.AbstractChannelDataLink), (r2v12 com.serenegiant.net.AbstractChannelDataLink) binds: [B:12:0x002c, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // java.lang.Runnable
        public void run() {
            AbstractChannelDataLink abstractChannelDataLink;
            try {
                init();
                callOnConnect();
                doReceiveLoop();
                callOnDisconnect();
                this.mIsRunning = false;
                abstractChannelDataLink = this.mWeakParent.get();
                if (abstractChannelDataLink != null) {
                    Set set = abstractChannelDataLink.mClients;
                }
            } catch (Exception e2) {
                callOnError(e2);
                this.mIsRunning = false;
                abstractChannelDataLink = this.mWeakParent.get();
                if (abstractChannelDataLink != null) {
                    Set set2 = abstractChannelDataLink.mClients;
                }
            } finally {
                this.mIsRunning = false;
                AbstractChannelDataLink abstractChannelDataLink2 = this.mWeakParent.get();
                if (abstractChannelDataLink2 != null) {
                    abstractChannelDataLink2.mClients.remove(this);
                }
                release(-1L);
            }
        }

        public void send(boolean z) throws IOException {
            send(10, Boolean.valueOf(z));
        }

        public void sent(boolean[] zArr) throws IOException {
            send(31, zArr);
        }

        protected void setInit(boolean z) {
            this.mIsInit = z;
        }

        public synchronized void release(long j) {
            Handler handler = this.mSenderHandler;
            if (handler != null) {
                try {
                    if (j > 0) {
                        handler.sendEmptyMessageDelayed(-9, j);
                    } else {
                        handler.sendEmptyMessage(-9);
                    }
                } catch (Exception unused) {
                }
            }
        }

        public synchronized void send(int i) throws IOException {
            send(11, Integer.valueOf(i));
        }

        public void send(long j) throws IOException {
            send(12, Long.valueOf(j));
        }

        public void send(float f2) throws IOException {
            send(20, Float.valueOf(f2));
        }

        public void send(double d2) throws IOException {
            send(21, Double.valueOf(d2));
        }

        public void send(String str) throws IOException {
            send(2, str);
        }

        public void send(byte[] bArr) throws IOException {
            send(30, bArr);
        }

        public void send(int[] iArr) throws IOException {
            send(32, iArr);
        }

        public void send(long[] jArr) throws IOException {
            send(33, jArr);
        }

        public void send(float[] fArr) throws IOException {
            send(40, fArr);
        }

        public void send(double[] dArr) throws IOException {
            send(41, dArr);
        }

        public void send(ByteBuffer byteBuffer) throws IOException {
            send(1, byteBuffer);
        }

        public void send(Object obj) throws IOException {
            if (obj == null) {
                send(0, null);
                return;
            }
            if (obj instanceof ByteBuffer) {
                send(1, obj);
                return;
            }
            if (obj instanceof String) {
                send(2, obj);
                return;
            }
            if (obj instanceof CharSequence) {
                send(2, obj.toString());
                return;
            }
            if (obj instanceof Boolean) {
                send(10, obj);
                return;
            }
            if (obj instanceof Integer) {
                send(11, obj);
                return;
            }
            if (obj instanceof Long) {
                send(12, obj);
                return;
            }
            if (obj instanceof Float) {
                send(20, obj);
                return;
            }
            if (obj instanceof Double) {
                send(21, obj);
                return;
            }
            if (obj instanceof byte[]) {
                send(30, obj);
                return;
            }
            if (obj instanceof boolean[]) {
                send(31, obj);
                return;
            }
            if (obj instanceof int[]) {
                send(32, obj);
                return;
            }
            if (obj instanceof long[]) {
                send(33, obj);
            } else if (obj instanceof float[]) {
                send(40, obj);
            } else {
                if (obj instanceof double[]) {
                    send(41, obj);
                    return;
                }
                throw new IOException("unknown type of object");
            }
        }

        private synchronized void send(int i, Object obj) throws IOException {
            if (this.mSenderHandler != null && this.mIsRunning && this.mIsInit) {
                Handler handler = this.mSenderHandler;
                handler.sendMessage(handler.obtainMessage(i, obj));
            } else {
                throw new IOException();
            }
        }
    }

    public interface Callback {
        void onConnect(AbstractClient abstractClient);

        void onDisconnect();

        void onError(AbstractClient abstractClient, Exception exc);

        void onReceive(AbstractClient abstractClient, Object obj);
    }

    public AbstractChannelDataLink() {
        this.mClients = new CopyOnWriteArraySet();
        this.mCallbacks = new CopyOnWriteArraySet();
    }

    public void add(Callback callback) {
        if (callback != null) {
            this.mCallbacks.add(callback);
        }
    }

    protected void finalize() throws Throwable {
        try {
            release();
        } finally {
            super.finalize();
        }
    }

    public void release() {
        Iterator<AbstractClient> it = this.mClients.iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.mClients.clear();
    }

    public void remove(Callback callback) {
        this.mCallbacks.remove(callback);
    }

    protected void add(AbstractClient abstractClient) {
        if (abstractClient != null) {
            this.mClients.add(abstractClient);
        }
    }

    public void remove(AbstractClient abstractClient) {
        this.mClients.remove(abstractClient);
    }

    public AbstractChannelDataLink(Callback callback) {
        this();
        add(callback);
    }
}
