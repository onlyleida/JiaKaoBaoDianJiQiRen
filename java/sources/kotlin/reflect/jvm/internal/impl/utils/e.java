package kotlin.reflect.jvm.internal.impl.utils;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.u0;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class e<T> extends AbstractSet<T> {
    public static final b c = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f15753a;
    private int b;

    private static final class a<T> implements Iterator<T>, Object {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Iterator<T> f15754a;

        public a(T[] array) {
            r.e(array, "array");
            this.f15754a = h.a(array);
        }

        public Void c() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15754a.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            return this.f15754a.next();
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            c();
            throw null;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(o oVar) {
            this();
        }

        public final <T> e<T> a() {
            return new e<>(null);
        }

        public final <T> e<T> b(Collection<? extends T> set) {
            r.e(set, "set");
            e<T> eVar = new e<>(null);
            eVar.addAll(set);
            return eVar;
        }
    }

    private static final class c<T> implements Iterator<T>, Object {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final T f15755a;
        private boolean b = true;

        public c(T t) {
            this.f15755a = t;
        }

        public Void c() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.b) {
                throw new NoSuchElementException();
            }
            this.b = false;
            return this.f15755a;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            c();
            throw null;
        }
    }

    private e() {
    }

    public /* synthetic */ e(o oVar) {
        this();
    }

    public static final <T> e<T> a() {
        return c.a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(T t) {
        Object obj;
        if (size() == 0) {
            this.f15753a = t;
        } else if (size() == 1) {
            if (r.a(this.f15753a, t)) {
                return false;
            }
            this.f15753a = new Object[]{this.f15753a, t};
        } else if (size() < 5) {
            Object obj2 = this.f15753a;
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            Object[] objArr = (Object[]) obj2;
            if (ArraysKt___ArraysKt.q(objArr, t)) {
                return false;
            }
            if (size() == 4) {
                LinkedHashSet linkedHashSetD = u0.d(Arrays.copyOf(objArr, objArr.length));
                linkedHashSetD.add(t);
                v vVar = v.f15822a;
                obj = linkedHashSetD;
            } else {
                Object[] objArrCopyOf = Arrays.copyOf(objArr, size() + 1);
                r.d(objArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
                objArrCopyOf[objArrCopyOf.length - 1] = t;
                v vVar2 = v.f15822a;
                obj = objArrCopyOf;
            }
            this.f15753a = obj;
        } else {
            Object obj3 = this.f15753a;
            Objects.requireNonNull(obj3, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
            if (!z.d(obj3).add(t)) {
                return false;
            }
        }
        f(size() + 1);
        return true;
    }

    public int b() {
        return this.b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f15753a = null;
        f(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (size() == 0) {
            return false;
        }
        if (size() == 1) {
            return r.a(this.f15753a, obj);
        }
        if (size() < 5) {
            Object obj2 = this.f15753a;
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return ArraysKt___ArraysKt.q((Object[]) obj2, obj);
        }
        Object obj3 = this.f15753a;
        Objects.requireNonNull(obj3, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>");
        return ((Set) obj3).contains(obj);
    }

    public void f(int i) {
        this.b = i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<T> iterator() {
        if (size() == 0) {
            return Collections.emptySet().iterator();
        }
        if (size() == 1) {
            return new c(this.f15753a);
        }
        if (size() < 5) {
            Object obj = this.f15753a;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return new a((Object[]) obj);
        }
        Object obj2 = this.f15753a;
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
        return z.d(obj2).iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return b();
    }
}
