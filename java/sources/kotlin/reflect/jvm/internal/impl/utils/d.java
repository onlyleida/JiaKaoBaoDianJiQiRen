package kotlin.reflect.jvm.internal.impl.utils;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes6.dex */
public class d<E> extends AbstractList<E> implements RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f15750a;
    private Object b;

    private static class b<T> implements Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f15751a = new b();

        private b() {
        }

        public static <T> b<T> b() {
            return f15751a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new IllegalStateException();
        }
    }

    private class c extends AbstractC0362d<E> {
        private final int b;

        public c() {
            super();
            this.b = ((AbstractList) d.this).modCount;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.d.AbstractC0362d
        protected void b() {
            if (((AbstractList) d.this).modCount == this.b) {
                return;
            }
            throw new ConcurrentModificationException("ModCount: " + ((AbstractList) d.this).modCount + "; expected: " + this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.d.AbstractC0362d
        protected E c() {
            return (E) d.this.b;
        }

        @Override // java.util.Iterator
        public void remove() {
            b();
            d.this.clear();
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.utils.d$d, reason: collision with other inner class name */
    private static abstract class AbstractC0362d<T> implements Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f15752a;

        private AbstractC0362d() {
        }

        protected abstract void b();

        protected abstract T c();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.f15752a;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f15752a) {
                throw new NoSuchElementException();
            }
            this.f15752a = true;
            b();
            return c();
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
                break;
            case 4:
                objArr[0] = "a";
                break;
            default:
                objArr[0] = "elements";
                break;
        }
        if (i == 2 || i == 3) {
            objArr[1] = "iterator";
        } else if (i == 5 || i == 6 || i == 7) {
            objArr[1] = "toArray";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
        }
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                break;
            case 4:
                objArr[2] = "toArray";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 5 && i != 6 && i != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e2) {
        int i = this.f15750a;
        if (i == 0) {
            this.b = e2;
        } else if (i == 1) {
            this.b = new Object[]{this.b, e2};
        } else {
            Object[] objArr = (Object[]) this.b;
            int length = objArr.length;
            if (i >= length) {
                int i2 = ((length * 3) / 2) + 1;
                int i3 = i + 1;
                if (i2 < i3) {
                    i2 = i3;
                }
                Object[] objArr2 = new Object[i2];
                this.b = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
                objArr = objArr2;
            }
            objArr[this.f15750a] = e2;
        }
        this.f15750a++;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.b = null;
        this.f15750a = 0;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.f15750a)) {
            return i2 == 1 ? (E) this.b : (E) ((Object[]) this.b)[i];
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f15750a);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        int i = this.f15750a;
        if (i == 0) {
            b bVarB = b.b();
            if (bVarB != null) {
                return bVarB;
            }
            a(2);
            throw null;
        }
        if (i == 1) {
            return new c();
        }
        Iterator<E> it = super.iterator();
        if (it != null) {
            return it;
        }
        a(3);
        throw null;
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        int i2;
        E e2;
        if (i < 0 || i >= (i2 = this.f15750a)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f15750a);
        }
        if (i2 == 1) {
            e2 = (E) this.b;
            this.b = null;
        } else {
            Object[] objArr = (Object[]) this.b;
            Object obj = objArr[i];
            if (i2 == 2) {
                this.b = objArr[1 - i];
            } else {
                int i3 = (i2 - i) - 1;
                if (i3 > 0) {
                    System.arraycopy(objArr, i + 1, objArr, i, i3);
                }
                objArr[this.f15750a - 1] = null;
            }
            e2 = (E) obj;
        }
        this.f15750a--;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e2) {
        int i2;
        if (i < 0 || i >= (i2 = this.f15750a)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f15750a);
        }
        if (i2 == 1) {
            E e3 = (E) this.b;
            this.b = e2;
            return e3;
        }
        Object[] objArr = (Object[]) this.b;
        E e4 = (E) objArr[i];
        objArr[i] = e2;
        return e4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15750a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] tArr) {
        if (tArr == 0) {
            a(4);
            throw null;
        }
        int length = tArr.length;
        int i = this.f15750a;
        if (i == 1) {
            if (length == 0) {
                T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
                tArr2[0] = this.b;
                if (tArr2 != 0) {
                    return tArr2;
                }
                a(5);
                throw null;
            }
            tArr[0] = this.b;
        } else {
            if (length < i) {
                T[] tArr3 = (T[]) Arrays.copyOf((Object[]) this.b, i, tArr.getClass());
                if (tArr3 != null) {
                    return tArr3;
                }
                a(6);
                throw null;
            }
            if (i != 0) {
                System.arraycopy(this.b, 0, tArr, 0, i);
            }
        }
        int i2 = this.f15750a;
        if (length > i2) {
            tArr[i2] = 0;
        }
        if (tArr != 0) {
            return tArr;
        }
        a(7);
        throw null;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e2) {
        int i2;
        if (i >= 0 && i <= (i2 = this.f15750a)) {
            if (i2 == 0) {
                this.b = e2;
            } else if (i2 == 1 && i == 0) {
                this.b = new Object[]{e2, this.b};
            } else {
                Object[] objArr = new Object[i2 + 1];
                if (i2 == 1) {
                    objArr[0] = this.b;
                } else {
                    Object[] objArr2 = (Object[]) this.b;
                    System.arraycopy(objArr2, 0, objArr, 0, i);
                    System.arraycopy(objArr2, i, objArr, i + 1, this.f15750a - i);
                }
                objArr[i] = e2;
                this.b = objArr;
            }
            this.f15750a++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f15750a);
    }
}
