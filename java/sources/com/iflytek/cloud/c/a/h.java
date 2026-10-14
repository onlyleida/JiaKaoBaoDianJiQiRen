package com.iflytek.cloud.c.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.TranscripterListener;
import com.iflytek.cloud.TranscripterResult;
import com.iflytek.cloud.msc.ist.MscTranscripter;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class h extends com.iflytek.cloud.a.f.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12323e;

    private final class a implements TranscripterListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TranscripterListener f12324a;
        private boolean b = false;
        private Handler c = new HandlerC0239a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.c.a.h$a$a, reason: collision with other inner class name */
        class HandlerC0239a extends Handler {
            HandlerC0239a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.f12324a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    a.this.f12324a.onError((SpeechError) message.obj);
                } else if (i == 1) {
                    a.this.f12324a.onVolumeChanged(message.arg1, (byte[]) message.obj);
                } else if (i == 2) {
                    a.this.f12324a.onBeginOfSpeech();
                } else if (i == 3) {
                    a.this.f12324a.onEndOfSpeech();
                } else if (i == 4) {
                    a.this.f12324a.onResult((TranscripterResult) message.obj, message.arg1 == 1);
                    if (!a.this.b) {
                        h.this.b("ui_frs");
                        a.this.b = true;
                    }
                    if (1 == message.arg1) {
                        h.this.b("ui_lrs");
                    }
                } else if (i == 6) {
                    Message message2 = (Message) message.obj;
                    a.this.f12324a.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                }
                super.handleMessage(message);
            }
        }

        public a(TranscripterListener transcripterListener) {
            this.f12324a = null;
            this.f12324a = transcripterListener;
        }

        @Override // com.iflytek.cloud.TranscripterListener
        public void onBeginOfSpeech() {
            DebugLog.LogD("onBeginOfSpeech");
            this.c.sendMessage(this.c.obtainMessage(2, 0, 0, null));
        }

        @Override // com.iflytek.cloud.TranscripterListener
        public void onEndOfSpeech() {
            this.c.sendMessage(this.c.obtainMessage(3, 0, 0, null));
        }

        @Override // com.iflytek.cloud.TranscripterListener
        public void onError(SpeechError speechError) {
            a();
            this.c.sendMessage(this.c.obtainMessage(0, speechError));
        }

        @Override // com.iflytek.cloud.TranscripterListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            Message message = new Message();
            message.what = i;
            message.arg1 = i2;
            message.arg2 = i3;
            message.obj = bundle;
            this.c.sendMessage(this.c.obtainMessage(6, 0, 0, message));
        }

        @Override // com.iflytek.cloud.TranscripterListener
        public void onResult(TranscripterResult transcripterResult, boolean z) {
            if (z) {
                a();
            }
            this.c.sendMessage(this.c.obtainMessage(4, !z ? 0 : 1, 0, transcripterResult));
        }

        @Override // com.iflytek.cloud.TranscripterListener
        public void onVolumeChanged(int i, byte[] bArr) {
            this.c.sendMessage(this.c.obtainMessage(1, i, 0, bArr));
        }

        protected void a() {
            com.iflytek.cloud.msc.util.g.b(((com.iflytek.cloud.a.f.e) h.this).f12265a, Boolean.valueOf(h.this.f12323e), null);
        }
    }

    public h(Context context) {
        super(context);
        this.f12323e = false;
    }

    @Override // com.iflytek.cloud.a.f.e
    public void cancel(boolean z) {
        com.iflytek.cloud.msc.util.g.b(this.f12265a, Boolean.valueOf(this.f12323e), null);
        super.cancel(z);
    }

    public String f() {
        if (this.c != null) {
            return ((MscTranscripter) this.c).getAudioPath();
        }
        return null;
    }

    public String g() {
        if (this.c != null) {
            return this.c.getSessionID();
        }
        return null;
    }

    public int h() {
        if (this.c != null) {
            return ((MscTranscripter) this.c).getUploadBytes();
        }
        return 0;
    }

    public boolean isTranscripting() {
        return c();
    }

    public int startTranscripting(TranscripterListener transcripterListener) {
        int i;
        synchronized (this.b) {
            try {
                this.f12323e = this.mSessionParams.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
                this.c = new MscTranscripter(this.f12265a, this.mSessionParams, a("ist"));
                com.iflytek.cloud.msc.util.g.a(this.f12265a, Boolean.valueOf(this.f12323e), null);
                ((MscTranscripter) this.c).startTranscripting(new a(transcripterListener));
                i = 0;
            } catch (SpeechError e2) {
                int errorCode = e2.getErrorCode();
                DebugLog.LogE(e2);
                i = errorCode;
            } catch (Throwable th) {
                DebugLog.LogE(th);
                i = ErrorCode.ERROR_UNKNOWN;
            }
        }
        return i;
    }

    public void stopTranscripting() {
        synchronized (this.b) {
            if (this.c != null) {
                ((MscTranscripter) this.c).stopTranscripting(true);
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
                if (((MscTranscripter) this.c).getAudioSource() != -1) {
                    return false;
                }
                ((MscTranscripter) this.c).onRecordBuffer(bArr, i, i2);
                return true;
            }
            DebugLog.LogD("writeAudio error,buffer is null.");
            return false;
        }
    }

    public void b(String str) {
        synchronized (this.b) {
            if (this.c != null) {
                ((MscTranscripter) this.c).getPerfLog().a(str);
            }
        }
    }
}
