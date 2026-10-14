package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.g;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.ResourceUtil;
import com.iflytek.speech.SpeechSynthesizerAidl;

/* JADX INFO: loaded from: classes4.dex */
public class SpeechSynthesizer extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SpeechSynthesizer f12131a;
    private g b;
    private SpeechSynthesizerAidl c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f12132d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    InitListener f12133e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f12134f = new a(Looper.getMainLooper());

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            InitListener initListener = SpeechSynthesizer.this.f12133e;
            if (initListener == null) {
                return;
            }
            initListener.onInit(0);
        }
    }

    private final class b implements SynthesizerListener {
        static /* synthetic */ com.iflytek.speech.SynthesizerListener a(b bVar) {
            throw null;
        }
    }

    protected SpeechSynthesizer(Context context, InitListener initListener) {
        this.b = null;
        this.c = null;
        this.f12133e = null;
        this.f12133e = initListener;
        this.b = new g(context);
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility == null || !utility.c() || utility.getEngineMode() == d.a.MSC) {
            Message.obtain(this.f12134f, 0, 0, 0, null).sendToTarget();
        } else {
            this.c = new SpeechSynthesizerAidl(context.getApplicationContext(), initListener);
        }
    }

    public static SpeechSynthesizer createSynthesizer(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (f12131a == null && SpeechUtility.getUtility() != null) {
                f12131a = new SpeechSynthesizer(context, initListener);
            }
        }
        return f12131a;
    }

    public static SpeechSynthesizer getSynthesizer() {
        return f12131a;
    }

    protected void a(Context context) {
        SpeechSynthesizerAidl speechSynthesizerAidl;
        SpeechUtility utility = SpeechUtility.getUtility();
        if (utility == null || !utility.c() || utility.getEngineMode() == d.a.MSC) {
            if (this.f12133e == null || (speechSynthesizerAidl = this.c) == null) {
                return;
            }
            speechSynthesizerAidl.destory();
            this.c = null;
            return;
        }
        SpeechSynthesizerAidl speechSynthesizerAidl2 = this.c;
        if (speechSynthesizerAidl2 != null && !speechSynthesizerAidl2.isAvailable()) {
            this.c.destory();
            this.c = null;
        }
        this.c = new SpeechSynthesizerAidl(context.getApplicationContext(), this.f12133e);
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        SpeechSynthesizerAidl speechSynthesizerAidl = this.c;
        if (speechSynthesizerAidl != null) {
            speechSynthesizerAidl.destory();
        }
        g gVar = this.b;
        boolean zDestroy = gVar != null ? gVar.destroy() : true;
        if (zDestroy && (zDestroy = super.destroy())) {
            synchronized (d.sSync) {
                f12131a = null;
            }
            SpeechUtility utility = SpeechUtility.getUtility();
            if (utility != null) {
                DebugLog.LogD("Destory tts engine.");
                String parameter = getParameter(SpeechConstant.ENGINE_TYPE);
                if (parameter == null || !parameter.contains("xtts")) {
                    utility.setParameter(ResourceUtil.ENGINE_DESTROY, "engine_destroy=tts");
                } else {
                    utility.setParameter(ResourceUtil.ENGINE_DESTROY, "engine_destroy=xtts");
                }
            }
        }
        return zDestroy;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        SpeechSynthesizerAidl speechSynthesizerAidl;
        if (SpeechConstant.LOCAL_SPEAKERS.equals(str) && (speechSynthesizerAidl = this.c) != null) {
            return speechSynthesizerAidl.getParameter(str);
        }
        if (!SpeechConstant.TTS_PLAY_STATE.equals(str) || this.b == null) {
            return super.getParameter(str);
        }
        return "" + this.b.f();
    }

    public boolean isSpeaking() {
        g gVar = this.b;
        if (gVar != null && gVar.isSpeaking()) {
            return true;
        }
        SpeechSynthesizerAidl speechSynthesizerAidl = this.c;
        return speechSynthesizerAidl != null && speechSynthesizerAidl.isSpeaking();
    }

    public void pauseSpeaking() {
        b bVar;
        g gVar = this.b;
        if (gVar != null && gVar.isSpeaking()) {
            this.b.pauseSpeaking();
            return;
        }
        SpeechSynthesizerAidl speechSynthesizerAidl = this.c;
        if (speechSynthesizerAidl == null || !speechSynthesizerAidl.isSpeaking() || (bVar = this.f12132d) == null) {
            return;
        }
        this.c.pauseSpeaking(b.a(bVar));
    }

    public void resumeSpeaking() {
        b bVar;
        g gVar = this.b;
        if (gVar != null && gVar.isSpeaking()) {
            this.b.resumeSpeaking();
            return;
        }
        SpeechSynthesizerAidl speechSynthesizerAidl = this.c;
        if (speechSynthesizerAidl == null || !speechSynthesizerAidl.isSpeaking() || (bVar = this.f12132d) == null) {
            return;
        }
        this.c.resumeSpeaking(b.a(bVar));
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int startSpeaking(String str, SynthesizerListener synthesizerListener) {
        DebugLog.LogD("stop all current session in new session");
        stopSpeaking();
        getStartMode("tts", this.c);
        g gVar = this.b;
        if (gVar == null) {
            return 21001;
        }
        gVar.setParameter(this.mSessionParams);
        this.mSessionParams.f(SpeechConstant.NEXT_TEXT);
        return this.b.startSpeaking(str, synthesizerListener);
    }

    public void stopSpeaking() {
        b bVar;
        g gVar = this.b;
        if (gVar != null && gVar.isSpeaking()) {
            this.b.a(false);
        }
        SpeechSynthesizerAidl speechSynthesizerAidl = this.c;
        if (speechSynthesizerAidl == null || !speechSynthesizerAidl.isSpeaking() || (bVar = this.f12132d) == null) {
            return;
        }
        this.c.stopSpeaking(b.a(bVar));
    }

    public int synthesizeToUri(String str, String str2, SynthesizerListener synthesizerListener) {
        g gVar = this.b;
        if (gVar == null) {
            return 21001;
        }
        gVar.setParameter(this.mSessionParams);
        return this.b.synthesizeToUri(str, str2, synthesizerListener);
    }
}
