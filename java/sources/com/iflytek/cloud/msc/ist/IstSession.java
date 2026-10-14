package com.iflytek.cloud.msc.ist;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.a.f.b;
import com.iflytek.cloud.b.c;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.msc.util.log.a;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public class IstSession extends b {
    private static final int IST_AUDIO_SAMPLE_CONTINUE = 2;
    private static final int IST_AUDIO_SAMPLE_LAST = 4;
    private MSCSessionInfo mSessionOut = new MSCSessionInfo();
    private MSCSessionInfo mWriteout = new MSCSessionInfo();
    private byte[] mResult = null;

    public static int getIntByTag(String str) {
        try {
            String stringByTag = getStringByTag(str);
            if (TextUtils.isEmpty(stringByTag)) {
                return 0;
            }
            return Integer.parseInt(stringByTag);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String getStringByTag(String str) {
        try {
            MSCSessionInfo mSCSessionInfo = new MSCSessionInfo();
            if (MSC.QISRGetParam(null, str.getBytes(), mSCSessionInfo) == 0) {
                return new String(mSCSessionInfo.buffer).trim();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private synchronized void writeData(byte[] bArr, int i, int i2) throws SpeechError {
        int iQISRAudioWrite = MSC.QISRAudioWrite(this.mClientID, bArr, i, i2, this.mWriteout);
        this.mSessionOut.sesstatus = this.mWriteout.sesstatus;
        DebugLog.LogI("QISRAudioWrite length:" + i + ", aus=" + i2);
        if (iQISRAudioWrite != 0) {
            throw new SpeechError(this.mWriteout.errorcode);
        }
    }

    protected String getAudioUrl() {
        return getStringValue("audio_url");
    }

    public synchronized int getAudioVolume() {
        int i;
        int iQISRGetParam;
        i = 0;
        try {
            iQISRGetParam = MSC.QISRGetParam(this.mClientID, SpeechConstant.VOLUME.getBytes(), this.mWriteout);
            try {
                if (iQISRGetParam == 0) {
                    i = Integer.parseInt(new String(new String(this.mWriteout.buffer)));
                } else {
                    DebugLog.LogI("VAD CHECK FALSE");
                }
            } catch (Exception unused) {
                DebugLog.LogD("getAudioVolume Exception vadret = " + iQISRGetParam);
            }
        } catch (Exception unused2) {
            iQISRGetParam = 0;
        }
        return i;
    }

    public synchronized int getEpStatus() {
        return this.mWriteout.epstatues;
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
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
        return i;
    }

    public byte[] getResultData() {
        return this.mResult;
    }

    protected String getSessionID() {
        if (this.mSessionID == null) {
            this.mSessionID = getStringValue("sid");
        }
        return this.mSessionID;
    }

    public b.a getStatus() throws SpeechError {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.mResult = MSC.QISRGetResult(this.mClientID, this.mSessionOut);
        StringBuilder sb = new StringBuilder();
        sb.append("QISRGetResult leave: ");
        sb.append(this.mResult != null);
        sb.append(" time:");
        sb.append(SystemClock.elapsedRealtime() - jElapsedRealtime);
        DebugLog.LogI(sb.toString());
        MSCSessionInfo mSCSessionInfo = this.mSessionOut;
        int i = mSCSessionInfo.errorcode;
        if (i != 0) {
            DebugLog.LogE("Result: error errorcode is " + i);
            throw new SpeechError(i);
        }
        int i2 = mSCSessionInfo.rsltstatus;
        if (i2 == 0) {
            DebugLog.LogD("ResultStatus: hasResult" + i2);
            return b.a.hasResult;
        }
        if (i2 == 2) {
            DebugLog.LogI("ResultStatus: noResult" + i2);
            return b.a.noResult;
        }
        if (i2 != 5) {
            return b.a.noResult;
        }
        DebugLog.LogD("ResultStatus: resultOver" + i2);
        return b.a.resultOver;
    }

    public synchronized String getStringValue(String str) {
        char[] cArr = this.mClientID;
        if (cArr == null) {
            return null;
        }
        try {
            if (MSC.QISRGetParam(cArr, str.getBytes(), this.mSessionOut) == 0) {
                return new String(this.mSessionOut.buffer);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public synchronized boolean hasResult() {
        return this.mSessionOut.sesstatus == 0;
    }

    public synchronized void pushAudioData(byte[] bArr, int i) throws SpeechError {
        writeData(bArr, i, 2);
    }

    public synchronized void pushEndFlag() throws SpeechError {
        a.a("LastDataFlag", null);
        DebugLog.LogD("IstSession pushEndFlag");
        writeData(new byte[0], 0, 4);
    }

    @Override // com.iflytek.cloud.a.f.b
    public int sessionBegin(Context context, String str, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        String strB = c.b(context, str, aVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        synchronized (IstSession.class) {
            a.a("MSCSessionBegin", null);
            if (TextUtils.isEmpty(str)) {
                DebugLog.LogD(strB);
                this.mClientID = MSC.QISRSessionBegin(null, strB.getBytes(aVar.getParamEncoding()), this.mSessionOut);
            } else {
                this.mClientID = MSC.QISRSessionBegin(str.getBytes(aVar.getParamEncoding()), strB.getBytes(aVar.getParamEncoding()), this.mSessionOut);
                DebugLog.LogD("sessionBegin grammarId:" + str);
            }
            a.a("SessionBeginEnd", null);
        }
        DebugLog.LogD("sessionBegin ErrCode:" + this.mSessionOut.errorcode + " time:" + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        int i = this.mSessionOut.errorcode;
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
        DebugLog.LogD("sessionEnd enter ");
        long jCurrentTimeMillis = System.currentTimeMillis();
        DebugLog.LogD("sessionEnd leavel:" + (MSC.QISRSessionEnd(this.mClientID, str.getBytes()) == 0) + " time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
        this.mClientID = null;
        this.mSessionID = null;
    }

    public synchronized boolean setParam(String str, String str2) {
        char[] cArr;
        try {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (cArr = this.mClientID) == null) {
                return false;
            }
            int iQISRSetParam = -1;
            try {
                iQISRSetParam = MSC.QISRSetParam(cArr, str.getBytes("utf-8"), str2.getBytes("utf-8"));
            } catch (UnsupportedEncodingException e2) {
                DebugLog.LogE(e2);
            }
            return iQISRSetParam == 0;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized int getIntValue(String str, int i) {
        if (this.mClientID == null) {
            return i;
        }
        try {
            String stringValue = getStringValue(str);
            if (!TextUtils.isEmpty(stringValue)) {
                i = Integer.parseInt(new String(stringValue));
            }
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
        return i;
    }
}
