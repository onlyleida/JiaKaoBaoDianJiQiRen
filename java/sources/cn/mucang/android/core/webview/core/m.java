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
public interface m {
    void a(WebView webView, String str, Bitmap bitmap);

    void b(View view, WebChromeClient.CustomViewCallback customViewCallback);

    void d(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError);

    void f(WebView webView, String str);

    void l(String str);

    void n(WebView webView, int i);

    void o();

    boolean onReceivedError(WebView webView, int i, String str, String str2);

    boolean q(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams);

    boolean shouldOverrideUrlLoading(WebView webView, String str);
}
