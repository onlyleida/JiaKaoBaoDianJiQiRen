package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;

/* JADX INFO: loaded from: classes.dex */
class t0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    private static t0 j;
    private static t0 k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f495a;
    private final CharSequence b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f496d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f497e = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f499g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private u0 f500h;
    private boolean i;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.g(false);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.c();
        }
    }

    private t0(View view, CharSequence charSequence) {
        this.f495a = view;
        this.b = charSequence;
        this.c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        b();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    private void a() {
        this.f495a.removeCallbacks(this.f496d);
    }

    private void b() {
        this.f498f = Integer.MAX_VALUE;
        this.f499g = Integer.MAX_VALUE;
    }

    private void d() {
        this.f495a.postDelayed(this.f496d, ViewConfiguration.getLongPressTimeout());
    }

    private static void e(t0 t0Var) {
        t0 t0Var2 = j;
        if (t0Var2 != null) {
            t0Var2.a();
        }
        j = t0Var;
        if (t0Var != null) {
            t0Var.d();
        }
    }

    public static void f(View view, CharSequence charSequence) {
        t0 t0Var = j;
        if (t0Var != null && t0Var.f495a == view) {
            e(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new t0(view, charSequence);
            return;
        }
        t0 t0Var2 = k;
        if (t0Var2 != null && t0Var2.f495a == view) {
            t0Var2.c();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    private boolean h(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f498f) <= this.c && Math.abs(y - this.f499g) <= this.c) {
            return false;
        }
        this.f498f = x;
        this.f499g = y;
        return true;
    }

    void c() {
        if (k == this) {
            k = null;
            u0 u0Var = this.f500h;
            if (u0Var != null) {
                u0Var.c();
                this.f500h = null;
                b();
                this.f495a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (j == this) {
            e(null);
        }
        this.f495a.removeCallbacks(this.f497e);
    }

    void g(boolean z) {
        long j2;
        int longPressTimeout;
        long j3;
        if (ViewCompat.isAttachedToWindow(this.f495a)) {
            e(null);
            t0 t0Var = k;
            if (t0Var != null) {
                t0Var.c();
            }
            k = this;
            this.i = z;
            u0 u0Var = new u0(this.f495a.getContext());
            this.f500h = u0Var;
            u0Var.e(this.f495a, this.f498f, this.f499g, this.i, this.b);
            this.f495a.addOnAttachStateChangeListener(this);
            if (this.i) {
                j3 = 2500;
            } else {
                if ((ViewCompat.getWindowSystemUiVisibility(this.f495a) & 1) == 1) {
                    j2 = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j2 = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j3 = j2 - ((long) longPressTimeout);
            }
            this.f495a.removeCallbacks(this.f497e);
            this.f495a.postDelayed(this.f497e, j3);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f500h != null && this.i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f495a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                b();
                c();
            }
        } else if (this.f495a.isEnabled() && this.f500h == null && h(motionEvent)) {
            e(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f498f = view.getWidth() / 2;
        this.f499g = view.getHeight() / 2;
        g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        c();
    }
}
