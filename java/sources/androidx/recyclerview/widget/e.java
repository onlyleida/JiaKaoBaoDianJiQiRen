package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
class e extends RecyclerView.n implements RecyclerView.s {
    private static final int[] D = {R.attr.state_pressed};
    private static final int[] E = new int[0];
    int A;
    private final Runnable B;
    private final RecyclerView.t C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1741a;
    private final int b;
    final StateListDrawable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Drawable f1742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f1744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final StateListDrawable f1745g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Drawable f1746h;
    private final int i;
    private final int j;
    int k;
    int l;
    float m;
    int n;
    int o;
    float p;
    private RecyclerView s;
    final ValueAnimator z;
    private int q = 0;
    private int r = 0;
    private boolean t = false;
    private boolean u = false;
    private int v = 0;
    private int w = 0;
    private final int[] x = new int[2];
    private final int[] y = new int[2];

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.m(500);
        }
    }

    class b extends RecyclerView.t {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            e.this.x(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    private class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1749a = false;

        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1749a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1749a) {
                this.f1749a = false;
                return;
            }
            if (((Float) e.this.z.getAnimatedValue()).floatValue() == BitmapDescriptorFactory.HUE_RED) {
                e eVar = e.this;
                eVar.A = 0;
                eVar.u(0);
            } else {
                e eVar2 = e.this;
                eVar2.A = 2;
                eVar2.r();
            }
        }
    }

    private class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            e.this.c.setAlpha(iFloatValue);
            e.this.f1742d.setAlpha(iFloatValue);
            e.this.r();
        }
    }

    e(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.z = valueAnimatorOfFloat;
        this.A = 0;
        this.B = new a();
        this.C = new b();
        this.c = stateListDrawable;
        this.f1742d = drawable;
        this.f1745g = stateListDrawable2;
        this.f1746h = drawable2;
        this.f1743e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f1744f = Math.max(i, drawable.getIntrinsicWidth());
        this.i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f1741a = i2;
        this.b = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new c());
        valueAnimatorOfFloat.addUpdateListener(new d());
        f(recyclerView);
    }

    private void g() {
        this.s.removeCallbacks(this.B);
    }

    private void h() {
        this.s.removeItemDecoration(this);
        this.s.removeOnItemTouchListener(this);
        this.s.removeOnScrollListener(this.C);
        g();
    }

    private void i(Canvas canvas) {
        int i = this.r;
        int i2 = this.i;
        int i3 = i - i2;
        int i4 = this.o;
        int i5 = this.n;
        int i6 = i4 - (i5 / 2);
        this.f1745g.setBounds(0, 0, i5, i2);
        this.f1746h.setBounds(0, 0, this.q, this.j);
        canvas.translate(BitmapDescriptorFactory.HUE_RED, i3);
        this.f1746h.draw(canvas);
        canvas.translate(i6, BitmapDescriptorFactory.HUE_RED);
        this.f1745g.draw(canvas);
        canvas.translate(-i6, -i3);
    }

    private void j(Canvas canvas) {
        int i = this.q;
        int i2 = this.f1743e;
        int i3 = i - i2;
        int i4 = this.l;
        int i5 = this.k;
        int i6 = i4 - (i5 / 2);
        this.c.setBounds(0, 0, i2, i5);
        this.f1742d.setBounds(0, 0, this.f1744f, this.r);
        if (!o()) {
            canvas.translate(i3, BitmapDescriptorFactory.HUE_RED);
            this.f1742d.draw(canvas);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, i6);
            this.c.draw(canvas);
            canvas.translate(-i3, -i6);
            return;
        }
        this.f1742d.draw(canvas);
        canvas.translate(this.f1743e, i6);
        canvas.scale(-1.0f, 1.0f);
        this.c.draw(canvas);
        canvas.scale(-1.0f, 1.0f);
        canvas.translate(-this.f1743e, -i6);
    }

    private int[] k() {
        int[] iArr = this.y;
        int i = this.b;
        iArr[0] = i;
        iArr[1] = this.q - i;
        return iArr;
    }

    private int[] l() {
        int[] iArr = this.x;
        int i = this.b;
        iArr[0] = i;
        iArr[1] = this.r - i;
        return iArr;
    }

    private void n(float f2) {
        int[] iArrK = k();
        float fMax = Math.max(iArrK[0], Math.min(iArrK[1], f2));
        if (Math.abs(this.o - fMax) < 2.0f) {
            return;
        }
        int iT = t(this.p, fMax, iArrK, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
        if (iT != 0) {
            this.s.scrollBy(iT, 0);
        }
        this.p = fMax;
    }

    private boolean o() {
        return ViewCompat.getLayoutDirection(this.s) == 1;
    }

    private void s(int i) {
        g();
        this.s.postDelayed(this.B, i);
    }

    private int t(float f2, float f3, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = i - i3;
        int i6 = (int) (((f3 - f2) / i4) * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    private void v() {
        this.s.addItemDecoration(this);
        this.s.addOnItemTouchListener(this);
        this.s.addOnScrollListener(this.C);
    }

    private void y(float f2) {
        int[] iArrL = l();
        float fMax = Math.max(iArrL[0], Math.min(iArrL[1], f2));
        if (Math.abs(this.l - fMax) < 2.0f) {
            return;
        }
        int iT = t(this.m, fMax, iArrL, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
        if (iT != 0) {
            this.s.scrollBy(0, iT);
        }
        this.m = fMax;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zQ = q(motionEvent.getX(), motionEvent.getY());
            boolean zP = p(motionEvent.getX(), motionEvent.getY());
            if (zQ || zP) {
                if (zP) {
                    this.w = 1;
                    this.p = (int) motionEvent.getX();
                } else if (zQ) {
                    this.w = 2;
                    this.m = (int) motionEvent.getY();
                }
                u(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.v == 2) {
            this.m = BitmapDescriptorFactory.HUE_RED;
            this.p = BitmapDescriptorFactory.HUE_RED;
            u(1);
            this.w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.v == 2) {
            w();
            if (this.w == 1) {
                n(motionEvent.getX());
            }
            if (this.w == 2) {
                y(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public boolean c(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i = this.v;
        if (i == 1) {
            boolean zQ = q(motionEvent.getX(), motionEvent.getY());
            boolean zP = p(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zQ && !zP) {
                return false;
            }
            if (zP) {
                this.w = 1;
                this.p = (int) motionEvent.getX();
            } else if (zQ) {
                this.w = 2;
                this.m = (int) motionEvent.getY();
            }
            u(2);
        } else if (i != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void e(boolean z) {
    }

    public void f(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            h();
        }
        this.s = recyclerView;
        if (recyclerView != null) {
            v();
        }
    }

    void m(int i) {
        int i2 = this.A;
        if (i2 == 1) {
            this.z.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), BitmapDescriptorFactory.HUE_RED);
        this.z.setDuration(i);
        this.z.start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        if (this.q != this.s.getWidth() || this.r != this.s.getHeight()) {
            this.q = this.s.getWidth();
            this.r = this.s.getHeight();
            u(0);
        } else if (this.A != 0) {
            if (this.t) {
                j(canvas);
            }
            if (this.u) {
                i(canvas);
            }
        }
    }

    boolean p(float f2, float f3) {
        if (f3 >= this.r - this.i) {
            int i = this.o;
            int i2 = this.n;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    boolean q(float f2, float f3) {
        if (!o() ? f2 >= this.q - this.f1743e : f2 <= this.f1743e) {
            int i = this.l;
            int i2 = this.k;
            if (f3 >= i - (i2 / 2) && f3 <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    void r() {
        this.s.invalidate();
    }

    void u(int i) {
        if (i == 2 && this.v != 2) {
            this.c.setState(D);
            g();
        }
        if (i == 0) {
            r();
        } else {
            w();
        }
        if (this.v == 2 && i != 2) {
            this.c.setState(E);
            s(1200);
        } else if (i == 1) {
            s(1500);
        }
        this.v = i;
    }

    public void w() {
        int i = this.A;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                this.z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.z.setDuration(500L);
        this.z.setStartDelay(0L);
        this.z.start();
    }

    void x(int i, int i2) {
        int iComputeVerticalScrollRange = this.s.computeVerticalScrollRange();
        int i3 = this.r;
        this.t = iComputeVerticalScrollRange - i3 > 0 && i3 >= this.f1741a;
        int iComputeHorizontalScrollRange = this.s.computeHorizontalScrollRange();
        int i4 = this.q;
        boolean z = iComputeHorizontalScrollRange - i4 > 0 && i4 >= this.f1741a;
        this.u = z;
        boolean z2 = this.t;
        if (!z2 && !z) {
            if (this.v != 0) {
                u(0);
                return;
            }
            return;
        }
        if (z2) {
            float f2 = i3;
            this.l = (int) ((f2 * (i2 + (f2 / 2.0f))) / iComputeVerticalScrollRange);
            this.k = Math.min(i3, (i3 * i3) / iComputeVerticalScrollRange);
        }
        if (this.u) {
            float f3 = i4;
            this.o = (int) ((f3 * (i + (f3 / 2.0f))) / iComputeHorizontalScrollRange);
            this.n = Math.min(i4, (i4 * i4) / iComputeHorizontalScrollRange);
        }
        int i5 = this.v;
        if (i5 == 0 || i5 == 1) {
            u(1);
        }
    }
}
