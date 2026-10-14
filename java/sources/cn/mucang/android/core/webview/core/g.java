package cn.mucang.android.core.webview.core;

import android.app.Activity;
import android.app.Application;
import android.app.ProgressDialog;
import android.content.ComponentCallbacks2;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.net.Uri;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.s;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u0;
import cn.mucang.android.core.webview.HtmlExtra;
import cn.mucang.android.core.webview.ParamsMode;
import cn.mucang.android.core.webview.tracker.Event;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MucangWebView f2723a;
    private final HtmlExtra b;
    private ProgressDialog c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private StringBuilder f2724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueCallback<Uri[]> f2725e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.core.webview.d f2727g;
    private boolean l;
    private boolean m;
    private String n;
    private long o;
    private String p;
    private File q;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.core.webview.i f2726f = new cn.mucang.android.core.webview.i();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.core.webview.tracker.c f2728h = new cn.mucang.android.core.webview.tracker.c();
    private final AudioManager i = (AudioManager) MucangConfig.getContext().getSystemService("audio");
    private final AudioManager.OnAudioFocusChangeListener j = new cn.mucang.android.core.webview.core.b();
    private boolean k = true;

    class a implements cn.mucang.android.core.webview.k.b.l {
        a() {
        }

        @Override // cn.mucang.android.core.webview.k.b.l
        public void onCancel() {
            g.this.k();
        }

        @Override // cn.mucang.android.core.webview.k.b.l
        public void onDismiss() {
            g.this.f2723a.setVisibility(0);
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2730a;

        static {
            int[] iArr = new int[ParamsMode.values().length];
            f2730a = iArr;
            try {
                iArr[ParamsMode.WHITE_LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2730a[ParamsMode.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public g(MucangWebView mucangWebView, HtmlExtra htmlExtra, cn.mucang.android.core.webview.d dVar) {
        if (mucangWebView == null || htmlExtra == null || dVar == null) {
            throw new IllegalArgumentException("mucangWebView, htmlExtra and html5Controller must not be null");
        }
        this.f2723a = mucangWebView;
        this.b = htmlExtra;
        this.f2727g = dVar;
        c();
        r();
    }

    private void G(String str) {
        if (this.k) {
            this.k = cn.mucang.android.core.webview.protocol.e.a.b(str) && this.b.isShowCloseButton();
        }
        if (this.k && e()) {
            this.f2727g.j();
        } else {
            this.f2727g.p();
        }
    }

    private void J(ValueCallback<Uri[]> valueCallback, String str) {
        this.f2725e = valueCallback;
        try {
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType(str);
            intent.addCategory("android.intent.category.OPENABLE");
            this.f2727g.startActivityForResult(intent, 2019);
        } catch (Exception unused) {
        }
    }

    private void K(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            Application context = MucangConfig.getContext();
            if (context != null) {
                context.startActivity(intent);
            }
        } catch (Exception e2) {
            t.c("e", e2);
        }
    }

    private void L(String str) {
        if (!n0.g(this.p) || this.p.equals(str)) {
            return;
        }
        cn.mucang.android.core.webview.tracker.b.c().e(this.b.getI(), this.b.getR(), str, this.p);
        this.p = null;
    }

    private void M(Uri uri) {
        o(uri);
        q(uri);
    }

    private void N(Uri uri) {
    }

    private void O(Uri uri) {
        this.f2723a.getProtocolContext().h(cn.mucang.android.core.webview.h.c(uri));
    }

    private void c() {
        boolean zEquals;
        this.f2724d = new StringBuilder(this.b.getOriginUrl());
        ParamsMode paramsMode = this.b.getParamsMode();
        if (URLUtil.isNetworkUrl(this.b.getOriginUrl()) && b.f2730a[paramsMode.ordinal()] == 1 && s.h().l(this.b.getOriginUrl())) {
            try {
                zEquals = "1".equals(Uri.parse(this.f2724d.toString()).getQueryParameter("_full"));
            } catch (Exception unused) {
                zEquals = false;
            }
            String strF = zEquals ? cn.mucang.android.core.api.url.c.f(this.f2724d.toString(), null) : cn.mucang.android.core.api.url.c.e(this.f2724d.toString(), null);
            StringBuilder sb = this.f2724d;
            sb.delete(0, sb.length()).append(strF);
        }
        this.n = this.f2724d.toString();
        t.a("HTML5Controller", "url after build: " + this.f2724d.toString());
    }

    private void f(long j) {
        String str;
        int i = (int) (j / 1000);
        if (i < 5) {
            str = this.b.getStatisticsName() + "(小于5秒)";
        } else if (i < 10) {
            str = this.b.getStatisticsName() + "(5-10秒)";
        } else if (i < 30) {
            str = this.b.getStatisticsName() + "(10-30秒)";
        } else if (i < 60) {
            str = this.b.getStatisticsName() + "(30-60秒)";
        } else {
            str = this.b.getStatisticsName() + "(大于60秒)";
        }
        f.a.a.a.c.o(this.b.getStatisticsId(), this.b.getStatisticsName(), j);
        f.a.a.a.c.b(this.b.getStatisticsId() + "-duration", str);
    }

    private void g() {
        ProgressDialog progressDialog = this.c;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        cn.mucang.android.core.utils.k.b(this.c);
    }

    private void j(String str) {
        Uri uri;
        if (str == null || (uri = Uri.parse(str)) == null || !uri.isHierarchical()) {
            return;
        }
        N(uri);
        this.f2726f.a(uri);
        O(uri);
        M(uri);
        p(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        cn.mucang.android.core.webview.d dVar = this.f2727g;
        if (dVar != null) {
            dVar.m();
        }
    }

    private void o(Uri uri) {
        String queryParameter = uri.getQueryParameter("mc-web-hardware");
        if (n0.g(queryParameter)) {
            this.l = Boolean.parseBoolean(queryParameter);
        }
        if (this.l) {
            this.f2723a.setLayerType(2, null);
        }
    }

    private void p(Uri uri) {
        String queryParameter = uri.getQueryParameter("mc-web-orientation");
        Activity activityI = this.f2727g.i();
        if (activityI != null) {
            if (n0.e(queryParameter)) {
                queryParameter = this.b.getOrientation();
            }
            if (n0.g(queryParameter)) {
                this.f2727g.h(queryParameter);
            } else {
                activityI.setRequestedOrientation(1);
            }
        }
    }

    private void q(Uri uri) {
        String queryParameter = uri.getQueryParameter("mc-web-software");
        if (n0.g(queryParameter)) {
            this.m = Boolean.parseBoolean(queryParameter);
        }
        if (this.m) {
            this.f2723a.setLayerType(1, null);
        }
    }

    private void r() {
        this.f2723a.getProtocolContext().f(this.f2724d.toString());
        if (s(this.b.getOriginUrl())) {
            k();
            return;
        }
        if (this.b.isLoadUrlWithPost()) {
            this.f2723a.postUrl(this.f2724d.toString(), this.b.getPostData());
        } else if (cn.mucang.android.core.utils.g.e(this.b.getHeaders())) {
            this.f2723a.loadUrl(this.f2724d.toString(), this.b.getHeaders());
        } else {
            this.f2723a.loadUrl(this.f2724d.toString());
        }
        if (this.b.isOpenAsync()) {
            return;
        }
        w();
    }

    private boolean s(String str) {
        if (cn.mucang.android.core.webview.protocol.e.a.f(str) && cn.mucang.android.core.webview.protocol.e.a.m(str)) {
            return true;
        }
        if (!cn.mucang.android.core.webview.protocol.e.a.h(str)) {
            return false;
        }
        this.f2723a.getProtocolHandler().h(str);
        return true;
    }

    private boolean u(String str) {
        return str != null && str.startsWith("file://");
    }

    private void w() {
        if (this.c == null) {
            this.f2723a.setVisibility(4);
            ProgressDialog progressDialogD = cn.mucang.android.core.webview.k.b.d(this.f2727g.i(), new a());
            this.c = progressDialogD;
            progressDialogD.show();
        }
    }

    public void A(WebView webView, int i) {
        this.f2727g.c(i);
    }

    public void B(String str) {
        this.f2727g.k(str);
    }

    public void C(Uri[] uriArr) {
        ValueCallback<Uri[]> valueCallback = this.f2725e;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(uriArr);
        }
        this.q = null;
    }

    public boolean D(WebView webView, int i, String str, String str2) {
        return false;
    }

    public void E() {
        if (this.f2723a != null) {
            this.i.abandonAudioFocus(this.j);
            this.f2723a.onResume();
        }
        if (this.f2725e != null) {
            this.f2725e = null;
        }
        if (n0.g(this.b.getTitle())) {
            l0.e(this.f2723a.getContext(), this.b.getTitle());
        }
        if (this.o == 0) {
            this.o = System.currentTimeMillis();
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    public boolean F(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        String str;
        String[] acceptTypes = fileChooserParams.getAcceptTypes();
        if (acceptTypes == null || acceptTypes.length <= 0) {
            str = "*/*";
        } else {
            str = acceptTypes[0];
            if (!n0.g(str)) {
                str = "*/*";
            }
        }
        J(valueCallback, str);
        return true;
    }

    public void H() {
        if (!cn.mucang.android.core.webview.client.f.b(this.f2723a.getUrl())) {
            this.f2723a.reload();
        } else if (this.b.isLoadUrlWithPost()) {
            this.f2723a.postUrl(this.n, this.b.getPostData());
        } else {
            this.f2723a.loadUrl(this.n);
        }
        this.p = null;
    }

    public boolean I(WebView webView, String str) {
        j(str);
        if (cn.mucang.android.core.webview.protocol.e.a.f(str) && cn.mucang.android.core.webview.protocol.e.a.m(str)) {
            if (cn.mucang.android.core.webview.h.a(Uri.parse(str))) {
                k();
            }
            return true;
        }
        if (URLUtil.isNetworkUrl(str) || u(str)) {
            return false;
        }
        K(str);
        return true;
    }

    public void d(d dVar) {
        this.f2723a.f(dVar);
    }

    public boolean e() {
        return this.f2723a.canGoBack();
    }

    public void h() {
        g();
        this.f2728h.d();
        if (n0.g(this.b.getStatisticsId()) && n0.g(this.b.getStatisticsName())) {
            f(System.currentTimeMillis() - this.o);
        }
        u0.c(this.f2723a);
    }

    public void i() {
        if (e()) {
            n();
            return;
        }
        if (this.f2723a.p()) {
            this.f2723a.m("onWebviewClose", "");
            return;
        }
        ComponentCallbacks2 componentCallbacks2I = this.f2727g.i();
        if ((componentCallbacks2I instanceof cn.mucang.android.core.webview.g) && ((cn.mucang.android.core.webview.g) componentCallbacks2I).a(this)) {
            return;
        }
        t();
    }

    public String l() {
        return this.f2723a.getUrl();
    }

    public File m() {
        return this.q;
    }

    public void n() {
        this.f2723a.goBack();
    }

    public void t() {
        if (cn.mucang.android.core.webview.h.f(Uri.parse(this.b.getOriginUrl()))) {
            cn.mucang.android.core.utils.d.g(this.f2727g.i());
        } else {
            k();
        }
    }

    public void v(String str) {
        this.f2723a.loadUrl(str);
    }

    public void x(WebView webView, String str) {
        this.f2728h.b(new cn.mucang.android.core.webview.tracker.a(str, Event.PAGE_FINISHED, System.currentTimeMillis()));
        L(str);
        G(str);
        this.f2727g.e(str);
        if (this.b.isOpenAsync()) {
            return;
        }
        g();
    }

    public void y(WebView webView, String str, Bitmap bitmap) {
        j(str);
        this.f2728h.b(new cn.mucang.android.core.webview.tracker.a(str, Event.PAGE_START, System.currentTimeMillis()));
        if (cn.mucang.android.core.webview.tracker.b.c().b(str)) {
            cn.mucang.android.core.webview.tracker.b.c().e(this.b.getI(), this.b.getR(), str, this.p);
            this.p = str;
        }
    }

    public void z() {
        MucangWebView mucangWebView = this.f2723a;
        if (mucangWebView != null) {
            mucangWebView.onPause();
        }
        if (n0.g(this.b.getTitle())) {
            l0.c(this.f2723a.getContext(), this.b.getTitle());
        }
    }
}
