package com.tencent.open.web.security;

import android.webkit.WebView;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.open.log.SLog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class c extends com.tencent.open.a.C0279a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f14179d;

    public c(WebView webView, long j, String str, String str2) {
        super(webView, j, str);
        this.f14179d = str2;
    }

    private void b(String str) {
        WebView webView = this.f14074a.get();
        if (webView != null) {
            StringBuffer stringBuffer = new StringBuffer("javascript:");
            stringBuffer.append("if(!!");
            stringBuffer.append(this.f14179d);
            stringBuffer.append("){");
            stringBuffer.append(this.f14179d);
            stringBuffer.append("(");
            stringBuffer.append(str);
            stringBuffer.append(")}");
            String string = stringBuffer.toString();
            SLog.v("openSDK_LOG.SecureJsListener", "-->callback, callback: " + string);
            webView.loadUrl(string);
        }
    }

    @Override // com.tencent.open.a.C0279a
    public void a(Object obj) {
        SLog.v("openSDK_LOG.SecureJsListener", "-->onComplete, result: " + obj);
    }

    @Override // com.tencent.open.a.C0279a
    public void a() {
        SLog.d("openSDK_LOG.SecureJsListener", "-->onNoMatchMethod...");
    }

    @Override // com.tencent.open.a.C0279a
    public void a(String str) {
        SLog.v("openSDK_LOG.SecureJsListener", "-->onCustomCallback, js: " + str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SpeechUtility.TAG_RESOURCE_RESULT, !com.tencent.open.b.c.f14103a ? -4 : 0);
            jSONObject.put("sn", this.b);
            jSONObject.put("data", str);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        b(jSONObject.toString());
    }
}
