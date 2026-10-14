package com.iflytek.cloud.c.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.EvaluatorListener;
import com.iflytek.cloud.EvaluatorResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.FileUtil;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class e extends com.iflytek.cloud.a.f.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12309e;

    private final class a implements EvaluatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private EvaluatorListener f12310a;
        private Handler b = new HandlerC0237a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.c.a.e$a$a, reason: collision with other inner class name */
        class HandlerC0237a extends Handler {
            HandlerC0237a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.f12310a == null) {
                    return;
                }
                int i = message.what;
                if (i != 0) {
                    if (i == 1) {
                        a.this.f12310a.onVolumeChanged(message.arg1, (byte[]) message.obj);
                    } else if (i == 2) {
                        a.this.f12310a.onBeginOfSpeech();
                    } else if (i == 3) {
                        a.this.f12310a.onEndOfSpeech();
                    } else if (i == 4) {
                        a.this.f12310a.onResult((EvaluatorResult) message.obj, message.arg1 == 1);
                    } else if (i == 6) {
                        Message message2 = (Message) message.obj;
                        a.this.f12310a.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                    }
                } else {
                    a.this.f12310a.onError((SpeechError) message.obj);
                }
                super.handleMessage(message);
            }
        }

        public a(EvaluatorListener evaluatorListener) {
            this.f12310a = null;
            this.f12310a = evaluatorListener;
        }

        @Override // com.iflytek.cloud.EvaluatorListener
        public void onBeginOfSpeech() {
            DebugLog.LogD("onBeginOfSpeech");
            this.b.sendMessage(this.b.obtainMessage(2, 0, 0, null));
        }

        @Override // com.iflytek.cloud.EvaluatorListener
        public void onEndOfSpeech() {
            this.b.sendMessage(this.b.obtainMessage(3, 0, 0, null));
        }

        @Override // com.iflytek.cloud.EvaluatorListener
        public void onError(SpeechError speechError) {
            e.this.f();
            this.b.sendMessage(this.b.obtainMessage(0, speechError));
        }

        @Override // com.iflytek.cloud.EvaluatorListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            Message message = new Message();
            message.what = i;
            message.arg1 = i2;
            message.arg2 = i3;
            message.obj = bundle;
            Message.obtain(this.b, 6, message).sendToTarget();
        }

        @Override // com.iflytek.cloud.EvaluatorListener
        public void onResult(EvaluatorResult evaluatorResult, boolean z) {
            if (z) {
                e.this.f();
            }
            this.b.sendMessage(this.b.obtainMessage(4, !z ? 0 : 1, 0, evaluatorResult));
        }

        @Override // com.iflytek.cloud.EvaluatorListener
        public void onVolumeChanged(int i, byte[] bArr) {
            this.b.sendMessage(this.b.obtainMessage(1, i, 0, bArr));
        }
    }

    public e(Context context) {
        super(context);
        this.f12309e = false;
    }

    @Override // com.iflytek.cloud.a.f.e
    public void cancel(boolean z) {
        synchronized (this.b) {
            f();
        }
        super.cancel(z);
    }

    @Override // com.iflytek.cloud.a.f.e
    protected boolean d() {
        return super.d();
    }

    protected void f() {
        if (this.c != null) {
            String strA = this.c.getParam().a(SpeechConstant.ISE_AUDIO_PATH);
            if (!TextUtils.isEmpty(strA) && FileUtil.saveFile(((com.iflytek.cloud.a.a.b) this.c).a(), strA)) {
                FileUtil.formatPcm(this.c.getParam().a(SpeechConstant.AUDIO_FORMAT, (String) null), strA, this.c.getParam().a(SpeechConstant.SAMPLE_RATE, this.c.mSampleRate));
            }
        }
        com.iflytek.cloud.msc.util.g.b(this.f12265a, Boolean.valueOf(this.f12309e), null);
    }

    public boolean isEvaluating() {
        return c();
    }

    public int startEvaluating(String str, String str2, EvaluatorListener evaluatorListener) {
        int errorCode;
        synchronized (this.b) {
            errorCode = 0;
            try {
                this.f12309e = this.mSessionParams.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
                if (this.c != null && this.c.isRunning()) {
                    this.c.cancel(this.mSessionParams.a(SpeechConstant.ISE_INTERRUPT_ERROR, false));
                }
                this.c = new com.iflytek.cloud.a.a.b(this.f12265a, this.mSessionParams, a(SpeechConstant.ENG_EVA));
                com.iflytek.cloud.msc.util.g.a(this.f12265a, Boolean.valueOf(this.f12309e), null);
                ((com.iflytek.cloud.a.a.b) this.c).a(str, str2, new a(evaluatorListener));
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

    public void stopEvaluating() {
        synchronized (this.b) {
            if (this.c != null) {
                ((com.iflytek.cloud.a.a.b) this.c).c(true);
            }
        }
    }

    public boolean writeAudio(byte[] bArr, int i, int i2) {
        synchronized (this.b) {
            if (this.c == null) {
                DebugLog.LogD("writeAudio error, no active session.");
                return false;
            }
            if (bArr != null && bArr.length > 0) {
                if (bArr.length < i2 + i) {
                    DebugLog.LogD("writeAudio error,buffer length < length.");
                    return false;
                }
                ((com.iflytek.cloud.a.a.b) this.c).onRecordBuffer(bArr, i, i2);
                return true;
            }
            DebugLog.LogD("writeAudio error,buffer is null.");
            return false;
        }
    }

    public int startEvaluating(byte[] bArr, String str, EvaluatorListener evaluatorListener) {
        int errorCode;
        synchronized (this.b) {
            errorCode = 0;
            try {
                this.f12309e = this.mSessionParams.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
                if (this.c != null && this.c.isRunning()) {
                    this.c.cancel(this.mSessionParams.a(SpeechConstant.ISE_INTERRUPT_ERROR, false));
                }
                this.c = new com.iflytek.cloud.a.a.b(this.f12265a, this.mSessionParams, a(SpeechConstant.ENG_EVA));
                com.iflytek.cloud.msc.util.g.a(this.f12265a, Boolean.valueOf(this.f12309e), null);
                ((com.iflytek.cloud.a.a.b) this.c).a(bArr, str, new a(evaluatorListener));
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
}
