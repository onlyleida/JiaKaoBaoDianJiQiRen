package cn.mucang.android.core.api.verify.captcha;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.mucang.android.core.utils.MiscUtils;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class CaptchaWebView extends WebView {
    private CaptchaDialog captchaDialog;
    private CaptchaListener captchaListener;
    private Context context;
    private int mTimeout;
    private WebChromeClient mWebChromeClient;
    private WebViewClientBase mWebViewClientBase;
    private ScheduledExecutorService scheduledExecutorService;
    private WebView webView;

    private class WebChromeClientBase extends WebChromeClient {
        private WebChromeClientBase() {
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            CaptchaWebView.this.captchaDialog.cancel();
            super.onCloseWindow(webView);
        }
    }

    private class WebViewClientBase extends WebViewClient {
        private WebViewClientBase() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (CaptchaWebView.this.captchaDialog.isShowing()) {
                CaptchaWebView.this.release();
                t.h(CaptchaConstant.TAG, "webview did Finished");
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            t.h(CaptchaConstant.TAG, "webview did start");
            super.onPageStarted(webView, str, bitmap);
            TimerTask timerTask = new TimerTask() { // from class: cn.mucang.android.core.api.verify.captcha.CaptchaWebView.WebViewClientBase.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    ((Activity) CaptchaWebView.this.context).runOnUiThread(new Runnable() { // from class: cn.mucang.android.core.api.verify.captcha.CaptchaWebView.WebViewClientBase.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (CaptchaWebView.this.webView.getProgress() < 100) {
                                CaptchaWebView.this.webView.stopLoading();
                                if (CaptchaWebView.this.captchaListener != null) {
                                    t.a(CaptchaConstant.TAG, "time out 2");
                                    CaptchaWebView.this.captchaListener.onReady(false);
                                }
                            }
                        }
                    });
                }
            };
            if (CaptchaWebView.this.scheduledExecutorService == null) {
                CaptchaWebView.this.scheduledExecutorService = Executors.newScheduledThreadPool(1, new ThreadPool.a(CaptchaConstant.TAG));
            }
            CaptchaWebView.this.scheduledExecutorService.schedule(timerTask, CaptchaWebView.this.mTimeout, TimeUnit.MILLISECONDS);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            if (i == -2 || i == -14) {
                CaptchaWebView.this.captchaListener.onError("errorERROR_FILE_NOT_FOUND" + i);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            t.a(CaptchaConstant.TAG, webResourceRequest.toString() + webResourceResponse.toString());
            if (CaptchaWebView.this.captchaListener != null) {
                t.a(CaptchaConstant.TAG, "onReceivedHttpError ");
            }
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (CaptchaWebView.this.captchaListener != null) {
                t.a(CaptchaConstant.TAG, "onReceivedHttpError ");
            }
            sslErrorHandler.cancel();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            CaptchaWebView.this.context.startActivity(intent);
            return true;
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(23)
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (webResourceRequest.isForMainFrame()) {
                int errorCode = webResourceError.getErrorCode();
                if (errorCode == -2 || errorCode == -14) {
                    CaptchaWebView.this.captchaListener.onError(webResourceRequest.toString() + webResourceError.toString());
                }
            }
        }
    }

    public CaptchaWebView(Context context, CaptchaListener captchaListener, CaptchaDialog captchaDialog) {
        super(context);
        this.webView = this;
        this.mTimeout = 10000;
        this.mWebViewClientBase = null;
        this.mWebChromeClient = null;
        this.scheduledExecutorService = null;
        this.context = context;
        this.captchaDialog = captchaDialog;
        this.captchaListener = captchaListener;
        this.mWebViewClientBase = new WebViewClientBase();
        this.mWebChromeClient = new WebChromeClientBase();
        setWebView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release() {
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            return;
        }
        this.scheduledExecutorService.shutdown();
    }

    private void setWebView() {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setUseWideViewPort(true);
        setOverScrollMode(2);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setWebViewClient(this.mWebViewClientBase);
        setWebChromeClient(this.mWebChromeClient);
        MiscUtils.l(this);
        onResume();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }
}
