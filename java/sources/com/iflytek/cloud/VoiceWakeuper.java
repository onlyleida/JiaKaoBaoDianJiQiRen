package com.iflytek.cloud;

import android.content.Context;
import com.iflytek.cloud.a.d.e.a;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.k;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.FileDownloadListener;
import com.iflytek.cloud.util.ResourceUtil;

/* JADX INFO: loaded from: classes4.dex */
public class VoiceWakeuper extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static VoiceWakeuper f12154a;
    private k b;

    private VoiceWakeuper(Context context, InitListener initListener) {
        this.b = null;
        this.b = new k(context);
    }

    public static synchronized VoiceWakeuper createWakeuper(Context context, InitListener initListener) {
        synchronized (d.sSync) {
            if (f12154a == null && SpeechUtility.getUtility() != null) {
                f12154a = new VoiceWakeuper(context, initListener);
            }
        }
        return f12154a;
    }

    public static VoiceWakeuper getWakeuper() {
        return f12154a;
    }

    public void cancel() {
        this.b.cancel(false);
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        k kVar = this.b;
        boolean zDestroy = kVar != null ? kVar.destroy() : true;
        a aVarB = a.b();
        if (aVarB != null) {
            aVarB.a();
        }
        if (zDestroy && (zDestroy = super.destroy())) {
            synchronized (d.sSync) {
                f12154a = null;
            }
            SpeechUtility utility = SpeechUtility.getUtility();
            if (utility != null) {
                DebugLog.LogD("Destory ivw engine.");
                utility.setParameter(ResourceUtil.ENGINE_DESTROY, "engine_destroy=ivw");
            }
        }
        return zDestroy;
    }

    public int downloadResource(String str, String str2, String str3, FileDownloadListener fileDownloadListener) {
        return this.b.a(str, str2, str3, true, fileDownloadListener);
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        if (str == null || !str.startsWith("aimic_on_")) {
            return super.getParameter(str);
        }
        a aVarB = a.b();
        if ("aimic_on_channel".equals(str)) {
            return Integer.toString(a.c());
        }
        if ("aimic_on_version".equals(str)) {
            return a.d();
        }
        if (aVarB != null) {
            return aVarB.b(str.substring(9));
        }
        DebugLog.LogE("aimic is null !");
        return null;
    }

    public boolean isListening() {
        return this.b.isListening();
    }

    public int queryResource(String str, RequestListener requestListener) {
        return this.b.a(str, true, requestListener);
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        if (str == null || !str.startsWith("aimic_on_")) {
            return super.setParameter(str, str2);
        }
        a aVarB = a.b();
        if (aVarB == null) {
            return false;
        }
        if (!SpeechConstant.IVW_RESET_AIMIC.equals(str)) {
            return aVarB.a(str.substring(9), str2) == 0;
        }
        aVarB.e();
        return false;
    }

    public int startListening(WakeuperListener wakeuperListener) {
        this.b.setParameter(SpeechConstant.PARAMS, null);
        this.b.setParameter(this.mSessionParams);
        return this.b.startListening(wakeuperListener);
    }

    public void stopListening() {
        this.b.stopListening();
    }

    public int writeAudio(byte[] bArr, int i, int i2) {
        k kVar = this.b;
        if (kVar != null && kVar.isListening()) {
            return this.b.writeAudio(bArr, i, i2);
        }
        DebugLog.LogE("VoiceWakeup writeAudio failed, is not running");
        return ErrorCode.ERROR_ENGINE_CALL_FAIL;
    }
}
