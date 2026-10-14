package androidx.appcompat.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
class b extends Drawable implements Drawable.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f165a;
    private Rect b;
    private Drawable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f166d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f168f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f170h;
    private Runnable i;
    private long j;
    private long k;
    private c l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f167e = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f169g = -1;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(true);
            b.this.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.b.a.b$b, reason: collision with other inner class name */
    private static class C0009b {
        public static boolean a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    static class c implements Drawable.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable.Callback f172a;

        c() {
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f172a;
            this.f172a = null;
            return callback;
        }

        public c b(Drawable.Callback callback) {
            this.f172a = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f172a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f172a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    static abstract class d extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final b f173a;
        Resources b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f174d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f175e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SparseArray<Drawable.ConstantState> f176f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Drawable[] f177g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f178h;
        boolean i;
        boolean j;
        Rect k;
        boolean l;
        boolean m;
        int n;
        int o;
        int p;
        int q;
        boolean r;
        int s;
        boolean t;
        boolean u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        int z;

        d(d dVar, b bVar, Resources resources) {
            this.i = false;
            this.l = false;
            this.x = true;
            this.A = 0;
            this.B = 0;
            this.f173a = bVar;
            this.b = resources != null ? resources : dVar != null ? dVar.b : null;
            int iF = b.f(resources, dVar != null ? dVar.c : 0);
            this.c = iF;
            if (dVar == null) {
                this.f177g = new Drawable[10];
                this.f178h = 0;
                return;
            }
            this.f174d = dVar.f174d;
            this.f175e = dVar.f175e;
            this.v = true;
            this.w = true;
            this.i = dVar.i;
            this.l = dVar.l;
            this.x = dVar.x;
            this.y = dVar.y;
            this.z = dVar.z;
            this.A = dVar.A;
            this.B = dVar.B;
            this.C = dVar.C;
            this.D = dVar.D;
            this.E = dVar.E;
            this.F = dVar.F;
            this.G = dVar.G;
            this.H = dVar.H;
            this.I = dVar.I;
            if (dVar.c == iF) {
                if (dVar.j) {
                    this.k = dVar.k != null ? new Rect(dVar.k) : null;
                    this.j = true;
                }
                if (dVar.m) {
                    this.n = dVar.n;
                    this.o = dVar.o;
                    this.p = dVar.p;
                    this.q = dVar.q;
                    this.m = true;
                }
            }
            if (dVar.r) {
                this.s = dVar.s;
                this.r = true;
            }
            if (dVar.t) {
                this.u = dVar.u;
                this.t = true;
            }
            Drawable[] drawableArr = dVar.f177g;
            this.f177g = new Drawable[drawableArr.length];
            this.f178h = dVar.f178h;
            SparseArray<Drawable.ConstantState> sparseArray = dVar.f176f;
            if (sparseArray != null) {
                this.f176f = sparseArray.clone();
            } else {
                this.f176f = new SparseArray<>(this.f178h);
            }
            int i = this.f178h;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                    if (constantState != null) {
                        this.f176f.put(i2, constantState);
                    } else {
                        this.f177g[i2] = drawableArr[i2];
                    }
                }
            }
        }

        private void e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f176f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f177g[this.f176f.keyAt(i)] = s(this.f176f.valueAt(i).newDrawable(this.b));
                }
                this.f176f = null;
            }
        }

        private Drawable s(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                androidx.core.graphics.drawable.a.m(drawable, this.z);
            }
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.f173a);
            return drawableMutate;
        }

        public final int a(Drawable drawable) {
            int i = this.f178h;
            if (i >= this.f177g.length) {
                o(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f173a);
            this.f177g[i] = drawable;
            this.f178h++;
            this.f175e = drawable.getChangingConfigurations() | this.f175e;
            p();
            this.k = null;
            this.j = false;
            this.m = false;
            this.v = false;
            return i;
        }

        final void b(Resources.Theme theme) {
            if (theme != null) {
                e();
                int i = this.f178h;
                Drawable[] drawableArr = this.f177g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && androidx.core.graphics.drawable.a.b(drawableArr[i2])) {
                        androidx.core.graphics.drawable.a.a(drawableArr[i2], theme);
                        this.f175e |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                y(C0009b.c(theme));
            }
        }

        public boolean c() {
            if (this.v) {
                return this.w;
            }
            e();
            this.v = true;
            int i = this.f178h;
            Drawable[] drawableArr = this.f177g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.w = false;
                    return false;
                }
            }
            this.w = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f178h;
            Drawable[] drawableArr = this.f177g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f176f.get(i2);
                    if (constantState != null && C0009b.a(constantState)) {
                        return true;
                    }
                } else if (androidx.core.graphics.drawable.a.b(drawable)) {
                    return true;
                }
            }
            return false;
        }

        protected void d() {
            this.m = true;
            e();
            int i = this.f178h;
            Drawable[] drawableArr = this.f177g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        final int f() {
            return this.f177g.length;
        }

        public final Drawable g(int i) {
            int iIndexOfKey;
            Drawable drawable = this.f177g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f176f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable drawableS = s(this.f176f.valueAt(iIndexOfKey).newDrawable(this.b));
            this.f177g[i] = drawableS;
            this.f176f.removeAt(iIndexOfKey);
            if (this.f176f.size() == 0) {
                this.f176f = null;
            }
            return drawableS;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f174d | this.f175e;
        }

        public final int h() {
            return this.f178h;
        }

        public final int i() {
            if (!this.m) {
                d();
            }
            return this.o;
        }

        public final int j() {
            if (!this.m) {
                d();
            }
            return this.q;
        }

        public final int k() {
            if (!this.m) {
                d();
            }
            return this.p;
        }

        public final Rect l() {
            Rect rect = null;
            if (this.i) {
                return null;
            }
            Rect rect2 = this.k;
            if (rect2 != null || this.j) {
                return rect2;
            }
            e();
            Rect rect3 = new Rect();
            int i = this.f178h;
            Drawable[] drawableArr = this.f177g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i3 = rect3.left;
                    if (i3 > rect.left) {
                        rect.left = i3;
                    }
                    int i4 = rect3.top;
                    if (i4 > rect.top) {
                        rect.top = i4;
                    }
                    int i5 = rect3.right;
                    if (i5 > rect.right) {
                        rect.right = i5;
                    }
                    int i6 = rect3.bottom;
                    if (i6 > rect.bottom) {
                        rect.bottom = i6;
                    }
                }
            }
            this.j = true;
            this.k = rect;
            return rect;
        }

        public final int m() {
            if (!this.m) {
                d();
            }
            return this.n;
        }

        public final int n() {
            if (this.r) {
                return this.s;
            }
            e();
            int i = this.f178h;
            Drawable[] drawableArr = this.f177g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.s = opacity;
            this.r = true;
            return opacity;
        }

        public void o(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.f177g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.f177g = drawableArr;
        }

        void p() {
            this.r = false;
            this.t = false;
        }

        public final boolean q() {
            return this.l;
        }

        abstract void r();

        public final void t(boolean z) {
            this.l = z;
        }

        public final void u(int i) {
            this.A = i;
        }

        public final void v(int i) {
            this.B = i;
        }

        final boolean w(int i, int i2) {
            int i3 = this.f178h;
            Drawable[] drawableArr = this.f177g;
            boolean z = false;
            for (int i4 = 0; i4 < i3; i4++) {
                if (drawableArr[i4] != null) {
                    boolean zM = Build.VERSION.SDK_INT >= 23 ? androidx.core.graphics.drawable.a.m(drawableArr[i4], i) : false;
                    if (i4 == i2) {
                        z = zM;
                    }
                }
            }
            this.z = i;
            return z;
        }

        public final void x(boolean z) {
            this.i = z;
        }

        final void y(Resources resources) {
            if (resources != null) {
                this.b = resources;
                int iF = b.f(resources, this.c);
                int i = this.c;
                this.c = iF;
                if (i != iF) {
                    this.m = false;
                    this.j = false;
                }
            }
        }
    }

    b() {
    }

    private void d(Drawable drawable) {
        if (this.l == null) {
            this.l = new c();
        }
        c cVar = this.l;
        cVar.b(drawable.getCallback());
        drawable.setCallback(cVar);
        try {
            if (this.f165a.A <= 0 && this.f168f) {
                drawable.setAlpha(this.f167e);
            }
            d dVar = this.f165a;
            if (dVar.E) {
                drawable.setColorFilter(dVar.D);
            } else {
                if (dVar.H) {
                    androidx.core.graphics.drawable.a.o(drawable, dVar.F);
                }
                d dVar2 = this.f165a;
                if (dVar2.I) {
                    androidx.core.graphics.drawable.a.p(drawable, dVar2.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f165a.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                androidx.core.graphics.drawable.a.m(drawable, androidx.core.graphics.drawable.a.f(this));
            }
            if (i >= 19) {
                androidx.core.graphics.drawable.a.j(drawable, this.f165a.C);
            }
            Rect rect = this.b;
            if (i >= 21 && rect != null) {
                androidx.core.graphics.drawable.a.l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.l.a());
        }
    }

    private boolean e() {
        return isAutoMirrored() && androidx.core.graphics.drawable.a.f(this) == 1;
    }

    static int f(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    /* JADX WARN: Code duplicated, block: B:18:0x0049  */
    /* JADX WARN: Code duplicated, block: B:19:0x0052  */
    /* JADX WARN: Code duplicated, block: B:20:0x0065  */
    /* JADX WARN: Code duplicated, block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    void a(boolean z) {
        boolean z2;
        Drawable drawable;
        long j;
        boolean z3 = true;
        this.f168f = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            long j2 = this.j;
            if (j2 != 0) {
                if (j2 <= jUptimeMillis) {
                    drawable2.setAlpha(this.f167e);
                    this.j = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j2 - jUptimeMillis) * 255)) / this.f165a.A)) * this.f167e) / 255);
                    z2 = true;
                }
            }
            drawable = this.f166d;
            if (drawable != null) {
                j = this.k;
                if (j == 0) {
                    if (j <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.f166d = null;
                        this.k = 0L;
                    } else {
                        drawable.setAlpha(((((int) ((j - jUptimeMillis) * 255)) / this.f165a.B) * this.f167e) / 255);
                    }
                }
                if (z || !z3) {
                }
                scheduleSelf(this.i, jUptimeMillis + 16);
                return;
            }
            this.k = 0L;
            z3 = z2;
            if (z) {
            }
        }
        this.j = 0L;
        z2 = false;
        drawable = this.f166d;
        if (drawable != null) {
            j = this.k;
            if (j == 0) {
                if (j <= jUptimeMillis) {
                    drawable.setVisible(false, false);
                    this.f166d = null;
                    this.k = 0L;
                } else {
                    drawable.setAlpha(((((int) ((j - jUptimeMillis) * 255)) / this.f165a.B) * this.f167e) / 255);
                }
            }
            if (z) {
            }
        }
        this.k = 0L;
        z3 = z2;
        if (z) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f165a.b(theme);
    }

    d b() {
        throw null;
    }

    int c() {
        return this.f169g;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f165a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f166d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
    boolean g(int i) {
        if (i == this.f169g) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f165a.B > 0) {
            Drawable drawable = this.f166d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.c;
            if (drawable2 != null) {
                this.f166d = drawable2;
                this.k = ((long) this.f165a.B) + jUptimeMillis;
            } else {
                this.f166d = null;
                this.k = 0L;
            }
        } else {
            Drawable drawable3 = this.c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i >= 0) {
            d dVar = this.f165a;
            if (i < dVar.f178h) {
                Drawable drawableG = dVar.g(i);
                this.c = drawableG;
                this.f169g = i;
                if (drawableG != null) {
                    int i2 = this.f165a.A;
                    if (i2 > 0) {
                        this.j = jUptimeMillis + ((long) i2);
                    }
                    d(drawableG);
                }
            } else {
                this.c = null;
                this.f169g = -1;
            }
        } else {
            this.c = null;
            this.f169g = -1;
        }
        if (this.j != 0 || this.k != 0) {
            Runnable runnable = this.i;
            if (runnable == null) {
                this.i = new a();
            } else {
                unscheduleSelf(runnable);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f167e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f165a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f165a.c()) {
            return null;
        }
        this.f165a.f174d = getChangingConfigurations();
        return this.f165a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f165a.q()) {
            return this.f165a.i();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f165a.q()) {
            return this.f165a.m();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f165a.q()) {
            return this.f165a.j();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f165a.q()) {
            return this.f165a.k();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f165a.n();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.c;
        if (drawable != null) {
            C0009b.b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect rectL = this.f165a.l();
        if (rectL != null) {
            rect.set(rectL);
            padding = (rectL.right | ((rectL.left | rectL.top) | rectL.bottom)) != 0;
        } else {
            Drawable drawable = this.c;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (e()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    void h(d dVar) {
        this.f165a = dVar;
        int i = this.f169g;
        if (i >= 0) {
            Drawable drawableG = dVar.g(i);
            this.c = drawableG;
            if (drawableG != null) {
                d(drawableG);
            }
        }
        this.f166d = null;
    }

    final void i(Resources resources) {
        this.f165a.y(resources);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        d dVar = this.f165a;
        if (dVar != null) {
            dVar.p();
        }
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f165a.C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f166d;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f166d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f168f) {
                this.c.setAlpha(this.f167e);
            }
        }
        if (this.k != 0) {
            this.k = 0L;
            z = true;
        }
        if (this.j != 0) {
            this.j = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f170h && super.mutate() == this) {
            d dVarB = b();
            dVarB.r();
            h(dVarB);
            this.f170h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f166d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f165a.w(i, c());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f166d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f166d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f168f && this.f167e == i) {
            return;
        }
        this.f168f = true;
        this.f167e = i;
        Drawable drawable = this.c;
        if (drawable != null) {
            if (this.j == 0) {
                drawable.setAlpha(i);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        d dVar = this.f165a;
        if (dVar.C != z) {
            dVar.C = z;
            Drawable drawable = this.c;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.j(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        d dVar = this.f165a;
        dVar.E = true;
        if (dVar.D != colorFilter) {
            dVar.D = colorFilter;
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        d dVar = this.f165a;
        if (dVar.x != z) {
            dVar.x = z;
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.k(drawable, f2, f3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.b;
        if (rect == null) {
            this.b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.l(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        d dVar = this.f165a;
        dVar.H = true;
        if (dVar.F != colorStateList) {
            dVar.F = colorStateList;
            androidx.core.graphics.drawable.a.o(this.c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        d dVar = this.f165a;
        dVar.I = true;
        if (dVar.G != mode) {
            dVar.G = mode;
            androidx.core.graphics.drawable.a.p(this.c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f166d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
