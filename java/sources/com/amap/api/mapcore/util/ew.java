package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public class ew {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f10759a;

    enum a {
        FAIL,
        PERFECT,
        FIT
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f10762a;

        static {
            int[] iArr = new int[a.values().length];
            f10762a = iArr;
            try {
                iArr[a.FAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10762a[a.PERFECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10762a[a.FIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    class c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final /* synthetic */ boolean f10763f = true;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f10764a;
        d b;
        c c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c f10765d = null;

        c(d dVar) {
            this.b = dVar;
        }

        c a(int i, int i2, String str) {
            if (!c()) {
                c cVarA = this.c.a(i, i2, str);
                return cVarA == null ? this.f10765d.a(i, i2, str) : cVarA;
            }
            if (this.f10764a != null) {
                return null;
            }
            int i3 = b.f10762a[e(i, i2).ordinal()];
            if (i3 == 1) {
                return null;
            }
            if (i3 == 2) {
                this.f10764a = str;
                return this;
            }
            if (i3 == 3) {
                b(i, i2);
            }
            return this.c.a(i, i2, str);
        }

        void b(int i, int i2) {
            d dVar;
            d dVar2;
            d dVar3 = this.b;
            int i3 = dVar3.c;
            int i4 = i3 - i;
            int i5 = dVar3.f10768d;
            int i6 = i5 - i2;
            boolean z = f10763f;
            if (!z && i4 < 0) {
                throw new AssertionError();
            }
            if (!z && i6 < 0) {
                throw new AssertionError();
            }
            if (i4 > i6) {
                int i7 = dVar3.f10767a;
                int i8 = dVar3.b;
                dVar = new d(i7, i8, i, i5);
                dVar2 = new d(dVar.f10767a + i, i8, i3 - i, i5);
            } else {
                int i9 = dVar3.f10767a;
                d dVar4 = new d(i9, dVar3.b, i3, i2);
                d dVar5 = new d(i9, dVar4.b + i2, i3, i5 - i2);
                dVar = dVar4;
                dVar2 = dVar5;
            }
            ew ewVar = ew.this;
            this.c = ewVar.new c(dVar);
            this.f10765d = ewVar.new c(dVar2);
        }

        boolean c() {
            return this.c == null;
        }

        boolean d(String str) {
            if (c()) {
                if (!str.equals(this.f10764a)) {
                    return false;
                }
                this.f10764a = null;
                return true;
            }
            boolean zD = this.c.d(str);
            if (!zD) {
                zD = this.f10765d.d(str);
            }
            if (zD && !this.c.f() && !this.f10765d.f()) {
                this.c = null;
                this.f10765d = null;
            }
            return zD;
        }

        a e(int i, int i2) {
            int i3;
            d dVar = this.b;
            int i4 = dVar.c;
            if (i > i4 || i2 > (i3 = dVar.f10768d)) {
                return a.FAIL;
            }
            return (i == i4 && i2 == i3) ? a.PERFECT : a.FIT;
        }

        boolean f() {
            return (this.f10764a == null && c()) ? false : true;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f10767a;
        public int b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f10768d;

        d(int i, int i2, int i3, int i4) {
            this.f10767a = i;
            this.b = i2;
            this.c = i3;
            this.f10768d = i4;
        }

        public String toString() {
            return "[ x: " + this.f10767a + ", y: " + this.b + ", w: " + this.c + ", h: " + this.f10768d + " ]";
        }
    }

    public ew(int i, int i2) {
        this.f10759a = new c(new d(0, 0, i, i2));
    }

    public int a() {
        return this.f10759a.b.c;
    }

    public d b(int i, int i2, String str) {
        c cVarA = this.f10759a.a(i, i2, str);
        if (cVarA == null) {
            return null;
        }
        d dVar = cVarA.b;
        return new d(dVar.f10767a, dVar.b, dVar.c, dVar.f10768d);
    }

    public boolean c(String str) {
        return this.f10759a.d(str);
    }

    public int d() {
        return this.f10759a.b.f10768d;
    }
}
