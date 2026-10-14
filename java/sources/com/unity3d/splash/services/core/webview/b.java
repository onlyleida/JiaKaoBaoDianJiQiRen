package com.unity3d.splash.services.core.webview;

import android.os.Build;
import android.os.ConditionVariable;
import android.os.Looper;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.unity3d.splash.services.core.log.DeviceLog;
import com.unity3d.splash.services.core.webview.bridge.CallbackStatus;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public class b extends WebViewClient {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static b f14418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ConditionVariable f14419f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f14420a;
    private com.unity3d.splash.services.core.webview.a b;
    private com.unity3d.splash.services.core.configuration.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashMap f14421d;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.unity3d.splash.services.core.configuration.a f14422a;

        a(com.unity3d.splash.services.core.configuration.a aVar) {
            this.f14422a = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                b bVar = new b(this.f14422a, null);
                String str = "?platform=android";
                try {
                    if (this.f14422a.g() != null) {
                        str = "?platform=android&origin=" + URLEncoder.encode(this.f14422a.g(), "UTF-8");
                    }
                } catch (UnsupportedEncodingException e2) {
                    DeviceLog.f("Unsupported charset when encoding origin url", e2);
                }
                try {
                    if (this.f14422a.h() != null) {
                        str = str + "&version=" + URLEncoder.encode(this.f14422a.h(), "UTF-8");
                    }
                } catch (UnsupportedEncodingException e3) {
                    DeviceLog.f("Unsupported charset when encoding webview version", e3);
                }
                bVar.f().loadDataWithBaseURL("file://" + com.unity3d.splash.services.c.b.b.g() + str, this.f14422a.e(), "text/html", "UTF-8", null);
                b.m(bVar);
            } catch (Exception unused) {
                DeviceLog.e("Couldn't construct WebViewApp");
                b.f14419f.open();
            }
        }
    }

    /* JADX INFO: renamed from: com.unity3d.splash.services.core.webview.b$b, reason: collision with other inner class name */
    private class C0289b extends WebChromeClient {
        private C0289b(b bVar) {
        }

        /* synthetic */ C0289b(b bVar, a aVar) {
            this(bVar);
        }

        @Override // android.webkit.WebChromeClient
        public void onConsoleMessage(String str, int i, String str2) {
            File file;
            try {
                file = new File(str2);
            } catch (Exception e2) {
                DeviceLog.f("Could not handle sourceId", e2);
                file = null;
            }
            if (file != null) {
                str2 = file.getName();
            }
            if (Build.VERSION.SDK_INT < 19) {
                DeviceLog.c("JavaScript (sourceId=" + str2 + ", line=" + i + "): " + str);
            }
        }
    }

    private class c extends WebViewClient {
        private c(b bVar) {
        }

        /* synthetic */ c(b bVar, a aVar) {
            this(bVar);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            DeviceLog.c("onPageFinished url: " + str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webView != null) {
                DeviceLog.e("WEBVIEW_ERROR: " + webView.toString());
            }
            if (webResourceRequest != null) {
                DeviceLog.e("WEBVIEW_ERROR: " + webResourceRequest.toString());
            }
            if (webResourceError != null) {
                DeviceLog.e("WEBVIEW_ERROR: " + webResourceError.toString());
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DeviceLog.c("Trying to load url: " + str);
            return false;
        }
    }

    private b(com.unity3d.splash.services.core.configuration.a aVar) {
        this.f14420a = false;
        l(aVar);
        com.unity3d.splash.services.core.webview.bridge.c.f(d().d());
        com.unity3d.splash.services.core.webview.a aVar2 = new com.unity3d.splash.services.core.webview.a(com.unity3d.splash.services.c.b.a.b());
        this.b = aVar2;
        a aVar3 = null;
        aVar2.setWebViewClient(new c(this, aVar3));
        this.b.setWebChromeClient(new C0289b(this, aVar3));
    }

    /* synthetic */ b(com.unity3d.splash.services.core.configuration.a aVar, a aVar2) {
        this(aVar);
    }

    public static boolean b(com.unity3d.splash.services.core.configuration.a aVar) {
        DeviceLog.d();
        if (Thread.currentThread().equals(Looper.getMainLooper().getThread())) {
            throw new IllegalThreadStateException("Cannot call create() from main thread!");
        }
        com.unity3d.splash.services.c.a.b.d(new a(aVar));
        ConditionVariable conditionVariable = new ConditionVariable();
        f14419f = conditionVariable;
        return conditionVariable.block(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) && e() != null;
    }

    public static b e() {
        return f14418e;
    }

    private void h(String str, String str2, JSONArray jSONArray) {
        String string = jSONArray.toString();
        StringBuilder sb = new StringBuilder(str.length() + 22 + str2.length() + string.length());
        sb.append("javascript:window.");
        sb.append(str);
        sb.append(".");
        sb.append(str2);
        sb.append("(");
        sb.append(string);
        sb.append(");");
        String string2 = sb.toString();
        DeviceLog.c("Invoking javascript: " + string2);
        f().b(string2);
    }

    public static void m(b bVar) {
        f14418e = bVar;
    }

    public com.unity3d.splash.services.core.webview.bridge.b c(String str) {
        com.unity3d.splash.services.core.webview.bridge.b bVar;
        synchronized (this.f14421d) {
            bVar = (com.unity3d.splash.services.core.webview.bridge.b) this.f14421d.get(str);
        }
        return bVar;
    }

    public com.unity3d.splash.services.core.configuration.a d() {
        return this.c;
    }

    public com.unity3d.splash.services.core.webview.a f() {
        return this.b;
    }

    public boolean g(com.unity3d.splash.services.core.webview.bridge.a aVar) {
        if (!i()) {
            DeviceLog.c("invokeBatchCallback ignored because web app is not loaded");
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        ArrayList<ArrayList> arrayListD = aVar.d();
        if (arrayListD != null && !arrayListD.isEmpty()) {
            for (ArrayList arrayList : arrayListD) {
                CallbackStatus callbackStatus = (CallbackStatus) arrayList.get(0);
                Enum r5 = (Enum) arrayList.get(1);
                Object[] objArr = (Object[]) arrayList.get(2);
                String str = (String) objArr[0];
                Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, 1, objArr.length);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(str);
                arrayList2.add(callbackStatus.toString());
                JSONArray jSONArray2 = new JSONArray();
                if (r5 != null) {
                    jSONArray2.put(r5.name());
                }
                for (Object obj : objArrCopyOfRange) {
                    jSONArray2.put(obj);
                }
                arrayList2.add(jSONArray2);
                JSONArray jSONArray3 = new JSONArray();
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    jSONArray3.put(it.next());
                }
                jSONArray.put(jSONArray3);
            }
        }
        try {
            h("nativebridge", "handleCallback", jSONArray);
        } catch (Exception e2) {
            DeviceLog.f("Error while invoking batch response for WebView", e2);
        }
        return true;
    }

    public boolean i() {
        return this.f14420a;
    }

    public void j(com.unity3d.splash.services.core.webview.bridge.b bVar) {
        HashMap map = this.f14421d;
        if (map == null) {
            return;
        }
        synchronized (map) {
            this.f14421d.remove(bVar.a());
        }
    }

    public boolean k(Enum r4, Enum r5, Object... objArr) {
        if (!i()) {
            DeviceLog.c("sendEvent ignored because web app is not loaded");
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(r4.name());
        jSONArray.put(r5.name());
        for (Object obj : objArr) {
            jSONArray.put(obj);
        }
        try {
            h("nativebridge", "handleEvent", jSONArray);
            return true;
        } catch (Exception e2) {
            DeviceLog.f("Error while sending event to WebView", e2);
            return false;
        }
    }

    public void l(com.unity3d.splash.services.core.configuration.a aVar) {
        this.c = aVar;
    }

    public void n(boolean z) {
        f14419f.open();
    }

    public void o(boolean z) {
        this.f14420a = z;
    }

    public void p(com.unity3d.splash.services.core.webview.a aVar) {
        this.b = aVar;
    }
}
