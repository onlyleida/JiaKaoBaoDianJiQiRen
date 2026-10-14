package cn.mucang.android.core.webview;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import cn.mucang.android.core.permission.exception.PermissionException;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.android.core.webview.core.n;
import cn.mucang.android.core.webview.core.page.AsteroidManager;
import cn.mucang.android.core.webview.model.TitleBarModel;
import cn.mucang.android.core.webview.protocol.bridge.WebJsBridge;
import cn.mucang.android.core.webview.view.TitleBarView;
import cn.mucang.android.framework.webview.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e extends f.a.a.e.a.c.b implements cn.mucang.android.core.webview.d, n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.core.webview.protocol.d.a.b f2772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MucangWebView f2773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.core.webview.m.a f2774f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f2775g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HtmlExtra f2776h;
    private cn.mucang.android.core.webview.core.g i;
    private List<cn.mucang.android.core.webview.core.d> j;
    private boolean k;
    private DownloadListener l;
    private View m;
    private int n;

    class a implements View.OnLongClickListener {
        a() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            WebView.HitTestResult hitTestResult = ((WebView) view).getHitTestResult();
            if (hitTestResult == null) {
                return false;
            }
            int type = hitTestResult.getType();
            if (type != 5 && type != 8) {
                return false;
            }
            e.this.N(hitTestResult.getExtra());
            androidx.fragment.app.d activity = e.this.getActivity();
            if (!(activity instanceof HTML5Activity)) {
                return true;
            }
            ((HTML5Activity) activity).j(hitTestResult.getExtra());
            return true;
        }
    }

    class b implements cn.mucang.android.core.webview.m.a.c {
        b() {
        }

        @Override // cn.mucang.android.core.webview.m.a.c
        public void a() {
            if (e.this.i == null) {
                return;
            }
            e.this.i.i();
        }

        @Override // cn.mucang.android.core.webview.m.a.c
        public void b() {
            e.this.m();
        }

        @Override // cn.mucang.android.core.webview.m.a.c
        public void c() {
            e.this.P();
        }
    }

    class c implements cn.mucang.android.core.webview.m.a.b {
        c() {
        }

        @Override // cn.mucang.android.core.webview.m.a.b
        public void a(String str) {
            if (e.this.i == null) {
                return;
            }
            e.this.i.v(str);
        }
    }

    class d implements cn.mucang.android.core.webview.l.e {
        d() {
        }

        @Override // cn.mucang.android.core.webview.l.e
        public void a() {
            e.this.i.H();
        }

        @Override // cn.mucang.android.core.webview.l.e
        @TargetApi(11)
        public void b() {
            ((ClipboardManager) e.this.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("url", e.this.i.l()));
            u.h("复制成功！");
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.e$e, reason: collision with other inner class name */
    class C0085e implements cn.mucang.android.core.webview.k.b.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SslErrorHandler f2781a;

        C0085e(e eVar, SslErrorHandler sslErrorHandler) {
            this.f2781a = sslErrorHandler;
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void a() {
            this.f2781a.proceed();
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void onCancel() {
            this.f2781a.cancel();
        }
    }

    private class f extends BroadcastReceiver {
        private f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HtmlExtra htmlExtra;
            String action = intent.getAction();
            if (e.this.i != null && e.this.f2773e.hashCode() == intent.getIntExtra(WebJsBridge.EXTRA_CURRENT_WEBVIEW_ID, 0)) {
                if (WebJsBridge.ACTION_SHOW_MENU_DIALOG.equals(action)) {
                    e.this.P();
                    return;
                }
                if (!WebJsBridge.ACTION_UPDATE_WEBVIEW_CONFIG.equals(action) || (htmlExtra = (HtmlExtra) intent.getSerializableExtra("__core__extra_html__")) == null) {
                    return;
                }
                e.this.f2774f.y(htmlExtra.getTitle());
                e.this.f2774f.p(htmlExtra.isShowTitleBar());
                e.this.f2774f.o(htmlExtra.isShowOptionButton());
                e.this.f2776h.updateMenuOptions(htmlExtra.getMenuOptions());
                e.this.Q(htmlExtra);
                e.this.O(htmlExtra.getOrientation());
            }
        }

        /* synthetic */ f(e eVar, a aVar) {
            this();
        }
    }

    private void E() {
        MucangWebView mucangWebView;
        if (!this.f2776h.isSupportLongPressed() || (mucangWebView = this.f2773e) == null) {
            return;
        }
        mucangWebView.setOnLongClickListener(new a());
    }

    private void G() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            HtmlExtra htmlExtra = (HtmlExtra) arguments.getSerializable("__core__extra_html__");
            this.f2776h = htmlExtra;
            if (htmlExtra == null) {
                m();
                return;
            }
            if (n0.f(htmlExtra.getOriginUrl())) {
                m();
                return;
            }
            if (cn.mucang.android.core.webview.core.page.e.h(this.f2776h.getOriginUrl())) {
                AsteroidManager.d().h(getContext(), this.f2776h.getOriginUrl());
                m();
            } else {
                t.a("HTML5Fragment", "originUrl-->" + this.f2776h.getOriginUrl());
            }
        }
    }

    private void H() {
        LinearLayout linearLayout = (LinearLayout) this.b.findViewById(R.id.web_view_container);
        MucangWebView mucangWebView = this.f2773e;
        if (mucangWebView != null) {
            mucangWebView.destroy();
        }
        MucangWebView mucangWebView2 = new MucangWebView(getContext());
        this.f2773e = mucangWebView2;
        this.k = true;
        linearLayout.addView(mucangWebView2, new LinearLayout.LayoutParams(-1, -1));
        this.f2773e.setWebViewController(this);
        this.i = new cn.mucang.android.core.webview.core.g(this.f2773e, this.f2776h, this);
        E();
        if (cn.mucang.android.core.utils.g.d(this.j)) {
            Iterator<cn.mucang.android.core.webview.core.d> it = this.j.iterator();
            while (it.hasNext()) {
                this.i.d(it.next());
            }
        }
        this.f2773e.setDownloadListener(this.l);
    }

    private void I() {
        this.f2775g = new f(this, null);
        IntentFilter intentFilter = new IntentFilter(WebJsBridge.ACTION_SHOW_MENU_DIALOG);
        intentFilter.addAction(WebJsBridge.ACTION_UPDATE_WEBVIEW_CONFIG);
        androidx.localbroadcastmanager.a.a.b(getContext()).c(this.f2775g, intentFilter);
    }

    private void J() {
        this.f2774f = new cn.mucang.android.core.webview.m.a((TitleBarView) this.b.findViewById(R.id.title_bar_view));
        if (!this.f2776h.isShowTitleBar()) {
            this.f2774f.p(false);
            return;
        }
        TitleBarModel titleBarModel = new TitleBarModel(true);
        titleBarModel.setHideRightButton(true ^ this.f2776h.isShowOptionButton());
        titleBarModel.setShowProgressBar(this.f2776h.isShowProgressBar());
        titleBarModel.setTitle(this.f2776h.getTitle());
        titleBarModel.setUrlEditable(this.f2776h.isUrlEditable());
        titleBarModel.setUrl(this.f2776h.getOriginUrl());
        titleBarModel.setShowBackButton(this.f2776h.isShowBackButton());
        this.f2774f.a(titleBarModel);
        this.f2774f.u(new b());
        this.f2774f.t(new c());
    }

    static /* synthetic */ void K(View view, int i) {
        if (view.getHeight() == i) {
            view.requestLayout();
        }
    }

    public static e L(HtmlExtra htmlExtra) {
        if (htmlExtra == null || n0.e(htmlExtra.getOriginUrl())) {
            throw new IllegalArgumentException("htmlExtra and htmlExtra's originUrl must be not null.");
        }
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putSerializable("__core__extra_html__", htmlExtra);
        eVar.setArguments(bundle);
        return eVar;
    }

    private void M(Intent intent, File file) {
        if (this.i == null) {
            return;
        }
        Uri[] uriArr = null;
        if (intent == null && (file == null || !file.exists())) {
            this.i.C(null);
            return;
        }
        if (intent == null) {
            this.i.C(new Uri[]{Uri.fromFile(file)});
            return;
        }
        String dataString = intent.getDataString();
        ClipData clipData = intent.getClipData();
        if (clipData != null) {
            uriArr = new Uri[clipData.getItemCount()];
            for (int i = 0; i < clipData.getItemCount(); i++) {
                uriArr[i] = clipData.getItemAt(i).getUri();
            }
        }
        if (dataString != null) {
            uriArr = new Uri[]{Uri.parse(dataString)};
        }
        this.i.C(uriArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(String str) {
        androidx.fragment.app.d activity = getActivity();
        if (activity == null || activity.isFinishing() || n0.e(str)) {
            return;
        }
        if ("landscape".equals(str)) {
            activity.setRequestedOrientation(0);
        } else if ("portrait".equals(str)) {
            activity.setRequestedOrientation(1);
        } else if ("auto".equals(str)) {
            activity.setRequestedOrientation(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        if (this.i == null) {
            return;
        }
        cn.mucang.android.core.webview.l.d dVar = new cn.mucang.android.core.webview.l.d(getActivity());
        dVar.g(this.f2776h.getMenuOptions().getOptions());
        dVar.h(new d());
        dVar.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(HtmlExtra htmlExtra) {
        if (htmlExtra.isNoTopInset()) {
            Window window = requireActivity().getWindow();
            View decorView = window.getDecorView();
            final View viewFindViewById = requireActivity().findViewById(android.R.id.content);
            final int height = viewFindViewById.getHeight();
            decorView.setSystemUiVisibility(1280);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            u.c(new Runnable() { // from class: cn.mucang.android.core.webview.a
                @Override // java.lang.Runnable
                public final void run() {
                    e.K(viewFindViewById, height);
                }
            });
        }
    }

    public void D(cn.mucang.android.core.webview.core.d dVar) {
        if (dVar == null) {
            return;
        }
        cn.mucang.android.core.webview.core.g gVar = this.i;
        if (gVar != null) {
            gVar.d(dVar);
            return;
        }
        if (this.j == null) {
            this.j = new ArrayList();
        }
        this.j.add(dVar);
    }

    public void F() {
        cn.mucang.android.core.webview.core.g gVar = this.i;
        if (gVar != null) {
            gVar.i();
        }
    }

    protected void N(String str) {
        t.a("HTML5Fragment", "long pressed, the hint url is " + str);
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void a(WebView webView, String str, Bitmap bitmap) {
        cn.mucang.android.core.webview.core.g gVar;
        if (!this.k || (gVar = this.i) == null) {
            return;
        }
        gVar.y(webView, str, bitmap);
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void b(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.m = view;
        i().getWindowManager().addView(view, new WindowManager.LayoutParams());
        int requestedOrientation = i().getRequestedOrientation();
        this.n = requestedOrientation;
        if (requestedOrientation == 1) {
            O("landscape");
        }
    }

    @Override // cn.mucang.android.core.webview.d
    public void c(int i) {
        this.f2774f.x(i);
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void d(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        androidx.fragment.app.d activity = getActivity();
        if (activity != null && !activity.isFinishing()) {
            cn.mucang.android.core.webview.k.b.c(activity, "此网站出具的安全证书不是由受信的证书颁发机构颁发的。建议不要继续浏览该网站。", "温馨提示", "继续浏览", "拒绝", false, new C0085e(this, sslErrorHandler)).show();
        }
        HashMap map = new HashMap();
        map.put("str1", webView.getUrl());
        l0.b("core", "发现有疑问https证书", map, 0L);
    }

    @Override // cn.mucang.android.core.webview.d
    public void e(String str) {
        this.f2774f.z(str);
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void f(WebView webView, String str) {
        cn.mucang.android.core.webview.core.g gVar;
        if (!this.k || (gVar = this.i) == null) {
            return;
        }
        gVar.x(webView, str);
    }

    @Override // cn.mucang.android.core.webview.core.n
    public HtmlExtra g() {
        return this.f2776h;
    }

    @Override // f.a.a.e.a.c.b, cn.mucang.android.core.config.t
    public String getStatName() {
        if (n0.e(this.f2776h.getTitle())) {
            return "默认HTMLWebView2";
        }
        return "页面-" + this.f2776h.getTitle();
    }

    @Override // cn.mucang.android.core.webview.d
    public void h(String str) {
        O(str);
    }

    @Override // cn.mucang.android.core.webview.d
    public Activity i() {
        return getActivity();
    }

    @Override // cn.mucang.android.core.webview.d
    public void j() {
        this.f2774f.v();
    }

    @Override // cn.mucang.android.core.webview.d
    public void k(CharSequence charSequence) {
        this.f2774f.y(charSequence);
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void l(String str) {
        cn.mucang.android.core.webview.core.g gVar;
        if (!this.k || (gVar = this.i) == null) {
            return;
        }
        gVar.B(str);
    }

    @Override // cn.mucang.android.core.webview.d
    public void m() {
        androidx.fragment.app.d activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void n(WebView webView, int i) {
        cn.mucang.android.core.webview.core.g gVar;
        if (!this.k || (gVar = this.i) == null) {
            return;
        }
        gVar.A(webView, i);
    }

    @Override // cn.mucang.android.core.webview.core.m
    public void o() {
        i().getWindowManager().removeView(this.m);
        this.m = null;
        if (this.n == 1) {
            O("portrait");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String strB;
        cn.mucang.android.core.webview.protocol.d.a.b bVar;
        cn.mucang.android.core.webview.core.g gVar = this.i;
        File fileM = gVar != null ? gVar.m() : null;
        if (!(i2 == -1 && (intent != null || (fileM != null && fileM.exists())))) {
            if (i == 2014 || i == 2019) {
                M(null, null);
                return;
            } else {
                if (i != 2016 || (bVar = this.f2772d) == null) {
                    return;
                }
                bVar.a(null, true);
                return;
            }
        }
        if (i == 2014 || i == 2019) {
            M(intent, fileM);
            return;
        }
        if (i != 2016 || intent == null || this.f2772d == null) {
            return;
        }
        try {
            strB = cn.mucang.android.core.webview.k.c.b(getActivity(), intent.getData());
        } catch (PermissionException e2) {
            t.a("HTML5Fragment", e2.getMessage());
            strB = "";
        }
        this.f2772d.a(strB, false);
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onDestroy() {
        androidx.localbroadcastmanager.a.a.b(getContext()).e(this.f2775g);
        cn.mucang.android.core.webview.core.g gVar = this.i;
        if (gVar != null) {
            gVar.h();
        }
        cn.mucang.android.core.webview.protocol.d.a.a();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.k = false;
        super.onDestroyView();
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onPause() {
        cn.mucang.android.core.webview.core.g gVar = this.i;
        if (gVar != null) {
            gVar.z();
        }
        super.onPause();
    }

    @Override // cn.mucang.android.core.webview.core.m
    public boolean onReceivedError(WebView webView, int i, String str, String str2) {
        cn.mucang.android.core.webview.core.g gVar;
        return this.k && (gVar = this.i) != null && gVar.D(webView, i, str, str2);
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onResume() {
        cn.mucang.android.core.webview.core.g gVar = this.i;
        if (gVar != null) {
            gVar.E();
        }
        super.onResume();
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("save_html_extra", this.f2776h);
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        if (bundle != null) {
            this.f2776h = (HtmlExtra) bundle.getSerializable("save_html_extra");
        }
    }

    @Override // cn.mucang.android.core.webview.d
    public void p() {
        this.f2774f.n();
    }

    @Override // cn.mucang.android.core.webview.core.m
    public boolean q(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        cn.mucang.android.core.webview.core.g gVar;
        return this.k && (gVar = this.i) != null && gVar.F(webView, valueCallback, fileChooserParams);
    }

    @Override // f.a.a.e.a.c.b
    protected int s() {
        return R.layout.core__fragment_html_web_view_new;
    }

    @Override // cn.mucang.android.core.webview.core.m
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        cn.mucang.android.core.webview.core.g gVar;
        return this.k && (gVar = this.i) != null && gVar.I(webView, str);
    }

    @Override // f.a.a.e.a.c.b
    protected void t(View view, Bundle bundle) {
        G();
        I();
        H();
        J();
        Q(this.f2776h);
        O(this.f2776h.getOrientation());
    }
}
