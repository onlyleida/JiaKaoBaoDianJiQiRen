package androidx.arch.core.b;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a<K, V> extends b<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap<K, b.c<K, V>> f531e = new HashMap<>();

    @Override // androidx.arch.core.b.b
    protected b.c<K, V> b(K k) {
        return this.f531e.get(k);
    }

    public boolean contains(K k) {
        return this.f531e.containsKey(k);
    }

    @Override // androidx.arch.core.b.b
    public V l(K k, V v) {
        b.c<K, V> cVarB = b(k);
        if (cVarB != null) {
            return cVarB.b;
        }
        this.f531e.put(k, j(k, v));
        return null;
    }

    @Override // androidx.arch.core.b.b
    public V m(K k) {
        V v = (V) super.m(k);
        this.f531e.remove(k);
        return v;
    }

    public Map.Entry<K, V> n(K k) {
        if (contains(k)) {
            return this.f531e.get(k).f535d;
        }
        return null;
    }
}
