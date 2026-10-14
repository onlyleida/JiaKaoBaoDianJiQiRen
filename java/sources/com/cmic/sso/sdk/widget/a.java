package com.cmic.sso.sdk.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.mucang.sundial.android.tcp.data.gnss.AlarmInfo;
import com.cmic.sso.sdk.AuthThemeConfig;
import com.mobile.auth.k.n;
import com.mobile.auth.k.w;

/* JADX INFO: loaded from: classes5.dex */
public class a extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f11651a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f11652d;

    /* JADX INFO: renamed from: com.cmic.sso.sdk.widget.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0195a implements View.OnClickListener {
        ViewOnClickListenerC0195a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f11651a.stopLoading();
            a.this.cancel();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f11651a.stopLoading();
            a.this.cancel();
        }
    }

    class c extends WebViewClient {
        c() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            a.this.f11651a.loadUrl(str);
            return true;
        }
    }

    public a(Context context, int i, String str, String str2) {
        super(context, i);
        try {
            this.c = str;
            this.b = str2;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private ViewGroup b() {
        View viewFindViewById;
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f11652d = linearLayout;
        linearLayout.setOrientation(1);
        this.f11652d.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        AuthThemeConfig authThemeConfigA = com.mobile.auth.e.a.a((Context) null).a();
        int clauseLayoutResID = authThemeConfigA.getClauseLayoutResID();
        String str = TextUtils.isEmpty(this.c) ? "服务条款" : this.c;
        if (clauseLayoutResID != -1) {
            RelativeLayout relativeLayoutA = w.a(getContext(), getLayoutInflater().inflate(clauseLayoutResID, (ViewGroup) this.f11652d, false), 1118481, 0, str, (View.OnClickListener) null);
            String clauseLayoutReturnID = authThemeConfigA.getClauseLayoutReturnID();
            if (!TextUtils.isEmpty(clauseLayoutReturnID) && (viewFindViewById = relativeLayoutA.findViewById(n.a(getContext(), clauseLayoutReturnID))) != null) {
                viewFindViewById.setOnClickListener(new ViewOnClickListenerC0195a());
            }
            this.f11652d.addView(relativeLayoutA);
        } else {
            this.f11652d.addView(w.a(getContext(), (View) null, 1118481, 2236962, str, new b()));
        }
        return this.f11652d;
    }

    private void c() {
        WebView webView = new WebView(getContext());
        this.f11651a = webView;
        WebSettings settings = webView.getSettings();
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setSavePassword(false);
        settings.setJavaScriptEnabled(true);
        this.f11652d.addView(this.f11651a, new LinearLayout.LayoutParams(-1, -1));
        if (Build.VERSION.SDK_INT < 17) {
            this.f11651a.removeJavascriptInterface("searchBoxJavaBridge_");
            this.f11651a.removeJavascriptInterface("accessibility");
            this.f11651a.removeJavascriptInterface("accessibilityTraversal");
        }
        this.f11651a.setWebViewClient(new c());
        this.f11651a.loadUrl(this.b);
    }

    protected void a() {
        View decorView;
        requestWindowFeature(1);
        int i = 0;
        getWindow().setFeatureDrawableAlpha(0, 0);
        AuthThemeConfig authThemeConfigA = com.mobile.auth.e.a.a((Context) null).a();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21 && authThemeConfigA.getStatusBarColor() != 0) {
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().clearFlags(AlarmInfo.VEHICLE_STOLEN);
            getWindow().setStatusBarColor(authThemeConfigA.getStatusBarColor());
            getWindow().setNavigationBarColor(authThemeConfigA.getStatusBarColor());
        }
        if (i2 >= 23) {
            if (authThemeConfigA.isLightColor()) {
                decorView = getWindow().getDecorView();
                i = 8192;
            } else {
                decorView = getWindow().getDecorView();
            }
            decorView.setSystemUiVisibility(i);
        }
        setContentView(b());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        WebView webView = this.f11651a;
        if (webView != null) {
            webView.stopLoading();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (this.f11652d == null) {
            a();
        }
        if (this.f11651a == null) {
            c();
        }
        super.show();
    }
}
