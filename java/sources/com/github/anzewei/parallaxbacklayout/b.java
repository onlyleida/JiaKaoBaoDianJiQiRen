package com.github.anzewei.parallaxbacklayout;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    private static final Interpolator x = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11718a;
    private int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f11719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float[] f11720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float[] f11721f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float[] f11722g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int[] f11723h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private int q;
    private Scroller r;
    private final c s;
    private View t;
    private boolean u;
    private final ViewGroup v;
    private int c = -1;
    private final Runnable w = new RunnableC0199b();

    static class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    /* JADX INFO: renamed from: com.github.anzewei.parallaxbacklayout.b$b, reason: collision with other inner class name */
    class RunnableC0199b implements Runnable {
        RunnableC0199b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.F(0);
        }
    }

    public static abstract class c {
        public abstract int a(View view, int i, int i2);

        public abstract int b(View view, int i, int i2);

        public int c(int i) {
            return i;
        }

        public abstract int d(View view);

        public abstract int e(View view);

        public void f(int i, int i2) {
        }

        public boolean g(int i) {
            return false;
        }

        public void h(int i, int i2) {
        }

        public void i(View view, int i) {
        }

        public void j(int i) {
        }

        public void k(View view, int i, int i2, int i3, int i4) {
        }

        public abstract void l(View view, float f2, float f3);

        public abstract boolean m(View view, int i);
    }

    private b(Context context, ViewGroup viewGroup, c cVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (cVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.v = viewGroup;
        this.s = cVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        int i = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.o = i;
        this.p = i;
        this.b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.r = new Scroller(context, x);
    }

    private void B() {
        this.l.computeCurrentVelocity(1000, this.m);
        n(f(this.l.getXVelocity(this.c), this.n, this.m), f(this.l.getYVelocity(this.c), this.n, this.m));
    }

    private void C(float f2, float f3, int i) {
        int i2 = c(f2, f3, i, 1) ? 1 : 0;
        if (c(f3, f2, i, 4)) {
            i2 |= 4;
        }
        if (c(f2, f3, i, 2)) {
            i2 |= 2;
        }
        if (c(f3, f2, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.s.f(i2, i);
        }
    }

    private void D(float f2, float f3, int i) {
        q(i);
        float[] fArr = this.f11719d;
        this.f11721f[i] = f2;
        fArr[i] = f2;
        float[] fArr2 = this.f11720e;
        this.f11722g[i] = f3;
        fArr2[i] = f3;
        this.f11723h[i] = u((int) f2, (int) f3);
        this.k |= 1 << i;
    }

    private void E(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            float x2 = motionEvent.getX(i);
            float y = motionEvent.getY(i);
            this.f11721f[pointerId] = x2;
            this.f11722g[pointerId] = y;
        }
    }

    private boolean c(float f2, float f3, int i, int i2) {
        float fAbs = Math.abs(f2);
        float fAbs2 = Math.abs(f3);
        if ((this.f11723h[i] & i2) != i2 || (this.q & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        int i3 = this.b;
        if (fAbs <= i3 && fAbs2 <= i3) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.s.g(i2)) {
            return (this.i[i] & i2) == 0 && fAbs > ((float) this.b);
        }
        int[] iArr = this.j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    private boolean e(View view, float f2, float f3) {
        if (view == null) {
            return false;
        }
        boolean z = this.s.d(view) > 0;
        boolean z2 = this.s.e(view) > 0;
        if (z && z2) {
            float f4 = (f2 * f2) + (f3 * f3);
            int i = this.b;
            return f4 > ((float) (i * i));
        }
        if (z) {
            return Math.abs(f2) > ((float) this.b);
        }
        return z2 && Math.abs(f3) > ((float) this.b);
    }

    private float f(float f2, float f3, float f4) {
        float fAbs = Math.abs(f2);
        if (fAbs < f3) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (fAbs > f4) {
            return f2 > BitmapDescriptorFactory.HUE_RED ? f4 : -f4;
        }
        return f2;
    }

    private int g(int i, int i2, int i3) {
        int iAbs = Math.abs(i);
        if (iAbs < i2) {
            return 0;
        }
        if (iAbs > i3) {
            return i > 0 ? i3 : -i3;
        }
        return i;
    }

    private void h() {
        float[] fArr = this.f11719d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, BitmapDescriptorFactory.HUE_RED);
        Arrays.fill(this.f11720e, BitmapDescriptorFactory.HUE_RED);
        Arrays.fill(this.f11721f, BitmapDescriptorFactory.HUE_RED);
        Arrays.fill(this.f11722g, BitmapDescriptorFactory.HUE_RED);
        Arrays.fill(this.f11723h, 0);
        Arrays.fill(this.i, 0);
        Arrays.fill(this.j, 0);
        this.k = 0;
    }

    private void i(int i) {
        float[] fArr = this.f11719d;
        if (fArr == null) {
            return;
        }
        fArr[i] = 0.0f;
        this.f11720e[i] = 0.0f;
        this.f11721f[i] = 0.0f;
        this.f11722g[i] = 0.0f;
        this.f11723h[i] = 0;
        this.i[i] = 0;
        this.j[i] = 0;
        this.k = (~(1 << i)) & this.k;
    }

    private int j(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.v.getWidth();
        float f2 = width / 2;
        float fO = f2 + (o(Math.min(1.0f, Math.abs(i) / width)) * f2);
        int iAbs = Math.abs(i2);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fO / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), Videoio.CAP_UNICAP);
    }

    private int k(View view, int i, int i2, int i3, int i4) {
        float f2;
        float f3;
        float f4;
        float f5;
        int iG = g(i3, (int) this.n, (int) this.m);
        int iG2 = g(i4, (int) this.n, (int) this.m);
        int iAbs = Math.abs(i);
        int iAbs2 = Math.abs(i2);
        int iAbs3 = Math.abs(iG);
        int iAbs4 = Math.abs(iG2);
        int i5 = iAbs3 + iAbs4;
        int i6 = iAbs + iAbs2;
        if (iG != 0) {
            f2 = iAbs3;
            f3 = i5;
        } else {
            f2 = iAbs;
            f3 = i6;
        }
        float f6 = f2 / f3;
        if (iG2 != 0) {
            f4 = iAbs4;
            f5 = i5;
        } else {
            f4 = iAbs2;
            f5 = i6;
        }
        return (int) ((j(i, iG, this.s.d(view)) * f6) + (j(i2, iG2, this.s.e(view)) * (f4 / f5)));
    }

    public static b m(ViewGroup viewGroup, c cVar) {
        return new b(viewGroup.getContext(), viewGroup, cVar);
    }

    private void n(float f2, float f3) {
        this.u = true;
        this.s.l(this.t, f2, f3);
        this.u = false;
        if (this.f11718a == 1) {
            F(0);
        }
    }

    private float o(float f2) {
        return (float) Math.sin((float) (((double) (f2 - 0.5f)) * 0.4712389167638204d));
    }

    private void p(int i, int i2, int i3, int i4) {
        int left = this.t.getLeft();
        int top = this.t.getTop();
        if (i3 != 0) {
            i = this.s.a(this.t, i, i3);
            this.t.offsetLeftAndRight(i - left);
        }
        int i5 = i;
        if (i4 != 0) {
            i2 = this.s.b(this.t, i2, i4);
            this.t.offsetTopAndBottom(i2 - top);
        }
        int i6 = i2;
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.s.k(this.t, i5, i6, i5 - left, i6 - top);
    }

    private void q(int i) {
        float[] fArr = this.f11719d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f11720e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f11721f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f11722g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f11723h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f11719d = fArr2;
            this.f11720e = fArr3;
            this.f11721f = fArr4;
            this.f11722g = fArr5;
            this.f11723h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
    }

    private boolean s(int i, int i2, int i3, int i4, int i5) {
        int left = this.t.getLeft();
        int top = this.t.getTop();
        int i6 = i - left;
        int i7 = i2 - top;
        if (i6 == 0 && i7 == 0) {
            this.r.abortAnimation();
            F(0);
            return false;
        }
        if (i5 == 0) {
            i5 = k(this.t, i6, i7, i3, i4);
        }
        this.r.startScroll(left, top, i6, i7, i5);
        F(2);
        return true;
    }

    private int u(int i, int i2) {
        int i3 = i < this.v.getLeft() + this.o ? 1 : 0;
        if (i2 < this.v.getTop() + this.o) {
            i3 |= 4;
        }
        if (i > this.v.getRight() - this.o) {
            i3 |= 2;
        }
        return i2 > this.v.getBottom() - this.o ? i3 | 8 : i3;
    }

    public void A(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewR = r((int) x2, (int) y);
            D(x2, y, pointerId);
            K(viewR, pointerId);
            int i3 = this.f11723h[pointerId];
            int i4 = this.q;
            if ((i3 & i4) != 0) {
                this.s.h(i3 & i4, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f11718a == 1) {
                B();
            }
            a();
            return;
        }
        if (actionMasked == 2) {
            if (this.f11718a == 1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.c);
                float x3 = motionEvent.getX(iFindPointerIndex);
                float y2 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f11721f;
                int i5 = this.c;
                int i6 = (int) (x3 - fArr[i5]);
                int i7 = (int) (y2 - this.f11722g[i5]);
                p(this.t.getLeft() + i6, this.t.getTop() + i7, i6, i7);
                E(motionEvent);
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i2 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i2);
                float x4 = motionEvent.getX(i2);
                float y3 = motionEvent.getY(i2);
                float f2 = x4 - this.f11719d[pointerId2];
                float f3 = y3 - this.f11720e[pointerId2];
                C(f2, f3, pointerId2);
                if (this.f11718a != 1) {
                    View viewR2 = r((int) x4, (int) y3);
                    if (e(viewR2, f2, f3) && K(viewR2, pointerId2)) {
                        break;
                    } else {
                        i2++;
                    }
                } else {
                    break;
                }
            }
            E(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f11718a == 1) {
                n(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            }
            a();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x5 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            D(x5, y4, pointerId3);
            if (this.f11718a != 0) {
                if (w((int) x5, (int) y4)) {
                    K(this.t, pointerId3);
                    return;
                }
                return;
            } else {
                K(r((int) x5, (int) y4), pointerId3);
                int i8 = this.f11723h[pointerId3];
                int i9 = this.q;
                if ((i8 & i9) != 0) {
                    this.s.h(i8 & i9, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f11718a == 1 && pointerId4 == this.c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i2 >= pointerCount2) {
                    i = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i2);
                if (pointerId5 != this.c) {
                    View viewR3 = r((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                    View view = this.t;
                    if (viewR3 == view && K(view, pointerId5)) {
                        i = this.c;
                        break;
                    }
                }
                i2++;
            }
            if (i == -1) {
                B();
            }
        }
        i(pointerId4);
    }

    void F(int i) {
        if (this.f11718a != i) {
            this.f11718a = i;
            this.s.j(i);
            if (i == 0) {
                this.t = null;
            }
        }
    }

    public void G(int i) {
        this.o = i;
    }

    public void H(int i) {
        this.q = i;
    }

    public boolean I(int i, int i2) {
        if (this.u) {
            return s(i, i2, (int) this.l.getXVelocity(this.c), (int) this.l.getYVelocity(this.c), 0);
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00b2  */
    public boolean J(MotionEvent motionEvent) {
        View viewR;
        View viewR2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            D(x2, y, pointerId);
            View viewR3 = r((int) x2, (int) y);
            if (viewR3 == this.t && this.f11718a == 2) {
                K(viewR3, pointerId);
            }
            int i = this.f11723h[pointerId];
            int i2 = this.q;
            if ((i & i2) != 0) {
                this.s.h(i & i2, pointerId);
            }
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked == 2) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i3 = 0; i3 < pointerCount; i3++) {
                int pointerId2 = motionEvent.getPointerId(i3);
                float x3 = motionEvent.getX(i3);
                float y2 = motionEvent.getY(i3);
                float f2 = x3 - this.f11719d[pointerId2];
                float f3 = y2 - this.f11720e[pointerId2];
                C(f2, f3, pointerId2);
                if (this.f11718a == 1 || ((viewR = r((int) x3, (int) y2)) != null && e(viewR, f2, f3) && K(viewR, pointerId2))) {
                    break;
                }
            }
            E(motionEvent);
        } else if (actionMasked == 3) {
            a();
        } else if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y3 = motionEvent.getY(actionIndex);
            D(x4, y3, pointerId3);
            int i4 = this.f11718a;
            if (i4 == 0) {
                int i5 = this.f11723h[pointerId3];
                int i6 = this.q;
                if ((i5 & i6) != 0) {
                    this.s.h(i5 & i6, pointerId3);
                }
            } else if (i4 == 2 && (viewR2 = r((int) x4, (int) y3)) == this.t) {
                K(viewR2, pointerId3);
            }
        } else if (actionMasked == 6) {
            i(motionEvent.getPointerId(actionIndex));
        }
        return this.f11718a == 1;
    }

    boolean K(View view, int i) {
        if (view == this.t && this.c == i) {
            return true;
        }
        if (view == null || !this.s.m(view, i)) {
            return false;
        }
        this.c = i;
        b(view, i);
        return true;
    }

    public void a() {
        this.c = -1;
        h();
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public void b(View view, int i) {
        if (view.getParent() == this.v) {
            this.t = view;
            this.c = i;
            this.s.i(view, i);
            F(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.v + ")");
    }

    public boolean d(int i, int i2) {
        if (!y(i2)) {
            return false;
        }
        boolean z = (i & 1) == 1;
        boolean z2 = (i & 2) == 2;
        float f2 = this.f11721f[i2] - this.f11719d[i2];
        float f3 = this.f11722g[i2] - this.f11720e[i2];
        if (z && z2) {
            float f4 = (f2 * f2) + (f3 * f3);
            int i3 = this.b;
            return f4 > ((float) (i3 * i3));
        }
        if (z) {
            return Math.abs(f2) > ((float) this.b);
        }
        return z2 && Math.abs(f3) > ((float) this.b);
    }

    public boolean l(boolean z) {
        if (this.f11718a == 2) {
            boolean zComputeScrollOffset = this.r.computeScrollOffset();
            int currX = this.r.getCurrX();
            int currY = this.r.getCurrY();
            int left = currX - this.t.getLeft();
            int top = currY - this.t.getTop();
            if (left != 0) {
                this.t.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.t.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.s.k(this.t, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.r.getFinalX() && currY == this.r.getFinalY()) {
                this.r.abortAnimation();
                zComputeScrollOffset = this.r.isFinished();
            }
            if (!zComputeScrollOffset) {
                if (z) {
                    this.v.post(this.w);
                } else {
                    F(0);
                }
            }
        }
        return this.f11718a == 2;
    }

    public View r(int i, int i2) {
        for (int childCount = this.v.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.v;
            this.s.c(childCount);
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public int t() {
        return this.p;
    }

    public int v() {
        return this.f11718a;
    }

    public boolean w(int i, int i2) {
        return z(this.t, i, i2);
    }

    public boolean x(int i, int i2) {
        return y(i2) && (i & this.f11723h[i2]) != 0;
    }

    public boolean y(int i) {
        return ((1 << i) & this.k) != 0;
    }

    public boolean z(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }
}
