package com.sixents.sdk.base;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.sixents.sdk.conf.SdkConf;
import com.sixents.sdk.utils.LogUtils;

/* JADX INFO: loaded from: classes6.dex */
public class SixentsSDKManagerImp implements ISixentsSDKManager {
    private static final int B = 1;
    private static final int C = 0;
    private static final int E = 2;
    private static final int F = 5;
    private static final int K = 6;
    private static final int R = 4;
    private static final String TAG = "SixentsSDKManagerImp";
    private static final int X = 3;
    private boolean TICKFLAG;
    private final NativeFlag b;
    private final NativeFlag c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final NativeFlag f13651e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final NativeFlag f13652f;
    private final NativeFlag k;
    private HandlerThread mHandlerThread;
    private NativeHandler mNativeHandler;
    private final NativeFlag r;
    private TickThread tickThread;
    private final NativeFlag x;

    private class NativeHandler extends Handler {
        public NativeHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    synchronized (SixentsSDKManagerImp.this.c) {
                        SixentsSDKManagerImp.this.c.notify();
                        break;
                    }
                    return;
                case 1:
                    synchronized (SixentsSDKManagerImp.this.b) {
                        SixentsSDKManagerImp.this.b.rescode = JNICall.b();
                        SixentsSDKManagerImp.this.b.notify();
                        break;
                    }
                    return;
                case 2:
                    synchronized (SixentsSDKManagerImp.this.f13651e) {
                        SixentsSDKManagerImp.this.f13651e.rescode = JNICall.e();
                        SixentsSDKManagerImp.this.f13651e.notify();
                        break;
                    }
                    return;
                case 3:
                    synchronized (SixentsSDKManagerImp.this.x) {
                        SixentsSDKManagerImp.this.x.rescode = JNICall.x();
                        SixentsSDKManagerImp.this.x.notify();
                        break;
                    }
                    return;
                case 4:
                    String str = (String) message.obj;
                    synchronized (SixentsSDKManagerImp.this.r) {
                        SixentsSDKManagerImp.this.r.rescode = JNICall.r(str);
                        SixentsSDKManagerImp.this.r.notify();
                        break;
                    }
                    return;
                case 5:
                    double[] dArr = (double[]) message.obj;
                    synchronized (SixentsSDKManagerImp.this.f13652f) {
                        SixentsSDKManagerImp.this.f13652f.rescode = JNICall.f(dArr[0], dArr[1], dArr[2]);
                        SixentsSDKManagerImp.this.f13652f.notify();
                        break;
                    }
                    return;
                case 6:
                    synchronized (SixentsSDKManagerImp.this.k) {
                        JNICall.k();
                        SixentsSDKManagerImp.this.k.notify();
                        break;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private static class SixentsSDKManagerImpHolder {
        private static SixentsSDKManagerImp INSTANCE = new SixentsSDKManagerImp();

        private SixentsSDKManagerImpHolder() {
        }
    }

    public class TickThread extends Thread {
        TickThread(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            do {
                try {
                    if (SixentsSDKManagerImp.this.mNativeHandler != null) {
                        SixentsSDKManagerImp.this.mNativeHandler.sendMessage(SixentsSDKManagerImp.this.mNativeHandler.obtainMessage(6));
                    }
                    Thread.sleep(80L);
                } catch (InterruptedException unused) {
                    LogUtils.ii(SixentsSDKManagerImp.TAG, "tickThread is interrupt");
                }
            } while (SixentsSDKManagerImp.this.TICKFLAG);
        }
    }

    public static SixentsSDKManagerImp getInstance() {
        return SixentsSDKManagerImpHolder.INSTANCE;
    }

    private int sdkSendMessageSync(Message message, NativeFlag nativeFlag) {
        int i;
        synchronized (nativeFlag) {
            this.mNativeHandler.sendMessage(message);
            try {
                nativeFlag.wait(500L);
            } catch (InterruptedException e2) {
                LogUtils.e("Error on wait init :" + e2);
            }
            i = nativeFlag.rescode;
        }
        return i;
    }

    @Override // com.sixents.sdk.base.ISixentsSDKManager
    public int sdkFinal() {
        if (this.mNativeHandler == null) {
            return -12;
        }
        TickThread tickThread = this.tickThread;
        if (tickThread != null) {
            if (tickThread.isAlive()) {
                if (this.TICKFLAG) {
                    this.TICKFLAG = false;
                }
                this.tickThread.interrupt();
                this.tickThread = null;
            } else {
                this.tickThread = null;
            }
        }
        int iSdkSendMessageSync = sdkSendMessageSync(this.mNativeHandler.obtainMessage(3), this.x);
        if (iSdkSendMessageSync == 0) {
            this.mNativeHandler.removeCallbacksAndMessages(null);
            this.mHandlerThread.quit();
            this.mNativeHandler = null;
            this.mHandlerThread = null;
        }
        return iSdkSendMessageSync;
    }

    @Override // com.sixents.sdk.base.ISixentsSDKManager
    public String sdkGetVer() {
        return "1.1.1";
    }

    @Override // com.sixents.sdk.base.ISixentsSDKManager
    public int sdkInit(SdkConf sdkConf) {
        if (sdkConf == null) {
            throw new RuntimeException("SDK config can not be null!");
        }
        if (this.mNativeHandler != null) {
            return -11;
        }
        this.c.rescode = JNICall.c(sdkConf);
        HandlerThread handlerThread = new HandlerThread("native_handler");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        NativeHandler nativeHandler = new NativeHandler(this.mHandlerThread.getLooper());
        this.mNativeHandler = nativeHandler;
        return sdkSendMessageSync(nativeHandler.obtainMessage(0, Integer.valueOf(this.c.rescode)), this.c);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.sixents.sdk.base.ISixentsSDKManager
    public int sdkSendGGA(double d2, double d3, double d4) {
        NativeHandler nativeHandler = this.mNativeHandler;
        if (nativeHandler == null) {
            return -12;
        }
        return sdkSendMessageSync(nativeHandler.obtainMessage(5, new double[]{d2, d3, d4}), this.f13652f);
    }

    @Override // com.sixents.sdk.base.ISixentsSDKManager
    public int sdkSendGGAStr(String str) {
        NativeHandler nativeHandler = this.mNativeHandler;
        if (nativeHandler == null) {
            return -12;
        }
        return sdkSendMessageSync(nativeHandler.obtainMessage(4, str), this.r);
    }

    @Override // com.sixents.sdk.base.ISixentsSDKManager
    public int sdkStart() {
        if (this.mNativeHandler == null) {
            return -12;
        }
        if (!this.TICKFLAG) {
            TickThread tickThread = this.tickThread;
            if (tickThread == null) {
                TickThread tickThread2 = new TickThread("tickThread");
                this.tickThread = tickThread2;
                tickThread2.start();
                this.TICKFLAG = true;
            } else if (tickThread.isAlive()) {
                this.TICKFLAG = true;
            } else if (this.tickThread.getState() == Thread.State.TERMINATED) {
                this.tickThread = null;
                TickThread tickThread3 = new TickThread("tickThread");
                this.tickThread = tickThread3;
                tickThread3.start();
                this.TICKFLAG = true;
            }
        }
        return sdkSendMessageSync(this.mNativeHandler.obtainMessage(1), this.b);
    }

    @Override // com.sixents.sdk.base.ISixentsSDKManager
    public int sdkStop() {
        NativeHandler nativeHandler = this.mNativeHandler;
        if (nativeHandler == null) {
            return -12;
        }
        if (this.TICKFLAG) {
            this.TICKFLAG = false;
        }
        return sdkSendMessageSync(nativeHandler.obtainMessage(2), this.f13651e);
    }

    public int sdktick() {
        if (!this.TICKFLAG) {
            this.tickThread.start();
            this.TICKFLAG = true;
        }
        return sdkSendMessageSync(this.mNativeHandler.obtainMessage(6), this.k);
    }

    private SixentsSDKManagerImp() {
        this.c = new NativeFlag("c");
        this.b = new NativeFlag("b");
        this.f13651e = new NativeFlag("e");
        this.x = new NativeFlag("x");
        this.r = new NativeFlag("r");
        this.f13652f = new NativeFlag("f");
        this.k = new NativeFlag("k");
        this.TICKFLAG = false;
    }
}
