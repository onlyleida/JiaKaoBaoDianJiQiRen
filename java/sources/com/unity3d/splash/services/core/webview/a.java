package com.unity3d.splash.services.core.webview;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.unity3d.splash.services.c.a.c;
import com.unity3d.splash.services.core.log.DeviceLog;
import com.unity3d.splash.services.core.webview.bridge.d;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public class a extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f14416a;

    /* JADX INFO: renamed from: com.unity3d.splash.services.core.webview.a$a, reason: collision with other inner class name */
    private class RunnableC0288a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f14417a;
        private WebView b;

        public RunnableC0288a(String str, WebView webView) {
            this.f14417a = null;
            this.b = null;
            this.f14417a = str;
            this.b = webView;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.f14417a;
            if (str == null) {
                DeviceLog.e("Could not process JavaScript, the string is NULL");
                return;
            }
            try {
                if (Build.VERSION.SDK_INT >= 19) {
                    a.f14416a.invoke(this.b, this.f14417a, null);
                } else {
                    a.this.loadUrl(str);
                }
            } catch (Exception e2) {
                DeviceLog.f("Error while processing JavaScriptString", e2);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context) {
        super(context);
        int i = Build.VERSION.SDK_INT;
        WebSettings settings = getSettings();
        if (i >= 16) {
            settings.setAllowFileAccessFromFileURLs(true);
            settings.setAllowUniversalAccessFromFileURLs(true);
        }
        if (i >= 19) {
            try {
                f14416a = WebView.class.getMethod("evaluateJavascript", String.class, ValueCallback.class);
            } catch (NoSuchMethodException e2) {
                DeviceLog.f("Method evaluateJavascript not found", e2);
                f14416a = null;
            }
        }
        settings.setAppCacheEnabled(false);
        settings.setBlockNetworkImage(false);
        settings.setBlockNetworkLoads(false);
        settings.setBuiltInZoomControls(false);
        settings.setCacheMode(2);
        settings.setDatabaseEnabled(false);
        if (i >= 11) {
            settings.setDisplayZoomControls(false);
        }
        settings.setDomStorageEnabled(false);
        if (i >= 11) {
            settings.setEnableSmoothTransition(false);
        }
        settings.setGeolocationEnabled(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setJavaScriptEnabled(true);
        settings.setLightTouchEnabled(false);
        settings.setLoadWithOverviewMode(false);
        settings.setLoadsImagesAutomatically(true);
        if (i >= 17) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        if (i >= 21) {
            settings.setMixedContentMode(1);
        }
        settings.setNeedInitialFocus(true);
        settings.setPluginState(WebSettings.PluginState.OFF);
        settings.setRenderPriority(WebSettings.RenderPriority.NORMAL);
        settings.setSaveFormData(false);
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(false);
        settings.setSupportZoom(false);
        settings.setUseWideViewPort(true);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setInitialScale(0);
        setBackgroundColor(0);
        c.a(this, new ColorDrawable(0));
        setBackgroundResource(0);
        addJavascriptInterface(new d(), "webviewbridge");
    }

    public void b(String str) {
        com.unity3d.splash.services.c.a.b.d(new RunnableC0288a(str, this));
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        DeviceLog.c("Loading url: " + str);
        super.loadUrl(str);
    }
}
