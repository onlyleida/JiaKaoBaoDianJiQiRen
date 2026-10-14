package cn.mucang.android.core.api.verify.geetest;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.mucang.android.core.utils.MiscUtils;
import cn.mucang.android.core.utils.k;
import cn.mucang.android.core.utils.t;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class b extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2444a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Boolean f2445d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2447f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Boolean f2448g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Dialog f2449h;
    private Context i;
    private int j;
    private int k;
    private c l;
    private Timer m;
    private InterfaceC0069b n;

    /* JADX INFO: renamed from: cn.mucang.android.core.api.verify.geetest.b$b, reason: collision with other inner class name */
    public interface InterfaceC0069b {
        void a();

        void b();

        void c(Boolean bool);

        void d(boolean z, String str);
    }

    private class c extends WebView {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private a f2450a;

        private class a extends WebViewClient {

            /* JADX INFO: renamed from: cn.mucang.android.core.api.verify.geetest.b$c$a$a, reason: collision with other inner class name */
            class C0070a extends TimerTask {

                /* JADX INFO: renamed from: cn.mucang.android.core.api.verify.geetest.b$c$a$a$a, reason: collision with other inner class name */
                class RunnableC0071a implements Runnable {
                    RunnableC0071a() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        if (b.this.l.getProgress() < 100) {
                            b.this.l.stopLoading();
                            k.b(b.this.f2449h);
                            if (b.this.n != null) {
                                b.this.n.c(Boolean.FALSE);
                                b.this.n.a();
                            }
                        }
                    }
                }

                C0070a() {
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    ((Activity) b.this.i).runOnUiThread(new RunnableC0071a());
                }
            }

            private a() {
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                b.this.m.cancel();
                b.this.m.purge();
                if (b.this.f2448g.booleanValue()) {
                    if (b.this.n != null) {
                        b.this.n.c(Boolean.FALSE);
                    }
                    b.this.f2449h.show();
                }
                Log.i("GtDialog", "webview did finish");
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                Log.i("GtDialog", "webview did start");
                super.onPageStarted(webView, str, bitmap);
                b.this.m = new Timer();
                b.this.m.schedule(new C0070a(), b.this.k, 1L);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (b.this.n != null) {
                    b.this.n.c(Boolean.FALSE);
                    b.this.n.a();
                }
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (b.this.n != null) {
                    b.this.n.c(Boolean.FALSE);
                }
                b.this.f2449h.show();
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                b.this.i.startActivity(intent);
                return true;
            }
        }

        public c(Context context) {
            super(context);
            this.f2450a = new a();
            a(context);
        }

        private void a(Context context) {
            WebSettings settings = getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setLoadWithOverviewMode(true);
            settings.setDomStorageEnabled(true);
            settings.setDatabaseEnabled(true);
            settings.setUseWideViewPort(true);
            setOverScrollMode(2);
            setHorizontalScrollBarEnabled(false);
            setVerticalScrollBarEnabled(false);
            setWebViewClient(this.f2450a);
            MiscUtils.l(this);
            onResume();
        }
    }

    public class d {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f2449h.show();
            }
        }

        public d() {
        }

        @JavascriptInterface
        public void gtCallBack(String str, String str2, String str3) {
            try {
                if (Integer.parseInt(str) == 1) {
                    b.this.dismiss();
                    if (b.this.n != null) {
                        b.this.n.d(true, str2);
                    }
                } else if (b.this.n != null) {
                    b.this.n.d(false, str2);
                }
            } catch (NumberFormatException e2) {
                t.c("Exception", e2);
            }
        }

        @JavascriptInterface
        public void gtCloseWindow() {
            b.this.dismiss();
            if (b.this.n != null) {
                b.this.n.b();
            }
        }

        @JavascriptInterface
        public void gtReady() {
            ((Activity) b.this.i).runOnUiThread(new a());
            if (b.this.n != null) {
                b.this.n.c(Boolean.TRUE);
            }
        }
    }

    public b(Context context, String str, String str2, String str3, Boolean bool) {
        super(context);
        this.f2444a = "http://static.geetest.com/static/appweb/app-index.html";
        this.f2446e = "zh-cn";
        this.f2447f = "";
        this.f2448g = Boolean.FALSE;
        this.f2449h = this;
        this.k = 10000;
        this.i = context;
        this.b = str2;
        this.f2447f = str;
        this.c = str3;
        this.f2445d = bool;
        i();
    }

    private void i() {
        int iA = cn.mucang.android.core.api.verify.geetest.a.a(getContext());
        int iB = cn.mucang.android.core.api.verify.geetest.a.b(getContext());
        float f2 = getContext().getResources().getDisplayMetrics().density;
        c cVar = new c(getContext());
        this.l = cVar;
        if (iA < iB) {
            iB = (iA * 3) / 4;
        }
        int i = (iB * 4) / 5;
        if (((int) ((i / f2) + 0.5f)) < 290) {
            i = (int) (289.5f * f2);
        }
        this.j = i;
        cVar.addJavascriptInterface(new d(), "JSInterface");
        this.l.loadUrl(this.f2444a + "?gt=" + this.b + "&challenge=" + this.c + "&success=" + (this.f2445d.booleanValue() ? 1 : 0) + "mType=" + Build.MODEL + "&osType=android&osVerInt=" + Build.VERSION.RELEASE + "&gsdkVerCode=2.16.4.21.1&lang=" + this.f2446e + "&title=" + this.f2447f + "&debug=" + this.f2448g + "&width=" + ((int) ((i / f2) + 1.5f)));
        this.l.buildLayer();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    public void j(InterfaceC0069b interfaceC0069b) {
        this.n = interfaceC0069b;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(this.l);
        ViewGroup.LayoutParams layoutParams = this.l.getLayoutParams();
        layoutParams.width = this.j;
        layoutParams.height = -2;
        this.l.setLayoutParams(layoutParams);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog
    public void show() {
        Context context = this.i;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing()) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
                return;
            }
        }
        super.show();
    }
}
