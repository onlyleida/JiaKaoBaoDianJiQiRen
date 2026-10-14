package com.iflytek.cloud.a.g;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.b.c;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Object f12269a = new Object();
    private MSCSessionInfo b = new MSCSessionInfo();

    public static void a(Context context, String str, String str2, com.iflytek.cloud.a.f.a aVar) throws SpeechError, IOException {
        byte[] bytes;
        synchronized (f12269a) {
            String strA = c.a(context, aVar);
            if (!TextUtils.isEmpty(str)) {
                bytes = str.getBytes("utf-8");
            } else if (context != null) {
                String strA2 = c.a(context);
                bytes = TextUtils.isEmpty(strA2) ? null : strA2.getBytes(aVar.getParamEncoding());
            }
            try {
                int iQMSPLogin = MSC.QMSPLogin(bytes, TextUtils.isEmpty(str2) ? null : str2.getBytes(aVar.getParamEncoding()), strA.getBytes(aVar.getParamEncoding()));
                DebugLog.LogD("[MSPLogin]ret:" + iQMSPLogin);
                if (iQMSPLogin != 0) {
                    throw new SpeechError(iQMSPLogin);
                }
            } catch (UnsatisfiedLinkError e2) {
                DebugLog.LogE(e2);
                throw new SpeechError(ErrorCode.ERROR_UNSATISFIED_LINK);
            }
        }
    }

    public static boolean a() {
        boolean z;
        if (!com.iflytek.cloud.a.f.a.isEmpty()) {
            DebugLog.LogD("MscHandler is not empty while logout.");
            return false;
        }
        synchronized (f12269a) {
            z = MSC.QMSPLogOut() == 0;
        }
        return z;
    }

    public synchronized byte[] a(Context context, String str, byte[] bArr, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        byte[] bArrQMSPUploadData;
        synchronized (f12269a) {
            String strD = c.d(context, aVar);
            DebugLog.LogD("[MSPSession uploadData]enter time:" + System.currentTimeMillis());
            bArrQMSPUploadData = MSC.QMSPUploadData(str.getBytes(aVar.getParamEncoding()), bArr, bArr.length, strD.getBytes("utf-8"), this.b);
            StringBuilder sb = new StringBuilder();
            sb.append("[MSPSession uploaddData]leavel:");
            sb.append(this.b.errorcode);
            sb.append(",data len = ");
            sb.append(bArrQMSPUploadData == null ? 0 : bArrQMSPUploadData.length);
            DebugLog.LogD(sb.toString());
            int i = this.b.errorcode;
            if (i != 0 || bArrQMSPUploadData == null) {
                throw new SpeechError(i);
            }
        }
        return bArrQMSPUploadData;
    }

    public synchronized byte[] a(Context context, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException {
        byte[] bArrQMSPDownloadData;
        synchronized (f12269a) {
            String strD = c.d(context, aVar);
            DebugLog.LogD("[MSPSession downloadData]enter time:" + System.currentTimeMillis());
            com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
            bArrQMSPDownloadData = MSC.QMSPDownloadData(strD.getBytes(aVar.getParamEncoding()), this.b);
            com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
            StringBuilder sb = new StringBuilder();
            sb.append("[MSPSession downloadData]leavel:");
            sb.append(this.b.errorcode);
            sb.append(",data len = ");
            sb.append(bArrQMSPDownloadData == null ? 0 : bArrQMSPDownloadData.length);
            DebugLog.LogD(sb.toString());
            int i = this.b.errorcode;
            if (i != 0 || bArrQMSPDownloadData == null) {
                throw new SpeechError(i);
            }
        }
        return bArrQMSPDownloadData;
    }

    public synchronized byte[] a(Context context, com.iflytek.cloud.a.f.a aVar, String str) throws SpeechError, UnsupportedEncodingException {
        byte[] bArrQMSPSearch;
        synchronized (f12269a) {
            String strD = c.d(context, aVar);
            DebugLog.LogD("[MSPSession searchResult]enter time:" + System.currentTimeMillis());
            byte[] bytes = str.getBytes("utf-8");
            com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
            bArrQMSPSearch = MSC.QMSPSearch(strD.getBytes(aVar.getParamEncoding()), bytes, this.b);
            com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
            StringBuilder sb = new StringBuilder();
            sb.append("[QMSPSearch searchResult]leavel:");
            sb.append(this.b.errorcode);
            sb.append(",data len = ");
            sb.append(bArrQMSPSearch == null ? 0 : bArrQMSPSearch.length);
            DebugLog.LogD(sb.toString());
            int i = this.b.errorcode;
            if (i != 0 || bArrQMSPSearch == null) {
                throw new SpeechError(i);
            }
        }
        return bArrQMSPSearch;
    }
}
