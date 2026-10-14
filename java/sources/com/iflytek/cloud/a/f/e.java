package com.iflytek.cloud.a.f;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechListener;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f12265a;
    protected Object b = new Object();
    protected volatile com.iflytek.cloud.a.f.a c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected volatile HandlerThread f12266d = null;

    protected class a implements SpeechListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SpeechListener f12267a;
        private Handler b = new HandlerC0233a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.a.f.e$a$a, reason: collision with other inner class name */
        class HandlerC0233a extends Handler {
            HandlerC0233a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.f12267a == null) {
                    return;
                }
                DebugLog.LogD("SpeechListener onMsg = " + message.what);
                int i = message.what;
                if (i == 0) {
                    a.this.f12267a.onEvent(message.arg1, (Bundle) message.obj);
                } else if (i == 1) {
                    a.this.f12267a.onBufferReceived((byte[]) message.obj);
                } else if (i == 2) {
                    a.this.f12267a.onCompleted((SpeechError) message.obj);
                }
                super.handleMessage(message);
            }
        }

        public a(SpeechListener speechListener) {
            this.f12267a = null;
            this.f12267a = speechListener;
        }

        @Override // com.iflytek.cloud.SpeechListener
        public void onBufferReceived(byte[] bArr) {
            this.b.sendMessage(this.b.obtainMessage(1, bArr));
        }

        @Override // com.iflytek.cloud.SpeechListener
        public void onCompleted(SpeechError speechError) {
            this.b.sendMessage(this.b.obtainMessage(2, speechError));
        }

        @Override // com.iflytek.cloud.SpeechListener
        public void onEvent(int i, Bundle bundle) {
            this.b.sendMessage(this.b.obtainMessage(0, i, 0, bundle));
        }
    }

    protected e(Context context) {
        this.f12265a = null;
        if (context == null) {
            this.f12265a = null;
            return;
        }
        com.iflytek.cloud.msc.util.b.a(context.getApplicationContext());
        this.f12265a = context.getApplicationContext();
        try {
            e();
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
    }

    protected HandlerThread a(String str) throws Throwable {
        this.f12266d = new HandlerThread(str);
        this.f12266d.start();
        return this.f12266d;
    }

    protected String b() {
        return getClass().toString();
    }

    protected boolean c() {
        return this.c != null && this.c.isRunning();
    }

    public void cancel(boolean z) {
        if (this.c != null) {
            this.c.cancel(z);
        }
    }

    protected boolean d() {
        if (this.f12266d == null || !this.f12266d.isAlive()) {
            return true;
        }
        HandlerThread handlerThread = this.f12266d;
        this.f12266d = null;
        handlerThread.interrupt();
        return true;
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        boolean zD;
        synchronized (this.b) {
            zD = false;
            if (c()) {
                this.c.cancel(false);
            } else {
                zD = d();
                DebugLog.LogS(b() + "destory =" + zD);
            }
        }
        return zD ? super.destroy() : zD;
    }

    protected void e() throws Exception {
    }

    protected void finalize() throws Throwable {
        DebugLog.LogD(b() + " finalize called");
        super.finalize();
    }

    public int getSampleRate() {
        return this.mSessionParams.a(SpeechConstant.SAMPLE_RATE, 16000);
    }
}
