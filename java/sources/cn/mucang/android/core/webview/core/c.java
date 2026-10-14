package cn.mucang.android.core.webview.core;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public class c implements m {
    @Override // cn.mucang.android.core.webview.core.m
    public void a(WebView webView, String str, Bitmap bitmap) {
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void b(View view, WebChromeClient.CustomViewCallback customViewCallback) {
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void d(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void f(WebView webView, String str) {
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void l(String str) {
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void n(WebView webView, int i) {
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void o() {
    }

    @Override // cn.mucang.android.core.webview.core.m
    public boolean onReceivedError(WebView webView, int i, String str, String str2) {
        return false;
    }

    @Override // cn.mucang.android.core.webview.core.m
    public boolean q(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        return false;
    }

    @Override // cn.mucang.android.core.webview.core.m
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return false;
    }
}
