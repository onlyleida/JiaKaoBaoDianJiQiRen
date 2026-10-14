package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.f;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.ResourceUtil;
import com.iflytek.speech.SpeechRecognizerAidl;

/* JADX INFO: loaded from: classes4.dex */
public final class SpeechRecognizer extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SpeechRecognizer f12126a;
    private f b;
    private SpeechRecognizerAidl c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f12127d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InitListener f12128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f12129f = new a(Looper.getMainLooper());

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (SpeechRecognizer.this.f12128e == null) {
                return;
            }
            SpeechRecognizer.this.f12128e.onInit(0);
        }
    }

    private final class b implements RecognizerListener {
        static /* synthetic */ com.iflytek.speech.RecognizerListener a(b bVar) {
            throw null;
        }
    }

    protected SpeechRecognizer(Context context, InitListener initListener) {
        this.b = null;
        this.c = null;
        this.f12128e = null;
        this.f12128e = initListener;
        this.b = new f(context);
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility != null && utility.c() && utility.getEngineMode() != d.a.MSC) {
            this.c = new SpeechRecognizerAidl(context.getApplicationContext(), initListener);
        } else if (initListener != null) {
            Message.obtain(this.f12129f, 0, 0, 0, null).sendToTarget();
        }
    }

    public static synchronized SpeechRecognizer createRecognizer(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (f12126a == null && SpeechUtility.getUtility() != null) {
                f12126a = new SpeechRecognizer(context, initListener);
            }
        }
        return f12126a;
    }

    public static SpeechRecognizer getRecognizer() {
        return f12126a;
    }

    public int buildGrammar(String str, String str2, GrammarListener grammarListener) {
        DebugLog.LogD("start engine mode = " + d.a.MSC.toString());
        f fVar = this.b;
        if (fVar == null) {
            return 21001;
        }
        fVar.setParameter(this.mSessionParams);
        return this.b.buildGrammar(str, str2, grammarListener);
    }

    public void cancel() {
        f fVar = this.b;
        if (fVar != null && fVar.isListening()) {
            this.b.cancel(false);
            return;
        }
        SpeechRecognizerAidl speechRecognizerAidl = this.c;
        if (speechRecognizerAidl == null || !speechRecognizerAidl.isListening()) {
            DebugLog.LogE("SpeechRecognizer cancel failed, is not running");
            return;
        }
        b bVar = this.f12127d;
        if (bVar != null) {
            this.c.cancel(b.a(bVar));
        }
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        SpeechRecognizerAidl speechRecognizerAidl = this.c;
        if (speechRecognizerAidl != null) {
            speechRecognizerAidl.destory();
        }
        synchronized (this) {
            this.c = null;
        }
        f fVar = this.b;
        boolean zDestroy = fVar != null ? fVar.destroy() : true;
        if (zDestroy && (zDestroy = super.destroy())) {
            synchronized (d.sSync) {
                f12126a = null;
            }
            SpeechUtility utility = SpeechUtility.getUtility();
            if (utility != null) {
                DebugLog.LogD("Destory asr engine.");
                utility.setParameter(ResourceUtil.ENGINE_DESTROY, "engine_destroy=asr");
            }
        }
        return zDestroy;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    public boolean isListening() {
        f fVar = this.b;
        if (fVar != null && fVar.isListening()) {
            return true;
        }
        SpeechRecognizerAidl speechRecognizerAidl = this.c;
        return speechRecognizerAidl != null && speechRecognizerAidl.isListening();
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int startListening(RecognizerListener recognizerListener) {
        DebugLog.LogD("start engine mode = " + getStartMode("asr", this.c).toString());
        f fVar = this.b;
        if (fVar == null) {
            return 21001;
        }
        fVar.setParameter(this.mSessionParams);
        return this.b.startListening(recognizerListener);
    }

    public void stopListening() {
        f fVar = this.b;
        if (fVar != null && fVar.isListening()) {
            this.b.stopListening();
            return;
        }
        SpeechRecognizerAidl speechRecognizerAidl = this.c;
        if (speechRecognizerAidl == null || !speechRecognizerAidl.isListening()) {
            DebugLog.LogE("SpeechRecognizer stopListening failed, is not running");
            return;
        }
        b bVar = this.f12127d;
        if (bVar != null) {
            this.c.stopListening(b.a(bVar));
        }
    }

    public int updateLexicon(String str, String str2, LexiconListener lexiconListener) {
        DebugLog.LogD("start engine mode = " + getStartMode("asr", this.c).toString());
        f fVar = this.b;
        if (fVar == null) {
            return 21001;
        }
        fVar.setParameter(this.mSessionParams);
        return this.b.updateLexicon(str, str2, lexiconListener);
    }

    public int writeAudio(byte[] bArr, int i, int i2) {
        f fVar = this.b;
        if (fVar != null && fVar.isListening()) {
            return this.b.writeAudio(bArr, i, i2);
        }
        SpeechRecognizerAidl speechRecognizerAidl = this.c;
        if (speechRecognizerAidl != null && speechRecognizerAidl.isListening()) {
            return this.c.writeAudio(bArr, i, i2);
        }
        DebugLog.LogE("SpeechRecognizer writeAudio failed, is not running");
        return ErrorCode.ERROR_ENGINE_CALL_FAIL;
    }

    protected void a(Context context) {
        SpeechRecognizerAidl speechRecognizerAidl;
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility == null || !utility.c() || utility.getEngineMode() == d.a.MSC) {
            if (this.f12128e == null || (speechRecognizerAidl = this.c) == null) {
                return;
            }
            speechRecognizerAidl.destory();
            this.c = null;
            return;
        }
        SpeechRecognizerAidl speechRecognizerAidl2 = this.c;
        if (speechRecognizerAidl2 != null && !speechRecognizerAidl2.isAvailable()) {
            this.c.destory();
            this.c = null;
        }
        this.c = new SpeechRecognizerAidl(context.getApplicationContext(), this.f12128e);
    }
}
