package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.R;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements x, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {
    static final int[] F = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    ViewPropertyAnimator A;
    final AnimatorListenerAdapter B;
    private final Runnable C;
    private final Runnable D;
    private final NestedScrollingParentHelper E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f297a;
    private int b;
    private ContentFrameLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ActionBarContainer f298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private y f299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f301g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f302h;
    private boolean i;
    private boolean j;
    boolean k;
    private int l;
    private int m;
    private final Rect n;
    private final Rect o;
    private final Rect p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private WindowInsetsCompat u;
    private WindowInsetsCompat v;
    private WindowInsetsCompat w;
    private WindowInsetsCompat x;
    private d y;
    private OverScroller z;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = null;
            actionBarOverlayLayout.k = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = null;
            actionBarOverlayLayout.k = false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.o();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = actionBarOverlayLayout.f298d.animate().translationY(BitmapDescriptorFactory.HUE_RED).setListener(ActionBarOverlayLayout.this.B);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.o();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = actionBarOverlayLayout.f298d.animate().translationY(-ActionBarOverlayLayout.this.f298d.getHeight()).setListener(ActionBarOverlayLayout.this.B);
        }
    }

    public interface d {
        void a();

        void b(int i);

        void c();

        void d(boolean z);

        void e();

        void f();
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i, int i2) {
            super(i, i2);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.n = new Rect();
        this.o = new Rect();
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.CONSUMED;
        this.u = windowInsetsCompat;
        this.v = windowInsetsCompat;
        this.w = windowInsetsCompat;
        this.x = windowInsetsCompat;
        this.B = new a();
        this.C = new b();
        this.D = new c();
        p(context);
        this.E = new NestedScrollingParentHelper(this);
    }

    private void j() {
        o();
        this.D.run();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    private boolean k(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        e eVar = (e) view.getLayoutParams();
        if (z) {
            int i = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
            int i2 = rect.left;
            if (i != i2) {
                ((ViewGroup.MarginLayoutParams) eVar).leftMargin = i2;
                z5 = true;
            } else {
                z5 = false;
            }
        } else {
            z5 = false;
        }
        if (z2) {
            int i3 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
            int i4 = rect.top;
            if (i3 != i4) {
                ((ViewGroup.MarginLayoutParams) eVar).topMargin = i4;
                z5 = true;
            }
        }
        if (z4) {
            int i5 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
            int i6 = rect.right;
            if (i5 != i6) {
                ((ViewGroup.MarginLayoutParams) eVar).rightMargin = i6;
                z5 = true;
            }
        }
        if (z3) {
            int i7 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = i8;
                return true;
            }
        }
        return z5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private y n(View view) {
        if (view instanceof y) {
            return (y) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void p(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(F);
        this.f297a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f300f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f301g = context.getApplicationInfo().targetSdkVersion < 19;
        this.z = new OverScroller(context);
    }

    private void r() {
        o();
        postDelayed(this.D, 600L);
    }

    private void s() {
        o();
        postDelayed(this.C, 600L);
    }

    private void u() {
        o();
        this.C.run();
    }

    private boolean v(float f2) {
        this.z.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.z.getFinalY() > this.f298d.getHeight();
    }

    @Override // androidx.appcompat.widget.x
    public boolean a() {
        t();
        return this.f299e.a();
    }

    @Override // androidx.appcompat.widget.x
    public boolean b() {
        t();
        return this.f299e.b();
    }

    @Override // androidx.appcompat.widget.x
    public boolean c() {
        t();
        return this.f299e.c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.widget.x
    public void d(Menu menu, androidx.appcompat.view.menu.m.a aVar) {
        t();
        this.f299e.d(menu, aVar);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f300f == null || this.f301g) {
            return;
        }
        int bottom = this.f298d.getVisibility() == 0 ? (int) (this.f298d.getBottom() + this.f298d.getTranslationY() + 0.5f) : 0;
        this.f300f.setBounds(0, bottom, getWidth(), this.f300f.getIntrinsicHeight() + bottom);
        this.f300f.draw(canvas);
    }

    @Override // androidx.appcompat.widget.x
    public boolean e() {
        t();
        return this.f299e.e();
    }

    @Override // androidx.appcompat.widget.x
    public void f() {
        t();
        this.f299e.f();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        t();
        boolean zK = k(this.f298d, rect, true, true, false, true);
        this.q.set(rect);
        w0.a(this, this.q, this.n);
        if (!this.r.equals(this.q)) {
            this.r.set(this.q);
            zK = true;
        }
        if (!this.o.equals(this.n)) {
            this.o.set(this.n);
            zK = true;
        }
        if (zK) {
            requestLayout();
        }
        return true;
    }

    @Override // androidx.appcompat.widget.x
    public boolean g() {
        t();
        return this.f299e.g();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f298d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.E.getNestedScrollAxes();
    }

    public CharSequence getTitle() {
        t();
        return this.f299e.getTitle();
    }

    @Override // androidx.appcompat.widget.x
    public void h(int i) {
        t();
        if (i == 2) {
            this.f299e.o();
        } else if (i == 5) {
            this.f299e.v();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.x
    public void i() {
        t();
        this.f299e.q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    void o() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        ViewPropertyAnimator viewPropertyAnimator = this.A;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        t();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, this);
        boolean zK = k(this.f298d, new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()), true, true, false, true);
        ViewCompat.computeSystemWindowInsets(this, windowInsetsCompat, this.n);
        Rect rect = this.n;
        WindowInsetsCompat windowInsetsCompatInset = windowInsetsCompat.inset(rect.left, rect.top, rect.right, rect.bottom);
        this.u = windowInsetsCompatInset;
        boolean z = true;
        if (!this.v.equals(windowInsetsCompatInset)) {
            this.v = this.u;
            zK = true;
        }
        if (this.o.equals(this.n)) {
            z = zK;
        } else {
            this.o.set(this.n);
        }
        if (z) {
            requestLayout();
        }
        return windowInsetsCompat.consumeDisplayCutout().consumeSystemWindowInsets().consumeStableInsets().toWindowInsets();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        p(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        t();
        measureChildWithMargins(this.f298d, i, 0, i2, 0);
        e eVar = (e) this.f298d.getLayoutParams();
        int iMax = Math.max(0, this.f298d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = Math.max(0, this.f298d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f298d.getMeasuredState());
        boolean z = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f297a;
            if (this.i && this.f298d.getTabContainer() != null) {
                measuredHeight += this.f297a;
            }
        } else {
            measuredHeight = this.f298d.getVisibility() != 8 ? this.f298d.getMeasuredHeight() : 0;
        }
        this.p.set(this.n);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            this.w = this.u;
        } else {
            this.s.set(this.q);
        }
        if (!this.f302h && !z) {
            Rect rect = this.p;
            rect.top += measuredHeight;
            rect.bottom += 0;
            if (i3 >= 21) {
                this.w = this.w.inset(0, measuredHeight, 0, 0);
            }
        } else if (i3 >= 21) {
            this.w = new WindowInsetsCompat.Builder(this.w).setSystemWindowInsets(androidx.core.graphics.d.b(this.w.getSystemWindowInsetLeft(), this.w.getSystemWindowInsetTop() + measuredHeight, this.w.getSystemWindowInsetRight(), this.w.getSystemWindowInsetBottom() + 0)).build();
        } else {
            Rect rect2 = this.s;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        k(this.c, this.p, true, true, true, true);
        if (i3 >= 21 && !this.x.equals(this.w)) {
            WindowInsetsCompat windowInsetsCompat = this.w;
            this.x = windowInsetsCompat;
            ViewCompat.dispatchApplyWindowInsets(this.c, windowInsetsCompat);
        } else if (i3 < 21 && !this.t.equals(this.s)) {
            this.t.set(this.s);
            this.c.a(this.s);
        }
        measureChildWithMargins(this.c, i, 0, i2, 0);
        e eVar2 = (e) this.c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (!this.j || !z) {
            return false;
        }
        if (v(f3)) {
            j();
        } else {
            u();
        }
        this.k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        onNestedScroll(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        t();
        int i2 = this.m ^ i;
        this.m = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        d dVar = this.y;
        if (dVar != null) {
            dVar.d(!z2);
            if (z || !z2) {
                this.y.a();
            } else {
                this.y.e();
            }
        }
        if ((i2 & 256) == 0 || this.y == null) {
            return;
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.b = i;
        d dVar = this.y;
        if (dVar != null) {
            dVar.b(i);
        }
    }

    public boolean q() {
        return this.f302h;
    }

    public void setActionBarHideOffset(int i) {
        o();
        this.f298d.setTranslationY(-Math.max(0, Math.min(i, this.f298d.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.y = dVar;
        if (getWindowToken() != null) {
            this.y.b(this.b);
            int i = this.m;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.i = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.j) {
            this.j = z;
            if (z) {
                return;
            }
            o();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        t();
        this.f299e.setIcon(i);
    }

    public void setLogo(int i) {
        t();
        this.f299e.s(i);
    }

    public void setOverlayMode(boolean z) {
        this.f302h = z;
        this.f301g = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.x
    public void setWindowCallback(Window.Callback callback) {
        t();
        this.f299e.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.x
    public void setWindowTitle(CharSequence charSequence) {
        t();
        this.f299e.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    void t() {
        if (this.c == null) {
            this.c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f298d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            this.f299e = n(findViewById(R.id.action_bar));
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.E.onNestedScrollAccepted(view, view2, i);
        this.l = getActionBarHideOffset();
        o();
        d dVar = this.y;
        if (dVar != null) {
            dVar.f();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f298d.getVisibility() != 0) {
            return false;
        }
        return this.j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.j && !this.k) {
            if (this.l <= this.f298d.getHeight()) {
                s();
            } else {
                r();
            }
        }
        d dVar = this.y;
        if (dVar != null) {
            dVar.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.l + i2;
        this.l = i5;
        setActionBarHideOffset(i5);
    }

    public void setIcon(Drawable drawable) {
        t();
        this.f299e.setIcon(drawable);
    }
}
