package com.iflytek.cloud.a.c;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechListener;

/* JADX INFO: loaded from: classes4.dex */
public class a extends com.iflytek.cloud.a.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f12174a;
    private SpeechListener b;

    /* JADX INFO: renamed from: com.iflytek.cloud.a.c.a$a, reason: collision with other inner class name */
    public static final class C0225a implements SpeechListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SpeechListener f12175a;
        private Handler b = new HandlerC0226a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.a.c.a$a$a, reason: collision with other inner class name */
        class HandlerC0226a extends Handler {
            HandlerC0226a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (C0225a.this.f12175a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    C0225a.this.f12175a.onEvent(message.arg1, (Bundle) message.obj);
                } else if (i == 1) {
                    C0225a.this.f12175a.onBufferReceived((byte[]) message.obj);
                } else {
                    if (i != 2) {
                        return;
                    }
                    C0225a.this.f12175a.onCompleted((SpeechError) message.obj);
                }
            }
        }

        public C0225a(SpeechListener speechListener) {
            this.f12175a = null;
            this.f12175a = speechListener;
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

    public a(Context context, HandlerThread handlerThread) {
        super(context, handlerThread);
        this.f12174a = new c();
    }

    public void a(com.iflytek.cloud.b.a aVar, C0225a c0225a) {
        this.b = c0225a;
        setParams(aVar);
        Message messageObtain = Message.obtain();
        messageObtain.what = 13;
        sendMsg(messageObtain);
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getClientID() {
        return this.f12174a.getClientID();
    }

    @Override // com.iflytek.cloud.a.f.a
    public String getSessionID() {
        return this.f12174a.getSessionID();
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onEnd(SpeechError speechError) {
        super.onEnd(speechError);
        SpeechListener speechListener = this.b;
        if (speechListener != null) {
            speechListener.onCompleted(speechError);
        }
    }

    @Override // com.iflytek.cloud.a.f.a
    protected void onMsgProcess(Message message) throws Throwable {
        if (message.what != 13) {
            return;
        }
        synchronized (a.class) {
            String str = String.format("{'ret':%d,'cmd':%s}", Integer.valueOf(this.f12174a.a(this.mContext, this)), getParam().a(SpeechConstant.ISV_CMD));
            SpeechListener speechListener = this.b;
            if (speechListener != null) {
                speechListener.onBufferReceived(str.getBytes(getParamEncoding()));
            }
            sendMsg(21);
        }
    }
}
