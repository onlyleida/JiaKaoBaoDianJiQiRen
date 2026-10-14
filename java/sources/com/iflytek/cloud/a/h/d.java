package com.iflytek.cloud.a.h;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import com.mobile.auth.gatewayauth.Constant;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public class d extends com.iflytek.cloud.a.f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MSCSessionInfo f12287a = new MSCSessionInfo();

    public synchronized void a(byte[] bArr) throws SpeechError {
        DebugLog.LogD("QTTSTextPut enter");
        com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
        int iQTTSTextPut = MSC.QTTSTextPut(this.mClientID, bArr);
        DebugLog.LogD("QTTSTextPut leavel:" + iQTTSTextPut);
        if (iQTTSTextPut != 0) {
            throw new SpeechError(iQTTSTextPut);
        }
    }

    public int b() {
        try {
            return Integer.parseInt(getStringValue("ced"));
        } catch (Exception unused) {
            return 0;
        }
    }

    public String c() {
        try {
            char[] cArrQTTSAudioInfo = MSC.QTTSAudioInfo(this.mClientID);
            if (cArrQTTSAudioInfo != null && cArrQTTSAudioInfo.length > 0) {
                return new String(cArrQTTSAudioInfo);
            }
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
        return "";
    }

    public synchronized boolean d() {
        return 2 == this.f12287a.sesstatus;
    }

    public synchronized int getIntValue(String str) {
        int i = 0;
        if (this.mClientID == null) {
            return 0;
        }
        try {
            String stringValue = getStringValue(str);
            if (!TextUtils.isEmpty(stringValue)) {
                i = Integer.parseInt(new String(stringValue));
            }
        } catch (Exception unused) {
        }
        return i;
    }

    protected String getSessionID() {
        if (this.mSessionID == null) {
            this.mSessionID = getStringValue("sid");
        }
        return this.mSessionID;
    }

    public synchronized String getStringValue(String str) {
        char[] cArr = this.mClientID;
        if (cArr == null) {
            return null;
        }
        try {
            if (MSC.QTTSGetParam(cArr, str.getBytes(), this.f12287a) == 0) {
                return new String(this.f12287a.buffer);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // com.iflytek.cloud.a.f.b
    public int sessionBegin(Context context, String str, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        this.mClientID = null;
        String strE = com.iflytek.cloud.b.c.e(context, aVar);
        DebugLog.LogD("QTTSSessionBegin enter");
        long jCurrentTimeMillis = System.currentTimeMillis();
        byte[] bytes = strE.getBytes(aVar.getParamEncoding());
        com.iflytek.cloud.msc.util.log.a.a("MSCSessionBegin", null);
        synchronized (d.class) {
            this.mClientID = MSC.QTTSSessionBegin(bytes, this.f12287a);
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionBeginEnd", null);
        DebugLog.LogD("QTTSSessionBegin leave:" + (System.currentTimeMillis() - jCurrentTimeMillis) + " ErrorCode:" + this.f12287a.errorcode);
        int i = this.f12287a.errorcode;
        if (i == 0 || i == 10129 || i == 10113 || i == 10132) {
            return i;
        }
        throw new SpeechError(i);
    }

    @Override // com.iflytek.cloud.a.f.b
    public void sessionEnd(String str) {
        if (this.mClientID == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = Constant.VENDOR_UNKNOWN;
        }
        DebugLog.LogD("QTTSSessionEnd enter");
        DebugLog.LogD("QTTSSessionEnd leavel:" + MSC.QTTSSessionEnd(this.mClientID, str.getBytes()));
        this.mClientID = null;
        this.mSessionID = null;
    }

    public synchronized byte[] a() throws SpeechError {
        byte[] bArrQTTSAudioGet;
        if (this.mClientID != null) {
            DebugLog.LogI("QTTSAudioGet enter");
            bArrQTTSAudioGet = MSC.QTTSAudioGet(this.mClientID, this.f12287a);
            StringBuilder sb = new StringBuilder();
            sb.append("QTTSAudioGet leave:");
            sb.append(this.f12287a.errorcode);
            sb.append("value len = ");
            sb.append(bArrQTTSAudioGet == null ? 0 : bArrQTTSAudioGet.length);
            DebugLog.LogI(sb.toString());
            int i = this.f12287a.errorcode;
            if (i != 0) {
                throw new SpeechError(i);
            }
        } else {
            throw new SpeechError(ErrorCode.ERROR_NET_EXCEPTION);
        }
        return bArrQTTSAudioGet;
    }
}
