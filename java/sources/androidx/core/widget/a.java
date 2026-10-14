package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();
    final View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f1222d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1225g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1226h;
    private boolean l;
    boolean m;
    boolean n;
    boolean o;
    private boolean p;
    private boolean q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final C0036a f1221a = new C0036a();
    private final Interpolator b = new AccelerateInterpolator();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float[] f1223e = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float[] f1224f = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] i = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] j = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    private static class C0036a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1227a;
        private int b;
        private float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f1228d;
        private float j;
        private int k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f1229e = Long.MIN_VALUE;
        private long i = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f1230f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f1231g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f1232h = 0;

        C0036a() {
        }

        private float e(long j) {
            long j2 = this.f1229e;
            if (j < j2) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            long j3 = this.i;
            if (j3 < 0 || j < j3) {
                return a.e((j - j2) / this.f1227a, BitmapDescriptorFactory.HUE_RED, 1.0f) * 0.5f;
            }
            float f2 = this.j;
            return (1.0f - f2) + (f2 * a.e((j - j3) / this.k, BitmapDescriptorFactory.HUE_RED, 1.0f));
        }

        private float g(float f2) {
            return ((-4.0f) * f2 * f2) + (f2 * 4.0f);
        }

        public void a() {
            if (this.f1230f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j = jCurrentAnimationTimeMillis - this.f1230f;
            this.f1230f = jCurrentAnimationTimeMillis;
            float f2 = j * fG;
            this.f1231g = (int) (this.c * f2);
            this.f1232h = (int) (f2 * this.f1228d);
        }

        public int b() {
            return this.f1231g;
        }

        public int c() {
            return this.f1232h;
        }

        public int d() {
            float f2 = this.c;
            return (int) (f2 / Math.abs(f2));
        }

        public int f() {
            float f2 = this.f1228d;
            return (int) (f2 / Math.abs(f2));
        }

        public boolean h() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        public void i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.f((int) (jCurrentAnimationTimeMillis - this.f1229e), 0, this.b);
            this.j = e(jCurrentAnimationTimeMillis);
            this.i = jCurrentAnimationTimeMillis;
        }

        public void j(int i) {
            this.b = i;
        }

        public void k(int i) {
            this.f1227a = i;
        }

        public void l(float f2, float f3) {
            this.c = f2;
            this.f1228d = f3;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1229e = jCurrentAnimationTimeMillis;
            this.i = -1L;
            this.f1230f = jCurrentAnimationTimeMillis;
            this.j = 0.5f;
            this.f1231g = 0;
            this.f1232h = 0;
        }
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.o) {
                if (aVar.m) {
                    aVar.m = false;
                    aVar.f1221a.m();
                }
                C0036a c0036a = a.this.f1221a;
                if (c0036a.h() || !a.this.u()) {
                    a.this.o = false;
                    return;
                }
                a aVar2 = a.this;
                if (aVar2.n) {
                    aVar2.n = false;
                    aVar2.c();
                }
                c0036a.a();
                a.this.j(c0036a.b(), c0036a.c());
                ViewCompat.postOnAnimation(a.this.c, this);
            }
        }
    }

    public a(View view) {
        this.c = view;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float f3 = (int) ((1575.0f * f2) + 0.5f);
        o(f3, f3);
        float f4 = (int) ((f2 * 315.0f) + 0.5f);
        p(f4, f4);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(r);
        r(500);
        q(500);
    }

    private float d(int i, float f2, float f3, float f4) {
        float fH = h(this.f1223e[i], f3, this.f1224f[i], f2);
        if (fH == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f5 = this.i[i];
        float f6 = this.j[i];
        float f7 = this.k[i];
        float f8 = f5 * f4;
        return fH > BitmapDescriptorFactory.HUE_RED ? e(fH * f8, f6, f7) : -e((-fH) * f8, f6, f7);
    }

    static float e(float f2, float f3, float f4) {
        if (f2 > f4) {
            return f4;
        }
        return f2 < f3 ? f3 : f2;
    }

    static int f(int i, int i2, int i3) {
        if (i > i3) {
            return i3;
        }
        return i < i2 ? i2 : i;
    }

    private float g(float f2, float f3) {
        if (f3 == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int i = this.f1225g;
        if (i == 0 || i == 1) {
            if (f2 < f3) {
                if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                    return 1.0f - (f2 / f3);
                }
                if (this.o && i == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f2 < BitmapDescriptorFactory.HUE_RED) {
            return f2 / (-f3);
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    private float h(float f2, float f3, float f4, float f5) {
        float interpolation;
        float fE = e(f2 * f3, BitmapDescriptorFactory.HUE_RED, f4);
        float fG = g(f3 - f5, fE) - g(f5, fE);
        if (fG < BitmapDescriptorFactory.HUE_RED) {
            interpolation = -this.b.getInterpolation(-fG);
        } else {
            if (fG <= BitmapDescriptorFactory.HUE_RED) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            interpolation = this.b.getInterpolation(fG);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    private void i() {
        if (this.m) {
            this.o = false;
        } else {
            this.f1221a.i();
        }
    }

    private void v() {
        int i;
        if (this.f1222d == null) {
            this.f1222d = new b();
        }
        this.o = true;
        this.m = true;
        if (this.l || (i = this.f1226h) <= 0) {
            this.f1222d.run();
        } else {
            ViewCompat.postOnAnimationDelayed(this.c, this.f1222d, i);
        }
        this.l = true;
    }

    public abstract boolean a(int i);

    public abstract boolean b(int i);

    void c() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        this.c.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public abstract void j(int i, int i2);

    public a k(int i) {
        this.f1226h = i;
        return this;
    }

    public a l(int i) {
        this.f1225g = i;
        return this;
    }

    public a m(boolean z) {
        if (this.p && !z) {
            i();
        }
        this.p = z;
        return this;
    }

    public a n(float f2, float f3) {
        float[] fArr = this.f1224f;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public a o(float f2, float f3) {
        float[] fArr = this.k;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.p) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                i();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    i();
                }
            }
            return this.q && this.o;
        }
        this.n = true;
        this.l = false;
        this.f1221a.l(d(0, motionEvent.getX(), view.getWidth(), this.c.getWidth()), d(1, motionEvent.getY(), view.getHeight(), this.c.getHeight()));
        if (!this.o && u()) {
            v();
        }
        if (this.q) {
            return false;
        }
    }

    public a p(float f2, float f3) {
        float[] fArr = this.j;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a q(int i) {
        this.f1221a.j(i);
        return this;
    }

    public a r(int i) {
        this.f1221a.k(i);
        return this;
    }

    public a s(float f2, float f3) {
        float[] fArr = this.f1223e;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public a t(float f2, float f3) {
        float[] fArr = this.i;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    boolean u() {
        C0036a c0036a = this.f1221a;
        int iF = c0036a.f();
        int iD = c0036a.d();
        return (iF != 0 && b(iF)) || (iD != 0 && a(iD));
    }
}
