package cn.mucang.android.core.webview.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.MiscUtils;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.u0;
import cn.mucang.android.core.webview.protocol.bridge.ClueJsBridge;
import cn.mucang.android.core.webview.protocol.bridge.HttpJsBridge;
import cn.mucang.android.core.webview.protocol.bridge.NativeJsBridge;
import cn.mucang.android.core.webview.protocol.bridge.NewHttpJsBridge;
import cn.mucang.android.core.webview.protocol.bridge.SystemJsBridge;
import cn.mucang.android.core.webview.protocol.bridge.WebJsBridge;
import cn.mucang.android.core.webview.protocol.bridge.http.HttpFeatureController;
import cn.mucang.android.core.webview.protocol.bridge.k0;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import com.nirvana.tools.crash.CustomLogInfoBuilder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class MucangWebView extends cn.mucang.android.core.webview.core.f implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f2707a;
    private h b;
    private ExecutorService c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.core.webview.client.f f2708d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.core.webview.client.e f2709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private f f2710f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private DownloadListener f2711g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.core.webview.core.d f2712h;
    private boolean i;

    class a implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f2713a;
        float b;
        final /* synthetic */ int c;

        a(int i) {
            this.c = i;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!cn.mucang.android.core.webview.client.f.b(MucangWebView.this.getUrl())) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f2713a = motionEvent.getX();
                this.b = motionEvent.getY();
            } else if (action == 1) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (Math.abs(x - this.f2713a) < this.c && Math.abs(y - this.b) < this.c) {
                    if (MucangWebView.this.f2710f == null) {
                        MucangWebView mucangWebView = MucangWebView.this;
                        mucangWebView.loadUrl(mucangWebView.b.c());
                    } else {
                        MucangWebView.this.f2710f.a();
                    }
                }
            }
            return true;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MucangWebView.this.setNetworkAvailable(false);
                MucangWebView.this.setNetworkAvailable(true);
            } catch (Exception e2) {
                t.c(CustomLogInfoBuilder.LOG_TYPE, e2);
            }
        }
    }

    class c implements DownloadListener {
        c() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            if (MucangWebView.this.f2711g == null) {
                MiscUtils.i(MucangWebView.this.getContext(), str);
            } else {
                MucangWebView.this.f2711g.onDownloadStart(str, str2, str3, str4, j);
            }
        }
    }

    class d {
        d() {
        }

        @JavascriptInterface
        public String getMucangWebViewCallbackData() {
            String strK = MucangWebView.this.f2707a.k();
            t.a("MucangWebView", "in getMucangWebViewCallbackData, data--->\n" + strK);
            return strK;
        }
    }

    class e {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b(String str, String str2) {
            MucangWebView.this.f2707a.i(str, MucangWebView.this.b, str2);
        }

        @JavascriptInterface
        public String getMucangWebViewData(String str) {
            return null;
        }

        @JavascriptInterface
        public String getMucangWebViewData(final String str, final String str2) {
            t.a("MucangWebView", "url : " + str + "--callback :" + str2);
            if (n0.e(str) || n0.e(str2)) {
                return "";
            }
            MucangWebView.this.c.execute(new Runnable() { // from class: cn.mucang.android.core.webview.core.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2719a.b(str, str2);
                }
            });
            return null;
        }
    }

    public interface f {
        void a();
    }

    public MucangWebView(Context context) {
        super(context);
        o();
    }

    private void g() {
        cn.mucang.android.core.webview.core.d dVar = new cn.mucang.android.core.webview.core.d("core.luban.mucang.cn", this);
        this.f2712h = dVar;
        new WebJsBridge(this, dVar);
        new SystemJsBridge(this, this.f2712h);
        new HttpJsBridge(this, this.f2712h);
        new NewHttpJsBridge(this, this.f2712h);
        new NativeJsBridge(this, this.f2712h);
        new ClueJsBridge(this, this.f2712h);
        i(this.f2712h);
        j();
    }

    private void i(cn.mucang.android.core.webview.core.d dVar) {
        List<Class<? extends k0>> listF = l.d().f();
        if (cn.mucang.android.core.utils.g.d(listF)) {
            for (Class<? extends k0> cls : listF) {
                try {
                    cls.getConstructor(MucangWebView.class, cn.mucang.android.core.webview.core.d.class).newInstance(this, dVar);
                } catch (Exception unused) {
                    t.m("MucangWebView", "addThirdCoreJsBridge error, " + cls.getName() + " newInstance fail.");
                }
            }
        }
        Map<String, cn.mucang.android.core.webview.core.d.a> mapE = l.d().e();
        if (cn.mucang.android.core.utils.g.e(mapE)) {
            for (Map.Entry<String, cn.mucang.android.core.webview.core.d.a> entry : mapE.entrySet()) {
                dVar.a(entry.getKey(), entry.getValue());
            }
        }
    }

    private void j() {
        List<cn.mucang.android.core.webview.core.d> listC = l.d().c();
        if (cn.mucang.android.core.utils.g.d(listC)) {
            Iterator<cn.mucang.android.core.webview.core.d> it = listC.iterator();
            while (it.hasNext()) {
                f(it.next());
            }
        }
    }

    private void k() {
        q();
        addJavascriptInterface(this, "mucang");
        addJavascriptInterface(this, "mcwebcore");
        addJavascriptInterface(new e(), "mcAndroidWebview1");
        addJavascriptInterface(new d(), "mcAndroidWebview2");
    }

    private void n() {
        u.c(new b());
    }

    private void o() {
        this.c = Executors.newSingleThreadExecutor(new ThreadPool.a("webview"));
        k();
        j jVar = new j();
        this.f2707a = jVar;
        jVar.l(this);
        this.b = new h(this);
        this.f2708d = new cn.mucang.android.core.webview.client.f(this.f2707a, this.b);
        this.f2709e = new cn.mucang.android.core.webview.client.e();
        setWebViewClient(this.f2708d);
        setWebChromeClient(this.f2709e);
        setOnTouchListener(new a(ViewConfiguration.get(getContext()).getScaledTouchSlop()));
        g();
        l(new HttpFeatureController(this.f2712h, this.f2707a));
        cn.mucang.android.core.webview.core.e.a().b(String.valueOf(hashCode()));
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void q() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setDatabaseEnabled(true);
        getSettings().setGeolocationEnabled(true);
        getSettings().setAppCachePath(MucangConfig.getContext().getDir("cache", 0).getPath());
        getSettings().setSupportZoom(true);
        getSettings().setBuiltInZoomControls(true);
        getSettings().setUseWideViewPort(true);
        getSettings().setLoadWithOverviewMode(true);
        getSettings().setTextZoom(100);
        getSettings().setUserAgentString(u0.d());
        getSettings().setDisplayZoomControls(false);
        try {
            getSettings().setDomStorageEnabled(true);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            getSettings().setMixedContentMode(0);
        }
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        super.setDownloadListener(new c());
        u0.e(this);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        try {
            this.c.shutdown();
            removeAllViews();
            m("webviewEvent", "onDestroy");
            l.d().g();
            super.destroy();
            cn.mucang.android.core.webview.core.e.a().c(String.valueOf(hashCode()));
        } catch (Exception e2) {
            t.c("e", e2);
        }
    }

    public void f(cn.mucang.android.core.webview.core.d dVar) {
        dVar.b(this);
        this.f2707a.a(dVar);
    }

    public h getProtocolContext() {
        return this.b;
    }

    public j getProtocolHandler() {
        return this.f2707a;
    }

    public void h(Runnable runnable) {
        this.c.execute(runnable);
    }

    public void l(m mVar) {
        this.f2708d.a(mVar);
        this.f2709e.a(mVar);
    }

    void m(String str, String str2) {
        cn.mucang.android.core.webview.core.d dVar = this.f2712h;
        if (dVar != null) {
            dVar.d(str, cn.mucang.android.core.webview.core.d.j(str2, str2));
        }
    }

    @Override // android.webkit.WebView
    public void onPause() {
        super.onPause();
        m("webviewEvent", "onPause");
        m("hide", "");
    }

    @Override // cn.mucang.android.core.webview.core.i
    public void onProtocolDataChanged() {
        n();
    }

    @Override // android.webkit.WebView
    public void onResume() {
        super.onResume();
        m("webviewEvent", "onResume");
        m("show", "");
    }

    public boolean p() {
        return this.i;
    }

    @Override // android.webkit.WebView
    public void setDownloadListener(DownloadListener downloadListener) {
        this.f2711g = downloadListener;
    }

    public void setInterceptClose(boolean z) {
        this.i = z;
    }

    @Deprecated
    public void setLoadUrlForInject(String str) {
    }

    public void setOnErrorPageClickListener(f fVar) {
        this.f2710f = fVar;
    }

    @Deprecated
    public void setWebViewController(m mVar) {
        this.f2708d.d(mVar);
        this.f2709e.c(mVar);
    }

    public void setWebViewPageController(p pVar) {
        this.f2708d.e(pVar);
        this.f2709e.d(pVar);
    }

    public MucangWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        o();
    }
}
