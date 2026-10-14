package cn.mucang.android.core.ui.page;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.webview.core.page.AsteroidCache;
import cn.mucang.android.core.webview.core.page.AsteroidManager;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f2626a;
    private FrameLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2627d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile Runnable f2630g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private PageHistory f2631h;
    private cn.mucang.android.core.ui.page.a i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f2628e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f2629f = true;
    private final Map<String, AsteroidCache> j = new HashMap();
    private List<PageHistory> b = new ArrayList(20);

    class a implements LayoutTransition.TransitionListener {
        a() {
        }

        @Override // android.animation.LayoutTransition.TransitionListener
        public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {
            d.this.f2629f = true;
            Log.i("fuckfuck", "endTransition");
            if (d.this.f2630g != null) {
                viewGroup.post(d.this.f2630g);
                d.this.f2630g = null;
            }
        }

        @Override // android.animation.LayoutTransition.TransitionListener
        public void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {
            d.this.f2629f = false;
            Log.i("fuckfuck", "startTransition");
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PageHistory f2633a;

        b(PageHistory pageHistory) {
            this.f2633a = pageHistory;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.h(this.f2633a);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PageHistory f2634a;

        c(PageHistory pageHistory) {
            this.f2634a = pageHistory;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.k();
            PageView pageViewJ = d.this.j(this.f2634a);
            d.this.c.addView(pageViewJ, 0, new FrameLayout.LayoutParams(-1, -1));
            pageViewJ.doRestoreInstanceState(this.f2634a.pageState);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.ui.page.d$d, reason: collision with other inner class name */
    class RunnableC0083d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PageHistory f2635a;
        final /* synthetic */ PageView b;

        RunnableC0083d(PageHistory pageHistory, PageView pageView) {
            this.f2635a = pageHistory;
            this.b = pageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2635a.pageState = this.b.doSaveInstanceState();
            this.b.doDestroy();
            d.this.k();
            d.this.c.removeView(this.b);
            this.f2635a.pageView = null;
        }
    }

    public d(Context context, PageAppConfig pageAppConfig) {
        this.f2626a = context;
        this.c = new FrameLayout(context);
        this.f2627d = pageAppConfig.getMaxPageCount();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.addTransitionListener(new a());
        layoutTransition.setAnimator(2, n(displayMetrics.widthPixels));
        layoutTransition.setAnimator(3, s(displayMetrics.widthPixels));
        layoutTransition.setStartDelay(2, 0L);
        layoutTransition.setStartDelay(3, 0L);
        layoutTransition.setStartDelay(0, 0L);
        layoutTransition.setStartDelay(1, 0L);
        layoutTransition.setDuration(2, 300L);
        layoutTransition.setDuration(3, 300L);
        layoutTransition.setDuration(0, 300L);
        layoutTransition.setDuration(1, 300L);
        this.c.setLayoutTransition(layoutTransition);
    }

    private void A() {
        if (this.b.size() >= 2) {
            List<PageHistory> list = this.b;
            PageHistory pageHistory = list.get(list.size() - 2);
            if (pageHistory.pageView == null) {
                this.c.postDelayed(new c(pageHistory), 200L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(PageHistory pageHistory) {
        boolean z;
        if (this.b.isEmpty()) {
            k();
            z = false;
        } else {
            m();
            z = true;
        }
        if (z) {
            List<PageHistory> list = this.b;
            list.get(list.size() - 1).pageView.doPause();
        }
        PageView pageViewJ = j(pageHistory);
        this.f2631h = pageHistory;
        this.b.add(pageHistory);
        this.c.addView(pageViewJ, new FrameLayout.LayoutParams(-1, -1));
        pageViewJ.doResume(pageHistory.getPageArgument());
        u(this.f2631h.pageView);
        if (this.b.size() > this.f2627d) {
            List<PageHistory> list2 = this.b;
            PageHistory pageHistory2 = list2.get((list2.size() - this.f2627d) - 1);
            PageView pageView = pageHistory2.pageView;
            if (pageView != null) {
                this.c.postDelayed(new RunnableC0083d(pageHistory2, pageView), 200L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PageView j(PageHistory pageHistory) {
        PageView pageView = new PageView(this.f2626a, this, pageHistory);
        pageHistory.pageView = pageView;
        return pageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        LayoutTransition layoutTransition = this.c.getLayoutTransition();
        if (layoutTransition != null) {
            layoutTransition.disableTransitionType(2);
            layoutTransition.disableTransitionType(3);
            layoutTransition.disableTransitionType(0);
            layoutTransition.disableTransitionType(1);
            layoutTransition.disableTransitionType(4);
        }
    }

    private void m() {
        LayoutTransition layoutTransition = this.c.getLayoutTransition();
        if (layoutTransition != null) {
            layoutTransition.enableTransitionType(2);
            layoutTransition.enableTransitionType(3);
            layoutTransition.enableTransitionType(0);
            layoutTransition.enableTransitionType(1);
            layoutTransition.enableTransitionType(4);
        }
    }

    private Animator n(int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat((Object) null, "Alpha", 0.5f, 1.0f), ObjectAnimator.ofFloat((Object) null, "translationX", i, BitmapDescriptorFactory.HUE_RED));
        return animatorSet;
    }

    private Animator s(int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat((Object) null, "Alpha", 1.0f, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat((Object) null, "translationX", BitmapDescriptorFactory.HUE_RED, i));
        return animatorSet;
    }

    private void u(PageView pageView) {
        cn.mucang.android.core.ui.page.a aVar = this.i;
        if (aVar != null) {
            aVar.a(pageView);
        }
    }

    private boolean y(String str) {
        PageView pageView;
        boolean z = false;
        if (this.b.isEmpty()) {
            return false;
        }
        if (str != null) {
            return z(str);
        }
        if (this.b.size() == 1) {
            k();
        } else {
            m();
            z = true;
        }
        List<PageHistory> list = this.b;
        PageHistory pageHistoryRemove = list.remove(list.size() - 1);
        PageView pageView2 = pageHistoryRemove.pageView;
        pageView2.doPause();
        pageView2.doDestroy();
        if (z) {
            this.c.removeView(pageView2);
        }
        pageHistoryRemove.pageView = null;
        if (z) {
            List<PageHistory> list2 = this.b;
            PageHistory pageHistory = list2.get(list2.size() - 1);
            if (pageHistory != null && (pageView = pageHistory.pageView) != null) {
                this.f2631h = pageHistory;
                pageView.doResume(pageHistory.getPageArgument());
                u(this.f2631h.pageView);
            }
        }
        A();
        return z;
    }

    private boolean z(String str) {
        boolean z;
        int size = this.b.size() - 1;
        while (true) {
            z = false;
            if (size < 0) {
                break;
            }
            PageHistory pageHistory = this.b.get(size);
            if (str.equals(pageHistory.getPageName())) {
                PageView pageView = this.f2631h.pageView;
                pageView.doPause();
                pageView.doDestroy();
                this.c.removeView(pageView);
                PageView pageView2 = pageHistory.pageView;
                if (pageView2 == null) {
                    PageView pageViewJ = j(pageHistory);
                    this.c.addView(pageViewJ, 0, new FrameLayout.LayoutParams(-1, -1));
                    pageViewJ.doRestoreInstanceState(pageHistory.pageState);
                } else {
                    pageView2.doResume(pageHistory.getPageArgument());
                }
                this.f2631h = pageHistory;
                u(pageHistory.pageView);
                z = true;
                break;
            }
            PageView pageView3 = pageHistory.pageView;
            if (pageView3 != null) {
                pageHistory.pageState = pageView3.doSaveInstanceState();
                pageView3.doDestroy();
                k();
                this.c.removeView(pageView3);
                pageHistory.pageView = null;
            }
            size--;
        }
        int iIndexOf = this.b.indexOf(this.f2631h);
        for (int size2 = this.b.size() - 1; size2 > iIndexOf; size2--) {
            this.b.remove(size2);
        }
        A();
        return z;
    }

    public void B(String str) {
        this.f2631h.setPageName(str);
    }

    void C(boolean z) {
        this.f2628e = z;
    }

    public void D(cn.mucang.android.core.ui.page.a aVar) {
        this.i = aVar;
    }

    public void E(PageArgument pageArgument) {
        this.f2631h.setPageArgument(pageArgument);
    }

    public boolean i(String str) {
        if (this.f2629f) {
            return y(str);
        }
        return true;
    }

    public void l() {
        k();
    }

    public AsteroidCache o(String str) {
        if (!cn.mucang.android.core.webview.core.page.e.h(str)) {
            return null;
        }
        String host = Uri.parse(str).getHost();
        if (!n0.g(host)) {
            return null;
        }
        AsteroidCache asteroidCache = this.j.get(host);
        if (asteroidCache == null) {
            synchronized (this.j) {
                asteroidCache = this.j.get(host);
                if (asteroidCache == null) {
                    asteroidCache = new AsteroidCache(host, this.f2626a, AsteroidManager.d());
                    this.j.put(host, asteroidCache);
                }
            }
        }
        return asteroidCache;
    }

    public FrameLayout p() {
        return this.c;
    }

    public cn.mucang.android.core.ui.page.b q() {
        PageView pageView;
        PageHistory pageHistory = this.f2631h;
        if (pageHistory == null || (pageView = pageHistory.pageView) == null) {
            return null;
        }
        return pageView.getPage();
    }

    PageView r() {
        PageHistory pageHistory = this.f2631h;
        if (pageHistory == null) {
            return null;
        }
        return pageHistory.pageView;
    }

    public boolean t() {
        return this.f2628e;
    }

    public void v(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.b.clear();
        this.b = (List) bundle.get("__page_history__");
    }

    public void w(Bundle bundle) {
        bundle.putSerializable("__page_history__", (Serializable) this.b);
    }

    public void x(PageHistory pageHistory) {
        if (this.f2629f) {
            h(pageHistory);
        } else {
            this.f2630g = new b(pageHistory);
        }
    }
}
