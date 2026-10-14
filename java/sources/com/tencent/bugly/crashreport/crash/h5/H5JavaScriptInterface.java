package com.tencent.bugly.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import com.iflytek.cloud.SpeechConstant;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.inner.InnerApi;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.y;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class H5JavaScriptInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashSet<Integer> f13783a = new HashSet<>();
    private String b = null;
    private Thread c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13784d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, String> f13785e = null;

    private H5JavaScriptInterface() {
    }

    private static a a(String str) {
        String string;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                a aVar = new a();
                String string2 = jSONObject.getString("projectRoot");
                aVar.f13786a = string2;
                if (string2 == null) {
                    return null;
                }
                String string3 = jSONObject.getString("context");
                aVar.b = string3;
                if (string3 == null) {
                    return null;
                }
                String string4 = jSONObject.getString("url");
                aVar.c = string4;
                if (string4 == null) {
                    return null;
                }
                String string5 = jSONObject.getString("userAgent");
                aVar.f13787d = string5;
                if (string5 == null) {
                    return null;
                }
                String string6 = jSONObject.getString(SpeechConstant.LANGUAGE);
                aVar.f13788e = string6;
                if (string6 == null) {
                    return null;
                }
                String string7 = jSONObject.getString(Constant.PROTOCOL_WEBVIEW_NAME);
                aVar.f13789f = string7;
                if (string7 == null || string7.equals(BuildConfig.COMMON_MODULE_COMMIT_ID) || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int iIndexOf = string.indexOf("\n");
                if (iIndexOf < 0) {
                    y.d("H5 crash stack's format is wrong!", new Object[0]);
                    return null;
                }
                aVar.f13791h = string.substring(iIndexOf + 1);
                String strSubstring = string.substring(0, iIndexOf);
                aVar.f13790g = strSubstring;
                int iIndexOf2 = strSubstring.indexOf(":");
                if (iIndexOf2 > 0) {
                    aVar.f13790g = aVar.f13790g.substring(iIndexOf2 + 1);
                }
                aVar.i = jSONObject.getString("file");
                if (aVar.f13789f == null) {
                    return null;
                }
                long j = jSONObject.getLong("lineNumber");
                aVar.j = j;
                if (j < 0) {
                    return null;
                }
                long j2 = jSONObject.getLong("columnNumber");
                aVar.k = j2;
                if (j2 < 0) {
                    return null;
                }
                y.a("H5 crash information is following: ", new Object[0]);
                y.a("[projectRoot]: " + aVar.f13786a, new Object[0]);
                y.a("[context]: " + aVar.b, new Object[0]);
                y.a("[url]: " + aVar.c, new Object[0]);
                y.a("[userAgent]: " + aVar.f13787d, new Object[0]);
                y.a("[language]: " + aVar.f13788e, new Object[0]);
                y.a("[name]: " + aVar.f13789f, new Object[0]);
                y.a("[message]: " + aVar.f13790g, new Object[0]);
                y.a("[stacktrace]: \n" + aVar.f13791h, new Object[0]);
                y.a("[file]: " + aVar.i, new Object[0]);
                y.a("[lineNumber]: " + aVar.j, new Object[0]);
                y.a("[columnNumber]: " + aVar.k, new Object[0]);
                return aVar;
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static H5JavaScriptInterface getInstance(CrashReport.WebViewInterface webViewInterface) {
        String string = null;
        if (webViewInterface == null || f13783a.contains(Integer.valueOf(webViewInterface.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        f13783a.add(Integer.valueOf(webViewInterface.hashCode()));
        Thread threadCurrentThread = Thread.currentThread();
        h5JavaScriptInterface.c = threadCurrentThread;
        if (threadCurrentThread != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("\n");
            for (int i = 2; i < threadCurrentThread.getStackTrace().length; i++) {
                StackTraceElement stackTraceElement = threadCurrentThread.getStackTrace()[i];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
            string = sb.toString();
        }
        h5JavaScriptInterface.f13784d = string;
        HashMap map = new HashMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) webViewInterface.getContentDescription());
        map.put("[WebView] ContentDescription", sb2.toString());
        h5JavaScriptInterface.f13785e = map;
        return h5JavaScriptInterface;
    }

    @JavascriptInterface
    public void printLog(String str) {
        y.d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            y.d("Payload from JS is null.", new Object[0]);
            return;
        }
        String strA = ab.a(str.getBytes());
        String str2 = this.b;
        if (str2 != null && str2.equals(strA)) {
            y.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
            return;
        }
        this.b = strA;
        y.d("Handling JS exception ...", new Object[0]);
        a aVarA = a(str);
        if (aVarA == null) {
            y.d("Failed to parse payload.", new Object[0]);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String str3 = aVarA.f13786a;
        if (str3 != null) {
            linkedHashMap2.put("[JS] projectRoot", str3);
        }
        String str4 = aVarA.b;
        if (str4 != null) {
            linkedHashMap2.put("[JS] context", str4);
        }
        String str5 = aVarA.c;
        if (str5 != null) {
            linkedHashMap2.put("[JS] url", str5);
        }
        String str6 = aVarA.f13787d;
        if (str6 != null) {
            linkedHashMap2.put("[JS] userAgent", str6);
        }
        String str7 = aVarA.i;
        if (str7 != null) {
            linkedHashMap2.put("[JS] file", str7);
        }
        long j = aVarA.j;
        if (j != 0) {
            linkedHashMap2.put("[JS] lineNumber", Long.toString(j));
        }
        linkedHashMap.putAll(linkedHashMap2);
        linkedHashMap.putAll(this.f13785e);
        linkedHashMap.put("Java Stack", this.f13784d);
        Thread thread = this.c;
        if (aVarA != null) {
            InnerApi.postH5CrashAsync(thread, aVarA.f13789f, aVarA.f13790g, aVarA.f13791h, linkedHashMap);
        }
    }
}
