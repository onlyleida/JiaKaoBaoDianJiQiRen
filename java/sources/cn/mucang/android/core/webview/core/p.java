package cn.mucang.android.core.webview.core;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public interface p {
    boolean needShowAlertOnOtherActivity();

    boolean onReceivedError(WebView webView, int i, String str, String str2);

    WebResourceResponse shouldInterceptRequest(WebView webView, String str);

    boolean shouldOverrideUrlLoading(WebView webView, String str);
}
