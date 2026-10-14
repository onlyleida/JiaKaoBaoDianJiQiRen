package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import kotlinx.coroutines.internal.d0;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public class c0<T extends d0 & Comparable<? super T>> {
    private volatile int _size = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T[] f16010a;

    private final T[] f() {
        T[] tArr = this.f16010a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new d0[4];
            this.f16010a = tArr2;
            return tArr2;
        }
        if (c() < tArr.length) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, c() * 2);
        kotlin.jvm.internal.r.d(objArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
        T[] tArr3 = (T[]) ((d0[]) objArrCopyOf);
        this.f16010a = tArr3;
        return tArr3;
    }

    private final void j(int i) {
        this._size = i;
    }

    private final void k(int i) {
        while (true) {
            int i2 = (i * 2) + 1;
            if (i2 >= c()) {
                return;
            }
            T[] tArr = this.f16010a;
            kotlin.jvm.internal.r.c(tArr);
            int i3 = i2 + 1;
            if (i3 < c()) {
                T t = tArr[i3];
                kotlin.jvm.internal.r.c(t);
                T t2 = tArr[i2];
                kotlin.jvm.internal.r.c(t2);
                if (((Comparable) t).compareTo(t2) < 0) {
                    i2 = i3;
                }
            }
            T t3 = tArr[i];
            kotlin.jvm.internal.r.c(t3);
            T t4 = tArr[i2];
            kotlin.jvm.internal.r.c(t4);
            if (((Comparable) t3).compareTo(t4) <= 0) {
                return;
            }
            m(i, i2);
            i = i2;
        }
    }

    private final void l(int i) {
        while (i > 0) {
            T[] tArr = this.f16010a;
            kotlin.jvm.internal.r.c(tArr);
            int i2 = (i - 1) / 2;
            T t = tArr[i2];
            kotlin.jvm.internal.r.c(t);
            T t2 = tArr[i];
            kotlin.jvm.internal.r.c(t2);
            if (((Comparable) t).compareTo(t2) <= 0) {
                return;
            }
            m(i, i2);
            i = i2;
        }
    }

    private final void m(int i, int i2) {
        T[] tArr = this.f16010a;
        kotlin.jvm.internal.r.c(tArr);
        T t = tArr[i2];
        kotlin.jvm.internal.r.c(t);
        T t2 = tArr[i];
        kotlin.jvm.internal.r.c(t2);
        tArr[i] = t;
        tArr[i2] = t2;
        t.setIndex(i);
        t2.setIndex(i2);
    }

    public final void a(T t) {
        if (l0.a()) {
            if (!(t.c() == null)) {
                throw new AssertionError();
            }
        }
        t.a(this);
        d0[] d0VarArrF = f();
        int iC = c();
        j(iC + 1);
        d0VarArrF[iC] = t;
        t.setIndex(iC);
        l(iC);
    }

    public final T b() {
        T[] tArr = this.f16010a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int c() {
        return this._size;
    }

    public final boolean d() {
        return c() == 0;
    }

    public final T e() {
        T t;
        synchronized (this) {
            t = (T) b();
        }
        return t;
    }

    public final boolean g(T t) {
        boolean z;
        synchronized (this) {
            z = true;
            if (t.c() == null) {
                z = false;
            } else {
                int iH = t.h();
                if (l0.a()) {
                    if (!(iH >= 0)) {
                        throw new AssertionError();
                    }
                }
                h(iH);
            }
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    public final T h(int i) {
        if (l0.a()) {
            if (!(c() > 0)) {
                throw new AssertionError();
            }
        }
        T[] tArr = this.f16010a;
        kotlin.jvm.internal.r.c(tArr);
        j(c() - 1);
        if (i < c()) {
            m(i, c());
            int i2 = (i - 1) / 2;
            if (i > 0) {
                T t = tArr[i];
                kotlin.jvm.internal.r.c(t);
                T t2 = tArr[i2];
                kotlin.jvm.internal.r.c(t2);
                if (((Comparable) t).compareTo(t2) < 0) {
                    m(i, i2);
                    l(i2);
                } else {
                    k(i);
                }
            } else {
                k(i);
            }
        }
        T t3 = tArr[c()];
        kotlin.jvm.internal.r.c(t3);
        if (l0.a()) {
            if (!(t3.c() == this)) {
                throw new AssertionError();
            }
        }
        t3.a(null);
        t3.setIndex(-1);
        tArr[c()] = null;
        return t3;
    }

    public final T i() {
        T t;
        synchronized (this) {
            t = c() > 0 ? (T) h(0) : null;
        }
        return t;
    }
}
