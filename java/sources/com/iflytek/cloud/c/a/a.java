package com.iflytek.cloud.c.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.VerifierUtil;
import com.iflytek.msc.MSC;
import com.iflytek.msc.MSCSessionInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f12296a;
    private MSCSessionInfo b;

    public a(Context context, String str) {
        try {
            if (SpeechUtility.getUtility() == null) {
                throw new SpeechError(10111);
            }
            this.f12296a = false;
            a(str);
        } catch (SpeechError e2) {
            DebugLog.LogE(e2.getPlainDescription(true));
        }
    }

    private void a(String str) {
        if (MSC.isLoaded()) {
            DebugLog.LogD("MSC isLoaded：" + MSC.isLoaded());
            this.b = new MSCSessionInfo();
            com.iflytek.cloud.msc.util.log.a.a("MSCSessionBegin", null);
            if (TextUtils.isEmpty(str)) {
                MSC.QIFDInit(null, this.b);
            } else {
                MSC.QIFDInit(str.getBytes(), this.b);
            }
            com.iflytek.cloud.msc.util.log.a.a("SessionBeginEnd", null);
            if (this.b.errorcode == 0) {
                DebugLog.LogD("QIFDINIT INIT SUCCESS");
                return;
            }
            DebugLog.LogE("QIFDINIT INIT FAIL, ERRORCODE:" + this.b.errorcode);
        }
    }

    public String b(Bitmap bitmap) {
        if (bitmap == null || !Bitmap.Config.ALPHA_8.equals(bitmap.getConfig())) {
            DebugLog.LogE("Method detectGray:null parameter or not gray bitmap");
            return null;
        }
        this.b = new MSCSessionInfo();
        com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
        byte[] bArrQIFDFacedetect = MSC.QIFDFacedetect(bitmap, VerifierUtil.getBitmapsize(bitmap), this.b);
        com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
        return a(bArrQIFDFacedetect, this.b);
    }

    public String a(Bitmap bitmap) {
        if (bitmap != null && Bitmap.Config.ARGB_8888.equals(bitmap.getConfig())) {
            return b(VerifierUtil.ARGB2Gray(bitmap));
        }
        DebugLog.LogE("Method detectARGB:null parameter or not ARGB bitmap");
        return null;
    }

    public String a(byte[] bArr, int i, int i2, int i3, int i4) {
        if (bArr != null && i > 0 && i2 > 0 && i4 >= 0 && i4 <= 3) {
            this.b = new MSCSessionInfo();
            com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
            byte[] bArrQIFDMultitracker = MSC.QIFDMultitracker(bArr, bArr.length, i, i2, i3, i4, this.b);
            com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
            return a(bArrQIFDMultitracker, this.b);
        }
        DebugLog.LogE("Method trackNV21:invalid parameters");
        return null;
    }

    private String a(byte[] bArr, MSCSessionInfo mSCSessionInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (mSCSessionInfo.errorcode == 0) {
                jSONObject = new JSONObject(new String(bArr));
            }
            jSONObject.put(SpeechUtility.TAG_RESOURCE_RET, mSCSessionInfo.errorcode);
        } catch (JSONException unused) {
            DebugLog.LogE("face result add errorinfo exception");
        }
        return jSONObject.toString();
    }

    public void a() {
        if (this.f12296a) {
            return;
        }
        DebugLog.LogD("QIFDFINIT");
        com.iflytek.cloud.msc.util.log.a.a("SessionEndBegin", null);
        DebugLog.LogD("MSC.QIFDFini result is " + MSC.QIFDFini());
        com.iflytek.cloud.msc.util.log.a.a("SessionEndEnd", null);
        this.f12296a = true;
    }
}
