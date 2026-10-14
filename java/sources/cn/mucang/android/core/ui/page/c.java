package cn.mucang.android.core.ui.page;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import cn.mucang.android.core.config.q;
import cn.mucang.android.core.permission.exception.PermissionException;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.core.page.WebViewPage;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class c extends q {
    private d b;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.core.webview.protocol.d.a.b f2623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set<cn.mucang.android.core.webview.core.d> f2624e;

    class a implements cn.mucang.android.core.ui.page.a {
        a() {
        }

        @Override // cn.mucang.android.core.ui.page.a
        public void a(PageView pageView) {
            c.this.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (g.d(this.f2624e)) {
            b bVarQ = this.b.q();
            if (bVarQ instanceof WebViewPage) {
                WebViewPage webViewPage = (WebViewPage) bVarQ;
                Iterator<cn.mucang.android.core.webview.core.d> it = this.f2624e.iterator();
                while (it.hasNext()) {
                    webViewPage.addJsBridge(it.next());
                }
            }
        }
    }

    public static c u(PageAppConfig pageAppConfig, Class<? extends b> cls, PageArgument pageArgument) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("__app_config", pageAppConfig);
        bundle.putSerializable("__page_class", cls);
        bundle.putSerializable("__page_argument", pageArgument);
        c cVar = new c();
        cVar.setArguments(bundle);
        return cVar;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "小程序-Fragment";
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String strB;
        cn.mucang.android.core.webview.protocol.d.a.b bVar;
        if (!(i2 == -1 && intent != null)) {
            if (i != 777 || (bVar = this.f2623d) == null) {
                return;
            }
            bVar.a(null, true);
            this.f2623d = null;
            return;
        }
        if (i != 777 || this.f2623d == null) {
            return;
        }
        try {
            strB = cn.mucang.android.core.webview.k.c.b(getActivity(), intent.getData());
        } catch (PermissionException e2) {
            t.a("PageFragment", "PermissionException" + e2.getMessage());
            strB = "";
        }
        this.f2623d.a(strB, false);
        this.f2623d = null;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        Bundle arguments = getArguments();
        PageAppConfig pageAppConfig = (PageAppConfig) arguments.getSerializable("__app_config");
        Class cls = (Class) arguments.getSerializable("__page_class");
        PageArgument pageArgument = (PageArgument) arguments.getSerializable("__page_argument");
        d dVar = new d(getContext(), pageAppConfig);
        this.b = dVar;
        frameLayout.addView(dVar.p(), new FrameLayout.LayoutParams(-1, -1));
        this.b.x(new PageHistory(cls, pageArgument));
        this.b.D(new a());
        t();
        return frameLayout;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        PageView pageViewR = this.b.r();
        if (pageViewR != null) {
            pageViewR.doPause();
        }
        this.c = true;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        PageView pageViewR = this.b.r();
        if (!this.c || pageViewR == null) {
            return;
        }
        pageViewR.doResume(null);
        this.c = false;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.b.w(bundle);
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        this.b.v(bundle);
    }

    public void s() {
        d dVar = this.b;
        if (dVar == null || !(dVar.q() instanceof WebViewPage)) {
            return;
        }
        ((WebViewPage) this.b.q()).sendBackEvent();
    }
}
