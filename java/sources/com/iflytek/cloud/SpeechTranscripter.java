package com.iflytek.cloud;

import android.content.Context;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.h;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;

/* JADX INFO: loaded from: classes4.dex */
public final class SpeechTranscripter extends d {
    private static SpeechTranscripter sInstance;
    private h mTranscripter;

    protected SpeechTranscripter(Context context, InitListener initListener) {
        this.mTranscripter = null;
        if (MSC.isLoaded()) {
            this.mTranscripter = new h(context);
        }
    }

    private void clearOnceParameter() {
        setParameter("sid", null);
        setParameter(SpeechConstant.IST_AUDIO_UPLOADED, null);
        setParameter(SpeechConstant.IST_SYNC_ID, null);
    }

    public static synchronized SpeechTranscripter createTranscripter(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (sInstance == null && SpeechUtility.getUtility() != null) {
                sInstance = new SpeechTranscripter(context, initListener);
            }
        }
        if (initListener != null) {
            initListener.onInit(0);
        }
        return sInstance;
    }

    public static SpeechTranscripter getTranscripter() {
        return sInstance;
    }

    public void cancel() {
        DebugLog.LogD("cancel enter");
        h hVar = this.mTranscripter;
        if (hVar == null || !hVar.isTranscripting()) {
            DebugLog.LogE("SpeechTranscripter cancel failed, is not running");
        } else {
            this.mTranscripter.cancel(false);
        }
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        h hVar = this.mTranscripter;
        boolean zDestroy = hVar != null ? hVar.destroy() : true;
        if (zDestroy && (zDestroy = super.destroy())) {
            synchronized (d.sSync) {
                sInstance = null;
            }
        }
        return zDestroy;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        if (this.mTranscripter != null) {
            if ("sid".equalsIgnoreCase(str)) {
                return this.mTranscripter.g();
            }
            if (SpeechConstant.IST_AUDIO_UPLOADED.equalsIgnoreCase(str)) {
                return String.valueOf(this.mTranscripter.h());
            }
            if (SpeechConstant.IST_SYNC_ID.equalsIgnoreCase(str)) {
                return this.mTranscripter.g();
            }
            if (SpeechConstant.IST_AUDIO_PATH.equalsIgnoreCase(str)) {
                return this.mTranscripter.f();
            }
        }
        return super.getParameter(str);
    }

    public boolean isTranscripting() {
        h hVar = this.mTranscripter;
        return hVar != null && hVar.isTranscripting();
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public synchronized int startTranscripting(TranscripterListener transcripterListener) {
        DebugLog.LogD("startTranscripting enter");
        if (this.mTranscripter == null) {
            return 21001;
        }
        if (isTranscripting()) {
            return ErrorCode.ERROR_ENGINE_BUSY;
        }
        this.mTranscripter.setParameter(SpeechConstant.PARAMS, null);
        this.mTranscripter.setParameter(SpeechConstant.PARAMS, this.mSessionParams.toString());
        int iStartTranscripting = this.mTranscripter.startTranscripting(transcripterListener);
        clearOnceParameter();
        return iStartTranscripting;
    }

    public void stopTranscripting() {
        DebugLog.LogD("stopTranscripting enter");
        h hVar = this.mTranscripter;
        if (hVar == null || !hVar.isTranscripting()) {
            DebugLog.LogE("SpeechTranscripter stopListening failed, is not running");
        } else {
            this.mTranscripter.stopTranscripting();
        }
    }

    public boolean writeAudio(byte[] bArr, int i, int i2) {
        h hVar = this.mTranscripter;
        if (hVar != null && hVar.isTranscripting()) {
            return this.mTranscripter.writeAudio(bArr, i, i2);
        }
        DebugLog.LogE("SpeechTranscripter writeAudio failed, is not running");
        return false;
    }
}
