package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class a implements m.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.core.util.e<b> f1706a;
    final ArrayList<b> b;
    final ArrayList<b> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final InterfaceC0046a f1707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Runnable f1708e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f1709f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final m f1710g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1711h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    interface InterfaceC0046a {
        void a(int i, int i2);

        void b(b bVar);

        void c(b bVar);

        void d(int i, int i2);

        void e(int i, int i2, Object obj);

        RecyclerView.c0 f(int i);

        void g(int i, int i2);

        void h(int i, int i2);
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1712a;
        int b;
        Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1713d;

        b(int i, int i2, int i3, Object obj) {
            this.f1712a = i;
            this.b = i2;
            this.f1713d = i3;
            this.c = obj;
        }

        String a() {
            int i = this.f1712a;
            if (i == 1) {
                return "add";
            }
            if (i == 2) {
                return "rm";
            }
            if (i != 4) {
                return i != 8 ? "??" : "mv";
            }
            return "up";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i = this.f1712a;
            if (i != bVar.f1712a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f1713d - this.b) == 1 && this.f1713d == bVar.b && this.b == bVar.f1713d) {
                return true;
            }
            if (this.f1713d != bVar.f1713d || this.b != bVar.b) {
                return false;
            }
            Object obj2 = this.c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.c)) {
                    return false;
                }
            } else if (bVar.c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f1712a * 31) + this.b) * 31) + this.f1713d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.b + "c:" + this.f1713d + ",p:" + this.c + "]";
        }
    }

    a(InterfaceC0046a interfaceC0046a) {
        this(interfaceC0046a, false);
    }

    private void c(b bVar) {
        v(bVar);
    }

    private void d(b bVar) {
        v(bVar);
    }

    private void f(b bVar) {
        boolean z;
        byte b2;
        int i = bVar.b;
        int i2 = bVar.f1713d + i;
        byte b3 = -1;
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (this.f1707d.f(i3) != null || h(i3)) {
                if (b3 == 0) {
                    k(a(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 1;
            } else {
                if (b3 == 1) {
                    v(a(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
            b3 = b2;
        }
        if (i4 != bVar.f1713d) {
            b(bVar);
            bVar = a(2, i, i4, null);
        }
        if (b3 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    private void g(b bVar) {
        int i = bVar.b;
        int i2 = bVar.f1713d + i;
        int i3 = i;
        byte b2 = -1;
        int i4 = 0;
        while (i < i2) {
            if (this.f1707d.f(i) != null || h(i)) {
                if (b2 == 0) {
                    k(a(4, i3, i4, bVar.c));
                    i3 = i;
                    i4 = 0;
                }
                b2 = 1;
            } else {
                if (b2 == 1) {
                    v(a(4, i3, i4, bVar.c));
                    i3 = i;
                    i4 = 0;
                }
                b2 = 0;
            }
            i4++;
            i++;
        }
        if (i4 != bVar.f1713d) {
            Object obj = bVar.c;
            b(bVar);
            bVar = a(4, i3, i4, obj);
        }
        if (b2 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    private boolean h(int i) {
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.c.get(i2);
            int i3 = bVar.f1712a;
            if (i3 == 8) {
                if (n(bVar.f1713d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = bVar.b;
                int i5 = bVar.f1713d + i4;
                while (i4 < i5) {
                    if (n(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void k(b bVar) {
        int i;
        int i2 = bVar.f1712a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iZ = z(bVar.b, i2);
        int i3 = bVar.b;
        int i4 = bVar.f1712a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < bVar.f1713d; i6++) {
            int iZ2 = z(bVar.b + (i * i6), bVar.f1712a);
            int i7 = bVar.f1712a;
            if (i7 == 2 ? iZ2 == iZ : i7 == 4 && iZ2 == iZ + 1) {
                i5++;
            } else {
                b bVarA = a(i7, iZ, i5, bVar.c);
                l(bVarA, i3);
                b(bVarA);
                if (bVar.f1712a == 4) {
                    i3 += i5;
                }
                iZ = iZ2;
                i5 = 1;
            }
        }
        Object obj = bVar.c;
        b(bVar);
        if (i5 > 0) {
            b bVarA2 = a(bVar.f1712a, iZ, i5, obj);
            l(bVarA2, i3);
            b(bVarA2);
        }
    }

    private void v(b bVar) {
        this.c.add(bVar);
        int i = bVar.f1712a;
        if (i == 1) {
            this.f1707d.g(bVar.b, bVar.f1713d);
            return;
        }
        if (i == 2) {
            this.f1707d.d(bVar.b, bVar.f1713d);
            return;
        }
        if (i == 4) {
            this.f1707d.e(bVar.b, bVar.f1713d, bVar.c);
        } else {
            if (i == 8) {
                this.f1707d.a(bVar.b, bVar.f1713d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    private int z(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.c.size() - 1; size >= 0; size--) {
            b bVar = this.c.get(size);
            int i5 = bVar.f1712a;
            if (i5 == 8) {
                int i6 = bVar.b;
                int i7 = bVar.f1713d;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i < i4 || i > i3) {
                    if (i < i6) {
                        if (i2 == 1) {
                            bVar.b = i6 + 1;
                            bVar.f1713d = i7 + 1;
                        } else if (i2 == 2) {
                            bVar.b = i6 - 1;
                            bVar.f1713d = i7 - 1;
                        }
                    }
                } else if (i4 == i6) {
                    if (i2 == 1) {
                        bVar.f1713d = i7 + 1;
                    } else if (i2 == 2) {
                        bVar.f1713d = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        bVar.b = i6 + 1;
                    } else if (i2 == 2) {
                        bVar.b = i6 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = bVar.b;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= bVar.f1713d;
                    } else if (i5 == 2) {
                        i += bVar.f1713d;
                    }
                } else if (i2 == 1) {
                    bVar.b = i8 + 1;
                } else if (i2 == 2) {
                    bVar.b = i8 - 1;
                }
            }
        }
        for (int size2 = this.c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.c.get(size2);
            if (bVar2.f1712a == 8) {
                int i9 = bVar2.f1713d;
                if (i9 == bVar2.b || i9 < 0) {
                    this.c.remove(size2);
                    b(bVar2);
                }
            } else if (bVar2.f1713d <= 0) {
                this.c.remove(size2);
                b(bVar2);
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.m.a
    public b a(int i, int i2, int i3, Object obj) {
        b bVarAcquire = this.f1706a.acquire();
        if (bVarAcquire == null) {
            return new b(i, i2, i3, obj);
        }
        bVarAcquire.f1712a = i;
        bVarAcquire.b = i2;
        bVarAcquire.f1713d = i3;
        bVarAcquire.c = obj;
        return bVarAcquire;
    }

    @Override // androidx.recyclerview.widget.m.a
    public void b(b bVar) {
        if (this.f1709f) {
            return;
        }
        bVar.c = null;
        this.f1706a.release(bVar);
    }

    public int e(int i) {
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.b.get(i2);
            int i3 = bVar.f1712a;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = bVar.b;
                    if (i4 <= i) {
                        int i5 = bVar.f1713d;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = bVar.b;
                    if (i6 == i) {
                        i = bVar.f1713d;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (bVar.f1713d <= i) {
                            i++;
                        }
                    }
                }
            } else if (bVar.b <= i) {
                i += bVar.f1713d;
            }
        }
        return i;
    }

    void i() {
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            this.f1707d.c(this.c.get(i));
        }
        x(this.c);
        this.f1711h = 0;
    }

    void j() {
        i();
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.b.get(i);
            int i2 = bVar.f1712a;
            if (i2 == 1) {
                this.f1707d.c(bVar);
                this.f1707d.g(bVar.b, bVar.f1713d);
            } else if (i2 == 2) {
                this.f1707d.c(bVar);
                this.f1707d.h(bVar.b, bVar.f1713d);
            } else if (i2 == 4) {
                this.f1707d.c(bVar);
                this.f1707d.e(bVar.b, bVar.f1713d, bVar.c);
            } else if (i2 == 8) {
                this.f1707d.c(bVar);
                this.f1707d.a(bVar.b, bVar.f1713d);
            }
            Runnable runnable = this.f1708e;
            if (runnable != null) {
                runnable.run();
            }
        }
        x(this.b);
        this.f1711h = 0;
    }

    void l(b bVar, int i) {
        this.f1707d.b(bVar);
        int i2 = bVar.f1712a;
        if (i2 == 2) {
            this.f1707d.h(i, bVar.f1713d);
        } else {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f1707d.e(i, bVar.f1713d, bVar.c);
        }
    }

    int m(int i) {
        return n(i, 0);
    }

    int n(int i, int i2) {
        int size = this.c.size();
        while (i2 < size) {
            b bVar = this.c.get(i2);
            int i3 = bVar.f1712a;
            if (i3 == 8) {
                int i4 = bVar.b;
                if (i4 == i) {
                    i = bVar.f1713d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (bVar.f1713d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = bVar.b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = bVar.f1713d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += bVar.f1713d;
                }
            }
            i2++;
        }
        return i;
    }

    boolean o(int i) {
        return (i & this.f1711h) != 0;
    }

    boolean p() {
        return this.b.size() > 0;
    }

    boolean q() {
        return (this.c.isEmpty() || this.b.isEmpty()) ? false : true;
    }

    boolean r(int i, int i2, Object obj) {
        if (i2 < 1) {
            return false;
        }
        this.b.add(a(4, i, i2, obj));
        this.f1711h |= 4;
        return this.b.size() == 1;
    }

    boolean s(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.b.add(a(1, i, i2, null));
        this.f1711h |= 1;
        return this.b.size() == 1;
    }

    boolean t(int i, int i2, int i3) {
        if (i == i2) {
            return false;
        }
        if (i3 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.b.add(a(8, i, i2, null));
        this.f1711h |= 8;
        return this.b.size() == 1;
    }

    boolean u(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.b.add(a(2, i, i2, null));
        this.f1711h |= 2;
        return this.b.size() == 1;
    }

    void w() {
        this.f1710g.b(this.b);
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.b.get(i);
            int i2 = bVar.f1712a;
            if (i2 == 1) {
                c(bVar);
            } else if (i2 == 2) {
                f(bVar);
            } else if (i2 == 4) {
                g(bVar);
            } else if (i2 == 8) {
                d(bVar);
            }
            Runnable runnable = this.f1708e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.b.clear();
    }

    void x(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            b(list.get(i));
        }
        list.clear();
    }

    void y() {
        x(this.b);
        x(this.c);
        this.f1711h = 0;
    }

    a(InterfaceC0046a interfaceC0046a, boolean z) {
        this.f1706a = new androidx.core.util.f(30);
        this.b = new ArrayList<>();
        this.c = new ArrayList<>();
        this.f1711h = 0;
        this.f1707d = interfaceC0046a;
        this.f1709f = z;
        this.f1710g = new m(this);
    }
}
