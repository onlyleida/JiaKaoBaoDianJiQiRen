package com.iflytek.cloud.a.b;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.GrammarListener;
import com.iflytek.cloud.LexiconListener;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public class a extends com.iflytek.cloud.a.f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static GrammarListener f12164a;
    private static LexiconListener b;
    private MSCSessionInfo c = new MSCSessionInfo();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MSCSessionInfo f12165d = new MSCSessionInfo();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f12166e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f12167f = "";

    private synchronized void writeData(byte[] bArr, int i, int i2) throws SpeechError {
        int iQISRAudioWrite = MSC.QISRAudioWrite(this.mClientID, bArr, i, i2, this.f12165d);
        this.c.sesstatus = this.f12165d.sesstatus;
        DebugLog.LogI("QISRAudioWrite length:" + i);
        if (iQISRAudioWrite != 0) {
            throw new SpeechError(this.f12165d.errorcode);
        }
    }

    public int a(String str, String str2, GrammarListener grammarListener, com.iflytek.cloud.b.a aVar) {
        f12164a = grammarListener;
        String string = aVar.toString();
        String strA = aVar.a(SpeechConstant.TEXT_ENCODING, "utf-8");
        String strA2 = aVar.a("pte", "utf-8");
        try {
            byte[] bytes = str2.getBytes(strA);
            com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
            DebugLog.LogD("QISRBuildGrammar begin, garmmar: " + str2);
            int iQISRBuildGrammar = MSC.QISRBuildGrammar(str.getBytes(strA2), bytes, bytes.length, string.getBytes(strA2), "grammarCallBack", this);
            DebugLog.LogD("QISRBuildGrammar leave: " + iQISRBuildGrammar);
            return iQISRBuildGrammar;
        } catch (UnsupportedEncodingException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_INVALID_PARAM;
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
            iQISRGetParam = MSC.QISRGetParam(this.mClientID, SpeechConstant.VOLUME.getBytes(), this.f12165d);
            try {
                if (iQISRGetParam == 0) {
                    i = Integer.parseInt(new String(new String(this.f12165d.buffer)));
                } else {
                    DebugLog.LogI("VAD CHECK FALSE");
                }
            } catch (Exception unused) {
                DebugLog.LogI("getAudioVolume Exception vadret = " + iQISRGetParam);
            }
        } catch (Exception unused2) {
            iQISRGetParam = 0;
        }
        return i;
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
            if (MSC.QISRGetParam(cArr, str.getBytes(), this.c) == 0) {
                return new String(this.c.buffer);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    int grammarCallBack(int i, char[] cArr) {
        DebugLog.LogD("grammarCallBack begin, errorCode: " + i);
        com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
        GrammarListener grammarListener = f12164a;
        if (grammarListener != null) {
            if (i != 0) {
                grammarListener.onBuildFinish("", i != 0 ? new SpeechError(i) : null);
            } else {
                grammarListener.onBuildFinish(String.valueOf(cArr), null);
            }
        }
        DebugLog.LogD("grammarCallBack begin, leave");
        return 0;
    }

    int lexiconCallBack(int i, char[] cArr) {
        DebugLog.LogD("lexiconCallBack begin, errorCode: " + i);
        com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
        LexiconListener lexiconListener = b;
        if (lexiconListener != null) {
            if (i != 0) {
                lexiconListener.onLexiconUpdated(this.f12167f, i != 0 ? new SpeechError(i) : null);
            } else {
                lexiconListener.onLexiconUpdated(this.f12167f, null);
            }
        }
        DebugLog.LogD("lexiconCallBack leave");
        return 0;
    }

    public synchronized void pushAudioData(byte[] bArr, int i) throws SpeechError {
        writeData(bArr, i, 2);
    }

    public synchronized void pushEndFlag() throws SpeechError {
        com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
        DebugLog.LogD("IsrSession pushEndFlag");
        writeData(new byte[0], 0, 4);
    }

    @Override // com.iflytek.cloud.a.f.b
    public int sessionBegin(Context context, String str, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        String strA = com.iflytek.cloud.b.c.a(context, str, aVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        DebugLog.LogD("QISRSessionBegin begin, grammar: " + str);
        synchronized (a.class) {
            com.iflytek.cloud.msc.util.log.a.a("MSCSessionBegin", null);
            if (TextUtils.isEmpty(str)) {
                this.mClientID = MSC.QISRSessionBegin(null, strA.getBytes(aVar.getParamEncoding()), this.c);
            } else {
                this.mClientID = MSC.QISRSessionBegin(str.getBytes(aVar.getParamEncoding()), strA.getBytes(aVar.getParamEncoding()), this.c);
            }
            com.iflytek.cloud.msc.util.log.a.a("SessionBeginEnd", null);
        }
        DebugLog.LogD("QISRSessionBegin end: " + this.c.errorcode + " time:" + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        int i = this.c.errorcode;
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

    public int a(String str, String str2, LexiconListener lexiconListener, com.iflytek.cloud.b.a aVar) {
        b = lexiconListener;
        this.f12167f = str;
        aVar.a(SpeechConstant.TEXT_ENCODING, "utf-8", false);
        String strA = aVar.a(SpeechConstant.TEXT_ENCODING, "utf-8");
        String strA2 = aVar.a("pte", "utf-8");
        String string = aVar.toString();
        try {
            byte[] bytes = str2.getBytes(strA);
            DebugLog.LogD("QISRUpdateLexicon begin, name: " + str + "content: " + str2);
            com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
            int iQISRUpdateLexicon = MSC.QISRUpdateLexicon(str.getBytes(strA2), bytes, bytes.length, string.getBytes(strA2), "lexiconCallBack", this);
            DebugLog.LogD("QISRUpdateLexicon leave: " + iQISRUpdateLexicon);
            return iQISRUpdateLexicon;
        } catch (UnsupportedEncodingException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_INVALID_PARAM;
        }
    }
}
