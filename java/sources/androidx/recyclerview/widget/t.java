package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f1795a;
    a b = new a();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1796a = 0;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1797d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1798e;

        a() {
        }

        void a(int i) {
            this.f1796a = i | this.f1796a;
        }

        boolean b() {
            int i = this.f1796a;
            if ((i & 7) != 0 && (i & (c(this.f1797d, this.b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f1796a;
            if ((i2 & 112) != 0 && (i2 & (c(this.f1797d, this.c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f1796a;
            if ((i3 & 1792) != 0 && (i3 & (c(this.f1798e, this.b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f1796a;
            return (i4 & 28672) == 0 || (i4 & (c(this.f1798e, this.c) << 12)) != 0;
        }

        int c(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        void d() {
            this.f1796a = 0;
        }

        void e(int i, int i2, int i3, int i4) {
            this.b = i;
            this.c = i2;
            this.f1797d = i3;
            this.f1798e = i4;
        }
    }

    interface b {
        View a(int i);

        int b(View view);

        int c();

        int d();

        int e(View view);
    }

    t(b bVar) {
        this.f1795a = bVar;
    }

    View a(int i, int i2, int i3, int i4) {
        int iC = this.f1795a.c();
        int iD = this.f1795a.d();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View viewA = this.f1795a.a(i);
            this.b.e(iC, iD, this.f1795a.b(viewA), this.f1795a.e(viewA));
            if (i3 != 0) {
                this.b.d();
                this.b.a(i3);
                if (this.b.b()) {
                    return viewA;
                }
            }
            if (i4 != 0) {
                this.b.d();
                this.b.a(i4);
                if (this.b.b()) {
                    view = viewA;
                }
            }
            i += i5;
        }
        return view;
    }

    boolean b(View view, int i) {
        this.b.e(this.f1795a.c(), this.f1795a.d(), this.f1795a.b(view), this.f1795a.e(view));
        if (i == 0) {
            return false;
        }
        this.b.d();
        this.b.a(i);
        return this.b.b();
    }
}
