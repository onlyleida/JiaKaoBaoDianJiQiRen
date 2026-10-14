package androidx.collection;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a<K, V> extends g<K, V> implements Map<K, V> {
    f<K, V> mCollections;

    /* JADX INFO: renamed from: androidx.collection.a$a, reason: collision with other inner class name */
    class C0014a extends f<K, V> {
        C0014a() {
        }

        @Override // androidx.collection.f
        protected void a() {
            a.this.clear();
        }

        @Override // androidx.collection.f
        protected Object b(int i, int i2) {
            return a.this.mArray[(i << 1) + i2];
        }

        @Override // androidx.collection.f
        protected Map<K, V> c() {
            return a.this;
        }

        @Override // androidx.collection.f
        protected int d() {
            return a.this.mSize;
        }

        @Override // androidx.collection.f
        protected int e(Object obj) {
            return a.this.indexOfKey(obj);
        }

        @Override // androidx.collection.f
        protected int f(Object obj) {
            return a.this.indexOfValue(obj);
        }

        @Override // androidx.collection.f
        protected void g(K k, V v) {
            a.this.put(k, v);
        }

        @Override // androidx.collection.f
        protected void h(int i) {
            a.this.removeAt(i);
        }

        @Override // androidx.collection.f
        protected V i(int i, V v) {
            return a.this.setValueAt(i, v);
        }
    }

    public a() {
    }

    private f<K, V> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new C0014a();
        }
        return this.mCollections;
    }

    public boolean containsAll(Collection<?> collection) {
        return f.j(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return getCollection().l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return getCollection().m();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.mSize + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(Collection<?> collection) {
        return f.o(this, collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return f.p(this, collection);
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return getCollection().n();
    }

    public a(int i) {
        super(i);
    }

    public a(g gVar) {
        super(gVar);
    }
}
