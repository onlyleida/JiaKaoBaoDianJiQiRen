package com.iflytek.cloud.a.c;

import android.content.Context;
import android.os.SystemClock;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import java.io.UnsupportedEncodingException;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public class c extends com.iflytek.cloud.a.f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MSCSessionInfo f12184a = new MSCSessionInfo();
    private MSCSessionInfo b = new MSCSessionInfo();
    private MSCSessionInfo c = new MSCSessionInfo();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f12185d = null;

    private synchronized void writeData(byte[] bArr, int i, int i2) throws SpeechError {
        int iQISVAudioWrite = MSC.QISVAudioWrite(this.mClientID, null, bArr, i, i2, this.f12184a);
        DebugLog.LogI("QISVAudioWrite error:" + iQISVAudioWrite);
        if (iQISVAudioWrite != 0) {
            throw new SpeechError(iQISVAudioWrite);
        }
    }

    public synchronized boolean a() {
        return this.f12184a.epstatues >= 3;
    }

    public synchronized int getAudioVolume() {
        int i;
        int iQISVGetParam;
        i = 0;
        try {
            iQISVGetParam = MSC.QISVGetParam(this.mClientID, SpeechConstant.VOLUME.getBytes(), this.b);
            try {
                if (iQISVGetParam == 0) {
                    i = Integer.parseInt(new String(new String(this.b.buffer)));
                } else {
                    DebugLog.LogI("VAD CHECK FALSE");
                }
            } catch (Exception unused) {
                DebugLog.LogI("getAudioVolume Exception vadret = " + iQISVGetParam);
            }
        } catch (Exception unused2) {
            iQISVGetParam = 0;
        }
        return i;
    }

    public byte[] getResultData() {
        return this.f12185d;
    }

    protected String getSessionID() {
        if (this.mSessionID == null) {
            this.mSessionID = getStringValue("sid");
        }
        return this.mSessionID;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x006e  */
    /* JADX WARN: Code duplicated, block: B:18:0x0072  */
    /* JADX WARN: Instruction removed from duplicated block: B:18:0x0072, please report this as an issue */
    public com.iflytek.cloud.a.f.b.a getStatus() throws SpeechError {
        Date date = new Date();
        this.f12185d = MSC.QISVGetResult(this.mClientID, null, this.f12184a);
        Date date2 = new Date();
        StringBuilder sb = new StringBuilder();
        sb.append("QISVGetResult leavel:");
        sb.append(this.f12185d != null);
        sb.append(" time:");
        sb.append(date2.getTime() - date.getTime());
        DebugLog.LogI(sb.toString());
        MSCSessionInfo mSCSessionInfo = this.f12184a;
        int i = mSCSessionInfo.errorcode;
        if (i != 0) {
            DebugLog.LogE("Result: error errorcode is " + i);
            throw new SpeechError(i);
        }
        int i2 = mSCSessionInfo.rsltstatus;
        if (i2 == 0) {
            if (this.f12185d != null) {
                DebugLog.LogD("ResultStatus: hasResult" + i2);
                return com.iflytek.cloud.a.f.b.a.hasResult;
            }
        } else {
            if (i2 == 1) {
                DebugLog.LogD("ResultStatus: noResult" + i2);
                throw new SpeechError(ErrorCode.ERROR_NO_MATCH);
            }
            if (i2 == 5) {
                if (this.f12185d != null) {
                    DebugLog.LogD("ResultStatus: hasResult" + i2);
                    return com.iflytek.cloud.a.f.b.a.hasResult;
                }
            }
        }
        return com.iflytek.cloud.a.f.b.a.noResult;
    }

    public synchronized String getStringValue(String str) {
        char[] cArr = this.mClientID;
        if (cArr == null) {
            return null;
        }
        try {
            if (MSC.QISVGetParam(cArr, str.getBytes(), this.f12184a) == 0) {
                return new String(this.f12184a.buffer);
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
        DebugLog.LogD("IsvSession pushEndFlag");
        writeData(new byte[0], 0, 4);
    }

    @Override // com.iflytek.cloud.a.f.b
    public int sessionBegin(Context context, String str, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        String strC = com.iflytek.cloud.b.c.c(context, aVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.iflytek.cloud.msc.util.log.a.a("MSCSessionBegin", null);
        DebugLog.LogD("QISVSessionBegin begin");
        this.mClientID = MSC.QISVSessionBegin(strC.getBytes(aVar.getParamEncoding()), str == null ? null : str.getBytes(aVar.getParamEncoding()), this.f12184a);
        com.iflytek.cloud.msc.util.log.a.a("SessionBeginEnd", null);
        DebugLog.LogD("QISVSessionBegin ret: " + this.f12184a.errorcode + " time:" + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        int i = this.f12184a.errorcode;
        if (i == 0 || i == 10129 || i == 10113 || i == 10132) {
            return 0;
        }
        throw new SpeechError(i);
    }

    @Override // com.iflytek.cloud.a.f.b
    public void sessionEnd(String str) {
        if (this.mClientID == null) {
            return;
        }
        DebugLog.LogD("isv sessionEnd enter ");
        long jCurrentTimeMillis = System.currentTimeMillis();
        DebugLog.LogD("isv sessionEnd leave:" + (MSC.QISVSessionEnd(this.mClientID, str.getBytes()) == 0) + " time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
        this.mClientID = null;
        this.mSessionID = null;
    }

    public int a(Context context, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String strA = aVar.getParam().a(SpeechConstant.ISV_VID);
        String strC = com.iflytek.cloud.b.c.c(context, aVar);
        DebugLog.LogD("sendRequest enter ");
        com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
        char[] cArrQISVQueDelModel = MSC.QISVQueDelModel(strA == null ? null : strA.getBytes(aVar.getParamEncoding()), strC.getBytes(aVar.getParamEncoding()), this.c);
        com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
        MSC.QISVQueDelModelRelease(cArrQISVQueDelModel);
        int i = this.c.errorcode;
        if (i == 0) {
            i = "true".equals(new String(this.c.buffer)) ? 0 : -1;
        }
        DebugLog.LogD("sendRequest leave:" + i + " time:" + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        if (i == 0 || -1 == i) {
            return i;
        }
        throw new SpeechError(i);
    }
}
