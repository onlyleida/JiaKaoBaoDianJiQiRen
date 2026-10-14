package com.iflytek.cloud;

import android.content.Context;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.e;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class SpeechEvaluator extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SpeechEvaluator f12125a;
    private e b;

    protected SpeechEvaluator(Context context, InitListener initListener) {
        this.b = null;
        this.b = new e(context);
    }

    public static SpeechEvaluator createEvaluator(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (f12125a == null && SpeechUtility.getUtility() != null) {
                f12125a = new SpeechEvaluator(context, null);
            }
        }
        return f12125a;
    }

    public static SpeechEvaluator getEvaluator() {
        return f12125a;
    }

    public void cancel() {
        e eVar = this.b;
        if (eVar == null || !eVar.isEvaluating()) {
            return;
        }
        this.b.cancel(false);
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        e eVar = this.b;
        boolean zDestroy = eVar != null ? eVar.destroy() : true;
        if (zDestroy && (zDestroy = super.destroy())) {
            synchronized (d.sSync) {
                f12125a = null;
            }
        }
        return zDestroy;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    public boolean isEvaluating() {
        e eVar = this.b;
        return eVar != null && eVar.isEvaluating();
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int startEvaluating(String str, String str2, EvaluatorListener evaluatorListener) {
        e eVar = this.b;
        if (eVar == null) {
            return 21001;
        }
        eVar.setParameter(this.mSessionParams);
        return this.b.startEvaluating(str, str2, evaluatorListener);
    }

    public void stopEvaluating() {
        e eVar = this.b;
        if (eVar == null || !eVar.isEvaluating()) {
            DebugLog.LogE("SpeechEvaluator stopEvaluating failed, is not running");
        } else {
            this.b.stopEvaluating();
        }
    }

    public boolean writeAudio(byte[] bArr, int i, int i2) {
        e eVar = this.b;
        if (eVar != null && eVar.isEvaluating()) {
            return this.b.writeAudio(bArr, i, i2);
        }
        DebugLog.LogE("SpeechEvaluator writeAudio failed, is not running");
        return false;
    }

    public int startEvaluating(byte[] bArr, String str, EvaluatorListener evaluatorListener) {
        e eVar = this.b;
        if (eVar == null) {
            return 21001;
        }
        eVar.setParameter(this.mSessionParams);
        return this.b.startEvaluating(bArr, str, evaluatorListener);
    }
}
