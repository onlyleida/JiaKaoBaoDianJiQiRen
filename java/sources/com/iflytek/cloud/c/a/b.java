package com.iflytek.cloud.c.a;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.RequestListener;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.mobile.auth.gatewayauth.Constant;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class b extends com.iflytek.cloud.a.f.d {
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.iflytek.cloud.msc.util.i f12298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RequestListener f12299e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f12297a = "http://openapi.openspeech.cn/webapi/wfr.do";
    private String b = "pver=1.0";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.iflytek.cloud.msc.util.i.a f12300f = new a();

    class a implements com.iflytek.cloud.msc.util.i.a {
        a() {
        }

        @Override // com.iflytek.cloud.msc.util.i.a
        public void a(com.iflytek.cloud.msc.util.i iVar, byte[] bArr) {
            if (bArr != null) {
                try {
                    String str = new String(bArr, "utf-8");
                    DebugLog.LogD(str);
                    int i = Integer.parseInt(new JSONObject(str).getString(SpeechUtility.TAG_RESOURCE_RET));
                    if (i != 0) {
                        onError(new SpeechError(i, SpeechConstant.ENG_WFR));
                        return;
                    }
                    if (b.this.f12299e != null) {
                        com.iflytek.cloud.msc.util.log.a.a("GetNotifyResult", null);
                        b.this.f12299e.onBufferReceived(bArr);
                    }
                    onError(null);
                } catch (Exception unused) {
                    onError(new SpeechError(ErrorCode.ERROR_INVALID_RESULT));
                }
            }
        }

        @Override // com.iflytek.cloud.msc.util.i.a
        public void onError(SpeechError speechError) {
            if (speechError != null) {
                DebugLog.LogE("upload error. please check net state:" + speechError.getErrorCode());
            } else {
                DebugLog.LogD("upload succeed");
            }
            if (b.this.f12299e != null) {
                b.this.f12299e.onCompleted(speechError);
            }
        }
    }

    public b(Context context, com.iflytek.cloud.b.a aVar) {
        this.c = null;
        this.f12298d = null;
        this.mSessionParams = aVar;
        this.c = context;
        this.f12298d = new com.iflytek.cloud.msc.util.i();
    }

    public void cancel() {
        this.f12298d.a();
        this.f12298d = null;
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean destroy() {
        return super.destroy();
    }

    public int sendRequest(byte[] bArr, RequestListener requestListener) {
        try {
            this.f12299e = requestListener;
            if (SpeechUtility.getUtility() == null) {
                return 10111;
            }
            String strE = this.mSessionParams.e("server_url");
            if (TextUtils.isEmpty(strE)) {
                strE = this.f12297a;
            }
            String strD = com.iflytek.cloud.b.c.d(this.c, this.mSessionParams);
            this.f12298d.b(this.mSessionParams.a("timeout", Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT));
            this.f12298d.a(1);
            this.f12298d.a(strE, this.b, bArr, strD);
            this.f12298d.a(this.f12300f);
            com.iflytek.cloud.msc.util.log.a.a("LastDataFlag", null);
            return 0;
        } catch (Exception unused) {
            return ErrorCode.ERROR_UNKNOWN;
        }
    }
}
