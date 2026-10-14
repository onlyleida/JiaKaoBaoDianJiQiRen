package com.iflytek.cloud.c.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.IdentityListener;
import com.iflytek.cloud.IdentityResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class c extends com.iflytek.cloud.a.f.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12302e;

    private final class a implements IdentityListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IdentityListener f12303a;
        private boolean b = false;
        private Handler c = new HandlerC0235a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.c.a.c$a$a, reason: collision with other inner class name */
        class HandlerC0235a extends Handler {
            HandlerC0235a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.f12303a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    a.this.f12303a.onError((SpeechError) message.obj);
                } else if (i == 4) {
                    a.this.f12303a.onResult((IdentityResult) message.obj, message.arg1 == 1);
                    if (!a.this.b) {
                        c.this.b("ui_frs");
                        a.this.b = true;
                    }
                    if (1 == message.arg1) {
                        c.this.b("ui_lrs");
                    }
                } else if (i == 6) {
                    Message message2 = (Message) message.obj;
                    a.this.f12303a.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                }
                super.handleMessage(message);
            }
        }

        public a(IdentityListener identityListener) {
            this.f12303a = null;
            this.f12303a = identityListener;
        }

        @Override // com.iflytek.cloud.IdentityListener
        public void onError(SpeechError speechError) throws Throwable {
            a();
            this.c.sendMessage(this.c.obtainMessage(0, speechError));
        }

        @Override // com.iflytek.cloud.IdentityListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            Message message = new Message();
            message.what = i;
            message.arg1 = i2;
            message.arg2 = i3;
            message.obj = bundle;
            this.c.sendMessage(this.c.obtainMessage(6, 0, 0, message));
        }

        @Override // com.iflytek.cloud.IdentityListener
        public void onResult(IdentityResult identityResult, boolean z) throws Throwable {
            if (z) {
                a();
            }
            this.c.sendMessage(this.c.obtainMessage(4, !z ? 0 : 1, 0, identityResult));
        }

        protected void a() throws Throwable {
            ((com.iflytek.cloud.a.e.b) ((com.iflytek.cloud.a.f.e) c.this).c).a().a();
            com.iflytek.cloud.msc.util.g.b(((com.iflytek.cloud.a.f.e) c.this).f12265a, Boolean.valueOf(c.this.f12302e), null);
        }
    }

    public c(Context context) {
        super(context);
        this.f12302e = false;
    }

    @Override // com.iflytek.cloud.a.f.e
    public void cancel(boolean z) {
        com.iflytek.cloud.msc.util.g.b(this.f12265a, Boolean.valueOf(this.f12302e), null);
        super.cancel(z);
    }

    public int execute(String str, String str2, String str3, IdentityListener identityListener) {
        setParameter("sst", str2);
        int iStartWorking = startWorking(identityListener);
        if (iStartWorking != 0) {
            return iStartWorking;
        }
        int iWriteData = writeData(str, str3, null, 0, 0);
        stopWrite(str);
        return iWriteData;
    }

    public boolean isWorking() {
        return c();
    }

    public int startWorking(IdentityListener identityListener) {
        int errorCode;
        synchronized (this.b) {
            errorCode = 0;
            try {
                this.f12302e = this.mSessionParams.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
                if (this.c != null && this.c.isRunning()) {
                    this.c.cancel(this.mSessionParams.a(SpeechConstant.MFV_INTERRUPT_ERROR, false));
                }
                this.c = new com.iflytek.cloud.a.e.b(this.f12265a, this.mSessionParams, a("mfv"));
                com.iflytek.cloud.msc.util.g.a(this.f12265a, Boolean.valueOf(this.f12302e), null);
                ((com.iflytek.cloud.a.e.b) this.c).a(new a(identityListener));
            } catch (SpeechError e2) {
                errorCode = e2.getErrorCode();
                DebugLog.LogE(e2);
            } catch (Throwable th) {
                errorCode = ErrorCode.ERROR_UNKNOWN;
                DebugLog.LogE(th);
            }
        }
        return errorCode;
    }

    public void stopWrite(String str) {
        synchronized (this.b) {
            if (this.c != null) {
                ((com.iflytek.cloud.a.e.b) this.c).a(str, true);
            }
        }
    }

    public int writeData(String str, String str2, byte[] bArr, int i, int i2) {
        synchronized (this.b) {
            if (this.c == null) {
                DebugLog.LogE("writeAudio error, no active session.");
                return ErrorCode.ERROR_ENGINE_CALL_FAIL;
            }
            if (i2 < 0) {
                DebugLog.LogE("writeAudio error, length < 0.");
                return 10109;
            }
            if (bArr == null || bArr.length >= i2 + i) {
                ((com.iflytek.cloud.a.e.b) this.c).a(str, str2, bArr, i, i2);
                return 0;
            }
            DebugLog.LogE("writeAudio error, buffer length < offset + length.");
            return 10109;
        }
    }

    public void b(String str) {
        synchronized (this.b) {
            if (this.c != null) {
                ((com.iflytek.cloud.a.e.b) this.c).getPerfLog().a(str);
            }
        }
    }
}
