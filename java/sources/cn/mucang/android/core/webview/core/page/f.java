package cn.mucang.android.core.webview.core.page;

import android.app.Activity;
import android.net.Uri;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.ui.page.PageActivity;
import cn.mucang.android.core.ui.page.PageHistory;
import cn.mucang.android.core.utils.MiscUtils;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.core.webview.core.i;
import com.alibaba.fastjson.JSON;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2760a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f2761d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f2762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.core.ui.page.d f2763f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WebViewPage f2764g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2765h;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Uri f2766a;

        a(Uri uri) {
            this.f2766a = uri;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.f2763f.i(this.f2766a.getQueryParameter(Constant.PROTOCOL_WEBVIEW_NAME))) {
                return;
            }
            Activity activityI = MucangConfig.i();
            if (activityI instanceof PageActivity) {
                activityI.finish();
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebPageArgument f2767a;
        final /* synthetic */ Uri b;

        b(WebPageArgument webPageArgument, Uri uri) {
            this.f2767a = webPageArgument;
            this.b = uri;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.f2764g.isSelf()) {
                f.this.f2763f.x(new PageHistory(WebViewPage.class, this.f2767a, this.b.getQueryParameter(Constant.PROTOCOL_WEBVIEW_NAME)));
            } else {
                AsteroidManager.d().h(MucangConfig.getContext(), this.f2767a.getUrl());
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebPageArgument f2768a;

        c(WebPageArgument webPageArgument) {
            this.f2768a = webPageArgument;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2768a.setUrl(f.this.f2764g.getCurrentUrl());
            f.this.f2763f.E(this.f2768a);
            f.this.f2763f.B(this.f2768a.getPageNme());
            f.this.f2764g.updateTheme(this.f2768a);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f2764g.hideLoadingView();
        }
    }

    class e implements cn.mucang.android.core.widget.datepick.a.h {
        e() {
        }

        @Override // cn.mucang.android.core.widget.datepick.a.h
        public void a(Date date) {
            f.this.c(new h("", String.valueOf(date.getTime())));
        }
    }

    public f(WebViewPage webViewPage) {
        this.f2764g = webViewPage;
    }

    private WebPageArgument m(Uri uri) {
        WebPageArgument webPageArgument = new WebPageArgument();
        try {
            boolean zO = MiscUtils.o(uri.getQueryParameter("showTitleBar"), true);
            boolean zO2 = MiscUtils.o(uri.getQueryParameter("transition"), true);
            boolean zO3 = MiscUtils.o(uri.getQueryParameter("fullScreen"), false);
            int iH = y.h(uri.getQueryParameter("baseWidth"), 720);
            String queryParameter = uri.getQueryParameter("background");
            String queryParameter2 = uri.getQueryParameter("titleBar");
            String queryParameter3 = uri.getQueryParameter("statusBar");
            String queryParameter4 = uri.getQueryParameter(Constant.PROTOCOL_WEBVIEW_NAME);
            webPageArgument.setBaseWidth(iH);
            webPageArgument.setShowTitleBar(zO);
            webPageArgument.setTransition(zO2);
            webPageArgument.setFullScreen(zO3);
            webPageArgument.setBackground(queryParameter);
            webPageArgument.setPageNme(queryParameter4);
            webPageArgument.setTitleBar((TitleBar) JSON.parseObject(queryParameter2, TitleBar.class));
            webPageArgument.setStatusBar((StatusBar) JSON.parseObject(queryParameter3, StatusBar.class));
            webPageArgument.setHasConfig(true);
        } catch (Exception e2) {
            t.c("e", e2);
        }
        return webPageArgument;
    }

    private void s(Uri uri) {
        String queryParameter = uri.getQueryParameter("type");
        long j = y.j(uri.getQueryParameter("value"), 0L);
        cn.mucang.android.core.widget.datepick.a.g gVar = new cn.mucang.android.core.widget.datepick.a.g();
        gVar.c(queryParameter);
        gVar.d(j);
        gVar.b(new e());
        cn.mucang.android.core.widget.datepick.a aVarA = gVar.a();
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isDestroyed() || activityI.isFinishing() || !(activityI instanceof androidx.fragment.app.d)) {
            return;
        }
        aVarA.show(((androidx.fragment.app.d) activityI).getSupportFragmentManager(), "选择日期");
    }

    public void c(h hVar) {
        if (hVar == null) {
            return;
        }
        this.f2761d.add(hVar.a(this.f2760a));
        i iVar = this.f2762e;
        if (iVar != null) {
            iVar.onProtocolDataChanged();
        }
    }

    public void d(h hVar) {
        if (hVar == null) {
            return;
        }
        this.f2761d.add(hVar.a(this.b));
        i iVar = this.f2762e;
        if (iVar != null) {
            iVar.onProtocolDataChanged();
        }
    }

    public void e(String str) {
        if (str == null) {
            t.a("PageProtocol", "");
            return;
        }
        this.f2761d.add(str);
        i iVar = this.f2762e;
        if (iVar != null) {
            iVar.onProtocolDataChanged();
        }
    }

    synchronized void f(Uri uri) {
        if (uri == null) {
            return;
        }
        String path = uri.getPath();
        if (path == null) {
            return;
        }
        switch (path) {
            case "/page/saveInstanceState":
                this.c = uri.getQueryParameter("data");
                break;
            case "/page/back":
                u.c(new a(uri));
                break;
            case "/page/open":
                WebPageArgument webPageArgumentM = m(uri);
                webPageArgumentM.setUrl(uri.getQueryParameter("url"));
                u.c(new b(webPageArgumentM, uri));
                break;
            case "/page/setTheme":
                if (this.f2764g != null) {
                    u.c(new c(m(uri)));
                    break;
                }
                break;
            case "/page/ready":
                u.c(new d());
                this.f2765h = true;
                break;
            case "/system/keyboard":
                this.f2764g.keyboard(MiscUtils.o(uri.getQueryParameter("show"), true), uri.getQueryParameter("type"));
                break;
            case "/system/datePicker":
                s(uri);
                break;
        }
    }

    String g() {
        return this.b;
    }

    String h() {
        if (cn.mucang.android.core.utils.g.b(this.f2761d)) {
            return null;
        }
        return this.f2761d.remove(0);
    }

    String i() {
        return this.c;
    }

    boolean j(Uri uri) {
        return uri != null && "/page/event".equals(uri.getPath());
    }

    boolean k() {
        return this.f2765h;
    }

    boolean l(Uri uri) {
        return uri != null && "/page/saveInstanceState".equals(uri.getPath());
    }

    void n(String str) {
        this.f2760a = str;
    }

    public void o(String str) {
    }

    void p(i iVar) {
        this.f2762e = iVar;
    }

    void q(String str) {
        this.b = str;
    }

    void r(cn.mucang.android.core.ui.page.d dVar) {
        this.f2763f = dVar;
    }
}
