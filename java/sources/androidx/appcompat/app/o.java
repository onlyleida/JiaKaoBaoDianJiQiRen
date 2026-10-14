package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.j0;
import androidx.appcompat.widget.y;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.mobile.auth.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class o extends androidx.appcompat.app.a implements ActionBarOverlayLayout.d {
    private static final Interpolator B = new AccelerateInterpolator();
    private static final Interpolator C = new DecelerateInterpolator();
    final ViewPropertyAnimatorUpdateListener A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f148a;
    private Context b;
    ActionBarOverlayLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ActionBarContainer f149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    y f150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ActionBarContextView f151f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View f152g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    j0 f153h;
    private boolean i;
    d j;
    androidx.appcompat.d.b k;
    androidx.appcompat.d.b.a l;
    private boolean m;
    private ArrayList<androidx.appcompat.app.a.b> n;
    private boolean o;
    private int p;
    boolean q;
    boolean r;
    boolean s;
    private boolean t;
    private boolean u;
    androidx.appcompat.d.h v;
    private boolean w;
    boolean x;
    final ViewPropertyAnimatorListener y;
    final ViewPropertyAnimatorListener z;

    class a extends ViewPropertyAnimatorListenerAdapter {
        a() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            View view2;
            o oVar = o.this;
            if (oVar.q && (view2 = oVar.f152g) != null) {
                view2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                o.this.f149d.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            o.this.f149d.setVisibility(8);
            o.this.f149d.setTransitioning(false);
            o oVar2 = o.this;
            oVar2.v = null;
            oVar2.x();
            ActionBarOverlayLayout actionBarOverlayLayout = o.this.c;
            if (actionBarOverlayLayout != null) {
                ViewCompat.requestApplyInsets(actionBarOverlayLayout);
            }
        }
    }

    class b extends ViewPropertyAnimatorListenerAdapter {
        b() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            o oVar = o.this;
            oVar.v = null;
            oVar.f149d.requestLayout();
        }
    }

    class c implements ViewPropertyAnimatorUpdateListener {
        c() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            ((View) o.this.f149d.getParent()).invalidate();
        }
    }

    public class d extends androidx.appcompat.d.b implements androidx.appcompat.view.menu.g.a {
        private final Context c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final androidx.appcompat.view.menu.g f157d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private androidx.appcompat.d.b.a f158e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private WeakReference<View> f159f;

        public d(Context context, androidx.appcompat.d.b.a aVar) {
            this.c = context;
            this.f158e = aVar;
            androidx.appcompat.view.menu.g defaultShowAsAction = new androidx.appcompat.view.menu.g(context).setDefaultShowAsAction(1);
            this.f157d = defaultShowAsAction;
            defaultShowAsAction.setCallback(this);
        }

        @Override // androidx.appcompat.d.b
        public void a() {
            o oVar = o.this;
            if (oVar.j != this) {
                return;
            }
            if (o.w(oVar.r, oVar.s, false)) {
                this.f158e.a(this);
            } else {
                o oVar2 = o.this;
                oVar2.k = this;
                oVar2.l = this.f158e;
            }
            this.f158e = null;
            o.this.v(false);
            o.this.f151f.g();
            o.this.f150e.m().sendAccessibilityEvent(32);
            o oVar3 = o.this;
            oVar3.c.setHideOnContentScrollEnabled(oVar3.x);
            o.this.j = null;
        }

        @Override // androidx.appcompat.d.b
        public View b() {
            WeakReference<View> weakReference = this.f159f;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.d.b
        public Menu c() {
            return this.f157d;
        }

        @Override // androidx.appcompat.d.b
        public MenuInflater d() {
            return new androidx.appcompat.d.g(this.c);
        }

        @Override // androidx.appcompat.d.b
        public CharSequence e() {
            return o.this.f151f.getSubtitle();
        }

        @Override // androidx.appcompat.d.b
        public CharSequence g() {
            return o.this.f151f.getTitle();
        }

        @Override // androidx.appcompat.d.b
        public void i() {
            if (o.this.j != this) {
                return;
            }
            this.f157d.stopDispatchingItemsChanged();
            try {
                this.f158e.d(this, this.f157d);
            } finally {
                this.f157d.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.d.b
        public boolean j() {
            return o.this.f151f.j();
        }

        @Override // androidx.appcompat.d.b
        public void k(View view) {
            o.this.f151f.setCustomView(view);
            this.f159f = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.d.b
        public void l(int i) {
            m(o.this.f148a.getResources().getString(i));
        }

        @Override // androidx.appcompat.d.b
        public void m(CharSequence charSequence) {
            o.this.f151f.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.d.b
        public void o(int i) {
            p(o.this.f148a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            androidx.appcompat.d.b.a aVar = this.f158e;
            if (aVar != null) {
                return aVar.c(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void onMenuModeChange(androidx.appcompat.view.menu.g gVar) {
            if (this.f158e == null) {
                return;
            }
            i();
            o.this.f151f.l();
        }

        @Override // androidx.appcompat.d.b
        public void p(CharSequence charSequence) {
            o.this.f151f.setTitle(charSequence);
        }

        @Override // androidx.appcompat.d.b
        public void q(boolean z) {
            super.q(z);
            o.this.f151f.setTitleOptional(z);
        }

        public boolean r() {
            this.f157d.stopDispatchingItemsChanged();
            try {
                return this.f158e.b(this, this.f157d);
            } finally {
                this.f157d.startDispatchingItemsChanged();
            }
        }
    }

    public o(Activity activity, boolean z) {
        new ArrayList();
        this.n = new ArrayList<>();
        this.p = 0;
        this.q = true;
        this.u = true;
        this.y = new a();
        this.z = new b();
        this.A = new c();
        View decorView = activity.getWindow().getDecorView();
        D(decorView);
        if (z) {
            return;
        }
        this.f152g = decorView.findViewById(R.id.content);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private y A(View view) {
        if (view instanceof y) {
            return (y) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : BuildConfig.COMMON_MODULE_COMMIT_ID);
        throw new IllegalStateException(sb.toString());
    }

    private void C() {
        if (this.t) {
            this.t = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.c;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            M(false);
        }
    }

    private void D(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(androidx.appcompat.R.id.decor_content_parent);
        this.c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f150e = A(view.findViewById(androidx.appcompat.R.id.action_bar));
        this.f151f = (ActionBarContextView) view.findViewById(androidx.appcompat.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(androidx.appcompat.R.id.action_bar_container);
        this.f149d = actionBarContainer;
        y yVar = this.f150e;
        if (yVar == null || this.f151f == null || actionBarContainer == null) {
            throw new IllegalStateException(o.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f148a = yVar.getContext();
        boolean z = (this.f150e.u() & 4) != 0;
        if (z) {
            this.i = true;
        }
        androidx.appcompat.d.a aVarB = androidx.appcompat.d.a.b(this.f148a);
        J(aVarB.a() || z);
        H(aVarB.g());
        TypedArray typedArrayObtainStyledAttributes = this.f148a.obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
            I(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            G(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void H(boolean z) {
        this.o = z;
        if (z) {
            this.f149d.setTabContainer(null);
            this.f150e.r(this.f153h);
        } else {
            this.f150e.r(null);
            this.f149d.setTabContainer(this.f153h);
        }
        boolean z2 = B() == 2;
        j0 j0Var = this.f153h;
        if (j0Var != null) {
            if (z2) {
                j0Var.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.c;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                j0Var.setVisibility(8);
            }
        }
        this.f150e.p(!this.o && z2);
        this.c.setHasNonEmbeddedTabs(!this.o && z2);
    }

    private boolean K() {
        return ViewCompat.isLaidOut(this.f149d);
    }

    private void L() {
        if (this.t) {
            return;
        }
        this.t = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.c;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        M(false);
    }

    private void M(boolean z) {
        if (w(this.r, this.s, this.t)) {
            if (this.u) {
                return;
            }
            this.u = true;
            z(z);
            return;
        }
        if (this.u) {
            this.u = false;
            y(z);
        }
    }

    static boolean w(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    public int B() {
        return this.f150e.k();
    }

    public void E(boolean z) {
        F(z ? 4 : 0, 4);
    }

    public void F(int i, int i2) {
        int iU = this.f150e.u();
        if ((i2 & 4) != 0) {
            this.i = true;
        }
        this.f150e.i((i & i2) | ((~i2) & iU));
    }

    public void G(float f2) {
        ViewCompat.setElevation(this.f149d, f2);
    }

    public void I(boolean z) {
        if (z && !this.c.q()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.x = z;
        this.c.setHideOnContentScrollEnabled(z);
    }

    public void J(boolean z) {
        this.f150e.n(z);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a() {
        if (this.s) {
            this.s = false;
            M(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b(int i) {
        this.p = i;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d(boolean z) {
        this.q = z;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void e() {
        if (this.s) {
            return;
        }
        this.s = true;
        M(true);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void f() {
        androidx.appcompat.d.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
            this.v = null;
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        y yVar = this.f150e;
        if (yVar == null || !yVar.h()) {
            return false;
        }
        this.f150e.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z) {
        if (z == this.m) {
            return;
        }
        this.m = z;
        int size = this.n.size();
        for (int i = 0; i < size; i++) {
            this.n.get(i).a(z);
        }
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f150e.u();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        if (this.b == null) {
            TypedValue typedValue = new TypedValue();
            this.f148a.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.b = new ContextThemeWrapper(this.f148a, i);
            } else {
                this.b = this.f148a;
            }
        }
        return this.b;
    }

    @Override // androidx.appcompat.app.a
    public void m(Configuration configuration) {
        H(androidx.appcompat.d.a.b(this.f148a).g());
    }

    @Override // androidx.appcompat.app.a
    public boolean o(int i, KeyEvent keyEvent) {
        Menu menuC;
        d dVar = this.j;
        if (dVar == null || (menuC = dVar.c()) == null) {
            return false;
        }
        menuC.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuC.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public void r(boolean z) {
        if (this.i) {
            return;
        }
        E(z);
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z) {
        androidx.appcompat.d.h hVar;
        this.w = z;
        if (z || (hVar = this.v) == null) {
            return;
        }
        hVar.a();
    }

    @Override // androidx.appcompat.app.a
    public void t(CharSequence charSequence) {
        this.f150e.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public androidx.appcompat.d.b u(androidx.appcompat.d.b.a aVar) {
        d dVar = this.j;
        if (dVar != null) {
            dVar.a();
        }
        this.c.setHideOnContentScrollEnabled(false);
        this.f151f.k();
        d dVar2 = new d(this.f151f.getContext(), aVar);
        if (!dVar2.r()) {
            return null;
        }
        this.j = dVar2;
        dVar2.i();
        this.f151f.h(dVar2);
        v(true);
        this.f151f.sendAccessibilityEvent(32);
        return dVar2;
    }

    public void v(boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatL;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatF;
        if (z) {
            L();
        } else {
            C();
        }
        if (!K()) {
            if (z) {
                this.f150e.setVisibility(4);
                this.f151f.setVisibility(0);
                return;
            } else {
                this.f150e.setVisibility(0);
                this.f151f.setVisibility(8);
                return;
            }
        }
        if (z) {
            viewPropertyAnimatorCompatF = this.f150e.l(4, 100L);
            viewPropertyAnimatorCompatL = this.f151f.f(0, 200L);
        } else {
            viewPropertyAnimatorCompatL = this.f150e.l(0, 200L);
            viewPropertyAnimatorCompatF = this.f151f.f(8, 100L);
        }
        androidx.appcompat.d.h hVar = new androidx.appcompat.d.h();
        hVar.d(viewPropertyAnimatorCompatF, viewPropertyAnimatorCompatL);
        hVar.h();
    }

    void x() {
        androidx.appcompat.d.b.a aVar = this.l;
        if (aVar != null) {
            aVar.a(this.k);
            this.k = null;
            this.l = null;
        }
    }

    public void y(boolean z) {
        View view;
        androidx.appcompat.d.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
        }
        if (this.p != 0 || (!this.w && !z)) {
            this.y.onAnimationEnd(null);
            return;
        }
        this.f149d.setAlpha(1.0f);
        this.f149d.setTransitioning(true);
        androidx.appcompat.d.h hVar2 = new androidx.appcompat.d.h();
        float f2 = -this.f149d.getHeight();
        if (z) {
            int[] iArr = {0, 0};
            this.f149d.getLocationInWindow(iArr);
            f2 -= iArr[1];
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.f149d).translationY(f2);
        viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.A);
        hVar2.c(viewPropertyAnimatorCompatTranslationY);
        if (this.q && (view = this.f152g) != null) {
            hVar2.c(ViewCompat.animate(view).translationY(f2));
        }
        hVar2.f(B);
        hVar2.e(250L);
        hVar2.g(this.y);
        this.v = hVar2;
        hVar2.h();
    }

    public void z(boolean z) {
        View view;
        View view2;
        androidx.appcompat.d.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
        }
        this.f149d.setVisibility(0);
        if (this.p == 0 && (this.w || z)) {
            this.f149d.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            float f2 = -this.f149d.getHeight();
            if (z) {
                int[] iArr = {0, 0};
                this.f149d.getLocationInWindow(iArr);
                f2 -= iArr[1];
            }
            this.f149d.setTranslationY(f2);
            androidx.appcompat.d.h hVar2 = new androidx.appcompat.d.h();
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.f149d).translationY(BitmapDescriptorFactory.HUE_RED);
            viewPropertyAnimatorCompatTranslationY.setUpdateListener(this.A);
            hVar2.c(viewPropertyAnimatorCompatTranslationY);
            if (this.q && (view2 = this.f152g) != null) {
                view2.setTranslationY(f2);
                hVar2.c(ViewCompat.animate(this.f152g).translationY(BitmapDescriptorFactory.HUE_RED));
            }
            hVar2.f(C);
            hVar2.e(250L);
            hVar2.g(this.z);
            this.v = hVar2;
            hVar2.h();
        } else {
            this.f149d.setAlpha(1.0f);
            this.f149d.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            if (this.q && (view = this.f152g) != null) {
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            this.z.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.c;
        if (actionBarOverlayLayout != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
    }

    public o(Dialog dialog) {
        new ArrayList();
        this.n = new ArrayList<>();
        this.p = 0;
        this.q = true;
        this.u = true;
        this.y = new a();
        this.z = new b();
        this.A = new c();
        D(dialog.getWindow().getDecorView());
    }
}
