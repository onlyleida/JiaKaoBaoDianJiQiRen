package com.iflytek.cloud.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.b.c;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import com.mobile.auth.gatewayauth.Constant;
import java.io.UnsupportedEncodingException;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public class a extends com.iflytek.cloud.a.f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MSCSessionInfo f12156a = new MSCSessionInfo();
    private MSCSessionInfo b = new MSCSessionInfo();
    private byte[] c = null;

    private synchronized void writeData(byte[] bArr, int i, int i2) throws SpeechError {
        DebugLog.LogI("QISEAudioWrite enter, length: " + i);
        int iQISEAudioWrite = MSC.QISEAudioWrite(this.mClientID, bArr, i, i2, this.b);
        DebugLog.LogI("QISEAudioWrite leave: " + iQISEAudioWrite);
        this.f12156a.sesstatus = this.b.sesstatus;
        if (iQISEAudioWrite != 0) {
            throw new SpeechError(this.b.errorcode);
        }
    }

    public synchronized void a(byte[] bArr, byte[] bArr2) throws SpeechError {
        DebugLog.LogD("QISETextPut enter");
        int iQISETextPut = MSC.QISETextPut(this.mClientID, bArr, bArr2);
        DebugLog.LogD("QISETextPut leave: " + iQISETextPut);
        if (iQISETextPut != 0) {
            throw new SpeechError(iQISETextPut);
        }
    }

    public synchronized int getAudioVolume() {
        int iQISEGetParam;
        char[] cArr = this.mClientID;
        int i = 0;
        if (cArr == null) {
            return 0;
        }
        try {
            iQISEGetParam = MSC.QISEGetParam(cArr, SpeechConstant.VOLUME.getBytes(), this.b);
            try {
                if (iQISEGetParam == 0) {
                    i = Integer.parseInt(new String(new String(this.b.buffer)));
                } else {
                    DebugLog.LogI("VAD CHECK FALSE");
                }
            } catch (Throwable unused) {
                DebugLog.LogI("getAudioVolume Exception vadret = " + iQISEGetParam);
            }
        } catch (Throwable unused2) {
            iQISEGetParam = 0;
        }
        return i;
    }

    public synchronized int getEpStatus() {
        return this.b.epstatues;
    }

    public byte[] getResultData() {
        return this.c;
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
            if (MSC.QISEGetParam(cArr, str.getBytes(), this.f12156a) == 0) {
                return new String(this.f12156a.buffer);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public synchronized void pushAudioData(byte[] bArr, int i) throws SpeechError {
        writeData(bArr, i, 2);
    }

    public synchronized void pushEndFlag() throws SpeechError {
        com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
        DebugLog.LogD("IseSession pushEndFlag");
        writeData(new byte[0], 0, 4);
    }

    @Override // com.iflytek.cloud.a.f.b
    public int sessionBegin(Context context, String str, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        this.mClientID = null;
        String strB = c.b(context, aVar);
        com.iflytek.cloud.msc.util.log.a.a("MSCSessionBegin", null);
        DebugLog.LogD("QISESessionBegin enter");
        if (TextUtils.isEmpty(str)) {
            this.mClientID = MSC.QISESessionBegin(strB.getBytes(aVar.getParamEncoding()), null, this.f12156a);
        } else {
            this.mClientID = MSC.QISESessionBegin(strB.getBytes(aVar.getParamEncoding()), str.getBytes(aVar.getParamEncoding()), this.f12156a);
            DebugLog.LogD("sessionBegin userModelId:" + str);
        }
        DebugLog.LogD("QISESessionBegin leave: " + this.f12156a.errorcode);
        com.iflytek.cloud.msc.util.log.a.a("SessionBeginEnd", null);
        int i = this.f12156a.errorcode;
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
        DebugLog.LogD("ISESessionEnd enter ");
        long jCurrentTimeMillis = System.currentTimeMillis();
        DebugLog.LogD("ISESessionEnd leave: " + MSC.QISESessionEnd(this.mClientID, str.getBytes()) + " time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
        this.mClientID = null;
        this.mSessionID = null;
    }

    public com.iflytek.cloud.a.f.b.a a() throws SpeechError {
        Date date = new Date();
        this.c = MSC.QISEGetResult(this.mClientID, this.f12156a);
        Date date2 = new Date();
        StringBuilder sb = new StringBuilder();
        sb.append("QISRGetResult leave: ");
        sb.append(this.c != null);
        sb.append(" time:");
        sb.append(date2.getTime() - date.getTime());
        DebugLog.LogI(sb.toString());
        MSCSessionInfo mSCSessionInfo = this.f12156a;
        int i = mSCSessionInfo.errorcode;
        if (i == 0) {
            int i2 = mSCSessionInfo.rsltstatus;
            if (i2 == 0) {
                DebugLog.LogD("ResultStatus: hasResult" + i2);
                return com.iflytek.cloud.a.f.b.a.hasResult;
            }
            if (i2 == 2) {
                DebugLog.LogI("ResultStatus: noResult" + i2);
                return com.iflytek.cloud.a.f.b.a.noResult;
            }
            if (i2 != 5) {
                DebugLog.LogD("IseSession getResult get unmatched result status: " + i2);
                return com.iflytek.cloud.a.f.b.a.noResult;
            }
            DebugLog.LogD("ResultStatus: resultOver" + i2);
            return com.iflytek.cloud.a.f.b.a.resultOver;
        }
        DebugLog.LogE("Result: error " + i);
        throw new SpeechError(i);
    }
}
