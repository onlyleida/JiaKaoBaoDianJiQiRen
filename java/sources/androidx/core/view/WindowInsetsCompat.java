package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class WindowInsetsCompat {
    public static final WindowInsetsCompat CONSUMED;
    private static final String TAG = "WindowInsetsCompat";
    private final k mImpl;

    public static final class Type {
        static final int CAPTION_BAR = 4;
        static final int DISPLAY_CUTOUT = 128;
        static final int FIRST = 1;
        static final int IME = 8;
        static final int LAST = 256;
        static final int MANDATORY_SYSTEM_GESTURES = 32;
        static final int NAVIGATION_BARS = 2;
        static final int SIZE = 9;
        static final int STATUS_BARS = 1;
        static final int SYSTEM_GESTURES = 16;
        static final int TAPPABLE_ELEMENT = 64;
        static final int WINDOW_DECOR = 256;

        @Retention(RetentionPolicy.SOURCE)
        public @interface InsetsType {
        }

        private Type() {
        }

        @SuppressLint({"WrongConstant"})
        static int all() {
            return -1;
        }

        public static int captionBar() {
            return 4;
        }

        public static int displayCutout() {
            return 128;
        }

        public static int ime() {
            return 8;
        }

        static int indexOf(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i == 8) {
                return 3;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 32) {
                return 5;
            }
            if (i == 64) {
                return 6;
            }
            if (i == 128) {
                return 7;
            }
            if (i == 256) {
                return 8;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i);
        }

        public static int mandatorySystemGestures() {
            return 32;
        }

        public static int navigationBars() {
            return 2;
        }

        public static int statusBars() {
            return 1;
        }

        public static int systemBars() {
            return 7;
        }

        public static int systemGestures() {
            return 16;
        }

        public static int tappableElement() {
            return 64;
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Field f1187a;
        private static Field b;
        private static Field c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f1188d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f1187a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                c = declaredField3;
                declaredField3.setAccessible(true);
                f1188d = true;
            } catch (ReflectiveOperationException e2) {
                Log.w(WindowInsetsCompat.TAG, "Failed to get visible insets from AttachInfo " + e2.getMessage(), e2);
            }
        }

        public static WindowInsetsCompat a(View view) {
            if (f1188d && view.isAttachedToWindow()) {
                try {
                    Object obj = f1187a.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) b.get(obj);
                        Rect rect2 = (Rect) c.get(obj);
                        if (rect != null && rect2 != null) {
                            WindowInsetsCompat windowInsetsCompatBuild = new Builder().setStableInsets(androidx.core.graphics.d.c(rect)).setSystemWindowInsets(androidx.core.graphics.d.c(rect2)).build();
                            windowInsetsCompatBuild.setRootWindowInsets(windowInsetsCompatBuild);
                            windowInsetsCompatBuild.copyRootViewBounds(view.getRootView());
                            return windowInsetsCompatBuild;
                        }
                    }
                } catch (IllegalAccessException e2) {
                    Log.w(WindowInsetsCompat.TAG, "Failed to get insets from AttachInfo. " + e2.getMessage(), e2);
                }
            }
            return null;
        }
    }

    private static class d extends c {
        d() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void d(int i, androidx.core.graphics.d dVar) {
            this.c.setInsets(l.a(i), dVar.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void e(int i, androidx.core.graphics.d dVar) {
            this.c.setInsetsIgnoringVisibility(l.a(i), dVar.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void k(int i, boolean z) {
            this.c.setVisible(l.a(i), z);
        }

        d(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WindowInsetsCompat f1194a;
        androidx.core.graphics.d[] b;

        e() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        protected final void a() {
            androidx.core.graphics.d[] dVarArr = this.b;
            if (dVarArr != null) {
                androidx.core.graphics.d insets = dVarArr[Type.indexOf(1)];
                androidx.core.graphics.d insets2 = this.b[Type.indexOf(2)];
                if (insets2 == null) {
                    insets2 = this.f1194a.getInsets(2);
                }
                if (insets == null) {
                    insets = this.f1194a.getInsets(1);
                }
                i(androidx.core.graphics.d.a(insets, insets2));
                androidx.core.graphics.d dVar = this.b[Type.indexOf(16)];
                if (dVar != null) {
                    h(dVar);
                }
                androidx.core.graphics.d dVar2 = this.b[Type.indexOf(32)];
                if (dVar2 != null) {
                    f(dVar2);
                }
                androidx.core.graphics.d dVar3 = this.b[Type.indexOf(64)];
                if (dVar3 != null) {
                    j(dVar3);
                }
            }
        }

        WindowInsetsCompat b() {
            a();
            return this.f1194a;
        }

        void c(DisplayCutoutCompat displayCutoutCompat) {
        }

        void d(int i, androidx.core.graphics.d dVar) {
            if (this.b == null) {
                this.b = new androidx.core.graphics.d[9];
            }
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    this.b[Type.indexOf(i2)] = dVar;
                }
            }
        }

        void e(int i, androidx.core.graphics.d dVar) {
            if (i == 8) {
                throw new IllegalArgumentException("Ignoring visibility inset not available for IME");
            }
        }

        void f(androidx.core.graphics.d dVar) {
        }

        void g(androidx.core.graphics.d dVar) {
        }

        void h(androidx.core.graphics.d dVar) {
        }

        void i(androidx.core.graphics.d dVar) {
        }

        void j(androidx.core.graphics.d dVar) {
        }

        void k(int i, boolean z) {
        }

        e(WindowInsetsCompat windowInsetsCompat) {
            this.f1194a = windowInsetsCompat;
        }
    }

    private static class h extends g {
        h(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        WindowInsetsCompat a() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Objects.equals(this.c, hVar.c) && Objects.equals(this.f1199g, hVar.f1199g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        DisplayCutoutCompat f() {
            return DisplayCutoutCompat.wrap(this.c.getDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public int hashCode() {
            return this.c.hashCode();
        }

        h(WindowInsetsCompat windowInsetsCompat, h hVar) {
            super(windowInsetsCompat, hVar);
        }
    }

    private static class j extends i {
        static final WindowInsetsCompat r = WindowInsetsCompat.toWindowInsetsCompat(WindowInsets.CONSUMED);

        j(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        final void d(View view) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        public androidx.core.graphics.d g(int i) {
            return androidx.core.graphics.d.d(this.c.getInsets(l.a(i)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        public androidx.core.graphics.d h(int i) {
            return androidx.core.graphics.d.d(this.c.getInsetsIgnoringVisibility(l.a(i)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        public boolean q(int i) {
            return this.c.isVisible(l.a(i));
        }

        j(WindowInsetsCompat windowInsetsCompat, j jVar) {
            super(windowInsetsCompat, jVar);
        }
    }

    private static class k {
        static final WindowInsetsCompat b = new Builder().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WindowInsetsCompat f1200a;

        k(WindowInsetsCompat windowInsetsCompat) {
            this.f1200a = windowInsetsCompat;
        }

        WindowInsetsCompat a() {
            return this.f1200a;
        }

        WindowInsetsCompat b() {
            return this.f1200a;
        }

        WindowInsetsCompat c() {
            return this.f1200a;
        }

        void d(View view) {
        }

        void e(WindowInsetsCompat windowInsetsCompat) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return p() == kVar.p() && o() == kVar.o() && androidx.core.util.c.a(l(), kVar.l()) && androidx.core.util.c.a(j(), kVar.j()) && androidx.core.util.c.a(f(), kVar.f());
        }

        DisplayCutoutCompat f() {
            return null;
        }

        androidx.core.graphics.d g(int i) {
            return androidx.core.graphics.d.f1112e;
        }

        androidx.core.graphics.d h(int i) {
            if ((i & 8) == 0) {
                return androidx.core.graphics.d.f1112e;
            }
            throw new IllegalArgumentException("Unable to query the maximum insets for IME");
        }

        public int hashCode() {
            return androidx.core.util.c.b(Boolean.valueOf(p()), Boolean.valueOf(o()), l(), j(), f());
        }

        androidx.core.graphics.d i() {
            return l();
        }

        androidx.core.graphics.d j() {
            return androidx.core.graphics.d.f1112e;
        }

        androidx.core.graphics.d k() {
            return l();
        }

        androidx.core.graphics.d l() {
            return androidx.core.graphics.d.f1112e;
        }

        androidx.core.graphics.d m() {
            return l();
        }

        WindowInsetsCompat n(int i, int i2, int i3, int i4) {
            return b;
        }

        boolean o() {
            return false;
        }

        boolean p() {
            return false;
        }

        boolean q(int i) {
            return true;
        }

        public void r(androidx.core.graphics.d[] dVarArr) {
        }

        void s(androidx.core.graphics.d dVar) {
        }

        void t(WindowInsetsCompat windowInsetsCompat) {
        }

        public void u(androidx.core.graphics.d dVar) {
        }
    }

    private static final class l {
        static int a(int i) {
            int iStatusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i3 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i3 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i3 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i3 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i3 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i3 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i3 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i2 |= iStatusBars;
                }
            }
            return i2;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            CONSUMED = j.r;
        } else {
            CONSUMED = k.b;
        }
    }

    private WindowInsetsCompat(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.mImpl = new j(this, windowInsets);
            return;
        }
        if (i2 >= 29) {
            this.mImpl = new i(this, windowInsets);
            return;
        }
        if (i2 >= 28) {
            this.mImpl = new h(this, windowInsets);
            return;
        }
        if (i2 >= 21) {
            this.mImpl = new g(this, windowInsets);
        } else if (i2 >= 20) {
            this.mImpl = new f(this, windowInsets);
        } else {
            this.mImpl = new k(this);
        }
    }

    static androidx.core.graphics.d insetInsets(androidx.core.graphics.d dVar, int i2, int i3, int i4, int i5) {
        int iMax = Math.max(0, dVar.f1113a - i2);
        int iMax2 = Math.max(0, dVar.b - i3);
        int iMax3 = Math.max(0, dVar.c - i4);
        int iMax4 = Math.max(0, dVar.f1114d - i5);
        return (iMax == i2 && iMax2 == i3 && iMax3 == i4 && iMax4 == i5) ? dVar : androidx.core.graphics.d.b(iMax, iMax2, iMax3, iMax4);
    }

    public static WindowInsetsCompat toWindowInsetsCompat(WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    @Deprecated
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.mImpl.a();
    }

    @Deprecated
    public WindowInsetsCompat consumeStableInsets() {
        return this.mImpl.b();
    }

    @Deprecated
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.mImpl.c();
    }

    void copyRootViewBounds(View view) {
        this.mImpl.d(view);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return androidx.core.util.c.a(this.mImpl, ((WindowInsetsCompat) obj).mImpl);
        }
        return false;
    }

    public DisplayCutoutCompat getDisplayCutout() {
        return this.mImpl.f();
    }

    public androidx.core.graphics.d getInsets(int i2) {
        return this.mImpl.g(i2);
    }

    public androidx.core.graphics.d getInsetsIgnoringVisibility(int i2) {
        return this.mImpl.h(i2);
    }

    @Deprecated
    public androidx.core.graphics.d getMandatorySystemGestureInsets() {
        return this.mImpl.i();
    }

    @Deprecated
    public int getStableInsetBottom() {
        return this.mImpl.j().f1114d;
    }

    @Deprecated
    public int getStableInsetLeft() {
        return this.mImpl.j().f1113a;
    }

    @Deprecated
    public int getStableInsetRight() {
        return this.mImpl.j().c;
    }

    @Deprecated
    public int getStableInsetTop() {
        return this.mImpl.j().b;
    }

    @Deprecated
    public androidx.core.graphics.d getStableInsets() {
        return this.mImpl.j();
    }

    @Deprecated
    public androidx.core.graphics.d getSystemGestureInsets() {
        return this.mImpl.k();
    }

    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.mImpl.l().f1114d;
    }

    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.mImpl.l().f1113a;
    }

    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.mImpl.l().c;
    }

    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.mImpl.l().b;
    }

    @Deprecated
    public androidx.core.graphics.d getSystemWindowInsets() {
        return this.mImpl.l();
    }

    @Deprecated
    public androidx.core.graphics.d getTappableElementInsets() {
        return this.mImpl.m();
    }

    public boolean hasInsets() {
        androidx.core.graphics.d insets = getInsets(Type.all());
        androidx.core.graphics.d dVar = androidx.core.graphics.d.f1112e;
        return (insets.equals(dVar) && getInsetsIgnoringVisibility(Type.all() ^ Type.ime()).equals(dVar) && getDisplayCutout() == null) ? false : true;
    }

    @Deprecated
    public boolean hasStableInsets() {
        return !this.mImpl.j().equals(androidx.core.graphics.d.f1112e);
    }

    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.mImpl.l().equals(androidx.core.graphics.d.f1112e);
    }

    public int hashCode() {
        k kVar = this.mImpl;
        if (kVar == null) {
            return 0;
        }
        return kVar.hashCode();
    }

    public WindowInsetsCompat inset(androidx.core.graphics.d dVar) {
        return inset(dVar.f1113a, dVar.b, dVar.c, dVar.f1114d);
    }

    public boolean isConsumed() {
        return this.mImpl.o();
    }

    public boolean isRound() {
        return this.mImpl.p();
    }

    public boolean isVisible(int i2) {
        return this.mImpl.q(i2);
    }

    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(int i2, int i3, int i4, int i5) {
        return new Builder(this).setSystemWindowInsets(androidx.core.graphics.d.b(i2, i3, i4, i5)).build();
    }

    void setOverriddenInsets(androidx.core.graphics.d[] dVarArr) {
        this.mImpl.r(dVarArr);
    }

    void setRootViewData(androidx.core.graphics.d dVar) {
        this.mImpl.s(dVar);
    }

    void setRootWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        this.mImpl.t(windowInsetsCompat);
    }

    void setStableInsets(androidx.core.graphics.d dVar) {
        this.mImpl.u(dVar);
    }

    public WindowInsets toWindowInsets() {
        k kVar = this.mImpl;
        if (kVar instanceof f) {
            return ((f) kVar).c;
        }
        return null;
    }

    private static class b extends e {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static Field f1189e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f1190f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static Constructor<WindowInsets> f1191g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f1192h = false;
        private WindowInsets c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.core.graphics.d f1193d;

        b() {
            this.c = l();
        }

        private static WindowInsets l() {
            if (!f1190f) {
                try {
                    f1189e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e2) {
                    Log.i(WindowInsetsCompat.TAG, "Could not retrieve WindowInsets.CONSUMED field", e2);
                }
                f1190f = true;
            }
            Field field = f1189e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e3) {
                    Log.i(WindowInsetsCompat.TAG, "Could not get value from WindowInsets.CONSUMED field", e3);
                }
            }
            if (!f1192h) {
                try {
                    f1191g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e4) {
                    Log.i(WindowInsetsCompat.TAG, "Could not retrieve WindowInsets(Rect) constructor", e4);
                }
                f1192h = true;
            }
            Constructor<WindowInsets> constructor = f1191g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e5) {
                    Log.i(WindowInsetsCompat.TAG, "Could not invoke WindowInsets(Rect) constructor", e5);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.c);
            windowInsetsCompat.setOverriddenInsets(this.b);
            windowInsetsCompat.setStableInsets(this.f1193d);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void g(androidx.core.graphics.d dVar) {
            this.f1193d = dVar;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void i(androidx.core.graphics.d dVar) {
            WindowInsets windowInsets = this.c;
            if (windowInsets != null) {
                this.c = windowInsets.replaceSystemWindowInsets(dVar.f1113a, dVar.b, dVar.c, dVar.f1114d);
            }
        }

        b(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.c = windowInsetsCompat.toWindowInsets();
        }
    }

    private static class c extends e {
        final WindowInsets.Builder c;

        c() {
            this.c = new WindowInsets.Builder();
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.c.build());
            windowInsetsCompat.setOverriddenInsets(this.b);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void c(DisplayCutoutCompat displayCutoutCompat) {
            this.c.setDisplayCutout(displayCutoutCompat != null ? displayCutoutCompat.unwrap() : null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void f(androidx.core.graphics.d dVar) {
            this.c.setMandatorySystemGestureInsets(dVar.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void g(androidx.core.graphics.d dVar) {
            this.c.setStableInsets(dVar.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void h(androidx.core.graphics.d dVar) {
            this.c.setSystemGestureInsets(dVar.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void i(androidx.core.graphics.d dVar) {
            this.c.setSystemWindowInsets(dVar.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.e
        void j(androidx.core.graphics.d dVar) {
            this.c.setTappableElementInsets(dVar.e());
        }

        c(WindowInsetsCompat windowInsetsCompat) {
            WindowInsets.Builder builder;
            super(windowInsetsCompat);
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                builder = new WindowInsets.Builder(windowInsets);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.c = builder;
        }
    }

    private static class g extends f {
        private androidx.core.graphics.d n;

        g(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.n = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        WindowInsetsCompat b() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.c.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        WindowInsetsCompat c() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        final androidx.core.graphics.d j() {
            if (this.n == null) {
                this.n = androidx.core.graphics.d.b(this.c.getStableInsetLeft(), this.c.getStableInsetTop(), this.c.getStableInsetRight(), this.c.getStableInsetBottom());
            }
            return this.n;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        boolean o() {
            return this.c.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public void u(androidx.core.graphics.d dVar) {
            this.n = dVar;
        }

        g(WindowInsetsCompat windowInsetsCompat, g gVar) {
            super(windowInsetsCompat, gVar);
            this.n = null;
            this.n = gVar.n;
        }
    }

    public static WindowInsetsCompat toWindowInsetsCompat(WindowInsets windowInsets, View view) {
        androidx.core.util.h.f(windowInsets);
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            windowInsetsCompat.setRootWindowInsets(ViewCompat.getRootWindowInsets(view));
            windowInsetsCompat.copyRootViewBounds(view.getRootView());
        }
        return windowInsetsCompat;
    }

    public WindowInsetsCompat inset(int i2, int i3, int i4, int i5) {
        return this.mImpl.n(i2, i3, i4, i5);
    }

    private static class f extends k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f1195h = false;
        private static Method i;
        private static Class<?> j;
        private static Class<?> k;
        private static Field l;
        private static Field m;
        final WindowInsets c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.core.graphics.d[] f1196d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private androidx.core.graphics.d f1197e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private WindowInsetsCompat f1198f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        androidx.core.graphics.d f1199g;

        f(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.f1197e = null;
            this.c = windowInsets;
        }

        @SuppressLint({"PrivateApi"})
        private static void A() {
            try {
                i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                j = Class.forName("android.view.ViewRootImpl");
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                k = cls;
                l = cls.getDeclaredField("mVisibleInsets");
                m = j.getDeclaredField("mAttachInfo");
                l.setAccessible(true);
                m.setAccessible(true);
            } catch (ReflectiveOperationException e2) {
                Log.e(WindowInsetsCompat.TAG, "Failed to get visible insets. (Reflection error). " + e2.getMessage(), e2);
            }
            f1195h = true;
        }

        @SuppressLint({"WrongConstant"})
        private androidx.core.graphics.d v(int i2, boolean z) {
            androidx.core.graphics.d dVarA = androidx.core.graphics.d.f1112e;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i2 & i3) != 0) {
                    dVarA = androidx.core.graphics.d.a(dVarA, w(i3, z));
                }
            }
            return dVarA;
        }

        private androidx.core.graphics.d x() {
            WindowInsetsCompat windowInsetsCompat = this.f1198f;
            return windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : androidx.core.graphics.d.f1112e;
        }

        private androidx.core.graphics.d y(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f1195h) {
                A();
            }
            Method method = i;
            if (method != null && k != null && l != null) {
                try {
                    Object objInvoke = method.invoke(view, new Object[0]);
                    if (objInvoke == null) {
                        Log.w(WindowInsetsCompat.TAG, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) l.get(m.get(objInvoke));
                    if (rect != null) {
                        return androidx.core.graphics.d.c(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e2) {
                    Log.e(WindowInsetsCompat.TAG, "Failed to get visible insets. (Reflection error). " + e2.getMessage(), e2);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        void d(View view) {
            androidx.core.graphics.d dVarY = y(view);
            if (dVarY == null) {
                dVarY = androidx.core.graphics.d.f1112e;
            }
            s(dVarY);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        void e(WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.setRootWindowInsets(this.f1198f);
            windowInsetsCompat.setRootViewData(this.f1199g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.f1199g, ((f) obj).f1199g);
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public androidx.core.graphics.d g(int i2) {
            return v(i2, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public androidx.core.graphics.d h(int i2) {
            return v(i2, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        final androidx.core.graphics.d l() {
            if (this.f1197e == null) {
                this.f1197e = androidx.core.graphics.d.b(this.c.getSystemWindowInsetLeft(), this.c.getSystemWindowInsetTop(), this.c.getSystemWindowInsetRight(), this.c.getSystemWindowInsetBottom());
            }
            return this.f1197e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        WindowInsetsCompat n(int i2, int i3, int i4, int i5) {
            Builder builder = new Builder(WindowInsetsCompat.toWindowInsetsCompat(this.c));
            builder.setSystemWindowInsets(WindowInsetsCompat.insetInsets(l(), i2, i3, i4, i5));
            builder.setStableInsets(WindowInsetsCompat.insetInsets(j(), i2, i3, i4, i5));
            return builder.build();
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        boolean p() {
            return this.c.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        @SuppressLint({"WrongConstant"})
        boolean q(int i2) {
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i2 & i3) != 0 && !z(i3)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        public void r(androidx.core.graphics.d[] dVarArr) {
            this.f1196d = dVarArr;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        void s(androidx.core.graphics.d dVar) {
            this.f1199g = dVar;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        void t(WindowInsetsCompat windowInsetsCompat) {
            this.f1198f = windowInsetsCompat;
        }

        protected androidx.core.graphics.d w(int i2, boolean z) {
            androidx.core.graphics.d stableInsets;
            int i3;
            if (i2 == 1) {
                return z ? androidx.core.graphics.d.b(0, Math.max(x().b, l().b), 0, 0) : androidx.core.graphics.d.b(0, l().b, 0, 0);
            }
            if (i2 == 2) {
                if (z) {
                    androidx.core.graphics.d dVarX = x();
                    androidx.core.graphics.d dVarJ = j();
                    return androidx.core.graphics.d.b(Math.max(dVarX.f1113a, dVarJ.f1113a), 0, Math.max(dVarX.c, dVarJ.c), Math.max(dVarX.f1114d, dVarJ.f1114d));
                }
                androidx.core.graphics.d dVarL = l();
                WindowInsetsCompat windowInsetsCompat = this.f1198f;
                stableInsets = windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : null;
                int iMin = dVarL.f1114d;
                if (stableInsets != null) {
                    iMin = Math.min(iMin, stableInsets.f1114d);
                }
                return androidx.core.graphics.d.b(dVarL.f1113a, 0, dVarL.c, iMin);
            }
            if (i2 != 8) {
                if (i2 == 16) {
                    return k();
                }
                if (i2 == 32) {
                    return i();
                }
                if (i2 == 64) {
                    return m();
                }
                if (i2 != 128) {
                    return androidx.core.graphics.d.f1112e;
                }
                WindowInsetsCompat windowInsetsCompat2 = this.f1198f;
                DisplayCutoutCompat displayCutout = windowInsetsCompat2 != null ? windowInsetsCompat2.getDisplayCutout() : f();
                return displayCutout != null ? androidx.core.graphics.d.b(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()) : androidx.core.graphics.d.f1112e;
            }
            androidx.core.graphics.d[] dVarArr = this.f1196d;
            stableInsets = dVarArr != null ? dVarArr[Type.indexOf(8)] : null;
            if (stableInsets != null) {
                return stableInsets;
            }
            androidx.core.graphics.d dVarL2 = l();
            androidx.core.graphics.d dVarX2 = x();
            int i4 = dVarL2.f1114d;
            if (i4 > dVarX2.f1114d) {
                return androidx.core.graphics.d.b(0, 0, 0, i4);
            }
            androidx.core.graphics.d dVar = this.f1199g;
            return (dVar == null || dVar.equals(androidx.core.graphics.d.f1112e) || (i3 = this.f1199g.f1114d) <= dVarX2.f1114d) ? androidx.core.graphics.d.f1112e : androidx.core.graphics.d.b(0, 0, 0, i3);
        }

        protected boolean z(int i2) {
            if (i2 != 1 && i2 != 2) {
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 8 && i2 != 128) {
                    return true;
                }
            }
            return !w(i2, false).equals(androidx.core.graphics.d.f1112e);
        }

        f(WindowInsetsCompat windowInsetsCompat, f fVar) {
            this(windowInsetsCompat, new WindowInsets(fVar.c));
        }
    }

    private static class i extends h {
        private androidx.core.graphics.d o;
        private androidx.core.graphics.d p;
        private androidx.core.graphics.d q;

        i(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.o = null;
            this.p = null;
            this.q = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        androidx.core.graphics.d i() {
            if (this.p == null) {
                this.p = androidx.core.graphics.d.d(this.c.getMandatorySystemGestureInsets());
            }
            return this.p;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        androidx.core.graphics.d k() {
            if (this.o == null) {
                this.o = androidx.core.graphics.d.d(this.c.getSystemGestureInsets());
            }
            return this.o;
        }

        @Override // androidx.core.view.WindowInsetsCompat.k
        androidx.core.graphics.d m() {
            if (this.q == null) {
                this.q = androidx.core.graphics.d.d(this.c.getTappableElementInsets());
            }
            return this.q;
        }

        @Override // androidx.core.view.WindowInsetsCompat.f, androidx.core.view.WindowInsetsCompat.k
        WindowInsetsCompat n(int i, int i2, int i3, int i4) {
            return WindowInsetsCompat.toWindowInsetsCompat(this.c.inset(i, i2, i3, i4));
        }

        @Override // androidx.core.view.WindowInsetsCompat.g, androidx.core.view.WindowInsetsCompat.k
        public void u(androidx.core.graphics.d dVar) {
        }

        i(WindowInsetsCompat windowInsetsCompat, i iVar) {
            super(windowInsetsCompat, iVar);
            this.o = null;
            this.p = null;
            this.q = null;
        }
    }

    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        return new Builder(this).setSystemWindowInsets(androidx.core.graphics.d.c(rect)).build();
    }

    public static final class Builder {
        private final e mImpl;

        public Builder() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.mImpl = new d();
                return;
            }
            if (i >= 29) {
                this.mImpl = new c();
            } else if (i >= 20) {
                this.mImpl = new b();
            } else {
                this.mImpl = new e();
            }
        }

        public WindowInsetsCompat build() {
            return this.mImpl.b();
        }

        public Builder setDisplayCutout(DisplayCutoutCompat displayCutoutCompat) {
            this.mImpl.c(displayCutoutCompat);
            return this;
        }

        public Builder setInsets(int i, androidx.core.graphics.d dVar) {
            this.mImpl.d(i, dVar);
            return this;
        }

        public Builder setInsetsIgnoringVisibility(int i, androidx.core.graphics.d dVar) {
            this.mImpl.e(i, dVar);
            return this;
        }

        @Deprecated
        public Builder setMandatorySystemGestureInsets(androidx.core.graphics.d dVar) {
            this.mImpl.f(dVar);
            return this;
        }

        @Deprecated
        public Builder setStableInsets(androidx.core.graphics.d dVar) {
            this.mImpl.g(dVar);
            return this;
        }

        @Deprecated
        public Builder setSystemGestureInsets(androidx.core.graphics.d dVar) {
            this.mImpl.h(dVar);
            return this;
        }

        @Deprecated
        public Builder setSystemWindowInsets(androidx.core.graphics.d dVar) {
            this.mImpl.i(dVar);
            return this;
        }

        @Deprecated
        public Builder setTappableElementInsets(androidx.core.graphics.d dVar) {
            this.mImpl.j(dVar);
            return this;
        }

        public Builder setVisible(int i, boolean z) {
            this.mImpl.k(i, z);
            return this;
        }

        public Builder(WindowInsetsCompat windowInsetsCompat) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.mImpl = new d(windowInsetsCompat);
                return;
            }
            if (i >= 29) {
                this.mImpl = new c(windowInsetsCompat);
            } else if (i >= 20) {
                this.mImpl = new b(windowInsetsCompat);
            } else {
                this.mImpl = new e(windowInsetsCompat);
            }
        }
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            k kVar = windowInsetsCompat.mImpl;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && (kVar instanceof j)) {
                this.mImpl = new j(this, (j) kVar);
            } else if (i2 >= 29 && (kVar instanceof i)) {
                this.mImpl = new i(this, (i) kVar);
            } else if (i2 >= 28 && (kVar instanceof h)) {
                this.mImpl = new h(this, (h) kVar);
            } else if (i2 >= 21 && (kVar instanceof g)) {
                this.mImpl = new g(this, (g) kVar);
            } else if (i2 >= 20 && (kVar instanceof f)) {
                this.mImpl = new f(this, (f) kVar);
            } else {
                this.mImpl = new k(this);
            }
            kVar.e(this);
            return;
        }
        this.mImpl = new k(this);
    }
}
