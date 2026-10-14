package cn.mucang.android.core.webview.core.page;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.ui.page.PageActivity;
import cn.mucang.android.core.ui.page.PageArgument;
import cn.mucang.android.core.ui.page.PageState;
import cn.mucang.android.core.ui.page.PageView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.u0;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.android.core.webview.core.i;
import cn.mucang.android.core.webview.core.j;
import cn.mucang.android.core.webview.core.l;
import cn.mucang.android.core.webview.core.p;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public class WebViewPage implements cn.mucang.android.core.ui.page.b, i, p {
    private static final String TAG = "WebViewPage";
    private cn.mucang.android.core.ui.page.d pageManager;
    private PageView pageView;
    private cn.mucang.android.core.webview.core.page.f protocol;
    private j protocolHandler;
    private MucangWebView webView;
    private PageData savePageData = new PageData();
    private List<cn.mucang.android.core.webview.core.page.h> callbackDataList = new ArrayList();
    private Runnable destroyWebView = new a();
    private cn.mucang.android.core.webview.c.InterfaceC0084c protocolCallbackDataAddedListener = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WebViewPage.this.webView != null) {
                WebViewPage.this.webView.destroy();
                WebViewPage.this.webView = null;
                cn.mucang.android.core.webview.c.b().d(WebViewPage.this.protocolCallbackDataAddedListener);
            }
        }
    }

    class b implements cn.mucang.android.core.webview.c.InterfaceC0084c {
        b() {
        }

        @Override // cn.mucang.android.core.webview.c.InterfaceC0084c
        public void a(String str, String str2, int i) {
            if (WebViewPage.this.protocolHandler == null || i != WebViewPage.this.webView.hashCode()) {
                return;
            }
            if (str2 != null) {
                WebViewPage.this.protocol.e(WebViewPage.this.protocolHandler.d(str, str2));
            }
            t.a("d", str + "--" + str2);
        }
    }

    class c implements MucangWebView.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebPageArgument f2742a;

        c(WebPageArgument webPageArgument) {
            this.f2742a = webPageArgument;
        }

        @Override // cn.mucang.android.core.webview.core.MucangWebView.f
        public void a() {
            WebViewPage.this.webView.loadUrl(this.f2742a.getUrl());
        }
    }

    class d implements Animation.AnimationListener {
        d() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            WebViewPage.this.pageView.getLoadingView().destroy();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewPage.this.hideLoadingView();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (WebViewPage.this.webView != null) {
                    WebViewPage.this.webView.loadUrl("javascript:window.MCProtocolCallback()");
                }
            } catch (Exception e2) {
                t.c("e", e2);
            }
        }
    }

    class g {
        g() {
        }

        @JavascriptInterface
        public String getData() {
            String strH = WebViewPage.this.protocol.h();
            t.a(WebViewPage.TAG, "MCProtocolAndroidCallback.getData, data--->\n" + strH);
            return strH;
        }
    }

    class h {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f2748a;
            final /* synthetic */ String b;

            a(String str, String str2) {
                this.f2748a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                j protocolHandler;
                if (WebViewPage.this.webView == null || (protocolHandler = WebViewPage.this.webView.getProtocolHandler()) == null) {
                    return;
                }
                WebViewPage.this.protocolHandler = protocolHandler;
                String strF = protocolHandler.f(this.f2748a, this.b, String.valueOf(WebViewPage.this.webView.hashCode()));
                if (strF != null) {
                    WebViewPage.this.protocol.e(protocolHandler.d(this.b, strF));
                }
            }
        }

        h() {
        }

        @JavascriptInterface
        public String exec(String str, String str2) {
            t.a(WebViewPage.TAG, "protocol url : " + str + "--|--callbackName :" + str2);
            if (n0.e(str) || n0.e(str2)) {
                return "";
            }
            Uri uri = Uri.parse(str);
            if (!"applet.luban.mucang.cn".equals(uri.getHost())) {
                WebViewPage.this.webView.h(new a(str, str2));
                return null;
            }
            WebViewPage.this.protocol.n(str2);
            if (WebViewPage.this.protocol.j(uri)) {
                WebViewPage.this.protocol.q(str2);
                WebViewPage.this.sendWebCallback();
                return null;
            }
            WebViewPage.this.protocol.f(uri);
            if (!WebViewPage.this.protocol.l(uri)) {
                return null;
            }
            WebViewPage.this.savePageData.setPageJsonData(WebViewPage.this.protocol.i());
            u.a().removeCallbacks(WebViewPage.this.destroyWebView);
            u.c(WebViewPage.this.destroyWebView);
            return null;
        }
    }

    public WebViewPage() {
        initWebView();
        cn.mucang.android.core.webview.core.page.f fVar = new cn.mucang.android.core.webview.core.page.f(this);
        this.protocol = fVar;
        fVar.p(this);
        addWebJs();
        addThirdJsBridge();
        cn.mucang.android.core.webview.c.b().a(this.protocolCallbackDataAddedListener);
    }

    private void addThirdJsBridge() {
        List<cn.mucang.android.core.webview.core.d> listB = l.d().b();
        if (cn.mucang.android.core.utils.g.d(listB)) {
            Iterator<cn.mucang.android.core.webview.core.d> it = listB.iterator();
            while (it.hasNext()) {
                this.webView.f(it.next());
            }
        }
    }

    private void addWebJs() {
        this.webView.addJavascriptInterface(new g(), "MCProtocolAndroidCallback");
        this.webView.addJavascriptInterface(new h(), "MCProtocolAndroidExecute");
    }

    private void initWebView() {
        MucangWebView mucangWebView = new MucangWebView(MucangConfig.i());
        this.webView = mucangWebView;
        mucangWebView.getSettings().setUserAgentString(cn.mucang.android.core.webview.core.page.e.c());
        this.webView.setWebViewPageController(this);
        this.webView.requestFocusFromTouch();
    }

    private void notifyWebDataChanged() {
        if (!u.b()) {
            u.c(new f());
            return;
        }
        MucangWebView mucangWebView = this.webView;
        if (mucangWebView != null) {
            mucangWebView.loadUrl("javascript:window.MCProtocolCallback()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendWebCallback() {
        Iterator<cn.mucang.android.core.webview.core.page.h> it = this.callbackDataList.iterator();
        while (it.hasNext()) {
            this.protocol.d(it.next());
        }
        this.callbackDataList.clear();
    }

    public void addJsBridge(cn.mucang.android.core.webview.core.d dVar) {
        MucangWebView mucangWebView = this.webView;
        if (mucangWebView == null) {
            t.a(TAG, "WebView is null.Can not add the JsBridge.");
        } else {
            mucangWebView.f(dVar);
        }
    }

    @Override // cn.mucang.android.core.ui.page.b
    public View createContentView(PageArgument pageArgument) {
        if (pageArgument == null) {
            throw new IllegalArgumentException("argument must not be null.");
        }
        WebPageArgument webPageArgument = (WebPageArgument) pageArgument;
        if (this.webView == null) {
            initWebView();
        }
        this.protocol.o(Uri.parse(webPageArgument.getUrl()).getHost());
        this.webView.loadUrl(webPageArgument.getUrl());
        this.webView.setOnErrorPageClickListener(new c(webPageArgument));
        return this.webView;
    }

    @Override // cn.mucang.android.core.ui.page.b
    public void doDestroy() {
        u.d(this.destroyWebView, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // cn.mucang.android.core.ui.page.b
    public void doPause() {
        this.protocol.d(new cn.mucang.android.core.webview.core.page.h("onPause", null));
    }

    @Override // cn.mucang.android.core.ui.page.b
    public void doRestoreInstanceState(PageState pageState) {
        if (pageState != null) {
            this.callbackDataList.add(new cn.mucang.android.core.webview.core.page.h("onRestoreInstanceState", ((PageData) pageState).getPageJsonData()));
        }
    }

    @Override // cn.mucang.android.core.ui.page.b
    public void doResume(PageArgument pageArgument) {
        if (this.protocol.g() == null) {
            this.callbackDataList.add(new cn.mucang.android.core.webview.core.page.h("onResume", null));
        } else {
            this.protocol.d(new cn.mucang.android.core.webview.core.page.h("onResume", null));
        }
        if (pageArgument instanceof WebPageArgument) {
            WebPageArgument webPageArgument = (WebPageArgument) pageArgument;
            if (webPageArgument.isHasConfig()) {
                updateTheme(webPageArgument);
            }
        }
    }

    @Override // cn.mucang.android.core.ui.page.b
    public PageState doSaveInstanceState() {
        this.protocol.d(new cn.mucang.android.core.webview.core.page.h("onSaveInstanceState", null));
        return this.savePageData;
    }

    String getCurrentUrl() {
        return this.webView.getUrl();
    }

    void hideLoadingView() {
        if (this.pageView.getLoadingView().getVisibility() == 8) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(300L);
        this.pageView.getLoadingView().setAnimation(alphaAnimation);
        this.pageView.getLoadingView().setVisibility(8);
        alphaAnimation.setAnimationListener(new d());
    }

    boolean isSelf() {
        PageView pageView = this.pageView;
        return pageView != null && (pageView.getContext() instanceof PageActivity);
    }

    void keyboard(boolean z, String str) {
        InputMethodManager inputMethodManager = (InputMethodManager) MucangConfig.getContext().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        if (z) {
            inputMethodManager.toggleSoftInput(0, 2);
        } else {
            inputMethodManager.hideSoftInputFromWindow(this.webView.getWindowToken(), 0);
        }
    }

    @Override // cn.mucang.android.core.webview.core.p
    public boolean needShowAlertOnOtherActivity() {
        return true;
    }

    @Override // cn.mucang.android.core.ui.page.b
    public void onCreate(Context context, cn.mucang.android.core.ui.page.d dVar, PageView pageView) {
        this.pageView = pageView;
        this.pageManager = dVar;
        this.protocol.r(dVar);
        cn.mucang.android.core.webview.core.page.h hVar = new cn.mucang.android.core.webview.core.page.h("onCreate", null);
        int iR = o0.r();
        if (dVar.t()) {
            hVar.b("{\"first\":true,\"statusBarHeight\":" + iR + VectorFormat.DEFAULT_SUFFIX);
            pageView.getLoadingView().setVisibility(0);
            pageView.getLoadingView().loadUrl("file:///android_asset/core/applet_loading/loading.html");
            u.d(new e(), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        } else {
            hVar.b("{\"statusBarHeight\":" + iR + VectorFormat.DEFAULT_SUFFIX);
        }
        if (this.protocol.g() == null) {
            this.callbackDataList.add(hVar);
        } else {
            this.protocol.d(hVar);
        }
    }

    @Override // cn.mucang.android.core.webview.core.i
    public void onProtocolDataChanged() {
        notifyWebDataChanged();
    }

    @Override // cn.mucang.android.core.webview.core.p
    public boolean onReceivedError(WebView webView, int i, String str, String str2) {
        this.pageView.getLoadingView().setVisibility(8);
        return false;
    }

    public boolean ready() {
        return this.protocol.k();
    }

    public void sendBackEvent() {
        this.protocol.d(new cn.mucang.android.core.webview.core.page.h("onBack", null));
    }

    @Override // cn.mucang.android.core.webview.core.p
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        AsteroidCache asteroidCacheO = this.pageManager.o(str);
        if (asteroidCacheO != null) {
            return asteroidCacheO.h(str);
        }
        return null;
    }

    @Override // cn.mucang.android.core.webview.core.p
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.equals(this.webView.getUrl())) {
            webView.reload();
            return true;
        }
        if (cn.mucang.android.core.webview.core.page.e.h(str)) {
            AsteroidManager.d().h(webView.getContext(), str);
            return true;
        }
        u0.g(webView.getContext(), str);
        return true;
    }

    void updateTheme(WebPageArgument webPageArgument) {
        cn.mucang.android.core.webview.core.page.g.c(this.pageView, webPageArgument, this.pageManager, this.webView);
    }
}
