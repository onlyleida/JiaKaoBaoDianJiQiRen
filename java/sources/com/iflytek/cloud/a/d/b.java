package com.iflytek.cloud.a.d;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public class b extends com.iflytek.cloud.a.f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MSCSessionInfo f12187a = new MSCSessionInfo();
    private MSCSessionInfo b = new MSCSessionInfo();

    private synchronized void writeData(byte[] bArr, int i, int i2) throws SpeechError {
        int iQIVWAudioWrite = MSC.QIVWAudioWrite(this.mClientID, bArr, i, i2, this.b);
        this.f12187a.sesstatus = this.b.sesstatus;
        DebugLog.LogI("QIVWAudioWrite length:" + i);
        if (iQIVWAudioWrite != 0) {
            throw new SpeechError(this.b.errorcode);
        }
    }

    public synchronized void pushAudioData(byte[] bArr, int i) throws SpeechError {
        writeData(bArr, i, 2);
    }

    public synchronized void pushEndFlag() throws SpeechError {
        com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
        DebugLog.LogD("ivw session pushEndFlag");
        writeData(new byte[0], 0, 4);
    }

    @Override // com.iflytek.cloud.a.f.b
    public int sessionBegin(Context context, String str, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        String strC = com.iflytek.cloud.b.c.c(context, str, aVar);
        String strA = aVar.getParam().a(SpeechConstant.CLOUD_GRAMMAR);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        DebugLog.LogD("ivw sessionbegin begin");
        com.iflytek.cloud.msc.util.log.a.a("MSCSessionBegin", null);
        if (TextUtils.isEmpty(strA)) {
            this.mClientID = MSC.QIVWSessionBegin(null, strC.getBytes(aVar.getParamEncoding()), this.f12187a);
        } else {
            this.mClientID = MSC.QIVWSessionBegin(strA.getBytes(aVar.getParamEncoding()), strC.getBytes(aVar.getParamEncoding()), this.f12187a);
        }
        com.iflytek.cloud.msc.util.log.a.a("SessionBeginEnd", null);
        DebugLog.LogD("ivw sessionBegin ErrCode:" + this.f12187a.errorcode + " time:" + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        int i = this.f12187a.errorcode;
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
        DebugLog.LogD("sessionEnd leave: " + (MSC.QIVWSessionEnd(this.mClientID, str.getBytes()) == 0) + " time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
        this.mClientID = null;
        this.mSessionID = null;
    }
}
