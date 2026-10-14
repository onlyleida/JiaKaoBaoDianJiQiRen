package com.iflytek.cloud;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.b;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class FaceRequest extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f12113a;
    private Context b;

    protected class a implements RequestListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RequestListener f12114a;
        private Handler b = new HandlerC0224a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.FaceRequest$a$a, reason: collision with other inner class name */
        class HandlerC0224a extends Handler {
            HandlerC0224a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.f12114a == null) {
                    return;
                }
                DebugLog.LogD("SpeechListener onMsg = " + message.what);
                int i = message.what;
                if (i == 0) {
                    a.this.f12114a.onEvent(message.arg1, (Bundle) message.obj);
                } else if (i == 1) {
                    a.this.f12114a.onBufferReceived((byte[]) message.obj);
                } else if (i == 2) {
                    a.this.f12114a.onCompleted((SpeechError) message.obj);
                }
                super.handleMessage(message);
            }
        }

        public a(RequestListener requestListener) {
            this.f12114a = null;
            this.f12114a = requestListener;
        }

        @Override // com.iflytek.cloud.RequestListener
        public void onBufferReceived(byte[] bArr) {
            this.b.sendMessage(this.b.obtainMessage(1, bArr));
        }

        @Override // com.iflytek.cloud.RequestListener
        public void onCompleted(SpeechError speechError) {
            this.b.sendMessage(this.b.obtainMessage(2, speechError));
        }

        @Override // com.iflytek.cloud.RequestListener
        public void onEvent(int i, Bundle bundle) {
            this.b.sendMessage(this.b.obtainMessage(0, i, 0, bundle));
        }
    }

    public FaceRequest(Context context) {
        this.b = context;
    }

    public void cancel() {
        synchronized (this) {
            b bVar = this.f12113a;
            if (bVar != null) {
                bVar.cancel();
                this.f12113a = null;
            }
        }
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        boolean zDestroy = this.f12113a.destroy();
        return zDestroy ? super.destroy() : zDestroy;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    public int sendRequest(byte[] bArr, RequestListener requestListener) {
        int iSendRequest;
        synchronized (this) {
            b bVar = this.f12113a;
            if (bVar != null) {
                bVar.cancel();
                this.f12113a = null;
            }
            b bVar2 = new b(this.b, this.mSessionParams);
            this.f12113a = bVar2;
            iSendRequest = bVar2.sendRequest(bArr, new a(requestListener));
        }
        return iSendRequest;
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }
}
