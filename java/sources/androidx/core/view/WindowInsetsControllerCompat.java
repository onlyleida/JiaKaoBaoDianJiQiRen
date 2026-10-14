package androidx.core.view;

import android.R;
import android.os.Build;
import android.os.CancellationSignal;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.collection.g;
import cn.mucang.sundial.android.tcp.data.gnss.AlarmInfo;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsControllerCompat {
    public static final int BEHAVIOR_SHOW_BARS_BY_SWIPE = 1;
    public static final int BEHAVIOR_SHOW_BARS_BY_TOUCH = 0;
    public static final int BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE = 2;
    private final e mImpl;

    public interface OnControllableInsetsChangedListener {
        void onControllableInsetsChanged(WindowInsetsControllerCompat windowInsetsControllerCompat, int i);
    }

    private static class a extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final Window f1201a;
        private final View b;

        /* JADX INFO: renamed from: androidx.core.view.WindowInsetsControllerCompat$a$a, reason: collision with other inner class name */
        class RunnableC0035a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ View f1202a;

            RunnableC0035a(a aVar, View view) {
                this.f1202a = view;
            }

            @Override // java.lang.Runnable
            public void run() {
                ((InputMethodManager) this.f1202a.getContext().getSystemService("input_method")).showSoftInput(this.f1202a, 0);
            }
        }

        a(Window window, View view) {
            this.f1201a = window;
            this.b = view;
        }

        private void l(int i) {
            if (i == 1) {
                m(4);
            } else if (i == 2) {
                m(2);
            } else {
                if (i != 8) {
                    return;
                }
                ((InputMethodManager) this.f1201a.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f1201a.getDecorView().getWindowToken(), 0);
            }
        }

        private void o(int i) {
            if (i == 1) {
                p(4);
                q(1024);
                return;
            }
            if (i == 2) {
                p(2);
                return;
            }
            if (i != 8) {
                return;
            }
            View currentFocus = this.b;
            if (currentFocus == null || !(currentFocus.isInEditMode() || currentFocus.onCheckIsTextEditor())) {
                currentFocus = this.f1201a.getCurrentFocus();
            } else {
                currentFocus.requestFocus();
            }
            if (currentFocus == null) {
                currentFocus = this.f1201a.findViewById(R.id.content);
            }
            if (currentFocus == null || !currentFocus.hasWindowFocus()) {
                return;
            }
            currentFocus.post(new RunnableC0035a(this, currentFocus));
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void b(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        int c() {
            return 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void d(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    l(i2);
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void g(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void j(int i) {
            if (i == 0) {
                p(6144);
                return;
            }
            if (i == 1) {
                p(4096);
                m(2048);
            } else {
                if (i != 2) {
                    return;
                }
                p(2048);
                m(4096);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void k(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    o(i2);
                }
            }
        }

        protected void m(int i) {
            View decorView = this.f1201a.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        protected void n(int i) {
            this.f1201a.addFlags(i);
        }

        protected void p(int i) {
            View decorView = this.f1201a.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }

        protected void q(int i) {
            this.f1201a.clearFlags(i);
        }
    }

    private static class b extends a {
        b(Window window, View view) {
            super(window, view);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public boolean f() {
            return (this.f1201a.getDecorView().getSystemUiVisibility() & 8192) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public void i(boolean z) {
            if (!z) {
                p(8192);
                return;
            }
            q(AlarmInfo.VEHICLE_STOLEN);
            n(Integer.MIN_VALUE);
            m(8192);
        }
    }

    private static class c extends b {
        c(Window window, View view) {
            super(window, view);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public boolean e() {
            return (this.f1201a.getDecorView().getSystemUiVisibility() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public void h(boolean z) {
            if (!z) {
                p(16);
                return;
            }
            q(134217728);
            n(Integer.MIN_VALUE);
            m(16);
        }
    }

    private static class d extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WindowInsetsControllerCompat f1203a;
        final WindowInsetsController b;
        private final g<OnControllableInsetsChangedListener, WindowInsetsController.OnControllableInsetsChangedListener> c;

        class a implements WindowInsetsAnimationControlListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private WindowInsetsAnimationControllerCompat f1204a = null;
            final /* synthetic */ WindowInsetsAnimationControlListenerCompat b;

            a(d dVar, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
                this.b = windowInsetsAnimationControlListenerCompat;
            }

            @Override // android.view.WindowInsetsAnimationControlListener
            public void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
                this.b.onCancelled(windowInsetsAnimationController == null ? null : this.f1204a);
            }

            @Override // android.view.WindowInsetsAnimationControlListener
            public void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
                this.b.onFinished(this.f1204a);
            }

            @Override // android.view.WindowInsetsAnimationControlListener
            public void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i) {
                WindowInsetsAnimationControllerCompat windowInsetsAnimationControllerCompat = new WindowInsetsAnimationControllerCompat(windowInsetsAnimationController);
                this.f1204a = windowInsetsAnimationControllerCompat;
                this.b.onReady(windowInsetsAnimationControllerCompat, i);
            }
        }

        class b implements WindowInsetsController.OnControllableInsetsChangedListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ OnControllableInsetsChangedListener f1205a;

            b(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
                this.f1205a = onControllableInsetsChangedListener;
            }

            @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
            public void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i) {
                d dVar = d.this;
                if (dVar.b == windowInsetsController) {
                    this.f1205a.onControllableInsetsChanged(dVar.f1203a, i);
                }
            }
        }

        d(Window window, WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this(window.getInsetsController(), windowInsetsControllerCompat);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            if (this.c.containsKey(onControllableInsetsChangedListener)) {
                return;
            }
            b bVar = new b(onControllableInsetsChangedListener);
            this.c.put(onControllableInsetsChangedListener, bVar);
            this.b.addOnControllableInsetsChangedListener(bVar);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void b(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
            this.b.controlWindowInsetsAnimation(i, j, interpolator, cancellationSignal, new a(this, windowInsetsAnimationControlListenerCompat));
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        int c() {
            return this.b.getSystemBarsBehavior();
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void d(int i) {
            this.b.hide(i);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public boolean e() {
            return (this.b.getSystemBarsAppearance() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public boolean f() {
            return (this.b.getSystemBarsAppearance() & 8) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void g(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListenerRemove = this.c.remove(onControllableInsetsChangedListener);
            if (onControllableInsetsChangedListenerRemove != null) {
                this.b.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListenerRemove);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public void h(boolean z) {
            if (z) {
                this.b.setSystemBarsAppearance(16, 16);
            } else {
                this.b.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        public void i(boolean z) {
            if (z) {
                this.b.setSystemBarsAppearance(8, 8);
            } else {
                this.b.setSystemBarsAppearance(0, 8);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void j(int i) {
            this.b.setSystemBarsBehavior(i);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.e
        void k(int i) {
            this.b.show(i);
        }

        d(WindowInsetsController windowInsetsController, WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this.c = new g<>();
            this.b = windowInsetsController;
            this.f1203a = windowInsetsControllerCompat;
        }
    }

    private static class e {
        e() {
        }

        void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        void b(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        int c() {
            return 0;
        }

        void d(int i) {
        }

        public boolean e() {
            return false;
        }

        public boolean f() {
            return false;
        }

        void g(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        public void h(boolean z) {
        }

        public void i(boolean z) {
        }

        void j(int i) {
        }

        void k(int i) {
        }
    }

    private WindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new d(windowInsetsController, this);
        } else {
            this.mImpl = new e();
        }
    }

    public static WindowInsetsControllerCompat toWindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        return new WindowInsetsControllerCompat(windowInsetsController);
    }

    public void addOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.mImpl.a(onControllableInsetsChangedListener);
    }

    public void controlWindowInsetsAnimation(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        this.mImpl.b(i, j, interpolator, cancellationSignal, windowInsetsAnimationControlListenerCompat);
    }

    public int getSystemBarsBehavior() {
        return this.mImpl.c();
    }

    public void hide(int i) {
        this.mImpl.d(i);
    }

    public boolean isAppearanceLightNavigationBars() {
        return this.mImpl.e();
    }

    public boolean isAppearanceLightStatusBars() {
        return this.mImpl.f();
    }

    public void removeOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.mImpl.g(onControllableInsetsChangedListener);
    }

    public void setAppearanceLightNavigationBars(boolean z) {
        this.mImpl.h(z);
    }

    public void setAppearanceLightStatusBars(boolean z) {
        this.mImpl.i(z);
    }

    public void setSystemBarsBehavior(int i) {
        this.mImpl.j(i);
    }

    public void show(int i) {
        this.mImpl.k(i);
    }

    public WindowInsetsControllerCompat(Window window, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.mImpl = new d(window, this);
            return;
        }
        if (i >= 26) {
            this.mImpl = new c(window, view);
            return;
        }
        if (i >= 23) {
            this.mImpl = new b(window, view);
        } else if (i >= 20) {
            this.mImpl = new a(window, view);
        } else {
            this.mImpl = new e();
        }
    }
}
