package cn.mucang.android.core.webview.client;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.core.h;
import cn.mucang.android.core.webview.core.j;
import cn.mucang.android.core.webview.core.m;
import cn.mucang.android.core.webview.core.p;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f2703a;
    private h b;
    private final List<m> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p f2704d;

    public f(j jVar, h hVar) {
        if (jVar == null || hVar == null) {
            throw new IllegalArgumentException("protocolHandler and protocolContext must not be null");
        }
        this.f2703a = jVar;
        this.b = hVar;
    }

    public static boolean b(String str) {
        return "file:///android_asset/core/error_page/error.htm".equals(str);
    }

    private void c(WebView webView) {
        webView.loadUrl("file:///android_asset/core/error_page/error.htm");
    }

    public void a(m mVar) {
        if (mVar == null || this.c.contains(mVar)) {
            return;
        }
        this.c.add(mVar);
    }

    @Deprecated
    public void d(m mVar) {
        a(mVar);
    }

    public void e(p pVar) {
        this.f2704d = pVar;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        t.a("MucangWebViewClient", "---------onLoadResource------>" + str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        t.a("MucangWebViewClient", "---------onPageFinished------>" + str);
        if (b(str)) {
            webView.clearHistory();
        }
        Iterator<m> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().f(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        t.a("MucangWebViewClient", "---------onPageStarted------>" + str);
        this.b.e(str);
        Iterator<m> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().a(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (this.c.isEmpty()) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            return;
        }
        Iterator<m> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().d(webView, sslErrorHandler, sslError);
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        Map<String, WeakReference<g.c>> mapC = g.b().c();
        if (cn.mucang.android.core.utils.g.e(mapC)) {
            for (Map.Entry<String, WeakReference<g.c>> entry : mapC.entrySet()) {
                Uri uri = Uri.parse(str);
                g.c cVar = mapC.get(entry.getKey()).get();
                if (cVar != null && entry.getKey().equals(uri.getHost())) {
                    return cVar.a(str);
                }
            }
        }
        p pVar = this.f2704d;
        return pVar != null ? pVar.shouldInterceptRequest(webView, str) : super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        t.a("MucangWebViewClient", "---------shouldOverrideUrlLoading------>" + str);
        if (cn.mucang.android.core.webview.protocol.e.a.j(str)) {
            new cn.mucang.android.core.webview.protocol.b(Uri.parse(str)).b(this.b);
            return true;
        }
        if (cn.mucang.android.core.webview.protocol.e.a.i(str) || cn.mucang.android.core.webview.protocol.e.a.h(str)) {
            this.f2703a.i(str, this.b, "");
            return true;
        }
        Iterator<m> it = this.c.iterator();
        while (it.hasNext()) {
            if (it.next().shouldOverrideUrlLoading(webView, str)) {
                return true;
            }
        }
        p pVar = this.f2704d;
        return pVar != null ? pVar.shouldOverrideUrlLoading(webView, str) : super.shouldOverrideUrlLoading(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        t.a("MucangWebViewClient", "errorCode-->" + i + "\ndescription-->" + str + "\nfailingUrl-->" + str2);
        if (MucangConfig.v() && 5 == i) {
            t.a("MucangWebViewClient", "请看看是不是开了代理...");
        }
        if (this.c.isEmpty()) {
            c(webView);
        } else {
            boolean zOnReceivedError = false;
            Iterator<m> it = this.c.iterator();
            while (it.hasNext() && !(zOnReceivedError = it.next().onReceivedError(webView, i, str, str2))) {
            }
            if (!zOnReceivedError) {
                c(webView);
            }
        }
        p pVar = this.f2704d;
        if (pVar != null) {
            pVar.onReceivedError(webView, i, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }
}
