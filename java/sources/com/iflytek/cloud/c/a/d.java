package com.iflytek.cloud.c.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.DataDownloader;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechListener;
import com.iflytek.cloud.VerifierListener;
import com.iflytek.cloud.VerifierResult;
import com.iflytek.cloud.msc.util.FileUtil;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes4.dex */
public class d extends com.iflytek.cloud.a.f.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12306e;

    private final class a implements VerifierListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private VerifierListener f12307a;
        private Handler b = new HandlerC0236a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.c.a.d$a$a, reason: collision with other inner class name */
        class HandlerC0236a extends Handler {
            HandlerC0236a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.f12307a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    a.this.f12307a.onError((SpeechError) message.obj);
                } else if (i == 1) {
                    a.this.f12307a.onVolumeChanged(message.arg1, (byte[]) message.obj);
                } else if (i == 2) {
                    a.this.f12307a.onBeginOfSpeech();
                } else if (i == 3) {
                    a.this.f12307a.onEndOfSpeech();
                } else if (i == 4) {
                    a.this.f12307a.onResult((VerifierResult) message.obj);
                } else if (i == 5) {
                    Message message2 = (Message) message.obj;
                    a.this.f12307a.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                }
                super.handleMessage(message);
            }
        }

        public a(VerifierListener verifierListener) {
            this.f12307a = null;
            this.f12307a = verifierListener;
        }

        @Override // com.iflytek.cloud.VerifierListener
        public void onBeginOfSpeech() {
            this.b.sendMessage(this.b.obtainMessage(2, 0, 0, null));
        }

        @Override // com.iflytek.cloud.VerifierListener
        public void onEndOfSpeech() {
            this.b.sendMessage(this.b.obtainMessage(3, 0, 0, null));
        }

        @Override // com.iflytek.cloud.VerifierListener
        public void onError(SpeechError speechError) {
            a();
            this.b.sendMessage(this.b.obtainMessage(0, speechError));
        }

        @Override // com.iflytek.cloud.VerifierListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            Message messageObtain = Message.obtain();
            messageObtain.what = i;
            messageObtain.arg1 = i2;
            messageObtain.arg2 = i3;
            messageObtain.obj = bundle;
            Message.obtain(this.b, 5, messageObtain).sendToTarget();
        }

        @Override // com.iflytek.cloud.VerifierListener
        public void onResult(VerifierResult verifierResult) {
            a();
            this.b.sendMessage(this.b.obtainMessage(4, verifierResult));
        }

        @Override // com.iflytek.cloud.VerifierListener
        public void onVolumeChanged(int i, byte[] bArr) {
            this.b.sendMessage(this.b.obtainMessage(1, i, 0, bArr));
        }

        protected void a() {
            String strA = ((com.iflytek.cloud.a.f.e) d.this).c.getParam().a(SpeechConstant.ISV_AUDIO_PATH);
            if (!TextUtils.isEmpty(strA) && FileUtil.saveFile(((com.iflytek.cloud.a.c.b) ((com.iflytek.cloud.a.f.e) d.this).c).a(), strA)) {
                FileUtil.formatPcm(((com.iflytek.cloud.a.f.e) d.this).c.getParam().a(SpeechConstant.AUDIO_FORMAT, (String) null), strA, ((com.iflytek.cloud.a.f.e) d.this).c.getParam().a(SpeechConstant.SAMPLE_RATE, ((com.iflytek.cloud.a.f.e) d.this).c.mSampleRate));
            }
            com.iflytek.cloud.msc.util.g.b(((com.iflytek.cloud.a.f.e) d.this).f12265a, Boolean.valueOf(d.this.f12306e), null);
        }
    }

    public d(Context context) {
        super(context);
        this.f12306e = false;
    }

    public String generatePassword(int i) {
        Boolean bool = Boolean.FALSE;
        StringBuffer stringBuffer = new StringBuffer();
        SecureRandom secureRandom = new SecureRandom();
        String str = "023456789".charAt(secureRandom.nextInt(9)) + "";
        stringBuffer.append(str);
        for (int i2 = 0; i2 < i - 1; i2++) {
            while (true) {
                Boolean bool2 = bool;
                while (true) {
                    if (!bool2.booleanValue()) {
                        str = "023456789".charAt(secureRandom.nextInt(9)) + "";
                        if (stringBuffer.indexOf(str) < 0) {
                            if (Integer.parseInt(stringBuffer.charAt(stringBuffer.length() - 1) + "") * Integer.parseInt(str) != 10) {
                                bool2 = Boolean.TRUE;
                            }
                        }
                    }
                }
            }
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }

    public void getPasswordList(SpeechListener speechListener) {
        DataDownloader dataDownloader = new DataDownloader(this.f12265a);
        dataDownloader.setParameter(this.mSessionParams);
        dataDownloader.downloadData(speechListener);
    }

    public boolean isListening() {
        return c();
    }

    public int sendRequest(String str, String str2, SpeechListener speechListener) {
        int i;
        synchronized (this.b) {
            try {
                this.mSessionParams.b(SpeechConstant.ISV_CMD, str);
                this.mSessionParams.b(SpeechConstant.AUTH_ID, str2);
                new com.iflytek.cloud.a.c.a(this.f12265a, a("manager")).a(this.mSessionParams, new com.iflytek.cloud.a.c.a.C0225a(speechListener));
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

    public int startListening(VerifierListener verifierListener) {
        int errorCode;
        synchronized (this.b) {
            errorCode = 0;
            try {
                this.f12306e = this.mSessionParams.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
                if (this.c != null && this.c.isRunning()) {
                    this.c.cancel(this.mSessionParams.a(SpeechConstant.ISV_INTERRUPT_ERROR, false));
                }
                this.c = new com.iflytek.cloud.a.c.b(this.f12265a, this.mSessionParams, a("verify"));
                com.iflytek.cloud.msc.util.g.a(this.f12265a, Boolean.valueOf(this.f12306e), null);
                ((com.iflytek.cloud.a.c.b) this.c).a(new a(verifierListener));
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

    public void stopListening() {
        synchronized (this.b) {
            if (this.c != null) {
                ((com.iflytek.cloud.a.c.b) this.c).e();
            }
        }
    }

    public int writeAudio(byte[] bArr, int i, int i2) {
        synchronized (this.b) {
            if (this.c == null) {
                DebugLog.LogD("writeAudio error, no active session.");
                return ErrorCode.ERROR_ENGINE_CALL_FAIL;
            }
            if (bArr != null && bArr.length > 0) {
                if (bArr.length < i2 + i) {
                    DebugLog.LogD("writeAudio error,buffer length < length.");
                    return 10109;
                }
                if (((com.iflytek.cloud.a.c.b) this.c).getAudioSource() != -1) {
                    return 10106;
                }
                ((com.iflytek.cloud.a.c.b) this.c).onRecordBuffer(bArr, i, i2);
                return 0;
            }
            DebugLog.LogD("writeAudio error,buffer is null.");
            return 10109;
        }
    }
}
