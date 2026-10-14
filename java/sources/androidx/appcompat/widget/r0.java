package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.material.badge.BadgeDrawable;

/* JADX INFO: loaded from: classes.dex */
public class r0 implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Toolbar f481a;
    private int b;
    private View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f485g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f486h;
    CharSequence i;
    private CharSequence j;
    private CharSequence k;
    Window.Callback l;
    boolean m;
    private ActionMenuPresenter n;
    private int o;
    private int p;
    private Drawable q;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final androidx.appcompat.view.menu.a f487a;

        a() {
            this.f487a = new androidx.appcompat.view.menu.a(r0.this.f481a.getContext(), 0, R.id.home, 0, 0, r0.this.i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r0 r0Var = r0.this;
            Window.Callback callback = r0Var.l;
            if (callback == null || !r0Var.m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f487a);
        }
    }

    class b extends ViewPropertyAnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f488a = false;
        final /* synthetic */ int b;

        b(int i) {
            this.b = i;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f488a = true;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (this.f488a) {
                return;
            }
            r0.this.f481a.setVisibility(this.b);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            r0.this.f481a.setVisibility(0);
        }
    }

    public r0(Toolbar toolbar, boolean z) {
        this(toolbar, z, androidx.appcompat.R.string.abc_action_bar_up_description, androidx.appcompat.R.drawable.abc_ic_ab_back_material);
    }

    private void F(CharSequence charSequence) {
        this.i = charSequence;
        if ((this.b & 8) != 0) {
            this.f481a.setTitle(charSequence);
        }
    }

    private void G() {
        if ((this.b & 4) != 0) {
            if (TextUtils.isEmpty(this.k)) {
                this.f481a.setNavigationContentDescription(this.p);
            } else {
                this.f481a.setNavigationContentDescription(this.k);
            }
        }
    }

    private void H() {
        if ((this.b & 4) == 0) {
            this.f481a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f481a;
        Drawable drawable = this.f485g;
        if (drawable == null) {
            drawable = this.q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    private void I() {
        Drawable drawable;
        int i = this.b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) == 0 || (drawable = this.f484f) == null) {
            drawable = this.f483e;
        }
        this.f481a.setLogo(drawable);
    }

    private int w() {
        if (this.f481a.getNavigationIcon() == null) {
            return 11;
        }
        this.q = this.f481a.getNavigationIcon();
        return 15;
    }

    public void A(int i) {
        B(i == 0 ? null : getContext().getString(i));
    }

    public void B(CharSequence charSequence) {
        this.k = charSequence;
        G();
    }

    public void C(Drawable drawable) {
        this.f485g = drawable;
        H();
    }

    public void D(CharSequence charSequence) {
        this.j = charSequence;
        if ((this.b & 8) != 0) {
            this.f481a.setSubtitle(charSequence);
        }
    }

    public void E(CharSequence charSequence) {
        this.f486h = true;
        F(charSequence);
    }

    @Override // androidx.appcompat.widget.y
    public boolean a() {
        return this.f481a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.y
    public boolean b() {
        return this.f481a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.y
    public boolean c() {
        return this.f481a.showOverflowMenu();
    }

    @Override // androidx.appcompat.widget.y
    public void collapseActionView() {
        this.f481a.collapseActionView();
    }

    @Override // androidx.appcompat.widget.y
    public void d(Menu menu, androidx.appcompat.view.menu.m.a aVar) {
        if (this.n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f481a.getContext());
            this.n = actionMenuPresenter;
            actionMenuPresenter.h(androidx.appcompat.R.id.action_menu_presenter);
        }
        this.n.setCallback(aVar);
        this.f481a.setMenu((androidx.appcompat.view.menu.g) menu, this.n);
    }

    @Override // androidx.appcompat.widget.y
    public boolean e() {
        return this.f481a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.y
    public void f() {
        this.m = true;
    }

    @Override // androidx.appcompat.widget.y
    public boolean g() {
        return this.f481a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.y
    public Context getContext() {
        return this.f481a.getContext();
    }

    @Override // androidx.appcompat.widget.y
    public CharSequence getTitle() {
        return this.f481a.getTitle();
    }

    @Override // androidx.appcompat.widget.y
    public boolean h() {
        return this.f481a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.y
    public void i(int i) {
        View view;
        int i2 = this.b ^ i;
        this.b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    G();
                }
                H();
            }
            if ((i2 & 3) != 0) {
                I();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f481a.setTitle(this.i);
                    this.f481a.setSubtitle(this.j);
                } else {
                    this.f481a.setTitle((CharSequence) null);
                    this.f481a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f482d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f481a.addView(view);
            } else {
                this.f481a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.y
    public Menu j() {
        return this.f481a.getMenu();
    }

    @Override // androidx.appcompat.widget.y
    public int k() {
        return this.o;
    }

    @Override // androidx.appcompat.widget.y
    public ViewPropertyAnimatorCompat l(int i, long j) {
        return ViewCompat.animate(this.f481a).alpha(i == 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED).setDuration(j).setListener(new b(i));
    }

    @Override // androidx.appcompat.widget.y
    public ViewGroup m() {
        return this.f481a;
    }

    @Override // androidx.appcompat.widget.y
    public void n(boolean z) {
    }

    @Override // androidx.appcompat.widget.y
    public void o() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.y
    public void p(boolean z) {
        this.f481a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.y
    public void q() {
        this.f481a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.y
    public void r(j0 j0Var) {
        View view = this.c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f481a;
            if (parent == toolbar) {
                toolbar.removeView(this.c);
            }
        }
        this.c = j0Var;
        if (j0Var == null || this.o != 2) {
            return;
        }
        this.f481a.addView(j0Var, 0);
        Toolbar.e eVar = (Toolbar.e) this.c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) eVar).width = -2;
        ((ViewGroup.MarginLayoutParams) eVar).height = -2;
        eVar.f115a = BadgeDrawable.BOTTOM_START;
        j0Var.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.y
    public void s(int i) {
        z(i != 0 ? androidx.appcompat.a.a.a.d(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.y
    public void setIcon(int i) {
        setIcon(i != 0 ? androidx.appcompat.a.a.a.d(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.y
    public void setVisibility(int i) {
        this.f481a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.y
    public void setWindowCallback(Window.Callback callback) {
        this.l = callback;
    }

    @Override // androidx.appcompat.widget.y
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f486h) {
            return;
        }
        F(charSequence);
    }

    @Override // androidx.appcompat.widget.y
    public void t(androidx.appcompat.view.menu.m.a aVar, androidx.appcompat.view.menu.g.a aVar2) {
        this.f481a.setMenuCallbacks(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.y
    public int u() {
        return this.b;
    }

    @Override // androidx.appcompat.widget.y
    public void v() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public void x(View view) {
        View view2 = this.f482d;
        if (view2 != null && (this.b & 16) != 0) {
            this.f481a.removeView(view2);
        }
        this.f482d = view;
        if (view == null || (this.b & 16) == 0) {
            return;
        }
        this.f481a.addView(view);
    }

    public void y(int i) {
        if (i == this.p) {
            return;
        }
        this.p = i;
        if (TextUtils.isEmpty(this.f481a.getNavigationContentDescription())) {
            A(this.p);
        }
    }

    public void z(Drawable drawable) {
        this.f484f = drawable;
        I();
    }

    public r0(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.o = 0;
        this.p = 0;
        this.f481a = toolbar;
        this.i = toolbar.getTitle();
        this.j = toolbar.getSubtitle();
        this.f486h = this.i != null;
        this.f485g = toolbar.getNavigationIcon();
        q0 q0VarV = q0.v(toolbar.getContext(), null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        this.q = q0VarV.g(androidx.appcompat.R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence charSequenceP = q0VarV.p(androidx.appcompat.R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceP)) {
                E(charSequenceP);
            }
            CharSequence charSequenceP2 = q0VarV.p(androidx.appcompat.R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceP2)) {
                D(charSequenceP2);
            }
            Drawable drawableG = q0VarV.g(androidx.appcompat.R.styleable.ActionBar_logo);
            if (drawableG != null) {
                z(drawableG);
            }
            Drawable drawableG2 = q0VarV.g(androidx.appcompat.R.styleable.ActionBar_icon);
            if (drawableG2 != null) {
                setIcon(drawableG2);
            }
            if (this.f485g == null && (drawable = this.q) != null) {
                C(drawable);
            }
            i(q0VarV.k(androidx.appcompat.R.styleable.ActionBar_displayOptions, 0));
            int iN = q0VarV.n(androidx.appcompat.R.styleable.ActionBar_customNavigationLayout, 0);
            if (iN != 0) {
                x(LayoutInflater.from(this.f481a.getContext()).inflate(iN, (ViewGroup) this.f481a, false));
                i(this.b | 16);
            }
            int iM = q0VarV.m(androidx.appcompat.R.styleable.ActionBar_height, 0);
            if (iM > 0) {
                ViewGroup.LayoutParams layoutParams = this.f481a.getLayoutParams();
                layoutParams.height = iM;
                this.f481a.setLayoutParams(layoutParams);
            }
            int iE = q0VarV.e(androidx.appcompat.R.styleable.ActionBar_contentInsetStart, -1);
            int iE2 = q0VarV.e(androidx.appcompat.R.styleable.ActionBar_contentInsetEnd, -1);
            if (iE >= 0 || iE2 >= 0) {
                this.f481a.setContentInsetsRelative(Math.max(iE, 0), Math.max(iE2, 0));
            }
            int iN2 = q0VarV.n(androidx.appcompat.R.styleable.ActionBar_titleTextStyle, 0);
            if (iN2 != 0) {
                Toolbar toolbar2 = this.f481a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), iN2);
            }
            int iN3 = q0VarV.n(androidx.appcompat.R.styleable.ActionBar_subtitleTextStyle, 0);
            if (iN3 != 0) {
                Toolbar toolbar3 = this.f481a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), iN3);
            }
            int iN4 = q0VarV.n(androidx.appcompat.R.styleable.ActionBar_popupTheme, 0);
            if (iN4 != 0) {
                this.f481a.setPopupTheme(iN4);
            }
        } else {
            this.b = w();
        }
        q0VarV.w();
        y(i);
        this.k = this.f481a.getNavigationContentDescription();
        this.f481a.setNavigationOnClickListener(new a());
    }

    @Override // androidx.appcompat.widget.y
    public void setIcon(Drawable drawable) {
        this.f483e = drawable;
        I();
    }
}
