package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.c;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public final class IdentityVerifier extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static IdentityVerifier f12117a;
    private c b;
    private InitListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f12118d = new a(Looper.getMainLooper());

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (IdentityVerifier.this.c == null) {
                return;
            }
            IdentityVerifier.this.c.onInit(message.what);
        }
    }

    protected IdentityVerifier(Context context, InitListener initListener) {
        this.b = null;
        this.c = null;
        this.c = initListener;
        this.b = new c(context);
        if (initListener != null) {
            Message.obtain(this.f12118d, 0, 0, 0, null).sendToTarget();
        }
    }

    public static synchronized IdentityVerifier createVerifier(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (f12117a == null && SpeechUtility.getUtility() != null) {
                f12117a = new IdentityVerifier(context, initListener);
            }
        }
        return f12117a;
    }

    public static IdentityVerifier getVerifier() {
        return f12117a;
    }

    public void cancel() {
        c cVar = this.b;
        if (cVar == null || !cVar.isWorking()) {
            DebugLog.LogE("IdentityVerifier cancel failed, is not running");
        } else {
            this.b.cancel(false);
        }
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        c cVar = this.b;
        boolean zDestroy = cVar != null ? cVar.destroy() : true;
        if (zDestroy && (zDestroy = super.destroy())) {
            synchronized (d.sSync) {
                f12117a = null;
            }
        }
        return zDestroy;
    }

    public int execute(String str, String str2, String str3, IdentityListener identityListener) {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.setParameter(this.mSessionParams) ? this.b.execute(str, str2, str3, identityListener) : ErrorCode.ERROR_INVALID_PARAM;
        }
        DebugLog.LogE("IdentityVerifier execute failed, is not running");
        return 21001;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    public boolean isWorking() {
        c cVar = this.b;
        return cVar != null && cVar.isWorking();
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int startWorking(IdentityListener identityListener) {
        c cVar = this.b;
        if (cVar == null) {
            return 21001;
        }
        cVar.setParameter(this.mSessionParams);
        return this.b.startWorking(identityListener);
    }

    public void stopWrite(String str) {
        c cVar = this.b;
        if (cVar == null || !cVar.isWorking()) {
            DebugLog.LogE("IdentityVerifier stopListening failed, is not running");
        } else {
            this.b.stopWrite(str);
        }
    }

    public int writeData(String str, String str2, byte[] bArr, int i, int i2) {
        c cVar = this.b;
        if (cVar == null || !cVar.isWorking()) {
            DebugLog.LogE("IdentityVerifier writeAudio failed, is not running");
            return ErrorCode.ERROR_ENGINE_CALL_FAIL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("mVerifierImpl is");
        sb.append(this.b != null);
        sb.append("  mVerifierImpl.isWorking() is  ");
        sb.append(this.b.isWorking());
        DebugLog.LogE(sb.toString());
        return this.b.writeData(str, str2, bArr, i, i2);
    }
}
