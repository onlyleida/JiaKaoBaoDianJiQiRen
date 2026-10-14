package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static boolean y0;
    private e A;
    private androidx.constraintlayout.motion.widget.b B;
    int C;
    int D;
    boolean E;
    float F;
    float G;
    long H;
    float I;
    private boolean K;
    private ArrayList<n> M;
    private ArrayList<n> N;
    private ArrayList<n> Q;
    private CopyOnWriteArrayList<k> T;
    private int U;
    private long V;
    private float W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    q f730a;
    private int a0;
    Interpolator b;
    private float b0;
    Interpolator c;
    protected boolean c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f731d;
    int d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f732e;
    int e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f733f;
    int f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f734g;
    int g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f735h;
    int h0;
    private int i;
    int i0;
    private boolean j;
    float j0;
    HashMap<View, m> k;
    private androidx.constraintlayout.core.motion.a.d k0;
    private long l;
    private boolean l0;
    private float m;
    private j m0;
    float n;
    private Runnable n0;
    float o;
    private int[] o0;
    private long p;
    int p0;
    float q;
    private boolean q0;
    private boolean r;
    TransitionState r0;
    boolean s;
    g s0;
    private k t;
    private boolean t0;
    private float u;
    private RectF u0;
    private float v;
    private View v0;
    int w;
    private Matrix w0;
    f x;
    ArrayList<Integer> x0;
    private boolean y;
    private e.a.a.a.a z;

    enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MotionLayout.this.m0.a();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f737a;

        b(MotionLayout motionLayout, View view) {
            this.f737a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f737a.setNestedScrollingEnabled(true);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MotionLayout.this.m0.a();
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f739a;

        static {
            int[] iArr = new int[TransitionState.values().length];
            f739a = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f739a[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f739a[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f739a[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class e extends o {
        public void b(float f2, float f3, float f4) {
            throw null;
        }
    }

    private class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float[] f740a;
        int[] b;
        float[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Path f741d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Paint f742e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Paint f743f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Paint f744g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        Paint f745h;
        Paint i;
        private float[] j;
        DashPathEffect k;
        int l;
        Rect m = new Rect();
        boolean n = false;
        int o;

        public f() {
            this.o = 1;
            Paint paint = new Paint();
            this.f742e = paint;
            paint.setAntiAlias(true);
            this.f742e.setColor(-21965);
            this.f742e.setStrokeWidth(2.0f);
            this.f742e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f743f = paint2;
            paint2.setAntiAlias(true);
            this.f743f.setColor(-2067046);
            this.f743f.setStrokeWidth(2.0f);
            this.f743f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.f744g = paint3;
            paint3.setAntiAlias(true);
            this.f744g.setColor(-13391360);
            this.f744g.setStrokeWidth(2.0f);
            this.f744g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.f745h = paint4;
            paint4.setAntiAlias(true);
            this.f745h.setColor(-13391360);
            this.f745h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.j = new float[8];
            Paint paint5 = new Paint();
            this.i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, BitmapDescriptorFactory.HUE_RED);
            this.k = dashPathEffect;
            this.f744g.setPathEffect(dashPathEffect);
            this.c = new float[100];
            this.b = new int[50];
            if (this.n) {
                this.f742e.setStrokeWidth(8.0f);
                this.i.setStrokeWidth(8.0f);
                this.f743f.setStrokeWidth(8.0f);
                this.o = 4;
            }
        }

        private void c(Canvas canvas) {
            canvas.drawLines(this.f740a, this.f742e);
        }

        private void d(Canvas canvas) {
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < this.l; i++) {
                int[] iArr = this.b;
                if (iArr[i] == 1) {
                    z = true;
                }
                if (iArr[i] == 0) {
                    z2 = true;
                }
            }
            if (z) {
                g(canvas);
            }
            if (z2) {
                e(canvas);
            }
        }

        private void e(Canvas canvas) {
            float[] fArr = this.f740a;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[fArr.length - 2];
            float f5 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f2, f4), Math.max(f3, f5), Math.max(f2, f4), Math.max(f3, f5), this.f744g);
            canvas.drawLine(Math.min(f2, f4), Math.min(f3, f5), Math.min(f2, f4), Math.max(f3, f5), this.f744g);
        }

        private void f(Canvas canvas, float f2, float f3) {
            float[] fArr = this.f740a;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[fArr.length - 2];
            float f7 = fArr[fArr.length - 1];
            float fMin = Math.min(f4, f6);
            float fMax = Math.max(f5, f7);
            float fMin2 = f2 - Math.min(f4, f6);
            float fMax2 = Math.max(f5, f7) - f3;
            String str = "" + (((int) (((double) ((fMin2 * 100.0f) / Math.abs(f6 - f4))) + 0.5d)) / 100.0f);
            l(str, this.f745h);
            canvas.drawText(str, ((fMin2 / 2.0f) - (this.m.width() / 2)) + fMin, f3 - 20.0f, this.f745h);
            canvas.drawLine(f2, f3, Math.min(f4, f6), f3, this.f744g);
            String str2 = "" + (((int) (((double) ((fMax2 * 100.0f) / Math.abs(f7 - f5))) + 0.5d)) / 100.0f);
            l(str2, this.f745h);
            canvas.drawText(str2, f2 + 5.0f, fMax - ((fMax2 / 2.0f) - (this.m.height() / 2)), this.f745h);
            canvas.drawLine(f2, f3, f2, Math.max(f5, f7), this.f744g);
        }

        private void g(Canvas canvas) {
            float[] fArr = this.f740a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f744g);
        }

        private void h(Canvas canvas, float f2, float f3) {
            float[] fArr = this.f740a;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[fArr.length - 2];
            float f7 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f4 - f6, f5 - f7);
            float f8 = f6 - f4;
            float f9 = f7 - f5;
            float f10 = (((f2 - f4) * f8) + ((f3 - f5) * f9)) / (fHypot * fHypot);
            float f11 = f4 + (f8 * f10);
            float f12 = f5 + (f10 * f9);
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f11, f12);
            float fHypot2 = (float) Math.hypot(f11 - f2, f12 - f3);
            String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            l(str, this.f745h);
            canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.m.width() / 2), -20.0f, this.f745h);
            canvas.drawLine(f2, f3, f11, f12, this.f744g);
        }

        private void i(Canvas canvas, float f2, float f3, int i, int i2) {
            String str = "" + (((int) (((double) (((f2 - (i / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i))) + 0.5d)) / 100.0f);
            l(str, this.f745h);
            canvas.drawText(str, ((f2 / 2.0f) - (this.m.width() / 2)) + BitmapDescriptorFactory.HUE_RED, f3 - 20.0f, this.f745h);
            canvas.drawLine(f2, f3, Math.min(BitmapDescriptorFactory.HUE_RED, 1.0f), f3, this.f744g);
            String str2 = "" + (((int) (((double) (((f3 - (i2 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i2))) + 0.5d)) / 100.0f);
            l(str2, this.f745h);
            canvas.drawText(str2, f2 + 5.0f, BitmapDescriptorFactory.HUE_RED - ((f3 / 2.0f) - (this.m.height() / 2)), this.f745h);
            canvas.drawLine(f2, f3, f2, Math.max(BitmapDescriptorFactory.HUE_RED, 1.0f), this.f744g);
        }

        private void j(Canvas canvas, m mVar) {
            this.f741d.reset();
            for (int i = 0; i <= 50; i++) {
                mVar.d(i / 50, this.j, 0);
                Path path = this.f741d;
                float[] fArr = this.j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f741d;
                float[] fArr2 = this.j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f741d;
                float[] fArr3 = this.j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f741d;
                float[] fArr4 = this.j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f741d.close();
            }
            this.f742e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f741d, this.f742e);
            canvas.translate(-2.0f, -2.0f);
            this.f742e.setColor(-65536);
            canvas.drawPath(this.f741d, this.f742e);
        }

        private void k(Canvas canvas, int i, int i2, m mVar) {
            int width;
            int height;
            View view = mVar.f777a;
            if (view != null) {
                width = view.getWidth();
                height = mVar.f777a.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            for (int i3 = 1; i3 < i2 - 1; i3++) {
                if (i != 4 || this.b[i3 - 1] != 0) {
                    float[] fArr = this.c;
                    int i4 = i3 * 2;
                    float f2 = fArr[i4];
                    float f3 = fArr[i4 + 1];
                    this.f741d.reset();
                    this.f741d.moveTo(f2, f3 + 10.0f);
                    this.f741d.lineTo(f2 + 10.0f, f3);
                    this.f741d.lineTo(f2, f3 - 10.0f);
                    this.f741d.lineTo(f2 - 10.0f, f3);
                    this.f741d.close();
                    int i5 = i3 - 1;
                    mVar.m(i5);
                    if (i == 4) {
                        int[] iArr = this.b;
                        if (iArr[i5] == 1) {
                            h(canvas, f2 - BitmapDescriptorFactory.HUE_RED, f3 - BitmapDescriptorFactory.HUE_RED);
                        } else if (iArr[i5] == 0) {
                            f(canvas, f2 - BitmapDescriptorFactory.HUE_RED, f3 - BitmapDescriptorFactory.HUE_RED);
                        } else {
                            if (iArr[i5] == 2) {
                                i(canvas, f2 - BitmapDescriptorFactory.HUE_RED, f3 - BitmapDescriptorFactory.HUE_RED, width, height);
                            }
                            canvas.drawPath(this.f741d, this.i);
                        }
                        canvas.drawPath(this.f741d, this.i);
                    } else {
                        f3 = f3;
                        f2 = f2;
                    }
                    if (i == 2) {
                        h(canvas, f2 - BitmapDescriptorFactory.HUE_RED, f3 - BitmapDescriptorFactory.HUE_RED);
                    }
                    if (i == 3) {
                        f(canvas, f2 - BitmapDescriptorFactory.HUE_RED, f3 - BitmapDescriptorFactory.HUE_RED);
                    }
                    if (i == 6) {
                        i(canvas, f2 - BitmapDescriptorFactory.HUE_RED, f3 - BitmapDescriptorFactory.HUE_RED, width, height);
                    }
                    canvas.drawPath(this.f741d, this.i);
                }
            }
            float[] fArr2 = this.f740a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f743f);
                float[] fArr3 = this.f740a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f743f);
            }
        }

        public void a(Canvas canvas, HashMap<View, m> map, int i, int i2) {
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i2 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f734g) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f745h);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f742e);
            }
            for (m mVar : map.values()) {
                int iL = mVar.l();
                if (i2 > 0 && iL == 0) {
                    iL = 1;
                }
                if (iL != 0) {
                    this.l = mVar.b(this.c, this.b);
                    if (iL >= 1) {
                        int i3 = i / 16;
                        float[] fArr = this.f740a;
                        if (fArr == null || fArr.length != i3 * 2) {
                            this.f740a = new float[i3 * 2];
                            this.f741d = new Path();
                        }
                        int i4 = this.o;
                        canvas.translate(i4, i4);
                        this.f742e.setColor(1996488704);
                        this.i.setColor(1996488704);
                        this.f743f.setColor(1996488704);
                        this.f744g.setColor(1996488704);
                        mVar.c(this.f740a, i3);
                        b(canvas, iL, this.l, mVar);
                        this.f742e.setColor(-21965);
                        this.f743f.setColor(-2067046);
                        this.i.setColor(-2067046);
                        this.f744g.setColor(-13391360);
                        int i5 = this.o;
                        canvas.translate(-i5, -i5);
                        b(canvas, iL, this.l, mVar);
                        if (iL == 5) {
                            j(canvas, mVar);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void b(Canvas canvas, int i, int i2, m mVar) {
            if (i == 4) {
                d(canvas);
            }
            if (i == 2) {
                g(canvas);
            }
            if (i == 3) {
                e(canvas);
            }
            c(canvas);
            k(canvas, i, i2, mVar);
        }

        void l(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.m);
        }
    }

    class g {
        void a(androidx.constraintlayout.core.widgets.d dVar, androidx.constraintlayout.widget.c cVar, androidx.constraintlayout.widget.c cVar2) {
            throw null;
        }

        public boolean b(int i, int i2) {
            throw null;
        }

        public void c() {
            throw null;
        }
    }

    protected interface h {
        void a(MotionEvent motionEvent);

        float b();

        float c();

        void d(int i);

        void recycle();
    }

    private static class i implements h {
        private static i b = new i();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        VelocityTracker f746a;

        private i() {
        }

        public static i e() {
            b.f746a = VelocityTracker.obtain();
            return b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
        public void a(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f746a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
        public float b() {
            VelocityTracker velocityTracker = this.f746a;
            return velocityTracker != null ? velocityTracker.getYVelocity() : BitmapDescriptorFactory.HUE_RED;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
        public float c() {
            VelocityTracker velocityTracker = this.f746a;
            return velocityTracker != null ? velocityTracker.getXVelocity() : BitmapDescriptorFactory.HUE_RED;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
        public void d(int i) {
            VelocityTracker velocityTracker = this.f746a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
        public void recycle() {
            VelocityTracker velocityTracker = this.f746a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f746a = null;
            }
        }
    }

    class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f747a = Float.NaN;
        float b = Float.NaN;
        int c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f748d = -1;

        j() {
        }

        void a() {
            int i = this.c;
            if (i != -1 || this.f748d != -1) {
                if (i == -1) {
                    MotionLayout.this.A(this.f748d);
                } else {
                    int i2 = this.f748d;
                    if (i2 == -1) {
                        MotionLayout.this.setState(i, -1, -1);
                    } else {
                        MotionLayout.this.w(i, i2);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.b)) {
                if (Float.isNaN(this.f747a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.f747a);
            } else {
                MotionLayout.this.v(this.f747a, this.b);
                this.f747a = Float.NaN;
                this.b = Float.NaN;
                this.c = -1;
                this.f748d = -1;
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f747a);
            bundle.putFloat("motion.velocity", this.b);
            bundle.putInt("motion.StartState", this.c);
            bundle.putInt("motion.EndState", this.f748d);
            return bundle;
        }

        public void c() {
            this.f748d = MotionLayout.this.f734g;
            this.c = MotionLayout.this.f732e;
            this.b = MotionLayout.this.getVelocity();
            this.f747a = MotionLayout.this.getProgress();
        }

        public void d(int i) {
            this.f748d = i;
        }

        public void e(float f2) {
            this.f747a = f2;
        }

        public void f(int i) {
            this.c = i;
        }

        public void g(Bundle bundle) {
            this.f747a = bundle.getFloat("motion.progress");
            this.b = bundle.getFloat("motion.velocity");
            this.c = bundle.getInt("motion.StartState");
            this.f748d = bundle.getInt("motion.EndState");
        }

        public void h(float f2) {
            this.b = f2;
        }
    }

    public interface k {
        void a(MotionLayout motionLayout, int i, int i2, float f2);

        void b(MotionLayout motionLayout, int i);

        void c(MotionLayout motionLayout, int i, int i2);

        void d(MotionLayout motionLayout, int i, boolean z, float f2);
    }

    private static boolean G(float f2, float f3, float f4) {
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            float f5 = f2 / f4;
            return f3 + ((f2 * f5) - (((f4 * f5) * f5) / 2.0f)) > 1.0f;
        }
        float f6 = (-f2) / f4;
        return f3 + ((f2 * f6) + (((f4 * f6) * f6) / 2.0f)) < BitmapDescriptorFactory.HUE_RED;
    }

    private boolean e(View view, MotionEvent motionEvent, float f2, float f3) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f2, f3);
            boolean zOnTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f2, -f3);
            return zOnTouchEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f2, f3);
        if (this.w0 == null) {
            this.w0 = new Matrix();
        }
        matrix.invert(this.w0);
        motionEventObtain.transform(this.w0);
        boolean zOnTouchEvent2 = view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent2;
    }

    private void h() {
        boolean z;
        float fSignum = Math.signum(this.q - this.o);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.b;
        float interpolation = this.o + ((((nanoTime - this.p) * fSignum) * 1.0E-9f) / this.m);
        if (this.r) {
            interpolation = this.q;
        }
        if ((fSignum <= BitmapDescriptorFactory.HUE_RED || interpolation < this.q) && (fSignum > BitmapDescriptorFactory.HUE_RED || interpolation > this.q)) {
            z = false;
        } else {
            interpolation = this.q;
            z = true;
        }
        if (interpolator != null && !z) {
            interpolation = this.y ? interpolator.getInterpolation((nanoTime - this.l) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > BitmapDescriptorFactory.HUE_RED && interpolation >= this.q) || (fSignum <= BitmapDescriptorFactory.HUE_RED && interpolation <= this.q)) {
            interpolation = this.q;
        }
        this.j0 = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.c;
        if (interpolator2 != null) {
            interpolation = interpolator2.getInterpolation(interpolation);
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            m mVar = this.k.get(childAt);
            if (mVar != null) {
                mVar.q(childAt, interpolation, nanoTime2, this.k0);
            }
        }
        if (this.c0) {
            requestLayout();
        }
    }

    private void i() {
        CopyOnWriteArrayList<k> copyOnWriteArrayList;
        if ((this.t == null && ((copyOnWriteArrayList = this.T) == null || copyOnWriteArrayList.isEmpty())) || this.b0 == this.n) {
            return;
        }
        if (this.a0 != -1) {
            k kVar = this.t;
            if (kVar != null) {
                kVar.c(this, this.f732e, this.f734g);
            }
            CopyOnWriteArrayList<k> copyOnWriteArrayList2 = this.T;
            if (copyOnWriteArrayList2 != null) {
                Iterator<k> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().c(this, this.f732e, this.f734g);
                }
            }
        }
        this.a0 = -1;
        float f2 = this.n;
        this.b0 = f2;
        k kVar2 = this.t;
        if (kVar2 != null) {
            kVar2.a(this, this.f732e, this.f734g, f2);
        }
        CopyOnWriteArrayList<k> copyOnWriteArrayList3 = this.T;
        if (copyOnWriteArrayList3 != null) {
            Iterator<k> it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().a(this, this.f732e, this.f734g, this.n);
            }
        }
    }

    private boolean p(float f2, float f3, View view, MotionEvent motionEvent) {
        boolean z;
        if (!(view instanceof ViewGroup)) {
            z = false;
            break;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z = false;
                break;
            }
            View childAt = viewGroup.getChildAt(childCount);
            if (p((childAt.getLeft() + f2) - view.getScrollX(), (childAt.getTop() + f3) - view.getScrollY(), childAt, motionEvent)) {
                z = true;
                break;
            }
            childCount--;
        }
        if (!z) {
            this.u0.set(f2, f3, (view.getRight() + f2) - view.getLeft(), (view.getBottom() + f3) - view.getTop());
            if ((motionEvent.getAction() != 0 || this.u0.contains(motionEvent.getX(), motionEvent.getY())) && e(view, motionEvent, -f2, -f3)) {
                return true;
            }
        }
        return z;
    }

    private void t() {
        CopyOnWriteArrayList<k> copyOnWriteArrayList;
        if (this.t == null && ((copyOnWriteArrayList = this.T) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        for (Integer num : this.x0) {
            k kVar = this.t;
            if (kVar != null) {
                kVar.b(this, num.intValue());
            }
            CopyOnWriteArrayList<k> copyOnWriteArrayList2 = this.T;
            if (copyOnWriteArrayList2 != null) {
                Iterator<k> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().b(this, num.intValue());
                }
            }
        }
        this.x0.clear();
    }

    public void A(int i2) {
        if (isAttachedToWindow()) {
            B(i2, -1, -1);
            return;
        }
        if (this.m0 == null) {
            this.m0 = new j();
        }
        this.m0.d(i2);
    }

    public void B(int i2, int i3, int i4) {
        C(i2, i3, i4, -1);
    }

    public void C(int i2, int i3, int i4, int i5) {
        androidx.constraintlayout.widget.h hVar;
        int iA;
        q qVar = this.f730a;
        if (qVar != null && (hVar = qVar.b) != null && (iA = hVar.a(this.f733f, i2, i3, i4)) != -1) {
            i2 = iA;
        }
        int i6 = this.f733f;
        if (i6 == i2) {
            return;
        }
        if (this.f732e == i2) {
            d(BitmapDescriptorFactory.HUE_RED);
            if (i5 > 0) {
                this.m = i5 / 1000.0f;
                return;
            }
            return;
        }
        if (this.f734g == i2) {
            d(1.0f);
            if (i5 > 0) {
                this.m = i5 / 1000.0f;
                return;
            }
            return;
        }
        this.f734g = i2;
        if (i6 != -1) {
            w(i6, i2);
            d(1.0f);
            this.o = BitmapDescriptorFactory.HUE_RED;
            y();
            if (i5 > 0) {
                this.m = i5 / 1000.0f;
                return;
            }
            return;
        }
        this.y = false;
        this.q = 1.0f;
        this.n = BitmapDescriptorFactory.HUE_RED;
        this.o = BitmapDescriptorFactory.HUE_RED;
        this.p = getNanoTime();
        this.l = getNanoTime();
        this.r = false;
        this.b = null;
        if (i5 == -1) {
            this.m = this.f730a.n() / 1000.0f;
        }
        this.f732e = -1;
        this.f730a.T(-1, this.f734g);
        SparseArray sparseArray = new SparseArray();
        if (i5 == 0) {
            this.m = this.f730a.n() / 1000.0f;
        } else if (i5 > 0) {
            this.m = i5 / 1000.0f;
        }
        int childCount = getChildCount();
        this.k.clear();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            this.k.put(childAt, new m(childAt));
            sparseArray.put(childAt.getId(), this.k.get(childAt));
        }
        this.s = true;
        this.s0.a(this.mLayoutWidget, null, this.f730a.j(i2));
        throw null;
    }

    public void D() {
        this.s0.a(this.mLayoutWidget, this.f730a.j(this.f732e), this.f730a.j(this.f734g));
        throw null;
    }

    public void E(int i2, androidx.constraintlayout.widget.c cVar) {
        q qVar = this.f730a;
        if (qVar != null) {
            qVar.Q(i2, cVar);
        }
        D();
        throw null;
    }

    public void F(int i2, View... viewArr) {
        q qVar = this.f730a;
        if (qVar != null) {
            qVar.Y(i2, viewArr);
        } else {
            Log.e("MotionLayout", " no motionScene");
        }
    }

    void d(float f2) {
        q qVar = this.f730a;
        if (qVar == null) {
            return;
        }
        float f3 = this.o;
        float f4 = this.n;
        if (f3 != f4 && this.r) {
            this.o = f4;
        }
        float f5 = this.o;
        if (f5 == f2) {
            return;
        }
        this.y = false;
        this.q = f2;
        this.m = qVar.n() / 1000.0f;
        setProgress(this.q);
        this.b = null;
        this.c = this.f730a.q();
        this.r = false;
        this.l = getNanoTime();
        this.s = true;
        this.n = f5;
        this.o = f5;
        invalidate();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        t tVar;
        ArrayList<n> arrayList = this.Q;
        if (arrayList != null) {
            Iterator<n> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().z(canvas);
            }
        }
        g(false);
        q qVar = this.f730a;
        if (qVar != null && (tVar = qVar.s) != null) {
            tVar.c();
        }
        super.dispatchDraw(canvas);
        if (this.f730a == null) {
            return;
        }
        if ((this.w & 1) == 1 && !isInEditMode()) {
            this.U++;
            long nanoTime = getNanoTime();
            long j2 = this.V;
            if (j2 != -1) {
                long j3 = nanoTime - j2;
                if (j3 > 200000000) {
                    this.W = ((int) ((this.U / (j3 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.U = 0;
                    this.V = nanoTime;
                }
            } else {
                this.V = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            String str = this.W + " fps " + androidx.constraintlayout.motion.widget.a.d(this, this.f732e) + " -> ";
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(androidx.constraintlayout.motion.widget.a.d(this, this.f734g));
            sb.append(" (progress: ");
            sb.append(progress);
            sb.append(" ) state=");
            int i2 = this.f733f;
            sb.append(i2 == -1 ? "undefined" : androidx.constraintlayout.motion.widget.a.d(this, i2));
            String string = sb.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.w > 1) {
            if (this.x == null) {
                this.x = new f();
            }
            this.x.a(canvas, this.k, this.f730a.n(), this.w);
        }
        ArrayList<n> arrayList2 = this.Q;
        if (arrayList2 != null) {
            Iterator<n> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                it2.next().y(canvas);
            }
        }
    }

    void f(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            m mVar = this.k.get(getChildAt(i2));
            if (mVar != null) {
                mVar.e(z);
            }
        }
    }

    void g(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        int i2;
        float interpolation;
        boolean z5;
        if (this.p == -1) {
            this.p = getNanoTime();
        }
        float f2 = this.o;
        if (f2 > BitmapDescriptorFactory.HUE_RED && f2 < 1.0f) {
            this.f733f = -1;
        }
        boolean z6 = false;
        if (this.K || (this.s && (z || this.q != f2))) {
            float fSignum = Math.signum(this.q - f2);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.b;
            float f3 = !(interpolator instanceof o) ? (((nanoTime - this.p) * fSignum) * 1.0E-9f) / this.m : BitmapDescriptorFactory.HUE_RED;
            float f4 = this.o + f3;
            if (this.r) {
                f4 = this.q;
            }
            if ((fSignum <= BitmapDescriptorFactory.HUE_RED || f4 < this.q) && (fSignum > BitmapDescriptorFactory.HUE_RED || f4 > this.q)) {
                z2 = false;
            } else {
                f4 = this.q;
                this.s = false;
                z2 = true;
            }
            this.o = f4;
            this.n = f4;
            this.p = nanoTime;
            if (interpolator == null || z2) {
                this.f731d = f3;
            } else {
                if (this.y) {
                    interpolation = interpolator.getInterpolation((nanoTime - this.l) * 1.0E-9f);
                    Interpolator interpolator2 = this.b;
                    e.a.a.a.a aVar = this.z;
                    if (interpolator2 == aVar) {
                        aVar.c();
                        throw null;
                    }
                    this.o = interpolation;
                    this.p = nanoTime;
                    if (interpolator2 instanceof o) {
                        float fA = ((o) interpolator2).a();
                        this.f731d = fA;
                        int i3 = ((Math.abs(fA) * this.m) > 1.0E-5f ? 1 : ((Math.abs(fA) * this.m) == 1.0E-5f ? 0 : -1));
                        if (fA <= BitmapDescriptorFactory.HUE_RED || interpolation < 1.0f) {
                            z5 = false;
                        } else {
                            this.o = 1.0f;
                            z5 = false;
                            this.s = false;
                            interpolation = 1.0f;
                        }
                        if (fA < BitmapDescriptorFactory.HUE_RED && interpolation <= BitmapDescriptorFactory.HUE_RED) {
                            this.o = BitmapDescriptorFactory.HUE_RED;
                            this.s = z5;
                            f4 = BitmapDescriptorFactory.HUE_RED;
                        }
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f4);
                    Interpolator interpolator3 = this.b;
                    if (interpolator3 instanceof o) {
                        this.f731d = ((o) interpolator3).a();
                    } else {
                        this.f731d = ((interpolator3.getInterpolation(f4 + f3) - interpolation) * fSignum) / f3;
                    }
                }
                f4 = interpolation;
            }
            if (Math.abs(this.f731d) > 1.0E-5f) {
                setState(TransitionState.MOVING);
            }
            if ((fSignum > BitmapDescriptorFactory.HUE_RED && f4 >= this.q) || (fSignum <= BitmapDescriptorFactory.HUE_RED && f4 <= this.q)) {
                f4 = this.q;
                this.s = false;
            }
            if (f4 >= 1.0f || f4 <= BitmapDescriptorFactory.HUE_RED) {
                z3 = false;
                this.s = false;
                setState(TransitionState.FINISHED);
            } else {
                z3 = false;
            }
            int childCount = getChildCount();
            this.K = z3;
            long nanoTime2 = getNanoTime();
            this.j0 = f4;
            Interpolator interpolator4 = this.c;
            float interpolation2 = interpolator4 == null ? f4 : interpolator4.getInterpolation(f4);
            Interpolator interpolator5 = this.c;
            if (interpolator5 != null) {
                float interpolation3 = interpolator5.getInterpolation((fSignum / this.m) + f4);
                this.f731d = interpolation3;
                this.f731d = interpolation3 - this.c.getInterpolation(f4);
            }
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                m mVar = this.k.get(childAt);
                if (mVar != null) {
                    this.K |= mVar.q(childAt, interpolation2, nanoTime2, this.k0);
                }
            }
            boolean z7 = (fSignum > BitmapDescriptorFactory.HUE_RED && f4 >= this.q) || (fSignum <= BitmapDescriptorFactory.HUE_RED && f4 <= this.q);
            if (!this.K && !this.s && z7) {
                setState(TransitionState.FINISHED);
            }
            if (this.c0) {
                requestLayout();
            }
            z4 = true;
            this.K |= !z7;
            if (f4 > BitmapDescriptorFactory.HUE_RED || (i2 = this.f732e) == -1 || this.f733f == i2) {
                z6 = false;
            } else {
                this.f733f = i2;
                this.f730a.j(i2).g(this);
                setState(TransitionState.FINISHED);
                z6 = true;
            }
            if (f4 >= 1.0d) {
                int i5 = this.f733f;
                int i6 = this.f734g;
                if (i5 != i6) {
                    this.f733f = i6;
                    this.f730a.j(i6).g(this);
                    setState(TransitionState.FINISHED);
                    z6 = true;
                }
            }
            if (this.K || this.s) {
                invalidate();
            } else if ((fSignum > BitmapDescriptorFactory.HUE_RED && f4 == 1.0f) || (fSignum < BitmapDescriptorFactory.HUE_RED && f4 == BitmapDescriptorFactory.HUE_RED)) {
                setState(TransitionState.FINISHED);
            }
            if (!this.K && !this.s && ((fSignum > BitmapDescriptorFactory.HUE_RED && f4 == 1.0f) || (fSignum < BitmapDescriptorFactory.HUE_RED && f4 == BitmapDescriptorFactory.HUE_RED))) {
                s();
            }
        } else {
            z4 = true;
        }
        float f5 = this.o;
        if (f5 < 1.0f) {
            if (f5 <= BitmapDescriptorFactory.HUE_RED) {
                int i7 = this.f733f;
                int i8 = this.f732e;
                if (i7 == i8) {
                    z4 = z6;
                }
                this.f733f = i8;
            }
            this.t0 |= z6;
            if (z6 && !this.l0) {
                requestLayout();
            }
            this.n = this.o;
        }
        int i9 = this.f733f;
        int i10 = this.f734g;
        if (i9 == i10) {
            z4 = z6;
        }
        this.f733f = i10;
        z6 = z4;
        this.t0 |= z6;
        if (z6) {
            requestLayout();
        }
        this.n = this.o;
    }

    public int[] getConstraintSetIds() {
        q qVar = this.f730a;
        if (qVar == null) {
            return null;
        }
        return qVar.l();
    }

    public int getCurrentState() {
        return this.f733f;
    }

    public ArrayList<q.b> getDefinedTransitions() {
        q qVar = this.f730a;
        if (qVar == null) {
            return null;
        }
        return qVar.m();
    }

    public androidx.constraintlayout.motion.widget.b getDesignTool() {
        if (this.B == null) {
            this.B = new androidx.constraintlayout.motion.widget.b(this);
        }
        return this.B;
    }

    public int getEndState() {
        return this.f734g;
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.o;
    }

    public q getScene() {
        return this.f730a;
    }

    public int getStartState() {
        return this.f732e;
    }

    public float getTargetPosition() {
        return this.q;
    }

    public Bundle getTransitionState() {
        if (this.m0 == null) {
            this.m0 = new j();
        }
        this.m0.c();
        return this.m0.b();
    }

    public long getTransitionTimeMs() {
        q qVar = this.f730a;
        if (qVar != null) {
            this.m = qVar.n() / 1000.0f;
        }
        return (long) (this.m * 1000.0f);
    }

    public float getVelocity() {
        return this.f731d;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        if (Build.VERSION.SDK_INT >= 19) {
            return super.isAttachedToWindow();
        }
        return getWindowToken() != null;
    }

    protected void j() {
        int iIntValue;
        CopyOnWriteArrayList<k> copyOnWriteArrayList;
        if ((this.t != null || ((copyOnWriteArrayList = this.T) != null && !copyOnWriteArrayList.isEmpty())) && this.a0 == -1) {
            this.a0 = this.f733f;
            if (this.x0.isEmpty()) {
                iIntValue = -1;
            } else {
                ArrayList<Integer> arrayList = this.x0;
                iIntValue = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i2 = this.f733f;
            if (iIntValue != i2 && i2 != -1) {
                this.x0.add(Integer.valueOf(i2));
            }
        }
        t();
        Runnable runnable = this.n0;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.o0;
        if (iArr == null || this.p0 <= 0) {
            return;
        }
        A(iArr[0]);
        int[] iArr2 = this.o0;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.p0--;
    }

    public void k(int i2, boolean z, float f2) {
        k kVar = this.t;
        if (kVar != null) {
            kVar.d(this, i2, z, f2);
        }
        CopyOnWriteArrayList<k> copyOnWriteArrayList = this.T;
        if (copyOnWriteArrayList != null) {
            Iterator<k> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().d(this, i2, z, f2);
            }
        }
    }

    void l(int i2, float f2, float f3, float f4, float[] fArr) {
        String resourceName;
        HashMap<View, m> map = this.k;
        View viewById = getViewById(i2);
        m mVar = map.get(viewById);
        if (mVar != null) {
            mVar.k(f2, f3, f4, fArr);
            float y = viewById.getY();
            int i3 = ((f2 - this.u) > BitmapDescriptorFactory.HUE_RED ? 1 : ((f2 - this.u) == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            this.u = f2;
            this.v = y;
            return;
        }
        if (viewById == null) {
            resourceName = "" + i2;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(i2);
        }
        Log.w("MotionLayout", "WARNING could not find view id " + resourceName);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i2) {
        q.b bVar;
        if (i2 == 0) {
            this.f730a = null;
            return;
        }
        try {
            q qVar = new q(getContext(), this, i2);
            this.f730a = qVar;
            if (this.f733f == -1 && qVar != null) {
                this.f733f = qVar.B();
                this.f732e = this.f730a.B();
                this.f734g = this.f730a.o();
            }
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 19 && !isAttachedToWindow()) {
                this.f730a = null;
                return;
            }
            if (i3 >= 17) {
                try {
                    Display display = getDisplay();
                    if (display != null) {
                        display.getRotation();
                    }
                } catch (Exception e2) {
                    throw new IllegalArgumentException("unable to parse MotionScene file", e2);
                }
            }
            q qVar2 = this.f730a;
            if (qVar2 != null) {
                androidx.constraintlayout.widget.c cVarJ = qVar2.j(this.f733f);
                this.f730a.P(this);
                ArrayList<n> arrayList = this.Q;
                if (arrayList != null) {
                    Iterator<n> it = arrayList.iterator();
                    while (it.hasNext()) {
                        it.next().x(this);
                    }
                }
                if (cVarJ != null) {
                    cVarJ.i(this);
                }
                this.f732e = this.f733f;
            }
            s();
            j jVar = this.m0;
            if (jVar != null) {
                if (this.q0) {
                    post(new a());
                    return;
                } else {
                    jVar.a();
                    return;
                }
            }
            q qVar3 = this.f730a;
            if (qVar3 == null || (bVar = qVar3.c) == null || bVar.u() != 4) {
                return;
            }
            y();
            setState(TransitionState.SETUP);
            setState(TransitionState.MOVING);
        } catch (Exception e3) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e3);
        }
    }

    public androidx.constraintlayout.widget.c m(int i2) {
        q qVar = this.f730a;
        if (qVar == null) {
            return null;
        }
        return qVar.j(i2);
    }

    m n(int i2) {
        return this.k.get(findViewById(i2));
    }

    public q.b o(int i2) {
        return this.f730a.C(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        q.b bVar;
        int i2;
        Display display;
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 17 && (display = getDisplay()) != null) {
            display.getRotation();
        }
        q qVar = this.f730a;
        if (qVar != null && (i2 = this.f733f) != -1) {
            androidx.constraintlayout.widget.c cVarJ = qVar.j(i2);
            this.f730a.P(this);
            ArrayList<n> arrayList = this.Q;
            if (arrayList != null) {
                Iterator<n> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().x(this);
                }
            }
            if (cVarJ != null) {
                cVarJ.i(this);
            }
            this.f732e = this.f733f;
        }
        s();
        j jVar = this.m0;
        if (jVar != null) {
            if (this.q0) {
                post(new c());
                return;
            } else {
                jVar.a();
                return;
            }
        }
        q qVar2 = this.f730a;
        if (qVar2 == null || (bVar = qVar2.c) == null || bVar.u() != 4) {
            return;
        }
        y();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        r rVarY;
        int iQ;
        RectF rectFP;
        q qVar = this.f730a;
        if (qVar != null && this.j) {
            t tVar = qVar.s;
            if (tVar != null) {
                tVar.g(motionEvent);
            }
            q.b bVar = this.f730a.c;
            if (bVar != null && bVar.z() && (rVarY = bVar.y()) != null && ((motionEvent.getAction() != 0 || (rectFP = rVarY.p(this, new RectF())) == null || rectFP.contains(motionEvent.getX(), motionEvent.getY())) && (iQ = rVarY.q()) != -1)) {
                View view = this.v0;
                if (view == null || view.getId() != iQ) {
                    this.v0 = findViewById(iQ);
                }
                View view2 = this.v0;
                if (view2 != null) {
                    this.u0.set(view2.getLeft(), this.v0.getTop(), this.v0.getRight(), this.v0.getBottom());
                    if (this.u0.contains(motionEvent.getX(), motionEvent.getY()) && !p(this.v0.getLeft(), this.v0.getTop(), this.v0, motionEvent)) {
                        return onTouchEvent(motionEvent);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        this.l0 = true;
        try {
            if (this.f730a == null) {
                super.onLayout(z, i2, i3, i4, i5);
                return;
            }
            int i6 = i4 - i2;
            int i7 = i5 - i3;
            if (this.C != i6 || this.D != i7) {
                u();
                g(true);
            }
            this.C = i6;
            this.D = i7;
        } finally {
            this.l0 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        if (this.f730a == null) {
            super.onMeasure(i2, i3);
            return;
        }
        boolean z = (this.f735h == i2 && this.i == i3) ? false : true;
        if (this.t0) {
            this.t0 = false;
            s();
            t();
            z = true;
        }
        boolean z2 = this.mDirtyHierarchy ? true : z;
        this.f735h = i2;
        this.i = i3;
        int iB = this.f730a.B();
        int iO = this.f730a.o();
        if (!z2) {
            this.s0.b(iB, iO);
            throw null;
        }
        if (this.f732e != -1) {
            super.onMeasure(i2, i3);
            this.s0.a(this.mLayoutWidget, this.f730a.j(iB), this.f730a.j(iO));
            throw null;
        }
        if (z2) {
            super.onMeasure(i2, i3);
        }
        boolean z3 = this.c0;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iR = this.mLayoutWidget.R() + getPaddingLeft() + getPaddingRight();
        int iV = this.mLayoutWidget.v() + paddingTop;
        int i4 = this.h0;
        if (i4 == Integer.MIN_VALUE || i4 == 0) {
            int i5 = this.d0;
            iR = (int) (i5 + (this.j0 * (this.f0 - i5)));
            requestLayout();
        }
        int i6 = this.i0;
        if (i6 == Integer.MIN_VALUE || i6 == 0) {
            int i7 = this.e0;
            iV = (int) (i7 + (this.j0 * (this.g0 - i7)));
            requestLayout();
        }
        setMeasuredDimension(iR, iV);
        h();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr, int i4) {
        q.b bVar;
        r rVarY;
        int iQ;
        q qVar = this.f730a;
        if (qVar == null || (bVar = qVar.c) == null || !bVar.z()) {
            return;
        }
        int i5 = -1;
        if (!bVar.z() || (rVarY = bVar.y()) == null || (iQ = rVarY.q()) == -1 || view.getId() == iQ) {
            if (qVar.t()) {
                r rVarY2 = bVar.y();
                if (rVarY2 != null && (rVarY2.e() & 4) != 0) {
                    i5 = i3;
                }
                float f2 = this.n;
                if ((f2 == 1.0f || f2 == BitmapDescriptorFactory.HUE_RED) && view.canScrollVertically(i5)) {
                    return;
                }
            }
            if (bVar.y() != null && (bVar.y().e() & 1) != 0) {
                float fU = qVar.u(i2, i3);
                float f3 = this.o;
                if ((f3 <= BitmapDescriptorFactory.HUE_RED && fU < BitmapDescriptorFactory.HUE_RED) || (f3 >= 1.0f && fU > BitmapDescriptorFactory.HUE_RED)) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        view.setNestedScrollingEnabled(false);
                        view.post(new b(this, view));
                        return;
                    }
                    return;
                }
            }
            float f4 = this.n;
            long nanoTime = getNanoTime();
            float f5 = i2;
            this.F = f5;
            float f6 = i3;
            this.G = f6;
            this.I = (float) ((nanoTime - this.H) * 1.0E-9d);
            this.H = nanoTime;
            qVar.L(f5, f6);
            if (f4 != this.n) {
                iArr[0] = i2;
                iArr[1] = i3;
            }
            g(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.E = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5, int i6) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        if (this.E || i2 != 0 || i3 != 0) {
            iArr[0] = iArr[0] + i4;
            iArr[1] = iArr[1] + i5;
        }
        this.E = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i2, int i3) {
        this.H = getNanoTime();
        this.I = BitmapDescriptorFactory.HUE_RED;
        this.F = BitmapDescriptorFactory.HUE_RED;
        this.G = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        q qVar = this.f730a;
        if (qVar != null) {
            qVar.S(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i2, int i3) {
        q.b bVar;
        q qVar = this.f730a;
        return (qVar == null || (bVar = qVar.c) == null || bVar.y() == null || (this.f730a.c.y().e() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i2) {
        q qVar = this.f730a;
        if (qVar != null) {
            float f2 = this.I;
            if (f2 == BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            qVar.M(this.F / f2, this.G / f2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        q qVar = this.f730a;
        if (qVar == null || !this.j || !qVar.X()) {
            return super.onTouchEvent(motionEvent);
        }
        q.b bVar = this.f730a.c;
        if (bVar != null && !bVar.z()) {
            return super.onTouchEvent(motionEvent);
        }
        this.f730a.N(motionEvent, getCurrentState(), this);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof n) {
            n nVar = (n) view;
            if (this.T == null) {
                this.T = new CopyOnWriteArrayList<>();
            }
            this.T.add(nVar);
            if (nVar.w()) {
                if (this.M == null) {
                    this.M = new ArrayList<>();
                }
                this.M.add(nVar);
            }
            if (nVar.v()) {
                if (this.N == null) {
                    this.N = new ArrayList<>();
                }
                this.N.add(nVar);
            }
            if (nVar.u()) {
                if (this.Q == null) {
                    this.Q = new ArrayList<>();
                }
                this.Q.add(nVar);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<n> arrayList = this.M;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<n> arrayList2 = this.N;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void parseLayoutDescription(int i2) {
        this.mConstraintLayoutSpec = null;
    }

    public boolean q() {
        return this.j;
    }

    protected h r() {
        return i.e();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        q qVar;
        q.b bVar;
        if (this.c0 || this.f733f != -1 || (qVar = this.f730a) == null || (bVar = qVar.c) == null || bVar.w() != 0) {
            super.requestLayout();
        }
    }

    void s() {
        q qVar = this.f730a;
        if (qVar == null) {
            return;
        }
        if (qVar.g(this, this.f733f)) {
            requestLayout();
            return;
        }
        int i2 = this.f733f;
        if (i2 != -1) {
            this.f730a.f(this, i2);
        }
        if (this.f730a.X()) {
            this.f730a.V();
        }
    }

    public void setDebugMode(int i2) {
        this.w = i2;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z) {
        this.q0 = z;
    }

    public void setInteractionEnabled(boolean z) {
        this.j = z;
    }

    public void setInterpolatedProgress(float f2) {
        if (this.f730a != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolatorQ = this.f730a.q();
            if (interpolatorQ != null) {
                setProgress(interpolatorQ.getInterpolation(f2));
                return;
            }
        }
        setProgress(f2);
    }

    public void setOnHide(float f2) {
        ArrayList<n> arrayList = this.N;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.N.get(i2).setProgress(f2);
            }
        }
    }

    public void setOnShow(float f2) {
        ArrayList<n> arrayList = this.M;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.M.get(i2).setProgress(f2);
            }
        }
    }

    public void setProgress(float f2) {
        if (f2 < BitmapDescriptorFactory.HUE_RED || f2 > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.m0 == null) {
                this.m0 = new j();
            }
            this.m0.e(f2);
            return;
        }
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            if (this.o == 1.0f && this.f733f == this.f734g) {
                setState(TransitionState.MOVING);
            }
            this.f733f = this.f732e;
            if (this.o == BitmapDescriptorFactory.HUE_RED) {
                setState(TransitionState.FINISHED);
            }
        } else if (f2 >= 1.0f) {
            if (this.o == BitmapDescriptorFactory.HUE_RED && this.f733f == this.f732e) {
                setState(TransitionState.MOVING);
            }
            this.f733f = this.f734g;
            if (this.o == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.f733f = -1;
            setState(TransitionState.MOVING);
        }
        if (this.f730a == null) {
            return;
        }
        this.r = true;
        this.q = f2;
        this.n = f2;
        this.p = -1L;
        this.l = -1L;
        this.b = null;
        this.s = true;
        invalidate();
    }

    public void setScene(q qVar) {
        this.f730a = qVar;
        qVar.S(isRtl());
        u();
    }

    void setStartState(int i2) {
        if (isAttachedToWindow()) {
            this.f733f = i2;
            return;
        }
        if (this.m0 == null) {
            this.m0 = new j();
        }
        this.m0.f(i2);
        this.m0.d(i2);
    }

    void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.f733f == -1) {
            return;
        }
        TransitionState transitionState3 = this.r0;
        this.r0 = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            i();
        }
        int i2 = d.f739a[transitionState3.ordinal()];
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3 && transitionState == transitionState2) {
                j();
                return;
            }
            return;
        }
        if (transitionState == transitionState4) {
            i();
        }
        if (transitionState == transitionState2) {
            j();
        }
    }

    public void setTransition(int i2) {
        if (this.f730a != null) {
            q.b bVarO = o(i2);
            this.f732e = bVarO.x();
            this.f734g = bVarO.v();
            if (isAttachedToWindow()) {
                if (this.f733f != this.f732e) {
                    int i3 = this.f734g;
                }
                this.f730a.U(bVarO);
                this.s0.a(this.mLayoutWidget, this.f730a.j(this.f732e), this.f730a.j(this.f734g));
                throw null;
            }
            if (this.m0 == null) {
                this.m0 = new j();
            }
            this.m0.f(this.f732e);
            this.m0.d(this.f734g);
        }
    }

    public void setTransitionDuration(int i2) {
        q qVar = this.f730a;
        if (qVar == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else {
            qVar.R(i2);
        }
    }

    public void setTransitionListener(k kVar) {
        this.t = kVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.m0 == null) {
            this.m0 = new j();
        }
        this.m0.g(bundle);
        if (isAttachedToWindow()) {
            this.m0.a();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return androidx.constraintlayout.motion.widget.a.b(context, this.f732e) + "->" + androidx.constraintlayout.motion.widget.a.b(context, this.f734g) + " (pos:" + this.o + " Dpos/Dt:" + this.f731d;
    }

    public void u() {
        this.s0.c();
        invalidate();
    }

    public void v(float f2, float f3) {
        if (isAttachedToWindow()) {
            setProgress(f2);
            setState(TransitionState.MOVING);
            this.f731d = f3;
            d(1.0f);
            return;
        }
        if (this.m0 == null) {
            this.m0 = new j();
        }
        this.m0.e(f2);
        this.m0.h(f3);
    }

    public void w(int i2, int i3) {
        if (!isAttachedToWindow()) {
            if (this.m0 == null) {
                this.m0 = new j();
            }
            this.m0.f(i2);
            this.m0.d(i3);
            return;
        }
        q qVar = this.f730a;
        if (qVar == null) {
            return;
        }
        this.f732e = i2;
        this.f734g = i3;
        qVar.T(i2, i3);
        this.s0.a(this.mLayoutWidget, this.f730a.j(i2), this.f730a.j(i3));
        throw null;
    }

    public void x(int i2, float f2, float f3) {
        float f4;
        if (this.f730a == null || this.o == f2) {
            return;
        }
        this.y = true;
        this.l = getNanoTime();
        this.m = this.f730a.n() / 1000.0f;
        this.q = f2;
        this.s = true;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            if (i2 == 4) {
                this.A.b(f3, this.o, this.f730a.r());
                throw null;
            }
            if (i2 == 5) {
                if (G(f3, this.o, this.f730a.r())) {
                    this.A.b(f3, this.o, this.f730a.r());
                    throw null;
                }
                this.z.b(this.o, f2, f3, this.m, this.f730a.r(), this.f730a.s());
                throw null;
            }
            if (i2 != 6 && i2 != 7) {
                this.r = false;
                this.l = getNanoTime();
                invalidate();
                return;
            }
        }
        if (i2 == 1 || i2 == 7) {
            f4 = BitmapDescriptorFactory.HUE_RED;
        } else {
            f4 = (i2 == 2 || i2 == 6) ? 1.0f : f2;
        }
        if (this.f730a.i() == 0) {
            this.z.b(this.o, f4, f3, this.m, this.f730a.r(), this.f730a.s());
            throw null;
        }
        this.z.d(this.o, f4, f3, this.f730a.y(), this.f730a.z(), this.f730a.x(), this.f730a.A(), this.f730a.w());
        throw null;
    }

    public void y() {
        d(1.0f);
        this.n0 = null;
    }

    public void z() {
        d(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i2, int i3, int i4) {
        setState(TransitionState.SETUP);
        this.f733f = i2;
        this.f732e = -1;
        this.f734g = -1;
        androidx.constraintlayout.widget.b bVar = this.mConstraintLayoutSpec;
        if (bVar != null) {
            bVar.d(i2, i3, i4);
            return;
        }
        q qVar = this.f730a;
        if (qVar != null) {
            qVar.j(i2).i(this);
        }
    }

    protected void setTransition(q.b bVar) {
        this.f730a.U(bVar);
        setState(TransitionState.SETUP);
        if (this.f733f == this.f730a.o()) {
            this.o = 1.0f;
            this.n = 1.0f;
            this.q = 1.0f;
        } else {
            this.o = BitmapDescriptorFactory.HUE_RED;
            this.n = BitmapDescriptorFactory.HUE_RED;
            this.q = BitmapDescriptorFactory.HUE_RED;
        }
        this.p = bVar.A(1) ? -1L : getNanoTime();
        int iB = this.f730a.B();
        int iO = this.f730a.o();
        if (iB == this.f732e && iO == this.f734g) {
            return;
        }
        this.f732e = iB;
        this.f734g = iO;
        this.f730a.T(iB, iO);
        this.s0.a(this.mLayoutWidget, this.f730a.j(this.f732e), this.f730a.j(this.f734g));
        throw null;
    }
}
