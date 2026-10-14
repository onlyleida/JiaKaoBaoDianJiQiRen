package cn.mucang.android.core.widget.b;

import android.app.Activity;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import cn.mucang.android.core.config.l;
import cn.mucang.android.core.config.n;
import com.github.anzewei.parallaxbacklayout.ParallaxBack$Edge;
import com.github.anzewei.parallaxbacklayout.ParallaxBack$EdgeMode;
import com.github.anzewei.parallaxbacklayout.ParallaxBack$Layout;
import com.github.anzewei.parallaxbacklayout.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends l {
    private static a b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.github.anzewei.parallaxbacklayout.a<Activity, c> f2916a = new com.github.anzewei.parallaxbacklayout.a<>();

    public static class b implements com.github.anzewei.parallaxbacklayout.d.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Activity f2917a;
        private Activity b;

        @Override // com.github.anzewei.parallaxbacklayout.d.a.b
        public boolean a() {
            Activity activity = (Activity) a.b.f2916a.a(this.f2917a);
            this.b = activity;
            return activity != null;
        }

        @Override // com.github.anzewei.parallaxbacklayout.d.a.b
        public void draw(Canvas canvas) {
            Activity activity = this.b;
            if (activity != null) {
                activity.getWindow().getDecorView().requestLayout();
                this.b.getWindow().getDecorView().draw(canvas);
            }
        }

        private b(Activity activity) {
            this.f2917a = activity;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Activity f2918a;
    }

    private a() {
    }

    public static a e() {
        return b;
    }

    private com.github.anzewei.parallaxbacklayout.d.a g(Activity activity, boolean z) {
        View childAt = ((ViewGroup) activity.getWindow().getDecorView()).getChildAt(0);
        if (childAt instanceof com.github.anzewei.parallaxbacklayout.d.a) {
            return (com.github.anzewei.parallaxbacklayout.d.a) childAt;
        }
        int i = R.id.pllayout;
        View viewFindViewById = activity.findViewById(i);
        if (viewFindViewById instanceof com.github.anzewei.parallaxbacklayout.d.a) {
            return (com.github.anzewei.parallaxbacklayout.d.a) viewFindViewById;
        }
        if (!z) {
            return null;
        }
        com.github.anzewei.parallaxbacklayout.d.a aVar = new com.github.anzewei.parallaxbacklayout.d.a(activity);
        aVar.setId(i);
        aVar.n(activity);
        aVar.setBackgroundView(new b(activity));
        h(aVar);
        return aVar;
    }

    public void c(Activity activity) {
        com.github.anzewei.parallaxbacklayout.d.a aVarF = f(activity);
        if (aVarF != null) {
            aVarF.setEnableGesture(false);
        }
    }

    public com.github.anzewei.parallaxbacklayout.d.a d(Activity activity) {
        com.github.anzewei.parallaxbacklayout.d.a aVarG = g(activity, true);
        aVarG.setEnableGesture(true);
        return aVarG;
    }

    public com.github.anzewei.parallaxbacklayout.d.a f(Activity activity) {
        return g(activity, false);
    }

    public void h(com.github.anzewei.parallaxbacklayout.d.a aVar) {
        aVar.setEdgeFlag(ParallaxBack$Edge.LEFT.getValue());
        aVar.setEdgeMode(ParallaxBack$EdgeMode.EDGE.getValue());
        aVar.q(ParallaxBack$Layout.PARALLAX.getValue(), null);
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        c cVar = new c();
        this.f2916a.b(activity, cVar);
        cVar.f2918a = activity;
        if ((activity instanceof n) && activity.getResources().getBoolean(cn.mucang.android.framework.core.R.bool.core__swipe_back_enabled) && this.f2916a.d() > 0) {
            h(d(activity));
        }
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        this.f2916a.c(activity);
    }
}
