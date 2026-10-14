package androidx.collection;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class b<E> implements Collection<E>, Set<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f560e = new int[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object[] f561f = new Object[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Object[] f562g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f563h;
    private static Object[] i;
    private static int j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f564a;
    Object[] b;
    int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f<E, E> f565d;

    class a extends f<E, E> {
        a() {
        }

        @Override // androidx.collection.f
        protected void a() {
            b.this.clear();
        }

        @Override // androidx.collection.f
        protected Object b(int i, int i2) {
            return b.this.b[i];
        }

        @Override // androidx.collection.f
        protected Map<E, E> c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // androidx.collection.f
        protected int d() {
            return b.this.c;
        }

        @Override // androidx.collection.f
        protected int e(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // androidx.collection.f
        protected int f(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // androidx.collection.f
        protected void g(E e2, E e3) {
            b.this.add(e2);
        }

        @Override // androidx.collection.f
        protected void h(int i) {
            b.this.m(i);
        }

        @Override // androidx.collection.f
        protected E i(int i, E e2) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public b() {
        this(0);
    }

    private void a(int i2) {
        if (i2 == 8) {
            synchronized (b.class) {
                Object[] objArr = i;
                if (objArr != null) {
                    this.b = objArr;
                    i = (Object[]) objArr[0];
                    this.f564a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    j--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (b.class) {
                Object[] objArr2 = f562g;
                if (objArr2 != null) {
                    this.b = objArr2;
                    f562g = (Object[]) objArr2[0];
                    this.f564a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f563h--;
                    return;
                }
            }
        }
        this.f564a = new int[i2];
        this.b = new Object[i2];
    }

    private static void f(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (j < 10) {
                    objArr[0] = i;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    i = objArr;
                    j++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                if (f563h < 10) {
                    objArr[0] = f562g;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f562g = objArr;
                    f563h++;
                }
            }
        }
    }

    private f<E, E> i() {
        if (this.f565d == null) {
            this.f565d = new a();
        }
        return this.f565d;
    }

    private int j(Object obj, int i2) {
        int i3 = this.c;
        if (i3 == 0) {
            return -1;
        }
        int iA = c.a(this.f564a, i3, i2);
        if (iA < 0 || obj.equals(this.b[iA])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.f564a[i4] == i2) {
            if (obj.equals(this.b[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.f564a[i5] == i2; i5--) {
            if (obj.equals(this.b[i5])) {
                return i5;
            }
        }
        return ~i4;
    }

    private int l() {
        int i2 = this.c;
        if (i2 == 0) {
            return -1;
        }
        int iA = c.a(this.f564a, i2, 0);
        if (iA < 0 || this.b[iA] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.f564a[i3] == 0) {
            if (this.b[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.f564a[i4] == 0; i4--) {
            if (this.b[i4] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e2) {
        int i2;
        int iJ;
        if (e2 == null) {
            iJ = l();
            i2 = 0;
        } else {
            int iHashCode = e2.hashCode();
            i2 = iHashCode;
            iJ = j(e2, iHashCode);
        }
        if (iJ >= 0) {
            return false;
        }
        int i3 = ~iJ;
        int i4 = this.c;
        int[] iArr = this.f564a;
        if (i4 >= iArr.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            Object[] objArr = this.b;
            a(i5);
            int[] iArr2 = this.f564a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.b, 0, objArr.length);
            }
            f(iArr, objArr, this.c);
        }
        int i6 = this.c;
        if (i3 < i6) {
            int[] iArr3 = this.f564a;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.b;
            System.arraycopy(objArr2, i3, objArr2, i7, this.c - i3);
        }
        this.f564a[i3] = i2;
        this.b[i3] = e2;
        this.c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        b(this.c + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public void b(int i2) {
        int[] iArr = this.f564a;
        if (iArr.length < i2) {
            Object[] objArr = this.b;
            a(i2);
            int i3 = this.c;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f564a, 0, i3);
                System.arraycopy(objArr, 0, this.b, 0, this.c);
            }
            f(iArr, objArr, this.c);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.c;
        if (i2 != 0) {
            f(this.f564a, this.b, i2);
            this.f564a = f560e;
            this.b = f561f;
            this.c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.c; i2++) {
                try {
                    if (!set.contains(n(i2))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f564a;
        int i2 = this.c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(Object obj) {
        return obj == null ? l() : j(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return i().m().iterator();
    }

    public E m(int i2) {
        Object[] objArr = this.b;
        E e2 = (E) objArr[i2];
        int i3 = this.c;
        if (i3 <= 1) {
            f(this.f564a, objArr, i3);
            this.f564a = f560e;
            this.b = f561f;
            this.c = 0;
        } else {
            int[] iArr = this.f564a;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                int i4 = i3 - 1;
                this.c = i4;
                if (i2 < i4) {
                    int i5 = i2 + 1;
                    System.arraycopy(iArr, i5, iArr, i2, i4 - i2);
                    Object[] objArr2 = this.b;
                    System.arraycopy(objArr2, i5, objArr2, i2, this.c - i2);
                }
                this.b[this.c] = null;
            } else {
                a(i3 > 8 ? i3 + (i3 >> 1) : 8);
                this.c--;
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.f564a, 0, i2);
                    System.arraycopy(objArr, 0, this.b, 0, i2);
                }
                int i6 = this.c;
                if (i2 < i6) {
                    int i7 = i2 + 1;
                    System.arraycopy(iArr, i7, this.f564a, i2, i6 - i2);
                    System.arraycopy(objArr, i7, this.b, i2, this.c - i2);
                }
            }
        }
        return e2;
    }

    public E n(int i2) {
        return (E) this.b[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        m(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.c - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.b[i2])) {
                m(i2);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.c;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i2 = this.c;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.b, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.c * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eN = n(i2);
            if (eN != this) {
                sb.append(eN);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public b(int i2) {
        if (i2 == 0) {
            this.f564a = f560e;
            this.b = f561f;
        } else {
            a(i2);
        }
        this.c = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.c) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.c));
        }
        System.arraycopy(this.b, 0, tArr, 0, this.c);
        int length = tArr.length;
        int i2 = this.c;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }
}
