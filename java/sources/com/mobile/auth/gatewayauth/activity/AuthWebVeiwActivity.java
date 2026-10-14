package com.mobile.auth.gatewayauth.activity;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.AuthUIConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.a;
import com.mobile.auth.gatewayauth.d;
import com.mobile.auth.gatewayauth.utils.h;
import com.nirvana.tools.core.AppUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AuthWebVeiwActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f13290a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressBar f13291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f13292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RelativeLayout f13293f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AuthUIConfig f13294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageButton f13295h;

    static /* synthetic */ ProgressBar a(AuthWebVeiwActivity authWebVeiwActivity) {
        try {
            return authWebVeiwActivity.f13291d;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ String b(AuthWebVeiwActivity authWebVeiwActivity) {
        try {
            return authWebVeiwActivity.c;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ TextView c(AuthWebVeiwActivity authWebVeiwActivity) {
        try {
            return authWebVeiwActivity.f13292e;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        AuthUIConfig authUIConfigF;
        AuthUIConfig authUIConfig;
        TextView textView;
        int navTextSize;
        try {
            this.b = getIntent().getStringExtra("url");
            this.c = getIntent().getStringExtra(Constant.PROTOCOL_WEBVIEW_NAME);
            int intExtra = getIntent().getIntExtra(Constant.LOGIN_ACTIVITY_UI_MANAGER_ID, 0);
            setRequestedOrientation(getIntent().getIntExtra(Constant.PROTOCOL_WEBVIEW_ORIENTATION, 1));
            super.onCreate(bundle);
            d dVarA = d.a(intExtra);
            if (dVarA == null) {
                com.mobile.auth.o.a.a(getApplicationContext()).d("UIManager is null!|ID:", String.valueOf(intExtra));
                authUIConfigF = d.f13304a;
            } else {
                authUIConfigF = dVarA.f();
            }
            this.f13294g = authUIConfigF;
            setContentView(AppUtils.getResID(this, "authsdk_dialog_layout", TtmlNode.TAG_LAYOUT));
            int webViewStatusBarColor = this.f13294g.getWebViewStatusBarColor();
            if (AuthUIConfig.DEFAULT_WEB_STATUS_BAR_COLOR == webViewStatusBarColor) {
                webViewStatusBarColor = this.f13294g.getWebNavColor();
            }
            d.a(this.f13294g, webViewStatusBarColor, this);
            this.f13292e = (TextView) findViewById(AppUtils.getResID(this, "authsdk_title_tv", TtmlNode.ATTR_ID));
            this.f13293f = (RelativeLayout) findViewById(AppUtils.getResID(this, "authsdk_title_rl", TtmlNode.ATTR_ID));
            this.f13295h = (ImageButton) findViewById(AppUtils.getResID(this, "authsdk_back_btn", TtmlNode.ATTR_ID));
            this.f13293f.setBackgroundColor(this.f13294g.getWebNavColor());
            this.f13292e.setTextColor(this.f13294g.getWebNavTextColor());
            if (this.f13294g.getWebNavTextSize() != -1) {
                authUIConfig = this.f13294g;
                textView = this.f13292e;
                navTextSize = authUIConfig.getWebNavTextSize();
            } else {
                authUIConfig = this.f13294g;
                textView = this.f13292e;
                navTextSize = authUIConfig.getNavTextSize();
            }
            authUIConfig.setTextSize(textView, navTextSize);
            this.f13295h.setBackgroundColor(0);
            this.f13295h.setScaleType(this.f13294g.getNavReturnScaleType());
            this.f13295h.setPadding(0, 0, 0, 0);
            Drawable webNavReturnImgDrawable = this.f13294g.getWebNavReturnImgDrawable();
            if (webNavReturnImgDrawable == null) {
                webNavReturnImgDrawable = h.c(this, this.f13294g.getWebNavReturnImgPath());
            }
            if (webNavReturnImgDrawable == null) {
                webNavReturnImgDrawable = this.f13294g.getNavReturnImgDrawable();
            }
            if (webNavReturnImgDrawable == null) {
                webNavReturnImgDrawable = h.a(this, this.f13294g.getNavReturnImgPath(), "authsdk_return_bg");
            }
            this.f13295h.setImageDrawable(webNavReturnImgDrawable);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f13295h.getLayoutParams();
            layoutParams.width = AppUtils.dp2px(this, this.f13294g.getNavReturnImgWidth());
            layoutParams.height = AppUtils.dp2px(this, this.f13294g.getNavReturnImgHeight());
            this.f13295h.setOnClickListener(new View.OnClickListener() { // from class: com.mobile.auth.gatewayauth.activity.AuthWebVeiwActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        AuthWebVeiwActivity.this.finish();
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
            this.f13291d = (ProgressBar) findViewById(AppUtils.getResID(this, "authsdk_progressBar", TtmlNode.ATTR_ID));
            WebView webView = (WebView) findViewById(AppUtils.getResID(this, "authsdk_webview", TtmlNode.ATTR_ID));
            this.f13290a = webView;
            webView.setWebChromeClient(new WebChromeClient() { // from class: com.mobile.auth.gatewayauth.activity.AuthWebVeiwActivity.2
                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView2, int i) {
                    TextView textViewC;
                    String strB;
                    try {
                        if (i != 100) {
                            AuthWebVeiwActivity.a(AuthWebVeiwActivity.this).setVisibility(0);
                            AuthWebVeiwActivity.a(AuthWebVeiwActivity.this).setProgress(i);
                            return;
                        }
                        AuthWebVeiwActivity.a(AuthWebVeiwActivity.this).setVisibility(8);
                        String title = webView2.getTitle();
                        if (!TextUtils.isEmpty(AuthWebVeiwActivity.b(AuthWebVeiwActivity.this))) {
                            textViewC = AuthWebVeiwActivity.c(AuthWebVeiwActivity.this);
                            strB = AuthWebVeiwActivity.b(AuthWebVeiwActivity.this);
                        } else if (!TextUtils.isEmpty(title)) {
                            AuthWebVeiwActivity.c(AuthWebVeiwActivity.this).setText(title);
                            return;
                        } else {
                            textViewC = AuthWebVeiwActivity.c(AuthWebVeiwActivity.this);
                            strB = "服务协议";
                        }
                        textViewC.setText(strB);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
            this.f13290a.setWebViewClient(new WebViewClient() { // from class: com.mobile.auth.gatewayauth.activity.AuthWebVeiwActivity.3
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                    return false;
                }
            });
            this.f13290a.setVerticalScrollBarEnabled(false);
            this.f13290a.setHorizontalScrollBarEnabled(false);
            WebSettings settings = this.f13290a.getSettings();
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setDomStorageEnabled(true);
            settings.setSavePassword(false);
            settings.setAllowFileAccess(false);
            settings.setJavaScriptEnabled(this.f13294g.isWebSupportedJavascript());
            this.f13290a.loadUrl(this.b);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            WebView webView = this.f13290a;
            if (webView != null) {
                webView.removeAllViews();
                this.f13290a.destroy();
                this.f13290a = null;
            }
            super.onDestroy();
            this.f13294g = null;
        } catch (Throwable th) {
            a.a(th);
        }
    }
}
