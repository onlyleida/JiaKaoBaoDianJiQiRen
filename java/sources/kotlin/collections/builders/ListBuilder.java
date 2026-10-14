package kotlin.collections.builders;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArrayDeque;
import kotlin.collections.k;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: kotlin.collections.b1.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005:\u0001QB\u0007\b\u0016¢\u0006\u0002\u0010\u0006B\u000f\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tBM\b\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000¢\u0006\u0002\u0010\u0012J\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0019J\u001d\u0010\u0017\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001cJ\u001e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0016J\u0016\u0010\u001d\u001a\u00020\u000f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0016J&\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001f2\u0006\u0010\"\u001a\u00020\bH\u0002J\u001d\u0010#\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\u001cJ\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%J\b\u0010&\u001a\u00020\u001aH\u0002J\b\u0010'\u001a\u00020\u001aH\u0016J\u0014\u0010(\u001a\u00020\u000f2\n\u0010)\u001a\u0006\u0012\u0002\b\u00030%H\u0002J\u0010\u0010*\u001a\u00020\u001a2\u0006\u0010+\u001a\u00020\bH\u0002J\u0010\u0010,\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\bH\u0002J\u0013\u0010-\u001a\u00020\u000f2\b\u0010)\u001a\u0004\u0018\u00010.H\u0096\u0002J\u0016\u0010/\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\bH\u0096\u0002¢\u0006\u0002\u00100J\b\u00101\u001a\u00020\bH\u0016J\u0015\u00102\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00103J\u0018\u00104\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\bH\u0002J\b\u00105\u001a\u00020\u000fH\u0016J\u000f\u00106\u001a\b\u0012\u0004\u0012\u00028\u000007H\u0096\u0002J\u0015\u00108\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00103J\u000e\u00109\u001a\b\u0012\u0004\u0012\u00028\u00000:H\u0016J\u0016\u00109\u001a\b\u0012\u0004\u0012\u00028\u00000:2\u0006\u0010\u001b\u001a\u00020\bH\u0016J\u0015\u0010;\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0019J\u0016\u0010<\u001a\u00020\u000f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0016J\u0015\u0010=\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0002\u00100J\u0015\u0010>\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\bH\u0002¢\u0006\u0002\u00100J\u0018\u0010?\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020\b2\u0006\u0010A\u001a\u00020\bH\u0002J\u0016\u0010B\u001a\u00020\u000f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0016J.\u0010C\u001a\u00020\b2\u0006\u0010@\u001a\u00020\b2\u0006\u0010A\u001a\u00020\b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001f2\u0006\u0010D\u001a\u00020\u000fH\u0002J\u001e\u0010E\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010FJ\u001e\u0010G\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010H\u001a\u00020\b2\u0006\u0010I\u001a\u00020\bH\u0016J\u0015\u0010J\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010.0\u000bH\u0016¢\u0006\u0002\u0010KJ'\u0010J\u001a\b\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\b\u0001\u0010L2\f\u0010M\u001a\b\u0012\u0004\u0012\u0002HL0\u000bH\u0016¢\u0006\u0002\u0010NJ\b\u0010O\u001a\u00020PH\u0016R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006R"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "()V", "initialCapacity", "", "(I)V", "array", "", "offset", "length", "isReadOnly", "", "backing", "root", "([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V", "[Ljava/lang/Object;", "size", "getSize", "()I", "add", "element", "(Ljava/lang/Object;)Z", "", "index", "(ILjava/lang/Object;)V", "addAll", "elements", "", "addAllInternal", "i", "n", "addAtInternal", "build", "", "checkIsMutable", "clear", "contentEquals", "other", "ensureCapacity", "minCapacity", "ensureExtraCapacity", "equals", "", "get", "(I)Ljava/lang/Object;", "hashCode", "indexOf", "(Ljava/lang/Object;)I", "insertAtInternal", "isEmpty", "iterator", "", "lastIndexOf", "listIterator", "", "remove", "removeAll", "removeAt", "removeAtInternal", "removeRangeInternal", "rangeOffset", "rangeLength", "retainAll", "retainOrRemoveAllInternal", "retain", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "subList", "fromIndex", "toIndex", "toArray", "()[Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "destination", "([Ljava/lang/Object;)[Ljava/lang/Object;", "toString", "", "Itr", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, KMutableList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private E[] f14594a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f14595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ListBuilder<E> f14596e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ListBuilder<E> f14597f;

    /* JADX INFO: renamed from: kotlin.collections.b1.b$a */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\b\u0016\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\fJ\t\u0010\r\u001a\u00020\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u000e\u0010\u0010\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0006H\u0016J\r\u0010\u0013\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0011J\b\u0010\u0014\u001a\u00020\u0006H\u0016J\b\u0010\u0015\u001a\u00020\nH\u0016J\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Itr;", ExifInterface.LONGITUDE_EAST, "", "list", "Lkotlin/collections/builders/ListBuilder;", "index", "", "(Lkotlin/collections/builders/ListBuilder;I)V", "lastIndex", "add", "", "element", "(Ljava/lang/Object;)V", "hasNext", "", "hasPrevious", "next", "()Ljava/lang/Object;", "nextIndex", "previous", "previousIndex", "remove", "set", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private static final class a<E> implements ListIterator<E>, Object {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ListBuilder<E> f14598a;
        private int b;
        private int c;

        public a(ListBuilder<E> list, int i) {
            r.e(list, "list");
            this.f14598a = list;
            this.b = i;
            this.c = -1;
        }

        @Override // java.util.ListIterator
        public void add(E element) {
            ListBuilder<E> listBuilder = this.f14598a;
            int i = this.b;
            this.b = i + 1;
            listBuilder.add(i, element);
            this.c = -1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.b < ((ListBuilder) this.f14598a).c;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            if (this.b >= ((ListBuilder) this.f14598a).c) {
                throw new NoSuchElementException();
            }
            int i = this.b;
            this.b = i + 1;
            this.c = i;
            return (E) ((ListBuilder) this.f14598a).f14594a[((ListBuilder) this.f14598a).b + this.c];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.b;
        }

        @Override // java.util.ListIterator
        public E previous() {
            int i = this.b;
            if (i <= 0) {
                throw new NoSuchElementException();
            }
            int i2 = i - 1;
            this.b = i2;
            this.c = i2;
            return (E) ((ListBuilder) this.f14598a).f14594a[((ListBuilder) this.f14598a).b + this.c];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            int i = this.c;
            if (!(i != -1)) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
            }
            this.f14598a.remove(i);
            this.b = this.c;
            this.c = -1;
        }

        @Override // java.util.ListIterator
        public void set(E element) {
            int i = this.c;
            if (!(i != -1)) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
            }
            this.f14598a.set(i, element);
        }
    }

    private ListBuilder(E[] eArr, int i, int i2, boolean z, ListBuilder<E> listBuilder, ListBuilder<E> listBuilder2) {
        this.f14594a = eArr;
        this.b = i;
        this.c = i2;
        this.f14595d = z;
        this.f14596e = listBuilder;
        this.f14597f = listBuilder2;
    }

    private final void m(int i, Collection<? extends E> collection, int i2) {
        ListBuilder<E> listBuilder = this.f14596e;
        if (listBuilder != null) {
            listBuilder.m(i, collection, i2);
            this.f14594a = this.f14596e.f14594a;
            this.c += i2;
        } else {
            t(i, i2);
            Iterator<? extends E> it = collection.iterator();
            for (int i3 = 0; i3 < i2; i3++) {
                this.f14594a[i + i3] = it.next();
            }
        }
    }

    private final void n(int i, E e2) {
        ListBuilder<E> listBuilder = this.f14596e;
        if (listBuilder == null) {
            t(i, 1);
            this.f14594a[i] = e2;
        } else {
            listBuilder.n(i, e2);
            this.f14594a = this.f14596e.f14594a;
            this.c++;
        }
    }

    private final void p() {
        ListBuilder<E> listBuilder;
        if (this.f14595d || ((listBuilder = this.f14597f) != null && listBuilder.f14595d)) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean q(List<?> list) {
        return c.h(this.f14594a, this.b, this.c, list);
    }

    private final void r(int i) {
        if (this.f14596e != null) {
            throw new IllegalStateException();
        }
        E[] eArr = this.f14594a;
        if (i > eArr.length) {
            this.f14594a = (E[]) c.e(this.f14594a, ArrayDeque.b.a(eArr.length, i));
        }
    }

    private final void s(int i) {
        r(this.c + i);
    }

    private final void t(int i, int i2) {
        s(i2);
        E[] eArr = this.f14594a;
        k.e(eArr, eArr, i + i2, i, this.b + this.c);
        this.c += i2;
    }

    private final E u(int i) {
        ListBuilder<E> listBuilder = this.f14596e;
        if (listBuilder != null) {
            E eU = listBuilder.u(i);
            this.c--;
            return eU;
        }
        E[] eArr = this.f14594a;
        E e2 = eArr[i];
        k.e(eArr, eArr, i, i + 1, this.b + this.c);
        c.f(this.f14594a, (this.b + this.c) - 1);
        this.c--;
        return e2;
    }

    private final void v(int i, int i2) {
        ListBuilder<E> listBuilder = this.f14596e;
        if (listBuilder != null) {
            listBuilder.v(i, i2);
        } else {
            E[] eArr = this.f14594a;
            k.e(eArr, eArr, i, i + i2, this.c);
            E[] eArr2 = this.f14594a;
            int i3 = this.c;
            c.g(eArr2, i3 - i2, i3);
        }
        this.c -= i2;
    }

    private final int w(int i, int i2, Collection<? extends E> collection, boolean z) {
        ListBuilder<E> listBuilder = this.f14596e;
        if (listBuilder != null) {
            int iW = listBuilder.w(i, i2, collection, z);
            this.c -= iW;
            return iW;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + i3;
            if (collection.contains(this.f14594a[i5]) == z) {
                E[] eArr = this.f14594a;
                i3++;
                eArr[i4 + i] = eArr[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        E[] eArr2 = this.f14594a;
        k.e(eArr2, eArr2, i + i4, i2 + i, this.c);
        E[] eArr3 = this.f14594a;
        int i7 = this.c;
        c.g(eArr3, i7 - i6, i7);
        this.c -= i6;
        return i6;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: a, reason: from getter */
    public int getC() {
        return this.c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        p();
        n(this.b + this.c, element);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        r.e(elements, "elements");
        p();
        int size = elements.size();
        m(this.b + this.c, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        p();
        v(this.b, this.c);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object other) {
        return other == this || ((other instanceof List) && q((List) other));
    }

    @Override // kotlin.collections.AbstractMutableList
    public E f(int i) {
        p();
        AbstractList.f14610a.a(i, this.c);
        return u(this.b + i);
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        AbstractList.f14610a.a(index, this.c);
        return this.f14594a[this.b + index];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return c.i(this.f14594a, this.b, this.c);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        for (int i = 0; i < this.c; i++) {
            if (r.a(this.f14594a[this.b + i], element)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new a(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        for (int i = this.c - 1; i >= 0; i--) {
            if (r.a(this.f14594a[this.b + i], element)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new a(this, 0);
    }

    public final List<E> o() {
        if (this.f14596e != null) {
            throw new IllegalStateException();
        }
        p();
        this.f14595d = true;
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        p();
        int iIndexOf = indexOf(element);
        if (iIndexOf >= 0) {
            remove(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<? extends Object> elements) {
        r.e(elements, "elements");
        p();
        return w(this.b, this.c, elements, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<? extends Object> elements) {
        r.e(elements, "elements");
        p();
        return w(this.b, this.c, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        p();
        AbstractList.f14610a.a(index, this.c);
        E[] eArr = this.f14594a;
        int i = this.b;
        E e2 = eArr[i + index];
        eArr[i + index] = element;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public List<E> subList(int fromIndex, int toIndex) {
        AbstractList.f14610a.c(fromIndex, toIndex, this.c);
        E[] eArr = this.f14594a;
        int i = this.b + fromIndex;
        int i2 = toIndex - fromIndex;
        boolean z = this.f14595d;
        ListBuilder<E> listBuilder = this.f14597f;
        return new ListBuilder(eArr, i, i2, z, this, listBuilder != null ? listBuilder : this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] destination) {
        r.e(destination, "destination");
        int length = destination.length;
        int i = this.c;
        if (length < i) {
            E[] eArr = this.f14594a;
            int i2 = this.b;
            T[] tArr = (T[]) Arrays.copyOfRange(eArr, i2, i + i2, destination.getClass());
            r.d(tArr, "java.util.Arrays.copyOfR…h, destination.javaClass)");
            return tArr;
        }
        E[] eArr2 = this.f14594a;
        Objects.requireNonNull(eArr2, "null cannot be cast to non-null type kotlin.Array<T>");
        int i3 = this.b;
        k.e(eArr2, destination, 0, i3, i + i3);
        int length2 = destination.length;
        int i4 = this.c;
        if (length2 > i4) {
            destination[i4] = null;
        }
        return destination;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return c.j(this.f14594a, this.b, this.c);
    }

    public ListBuilder() {
        this(10);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int index) {
        AbstractList.f14610a.b(index, this.c);
        return new a(this, index);
    }

    public ListBuilder(int i) {
        this(c.d(i), 0, 0, false, null, null);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        p();
        AbstractList.f14610a.b(index, this.c);
        n(this.b + index, element);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        r.e(elements, "elements");
        p();
        AbstractList.f14610a.b(index, this.c);
        int size = elements.size();
        m(this.b + index, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        E[] eArr = this.f14594a;
        int i = this.b;
        Object[] objArrG = k.g(eArr, i, this.c + i);
        Objects.requireNonNull(objArrG, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        return objArrG;
    }
}
