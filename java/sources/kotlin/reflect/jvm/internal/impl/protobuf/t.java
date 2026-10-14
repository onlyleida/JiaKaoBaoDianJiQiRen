package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes6.dex */
public class t extends AbstractList<String> implements RandomAccess, l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f15457a;

    class a implements ListIterator<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ListIterator<String> f15458a;
        final /* synthetic */ int b;

        a(int i) {
            this.b = i;
            this.f15458a = t.this.f15457a.listIterator(i);
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void add(String str) {
            b(str);
            throw null;
        }

        public void b(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public String next() {
            return this.f15458a.next();
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String previous() {
            return this.f15458a.previous();
        }

        public void e(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f15458a.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f15458a.hasPrevious();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f15458a.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f15458a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void set(String str) {
            e(str);
            throw null;
        }
    }

    class b implements Iterator<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Iterator<String> f15459a;

        b() {
            this.f15459a = t.this.f15457a.iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public String next() {
            return this.f15459a.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15459a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public t(l lVar) {
        this.f15457a = lVar;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String get(int i) {
        return this.f15457a.get(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    public List<?> c() {
        return this.f15457a.c();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    public d e(int i) {
        return this.f15457a.e(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    public void g(d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    public l k() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new a(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15457a.size();
    }
}
