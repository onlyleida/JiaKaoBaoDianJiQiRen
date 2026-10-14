package androidx.appcompat.widget;

/* JADX INFO: loaded from: classes.dex */
class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f436a = 0;
    private int b = 0;
    private int c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f437d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f438e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f439f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f440g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f441h = false;

    i0() {
    }

    public int a() {
        return this.f440g ? this.f436a : this.b;
    }

    public int b() {
        return this.f436a;
    }

    public int c() {
        return this.b;
    }

    public int d() {
        return this.f440g ? this.b : this.f436a;
    }

    public void e(int i, int i2) {
        this.f441h = false;
        if (i != Integer.MIN_VALUE) {
            this.f438e = i;
            this.f436a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f439f = i2;
            this.b = i2;
        }
    }

    public void f(boolean z) {
        if (z == this.f440g) {
            return;
        }
        this.f440g = z;
        if (!this.f441h) {
            this.f436a = this.f438e;
            this.b = this.f439f;
            return;
        }
        if (z) {
            int i = this.f437d;
            if (i == Integer.MIN_VALUE) {
                i = this.f438e;
            }
            this.f436a = i;
            int i2 = this.c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f439f;
            }
            this.b = i2;
            return;
        }
        int i3 = this.c;
        if (i3 == Integer.MIN_VALUE) {
            i3 = this.f438e;
        }
        this.f436a = i3;
        int i4 = this.f437d;
        if (i4 == Integer.MIN_VALUE) {
            i4 = this.f439f;
        }
        this.b = i4;
    }

    public void g(int i, int i2) {
        this.c = i;
        this.f437d = i2;
        this.f441h = true;
        if (this.f440g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f436a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f436a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.b = i2;
        }
    }
}
