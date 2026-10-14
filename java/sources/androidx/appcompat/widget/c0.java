package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f395a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final View f396d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f398f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f399g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f400h;
    private final int[] i = new int[2];

    private class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = c0.this.f396d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.this.e();
        }
    }

    public c0(View view) {
        this.f396d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f395a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.b = tapTimeout;
        this.c = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private void a() {
        Runnable runnable = this.f398f;
        if (runnable != null) {
            this.f396d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f397e;
        if (runnable2 != null) {
            this.f396d.removeCallbacks(runnable2);
        }
    }

    private boolean f(MotionEvent motionEvent) {
        a0 a0Var;
        View view = this.f396d;
        androidx.appcompat.view.menu.p pVarB = b();
        if (pVarB == null || !pVarB.a() || (a0Var = (a0) pVarB.n()) == null || !a0Var.isShown()) {
            return false;
        }
        MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        i(view, motionEventObtainNoHistory);
        j(a0Var, motionEventObtainNoHistory);
        boolean zE = a0Var.e(motionEventObtainNoHistory, this.f400h);
        motionEventObtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return zE && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    private boolean g(MotionEvent motionEvent) {
        View view = this.f396d;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f400h = motionEvent.getPointerId(0);
            if (this.f397e == null) {
                this.f397e = new a();
            }
            view.postDelayed(this.f397e, this.b);
            if (this.f398f == null) {
                this.f398f = new b();
            }
            view.postDelayed(this.f398f, this.c);
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f400h);
            if (iFindPointerIndex >= 0 && !h(view, motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), this.f395a)) {
                a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
        } else if (actionMasked == 3) {
            a();
        }
        return false;
    }

    private static boolean h(View view, float f2, float f3, float f4) {
        float f5 = -f4;
        return f2 >= f5 && f3 >= f5 && f2 < ((float) (view.getRight() - view.getLeft())) + f4 && f3 < ((float) (view.getBottom() - view.getTop())) + f4;
    }

    private boolean i(View view, MotionEvent motionEvent) {
        int[] iArr = this.i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    private boolean j(View view, MotionEvent motionEvent) {
        int[] iArr = this.i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    public abstract androidx.appcompat.view.menu.p b();

    protected abstract boolean c();

    protected boolean d() {
        androidx.appcompat.view.menu.p pVarB = b();
        if (pVarB == null || !pVarB.a()) {
            return true;
        }
        pVarB.dismiss();
        return true;
    }

    void e() {
        a();
        View view = this.f396d;
        if (view.isEnabled() && !view.isLongClickable() && c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
            view.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            this.f399g = true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f399g;
        if (z2) {
            z = f(motionEvent) || !d();
        } else {
            z = g(motionEvent) && c();
            if (z) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                this.f396d.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f399g = z;
        return z || z2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f399g = false;
        this.f400h = -1;
        Runnable runnable = this.f397e;
        if (runnable != null) {
            this.f396d.removeCallbacks(runnable);
        }
    }
}
