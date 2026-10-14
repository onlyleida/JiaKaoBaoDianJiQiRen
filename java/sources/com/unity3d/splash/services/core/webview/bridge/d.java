package com.unity3d.splash.services.core.webview.bridge;

import android.webkit.JavascriptInterface;
import com.unity3d.splash.services.core.log.DeviceLog;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public class d {
    private Object[] a(JSONArray jSONArray) {
        Object[] objArr = new Object[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            objArr[i] = jSONArray.get(i);
        }
        return objArr;
    }

    @JavascriptInterface
    public void handleCallback(String str, String str2, String str3) {
        Object[] objArr;
        DeviceLog.c("handleCallback " + str + " " + str2 + " " + str3);
        JSONArray jSONArray = new JSONArray(str3);
        if (jSONArray.length() > 0) {
            objArr = new Object[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                objArr[i] = jSONArray.get(i);
            }
        } else {
            objArr = null;
        }
        c.d(str, str2, objArr);
    }

    @JavascriptInterface
    public void handleInvocation(String str) {
        DeviceLog.c("handleInvocation " + str);
        JSONArray jSONArray = new JSONArray(str);
        a aVar = new a();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONArray jSONArray2 = (JSONArray) jSONArray.get(i);
            aVar.a((String) jSONArray2.get(0), (String) jSONArray2.get(1), a((JSONArray) jSONArray2.get(2)), new WebViewCallback((String) jSONArray2.get(3), aVar.b()));
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            aVar.e();
        }
        aVar.f();
    }
}
