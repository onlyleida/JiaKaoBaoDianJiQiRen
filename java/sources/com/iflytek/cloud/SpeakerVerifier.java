package com.iflytek.cloud;

import android.content.Context;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class SpeakerVerifier extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SpeakerVerifier f12123a;
    private com.iflytek.cloud.c.a.d b;

    protected SpeakerVerifier(Context context, InitListener initListener) {
        this.b = null;
        this.b = new com.iflytek.cloud.c.a.d(context);
    }

    public static SpeakerVerifier createVerifier(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (f12123a == null && SpeechUtility.getUtility() != null) {
                f12123a = new SpeakerVerifier(context, initListener);
            }
        }
        return f12123a;
    }

    public static SpeakerVerifier getVerifier() {
        return f12123a;
    }

    public void cancel() {
        com.iflytek.cloud.c.a.d dVar = this.b;
        if (dVar == null || !dVar.isListening()) {
            return;
        }
        this.b.cancel(false);
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        com.iflytek.cloud.c.a.d dVar = this.b;
        boolean zDestroy = dVar != null ? dVar.destroy() : true;
        if (zDestroy && (zDestroy = super.destroy())) {
            synchronized (d.sSync) {
                f12123a = null;
            }
        }
        return zDestroy;
    }

    public String generatePassword(int i) {
        com.iflytek.cloud.c.a.d dVar = this.b;
        if (dVar != null) {
            return dVar.generatePassword(i);
        }
        DebugLog.LogE("SpeakerVerifier getPasswordList failed, is not running");
        return null;
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    public void getPasswordList(SpeechListener speechListener) {
        com.iflytek.cloud.c.a.d dVar = this.b;
        if (dVar == null) {
            DebugLog.LogE("SpeakerVerifier getPasswordList failed, is not running");
            return;
        }
        dVar.setParameter(SpeechConstant.PARAMS, null);
        this.mSessionParams.a(SpeechConstant.SUBJECT, SpeechConstant.ENG_IVP, true);
        this.mSessionParams.a("rse", "gb2312", false);
        this.b.setParameter(this.mSessionParams);
        this.b.getPasswordList(speechListener);
    }

    public boolean isListening() {
        com.iflytek.cloud.c.a.d dVar = this.b;
        return dVar != null && dVar.isListening();
    }

    public int sendRequest(String str, String str2, SpeechListener speechListener) {
        return this.b.setParameter(this.mSessionParams) ? this.b.sendRequest(str, str2, speechListener) : ErrorCode.ERROR_INVALID_PARAM;
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int startListening(VerifierListener verifierListener) {
        com.iflytek.cloud.c.a.d dVar = this.b;
        if (dVar == null) {
            return 21001;
        }
        dVar.setParameter(this.mSessionParams);
        return this.b.startListening(verifierListener);
    }

    public void stopListening() {
        com.iflytek.cloud.c.a.d dVar = this.b;
        if (dVar == null || !dVar.isListening()) {
            DebugLog.LogE("SpeakerVerifier stopListening failed, is not running");
        } else {
            this.b.stopListening();
        }
    }

    public int writeAudio(byte[] bArr, int i, int i2) {
        com.iflytek.cloud.c.a.d dVar = this.b;
        if (dVar != null && dVar.isListening()) {
            return this.b.writeAudio(bArr, i, i2);
        }
        DebugLog.LogE("SpeakerVerifier writeAudio failed, is not running");
        return ErrorCode.ERROR_ENGINE_CALL_FAIL;
    }
}
