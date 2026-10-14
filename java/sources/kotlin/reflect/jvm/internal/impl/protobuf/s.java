package kotlin.reflect.jvm.internal.impl.protobuf;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
class s<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f15449a;
    private List<s<K, V>.c> b;
    private Map<K, V> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f15450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile s<K, V>.e f15451e;

    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    static class a<FieldDescriptorType> extends s<FieldDescriptorType, Object> {
        a(int i) {
            super(i, null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.s
        public void n() {
            if (!m()) {
                for (int i = 0; i < j(); i++) {
                    Map.Entry<FieldDescriptorType, Object> entryI = i(i);
                    if (((g.b) entryI.getKey()).i()) {
                        entryI.setValue(Collections.unmodifiableList((List) entryI.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : k()) {
                    if (((g.b) entry.getKey()).i()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.n();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.p((g.b) obj, obj2);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Iterator<Object> f15452a = new a();
        private static final Iterable<Object> b = new C0347b();

        static class a implements Iterator<Object> {
            a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.s$b$b, reason: collision with other inner class name */
        static class C0347b implements Iterable<Object> {
            C0347b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return b.f15452a;
            }
        }

        static <T> Iterable<T> b() {
            return (Iterable<T>) b;
        }
    }

    private class c implements Comparable<s<K, V>.c>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final K f15453a;
        private V b;

        c(s sVar, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        private boolean b(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(s<K, V>.c cVar) {
            return getKey().compareTo(cVar.getKey());
        }

        @Override // java.util.Map.Entry
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public K getKey() {
            return this.f15453a;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return b(this.f15453a, entry.getKey()) && b(this.b, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f15453a;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.b;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            s.this.g();
            V v2 = this.b;
            this.b = v;
            return v2;
        }

        public String toString() {
            String strValueOf = String.valueOf(String.valueOf(this.f15453a));
            String strValueOf2 = String.valueOf(String.valueOf(this.b));
            StringBuilder sb = new StringBuilder(strValueOf.length() + 1 + strValueOf2.length());
            sb.append(strValueOf);
            sb.append("=");
            sb.append(strValueOf2);
            return sb.toString();
        }

        c(K k, V v) {
            this.f15453a = k;
            this.b = v;
        }
    }

    private class e extends AbstractSet<Map.Entry<K, V>> {
        private e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            s.this.p(entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = s.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d(s.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            s.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.size();
        }

        /* synthetic */ e(s sVar, a aVar) {
            this();
        }
    }

    /* synthetic */ s(int i, a aVar) {
        this(i);
    }

    private int f(K k) {
        int size = this.b.size() - 1;
        if (size >= 0) {
            int iCompareTo = k.compareTo(this.b.get(size).getKey());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int iCompareTo2 = k.compareTo(this.b.get(i2).getKey());
            if (iCompareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f15450d) {
            throw new UnsupportedOperationException();
        }
    }

    private void h() {
        g();
        if (!this.b.isEmpty() || (this.b instanceof ArrayList)) {
            return;
        }
        this.b = new ArrayList(this.f15449a);
    }

    private SortedMap<K, V> l() {
        g();
        if (this.c.isEmpty() && !(this.c instanceof TreeMap)) {
            this.c = new TreeMap();
        }
        return (SortedMap) this.c;
    }

    static <FieldDescriptorType extends g.b<FieldDescriptorType>> s<FieldDescriptorType, Object> o(int i) {
        return new a(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V q(int i) {
        g();
        V value = this.b.remove(i).getValue();
        if (!this.c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = l().entrySet().iterator();
            this.b.add(new c(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        g();
        if (!this.b.isEmpty()) {
            this.b.clear();
        }
        if (this.c.isEmpty()) {
            return;
        }
        this.c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return f(comparable) >= 0 || this.c.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f15451e == null) {
            this.f15451e = new e(this, null);
        }
        return this.f15451e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        return iF >= 0 ? this.b.get(iF).getValue() : this.c.get(comparable);
    }

    public Map.Entry<K, V> i(int i) {
        return this.b.get(i);
    }

    public int j() {
        return this.b.size();
    }

    public Iterable<Map.Entry<K, V>> k() {
        return this.c.isEmpty() ? b.b() : this.c.entrySet();
    }

    public boolean m() {
        return this.f15450d;
    }

    public void n() {
        if (this.f15450d) {
            return;
        }
        this.c = this.c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.c);
        this.f15450d = true;
    }

    public V p(K k, V v) {
        g();
        int iF = f(k);
        if (iF >= 0) {
            return this.b.get(iF).setValue(v);
        }
        h();
        int i = -(iF + 1);
        if (i >= this.f15449a) {
            return l().put(k, v);
        }
        int size = this.b.size();
        int i2 = this.f15449a;
        if (size == i2) {
            s<K, V>.c cVarRemove = this.b.remove(i2 - 1);
            l().put(cVarRemove.getKey(), cVarRemove.getValue());
        }
        this.b.add(i, new c(k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        if (iF >= 0) {
            return q(iF);
        }
        if (this.c.isEmpty()) {
            return null;
        }
        return this.c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.b.size() + this.c.size();
    }

    private class d implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f15454a;
        private boolean b;
        private Iterator<Map.Entry<K, V>> c;

        private d() {
            this.f15454a = -1;
        }

        private Iterator<Map.Entry<K, V>> b() {
            if (this.c == null) {
                this.c = s.this.c.entrySet().iterator();
            }
            return this.c;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            this.b = true;
            int i = this.f15454a + 1;
            this.f15454a = i;
            return i < s.this.b.size() ? (Map.Entry) s.this.b.get(this.f15454a) : b().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15454a + 1 < s.this.b.size() || b().hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.b) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.b = false;
            s.this.g();
            if (this.f15454a >= s.this.b.size()) {
                b().remove();
                return;
            }
            s sVar = s.this;
            int i = this.f15454a;
            this.f15454a = i - 1;
            sVar.q(i);
        }

        /* synthetic */ d(s sVar, a aVar) {
            this();
        }
    }

    private s(int i) {
        this.f15449a = i;
        this.b = Collections.emptyList();
        this.c = Collections.emptyMap();
    }
}
