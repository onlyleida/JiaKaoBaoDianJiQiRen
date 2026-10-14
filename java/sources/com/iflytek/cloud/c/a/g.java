package com.iflytek.cloud.c.a;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SynthesizerListener;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class g extends com.iflytek.cloud.a.f.e implements com.iflytek.cloud.a.h.c.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f12320e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.iflytek.cloud.a.h.c f12321f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.iflytek.cloud.a.h.c f12322g;

    public g(Context context) {
        super(context);
        this.f12320e = null;
        this.f12321f = null;
        this.f12322g = null;
        this.f12320e = context.getApplicationContext();
    }

    private int a(String str, SynthesizerListener synthesizerListener, String str2) {
        DebugLog.LogD("new Session Start");
        com.iflytek.cloud.a.h.c cVar = new com.iflytek.cloud.a.h.c(this.f12320e);
        this.f12321f = cVar;
        cVar.a(this);
        int iA = this.f12321f.a(str, this.mSessionParams, synthesizerListener, true, this.mSessionParams.a(SpeechConstant.TTS_AUDIO_PATH));
        if (!TextUtils.isEmpty(str2)) {
            com.iflytek.cloud.a.h.c cVar2 = new com.iflytek.cloud.a.h.c(this.f12320e);
            this.f12322g = cVar2;
            cVar2.a(this);
            this.f12322g.a(str2, this.mSessionParams);
        }
        return iA;
    }

    @Override // com.iflytek.cloud.a.f.e, com.iflytek.cloud.a.f.d
    public boolean destroy() {
        a(false);
        super.destroy();
        return true;
    }

    public int f() {
        int iF;
        DebugLog.LogD("getState enter");
        synchronized (this) {
            com.iflytek.cloud.a.h.c cVar = this.f12321f;
            iF = cVar != null ? cVar.f() : 4;
        }
        DebugLog.LogD("getState leave");
        return iF;
    }

    public boolean isSpeaking() {
        boolean zIsSpeaking;
        DebugLog.LogD("isSpeaking enter");
        synchronized (this) {
            com.iflytek.cloud.a.h.c cVar = this.f12321f;
            zIsSpeaking = cVar != null ? cVar.isSpeaking() : false;
        }
        DebugLog.LogD("isSpeaking leave");
        return zIsSpeaking;
    }

    public void pauseSpeaking() {
        DebugLog.LogD("pauseSpeaking enter");
        synchronized (this) {
            com.iflytek.cloud.a.h.c cVar = this.f12321f;
            if (cVar != null) {
                cVar.pauseSpeaking();
            }
        }
        DebugLog.LogD("pauseSpeaking leave");
    }

    public void resumeSpeaking() {
        DebugLog.LogD("resumeSpeaking enter");
        synchronized (this) {
            com.iflytek.cloud.a.h.c cVar = this.f12321f;
            if (cVar != null) {
                cVar.resumeSpeaking();
            }
        }
        DebugLog.LogD("resumeSpeaking leave");
    }

    public int startSpeaking(String str, SynthesizerListener synthesizerListener) {
        int i;
        int iA;
        DebugLog.LogD("startSpeaking enter");
        synchronized (this) {
            String strE = this.mSessionParams.e(SpeechConstant.NEXT_TEXT);
            com.iflytek.cloud.a.h.c cVar = this.f12321f;
            i = 0;
            if (cVar != null && cVar.isSpeaking()) {
                this.f12321f.cancel(this.mSessionParams.a(SpeechConstant.TTS_INTERRUPT_ERROR, false));
            }
            com.iflytek.cloud.a.h.c cVar2 = this.f12322g;
            if (cVar2 == null) {
                iA = a(str, synthesizerListener, strE);
            } else if (str.equals(cVar2.n)) {
                com.iflytek.cloud.a.h.c cVar3 = this.f12322g;
                if (cVar3.o == null && cVar3.l) {
                    this.f12322g = null;
                    if (!TextUtils.isEmpty(strE)) {
                        com.iflytek.cloud.a.h.c cVar4 = new com.iflytek.cloud.a.h.c(this.f12320e);
                        this.f12322g = cVar4;
                        cVar4.a(this);
                        this.f12322g.a(strE, this.mSessionParams);
                    }
                    this.f12321f = cVar3;
                    cVar3.a(synthesizerListener);
                    this.f12321f.resumeSpeaking();
                    if (this.f12321f.m) {
                        a();
                        DebugLog.LogD("startSpeaking NextSession pause");
                    }
                } else {
                    cVar3.cancel(false);
                    this.f12322g = null;
                    iA = a(str, synthesizerListener, strE);
                }
            } else {
                this.f12322g.cancel(false);
                this.f12322g = null;
                iA = a(str, synthesizerListener, strE);
            }
            i = iA;
        }
        DebugLog.LogD("startSpeaking leave");
        return i;
    }

    public int synthesizeToUri(String str, String str2, SynthesizerListener synthesizerListener) {
        int iA;
        DebugLog.LogD("synthesizeToUri enter");
        synchronized (this) {
            com.iflytek.cloud.a.h.c cVar = this.f12321f;
            if (cVar != null && cVar.isSpeaking()) {
                this.f12321f.cancel(this.mSessionParams.a(SpeechConstant.TTS_INTERRUPT_ERROR, false));
            }
            com.iflytek.cloud.a.h.c cVar2 = new com.iflytek.cloud.a.h.c(this.f12320e);
            this.f12321f = cVar2;
            iA = cVar2.a(str, str2, this.mSessionParams, synthesizerListener);
        }
        DebugLog.LogD("synthesizeToUri leave");
        return iA;
    }

    @Override // com.iflytek.cloud.a.h.c.f
    public void a() {
        synchronized (this) {
            com.iflytek.cloud.a.h.c cVar = this.f12322g;
            if (cVar != null) {
                cVar.g();
            }
        }
    }

    public void a(boolean z) {
        DebugLog.LogD("stopSpeaking enter:" + z);
        synchronized (this) {
            if (this.f12321f != null) {
                DebugLog.LogD("-->stopSpeaking cur");
                this.f12321f.cancel(z);
                this.f12321f = null;
            }
            if (this.f12322g != null) {
                DebugLog.LogD("-->stopSpeaking cur next");
                this.f12322g.cancel(false);
                this.f12322g = null;
            }
        }
        DebugLog.LogD("stopSpeaking leave");
    }
}
