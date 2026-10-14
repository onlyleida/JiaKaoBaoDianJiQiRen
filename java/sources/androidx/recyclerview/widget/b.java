package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final InterfaceC0047b f1714a;
    final a b = new a();
    final List<View> c = new ArrayList();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f1715a = 0;
        a b;

        a() {
        }

        private void c() {
            if (this.b == null) {
                this.b = new a();
            }
        }

        void a(int i) {
            if (i < 64) {
                this.f1715a &= ~(1 << i);
                return;
            }
            a aVar = this.b;
            if (aVar != null) {
                aVar.a(i - 64);
            }
        }

        int b(int i) {
            a aVar = this.b;
            if (aVar == null) {
                return i >= 64 ? Long.bitCount(this.f1715a) : Long.bitCount(this.f1715a & ((1 << i) - 1));
            }
            return i < 64 ? Long.bitCount(this.f1715a & ((1 << i) - 1)) : aVar.b(i - 64) + Long.bitCount(this.f1715a);
        }

        boolean d(int i) {
            if (i < 64) {
                return (this.f1715a & (1 << i)) != 0;
            }
            c();
            return this.b.d(i - 64);
        }

        void e(int i, boolean z) {
            if (i >= 64) {
                c();
                this.b.e(i - 64, z);
                return;
            }
            long j = this.f1715a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f1715a = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                h(i);
            } else {
                a(i);
            }
            if (z2 || this.b != null) {
                c();
                this.b.e(0, z2);
            }
        }

        boolean f(int i) {
            if (i >= 64) {
                c();
                return this.b.f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f1715a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (~j);
            this.f1715a = j3;
            long j4 = j - 1;
            this.f1715a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            a aVar = this.b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.b.f(0);
            }
            return z;
        }

        void g() {
            this.f1715a = 0L;
            a aVar = this.b;
            if (aVar != null) {
                aVar.g();
            }
        }

        void h(int i) {
            if (i < 64) {
                this.f1715a |= 1 << i;
            } else {
                c();
                this.b.h(i - 64);
            }
        }

        public String toString() {
            if (this.b == null) {
                return Long.toBinaryString(this.f1715a);
            }
            return this.b.toString() + "xx" + Long.toBinaryString(this.f1715a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.b$b, reason: collision with other inner class name */
    interface InterfaceC0047b {
        View a(int i);

        void b(View view);

        int c();

        RecyclerView.c0 d(View view);

        void e(int i);

        void f(View view, int i);

        void g();

        int h(View view);

        void i(View view);

        void j(int i);

        void k(View view, int i, ViewGroup.LayoutParams layoutParams);
    }

    b(InterfaceC0047b interfaceC0047b) {
        this.f1714a = interfaceC0047b;
    }

    private int h(int i) {
        if (i < 0) {
            return -1;
        }
        int iC = this.f1714a.c();
        int i2 = i;
        while (i2 < iC) {
            int iB = i - (i2 - this.b.b(i2));
            if (iB == 0) {
                while (this.b.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iB;
        }
        return -1;
    }

    private void l(View view) {
        this.c.add(view);
        this.f1714a.b(view);
    }

    private boolean t(View view) {
        if (!this.c.remove(view)) {
            return false;
        }
        this.f1714a.i(view);
        return true;
    }

    void a(View view, int i, boolean z) {
        int iC = i < 0 ? this.f1714a.c() : h(i);
        this.b.e(iC, z);
        if (z) {
            l(view);
        }
        this.f1714a.f(view, iC);
    }

    void b(View view, boolean z) {
        a(view, -1, z);
    }

    void c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iC = i < 0 ? this.f1714a.c() : h(i);
        this.b.e(iC, z);
        if (z) {
            l(view);
        }
        this.f1714a.k(view, iC, layoutParams);
    }

    void d(int i) {
        int iH = h(i);
        this.b.f(iH);
        this.f1714a.e(iH);
    }

    View e(int i) {
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.c.get(i2);
            RecyclerView.c0 c0VarD = this.f1714a.d(view);
            if (c0VarD.getLayoutPosition() == i && !c0VarD.isInvalid() && !c0VarD.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    View f(int i) {
        return this.f1714a.a(h(i));
    }

    int g() {
        return this.f1714a.c() - this.c.size();
    }

    View i(int i) {
        return this.f1714a.a(i);
    }

    int j() {
        return this.f1714a.c();
    }

    void k(View view) {
        int iH = this.f1714a.h(view);
        if (iH >= 0) {
            this.b.h(iH);
            l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    int m(View view) {
        int iH = this.f1714a.h(view);
        if (iH == -1 || this.b.d(iH)) {
            return -1;
        }
        return iH - this.b.b(iH);
    }

    boolean n(View view) {
        return this.c.contains(view);
    }

    void o() {
        this.b.g();
        for (int size = this.c.size() - 1; size >= 0; size--) {
            this.f1714a.i(this.c.get(size));
            this.c.remove(size);
        }
        this.f1714a.g();
    }

    void p(View view) {
        int iH = this.f1714a.h(view);
        if (iH < 0) {
            return;
        }
        if (this.b.f(iH)) {
            t(view);
        }
        this.f1714a.j(iH);
    }

    void q(int i) {
        int iH = h(i);
        View viewA = this.f1714a.a(iH);
        if (viewA == null) {
            return;
        }
        if (this.b.f(iH)) {
            t(viewA);
        }
        this.f1714a.j(iH);
    }

    boolean r(View view) {
        int iH = this.f1714a.h(view);
        if (iH == -1) {
            t(view);
            return true;
        }
        if (!this.b.d(iH)) {
            return false;
        }
        this.b.f(iH);
        t(view);
        this.f1714a.j(iH);
        return true;
    }

    void s(View view) {
        int iH = this.f1714a.h(view);
        if (iH < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.b.d(iH)) {
            this.b.a(iH);
            t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.b.toString() + ", hidden list:" + this.c.size();
    }
}
