package cn.mucang.android.core.utils;

import android.content.Context;
import android.webkit.WebView;
import cn.mucang.android.core.webview.HTML5Activity;
import cn.mucang.android.core.webview.HtmlExtra;

/* JADX INFO: loaded from: classes.dex */
public class u0 {

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebView f2673a;

        a(WebView webView) {
            this.f2673a = webView;
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.b(this.f2673a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(WebView webView) {
        MiscUtils.e(webView);
    }

    public static void c(WebView webView) {
        if (u.b()) {
            b(webView);
        } else {
            u.c(new a(webView));
        }
    }

    public static String d() {
        return MiscUtils.h();
    }

    public static WebView e(WebView webView) {
        return MiscUtils.l(webView);
    }

    public static void f(Context context, HtmlExtra htmlExtra) {
        HTML5Activity.i(context, htmlExtra);
    }

    public static void g(Context context, String str) {
        HTML5Activity.i(context, new cn.mucang.android.core.webview.f(str).a().y());
    }

    public static void h(Context context, String str, String str2) {
        HtmlExtra.b bVarA = new cn.mucang.android.core.webview.f(str).a();
        bVarA.I(str2);
        HTML5Activity.i(context, bVarA.y());
    }
}
