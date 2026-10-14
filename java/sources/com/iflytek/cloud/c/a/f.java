package com.iflytek.cloud.c.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.GrammarListener;
import com.iflytek.cloud.LexiconListener;
import com.iflytek.cloud.RecognizerListener;
import com.iflytek.cloud.RecognizerResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.FileUtil;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.AudioDetector;

/* JADX INFO: loaded from: classes4.dex */
public class f extends com.iflytek.cloud.a.f.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12312e;

    private final class a implements GrammarListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private GrammarListener f12313a;
        private Handler b = new HandlerC0238a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.c.a.f$a$a, reason: collision with other inner class name */
        class HandlerC0238a extends Handler {
            HandlerC0238a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.f12313a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    a.this.f12313a.onBuildFinish(null, (SpeechError) message.obj);
                } else if (i == 1) {
                    a.this.f12313a.onBuildFinish((String) message.obj, null);
                }
                super.handleMessage(message);
            }
        }

        public a(GrammarListener grammarListener) {
            this.f12313a = null;
            this.f12313a = grammarListener;
        }

        @Override // com.iflytek.cloud.GrammarListener
        public void onBuildFinish(String str, SpeechError speechError) {
            if (speechError != null) {
                this.b.sendMessage(this.b.obtainMessage(0, speechError));
            } else {
                this.b.sendMessage(this.b.obtainMessage(1, str));
            }
        }
    }

    private final class b implements LexiconListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private LexiconListener f12315a;
        private Handler b = new a(Looper.getMainLooper());

        class a extends Handler {
            a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (b.this.f12315a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    b.this.f12315a.onLexiconUpdated(null, (SpeechError) message.obj);
                } else if (i == 1) {
                    b.this.f12315a.onLexiconUpdated((String) message.obj, null);
                }
                super.handleMessage(message);
            }
        }

        public b(LexiconListener lexiconListener) {
            this.f12315a = null;
            this.f12315a = lexiconListener;
        }

        @Override // com.iflytek.cloud.LexiconListener
        public void onLexiconUpdated(String str, SpeechError speechError) {
            if (speechError != null) {
                this.b.sendMessage(this.b.obtainMessage(0, speechError));
            } else {
                this.b.sendMessage(this.b.obtainMessage(1, str));
            }
        }
    }

    private final class c implements RecognizerListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RecognizerListener f12317a;
        private boolean b = false;
        private Handler c = new a(Looper.getMainLooper());

        class a extends Handler {
            a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (c.this.f12317a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    c.this.f12317a.onError((SpeechError) message.obj);
                } else if (i == 1) {
                    c.this.f12317a.onVolumeChanged(message.arg1, (byte[]) message.obj);
                } else if (i == 2) {
                    c.this.f12317a.onBeginOfSpeech();
                } else if (i == 3) {
                    c.this.f12317a.onEndOfSpeech();
                } else if (i == 4) {
                    c.this.f12317a.onResult((RecognizerResult) message.obj, message.arg1 == 1);
                    if (!c.this.b) {
                        f.this.b("ui_frs");
                        c.this.b = true;
                    }
                    if (1 == message.arg1) {
                        f.this.b("ui_lrs");
                    }
                } else if (i == 6) {
                    Message message2 = (Message) message.obj;
                    c.this.f12317a.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                }
                super.handleMessage(message);
            }
        }

        public c(RecognizerListener recognizerListener) {
            this.f12317a = null;
            this.f12317a = recognizerListener;
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onBeginOfSpeech() {
            DebugLog.LogD("onBeginOfSpeech");
            this.c.sendMessage(this.c.obtainMessage(2, 0, 0, null));
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onEndOfSpeech() {
            this.c.sendMessage(this.c.obtainMessage(3, 0, 0, null));
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onError(SpeechError speechError) {
            f.this.g();
            this.c.sendMessage(this.c.obtainMessage(0, speechError));
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            Message message = new Message();
            message.what = i;
            message.arg1 = i2;
            message.arg2 = i3;
            message.obj = bundle;
            this.c.sendMessage(this.c.obtainMessage(6, 0, 0, message));
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onResult(RecognizerResult recognizerResult, boolean z) {
            if (z) {
                f.this.g();
            }
            this.c.sendMessage(this.c.obtainMessage(4, !z ? 0 : 1, 0, recognizerResult));
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onVolumeChanged(int i, byte[] bArr) {
            this.c.sendMessage(this.c.obtainMessage(1, i, 0, bArr));
        }
    }

    public f(Context context) {
        super(context);
        this.f12312e = false;
    }

    public void b(String str) {
        synchronized (this.b) {
            if (this.c != null) {
                ((com.iflytek.cloud.a.b.b) this.c).getPerfLog().a(str);
            }
        }
    }

    public int buildGrammar(String str, String str2, GrammarListener grammarListener) {
        if (TextUtils.isEmpty(str2)) {
            return ErrorCode.ERROR_EMPTY_UTTERANCE;
        }
        if (TextUtils.isEmpty(str) || grammarListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        new com.iflytek.cloud.a.b.a().a(str, str2, new a(grammarListener), this.mSessionParams);
        return 0;
    }

    @Override // com.iflytek.cloud.a.f.e
    public void cancel(boolean z) {
        synchronized (this.b) {
            g();
            super.cancel(z);
        }
    }

    protected boolean f() {
        return TextUtils.isEmpty(this.mSessionParams.a("bos_dispose")) ? AudioDetector.TYPE_META.equalsIgnoreCase(this.mSessionParams.a(AudioDetector.VAD_ENGINE)) : this.mSessionParams.a("bos_dispose", false);
    }

    protected void g() {
        if (this.c != null) {
            String strA = this.c.getParam().a(SpeechConstant.ASR_AUDIO_PATH);
            if (!TextUtils.isEmpty(strA) && FileUtil.saveFile(((com.iflytek.cloud.a.b.b) this.c).a(), strA)) {
                FileUtil.formatPcm(this.c.getParam().a(SpeechConstant.AUDIO_FORMAT, (String) null), strA, this.c.getParam().a(SpeechConstant.SAMPLE_RATE, this.c.mSampleRate));
            }
        }
        com.iflytek.cloud.msc.util.g.b(this.f12265a, Boolean.valueOf(this.f12312e), null);
    }

    public boolean isListening() {
        return c();
    }

    public int startListening(RecognizerListener recognizerListener) {
        int errorCode;
        synchronized (this.b) {
            errorCode = 0;
            try {
                this.f12312e = this.mSessionParams.a(SpeechConstant.KEY_REQUEST_FOCUS, true);
                if (this.c != null && this.c.isRunning()) {
                    this.c.cancel(this.mSessionParams.a(SpeechConstant.ASR_INTERRUPT_ERROR, false));
                }
                if (f()) {
                    this.c = new com.iflytek.cloud.a.b.c(this.f12265a, this.mSessionParams, a("iat"));
                } else {
                    this.c = new com.iflytek.cloud.a.b.b(this.f12265a, this.mSessionParams, a("iat"));
                }
                com.iflytek.cloud.msc.util.g.a(this.f12265a, Boolean.valueOf(this.f12312e), null);
                ((com.iflytek.cloud.a.b.b) this.c).a(new c(recognizerListener));
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
                ((com.iflytek.cloud.a.b.b) this.c).a(true);
            }
        }
    }

    public int updateLexicon(String str, String str2, LexiconListener lexiconListener) {
        if (TextUtils.isEmpty(str2)) {
            return ErrorCode.ERROR_EMPTY_UTTERANCE;
        }
        if (TextUtils.isEmpty(str) || lexiconListener == null) {
            return ErrorCode.ERROR_INVALID_PARAM;
        }
        com.iflytek.cloud.a.b.a aVar = new com.iflytek.cloud.a.b.a();
        this.mSessionParams.a(SpeechConstant.SUBJECT, "uup", false);
        String parameter = getParameter(SpeechConstant.LEXICON_TYPE);
        if (TextUtils.isEmpty(parameter)) {
            parameter = str;
        }
        this.mSessionParams.a(SpeechConstant.DATA_TYPE, parameter, false);
        aVar.a(str, str2, new b(lexiconListener), this.mSessionParams);
        return 0;
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
                if (((com.iflytek.cloud.a.b.b) this.c).getAudioSource() != -1) {
                    return 10106;
                }
                return ((com.iflytek.cloud.a.b.b) this.c).a(bArr, i, i2);
            }
            DebugLog.LogD("writeAudio error,buffer is null.");
            return 10109;
        }
    }
}
