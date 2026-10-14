package kotlin.reflect.jvm.internal.pcollections;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes6.dex */
final class a<E> implements Iterable<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a<Object> f15761d = new a<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final E f15762a;
    final a<E> b;
    private final int c;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.pcollections.a$a, reason: collision with other inner class name */
    private static class C0363a<E> implements Iterator<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private a<E> f15763a;

        public C0363a(a<E> aVar) {
            this.f15763a = aVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return ((a) this.f15763a).c > 0;
        }

        @Override // java.util.Iterator
        public E next() {
            a<E> aVar = this.f15763a;
            E e2 = aVar.f15762a;
            this.f15763a = aVar.b;
            return e2;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private a() {
        this.c = 0;
        this.f15762a = null;
        this.b = null;
    }

    public static <E> a<E> b() {
        return (a<E>) f15761d;
    }

    private Iterator<E> f(int i) {
        return new C0363a(m(i));
    }

    private a<E> j(Object obj) {
        if (this.c == 0) {
            return this;
        }
        if (this.f15762a.equals(obj)) {
            return this.b;
        }
        a<E> aVarJ = this.b.j(obj);
        return aVarJ == this.b ? this : new a<>(this.f15762a, aVarJ);
    }

    private a<E> m(int i) {
        if (i < 0 || i > this.c) {
            throw new IndexOutOfBoundsException();
        }
        return i == 0 ? this : this.b.m(i - 1);
    }

    public E get(int i) {
        if (i < 0 || i > this.c) {
            throw new IndexOutOfBoundsException();
        }
        try {
            return f(i).next();
        } catch (NoSuchElementException unused) {
            throw new IndexOutOfBoundsException("Index: " + i);
        }
    }

    public a<E> i(int i) {
        return j(get(i));
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        return f(0);
    }

    public a<E> l(E e2) {
        return new a<>(e2, this);
    }

    public int size() {
        return this.c;
    }

    private a(E e2, a<E> aVar) {
        this.f15762a = e2;
        this.b = aVar;
        this.c = aVar.c + 1;
    }
}
