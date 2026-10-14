package cn.mucang.android.core.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.framework.core.R;
import java.util.Objects;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MiscUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f2640a = "MiscUtils";
    private static final Random b = new Random();

    class a implements DownloadListener {
        a() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        }
    }

    class b implements DownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebView f2641a;

        b(WebView webView) {
            this.f2641a = webView;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            MiscUtils.i(this.f2641a.getContext(), str);
        }
    }

    public static WebView a() {
        t.a(f2640a, "MiscUtils.a");
        WebView webViewD = null;
        try {
            Activity activityI = MucangConfig.i();
            if (activityI != null && !activityI.isFinishing()) {
                ViewGroup viewGroup = (ViewGroup) activityI.getWindow().getDecorView();
                webViewD = d();
                int iP = (int) ((o0.p(activityI.getWindowManager()) - o0.r()) - MucangConfig.getContext().getResources().getDimension(R.dimen.core__title_bar_height));
                if (iP <= 0) {
                    iP = -1;
                }
                webViewD.setLayoutParams(new ViewGroup.LayoutParams(-1, iP));
                viewGroup.addView(webViewD);
                webViewD.setVisibility(4);
            }
        } catch (Exception e2) {
            t.b("a()", "a() error ", e2);
        }
        if (webViewD == null) {
            webViewD = d();
        }
        return l(webViewD);
    }

    public static void b(final WebView webView, final String str) {
        t.a(f2640a, "MiscUtils.b");
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        u.c(new Runnable() { // from class: cn.mucang.android.core.utils.b
            @Override // java.lang.Runnable
            public final void run() {
                webView.loadUrl(str);
            }
        });
    }

    public static void c(WebView webView) {
        t.a(f2640a, "MiscUtils.c");
        e(webView);
    }

    private static WebView d() {
        WebView webView = new WebView(MucangConfig.getContext());
        String userAgentString = webView.getSettings().getUserAgentString();
        f(webView, true);
        webView.getSettings().setUserAgentString(userAgentString);
        webView.setWebViewClient(new WebViewClient());
        webView.setDownloadListener(new a());
        return l(webView);
    }

    public static void e(WebView webView) {
        if (webView == null) {
            return;
        }
        try {
            ((ViewGroup) webView.getParent()).removeView(webView);
            webView.destroy();
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }

    public static void f(WebView webView, boolean z) {
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setAppCacheEnabled(true);
        webView.getSettings().setDatabaseEnabled(true);
        webView.getSettings().setUserAgentString(h());
        webView.getSettings().setGeolocationEnabled(true);
        webView.getSettings().setSupportZoom(true);
        webView.getSettings().setTextZoom(100);
        webView.getSettings().setBuiltInZoomControls(true);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setDisplayZoomControls(false);
        webView.getSettings().setAppCacheMaxSize(52428800L);
        try {
            webView.getSettings().setDomStorageEnabled(true);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
        if (z) {
            webView.getSettings().setCacheMode(-1);
        } else {
            webView.getSettings().setCacheMode(1);
        }
        webView.getSettings().setDatabasePath(MucangConfig.getContext().getDir("database", 0).getPath());
        webView.getSettings().setAppCachePath(MucangConfig.getContext().getDir("cache", 0).getPath());
        webView.setDownloadListener(new b(webView));
        l(webView);
    }

    private static String g() {
        byte[] bArr = new byte[6];
        b.nextBytes(bArr);
        return Base64.encodeToString(bArr, 2);
    }

    public static String h() {
        return MucangConfig.j() + " MuCang|" + g();
    }

    public static void i(Context context, String str) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    public static boolean j(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public static WebView l(WebView webView) {
        if (webView == null) {
            return null;
        }
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
            webView.getSettings().setAllowFileAccess(false);
            webView.getSettings().setAllowFileAccessFromFileURLs(false);
            webView.getSettings().setAllowUniversalAccessFromFileURLs(false);
            webView.getSettings().setSavePassword(false);
        } catch (Exception unused) {
        }
        return webView;
    }

    public static String m(JSONObject jSONObject, String str) {
        return n(jSONObject, str, "");
    }

    public static String n(JSONObject jSONObject, String str, String str2) {
        return jSONObject.isNull(str) ? str2 : jSONObject.optString(str, str2);
    }

    public static boolean o(String str, boolean z) {
        return n0.e(str) ? z : Boolean.parseBoolean(str);
    }

    public static void p(long j) {
        try {
            Thread.sleep(j);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }
}
