package androidx.arch.core.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c<K, V> f532a;
    private c<K, V> b;
    private WeakHashMap<f<K, V>, Boolean> c = new WeakHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f533d = 0;

    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // androidx.arch.core.b.b.e
        c<K, V> c(c<K, V> cVar) {
            return cVar.f535d;
        }

        @Override // androidx.arch.core.b.b.e
        c<K, V> d(c<K, V> cVar) {
            return cVar.c;
        }
    }

    /* JADX INFO: renamed from: androidx.arch.core.b.b$b, reason: collision with other inner class name */
    private static class C0012b<K, V> extends e<K, V> {
        C0012b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // androidx.arch.core.b.b.e
        c<K, V> c(c<K, V> cVar) {
            return cVar.c;
        }

        @Override // androidx.arch.core.b.b.e
        c<K, V> d(c<K, V> cVar) {
            return cVar.f535d;
        }
    }

    static class c<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final K f534a;
        final V b;
        c<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c<K, V> f535d;

        c(K k, V v) {
            this.f534a = k;
            this.b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f534a.equals(cVar.f534a) && this.b.equals(cVar.b);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f534a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f534a.hashCode() ^ this.b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f534a + "=" + this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c<K, V> f536a;
        private boolean b = true;

        d() {
        }

        @Override // androidx.arch.core.b.b.f
        public void b(c<K, V> cVar) {
            c<K, V> cVar2 = this.f536a;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.f535d;
                this.f536a = cVar3;
                this.b = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (this.b) {
                this.b = false;
                this.f536a = b.this.f532a;
            } else {
                c<K, V> cVar = this.f536a;
                this.f536a = cVar != null ? cVar.c : null;
            }
            return this.f536a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.b) {
                return b.this.f532a != null;
            }
            c<K, V> cVar = this.f536a;
            return (cVar == null || cVar.c == null) ? false : true;
        }
    }

    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        c<K, V> f537a;
        c<K, V> b;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f537a = cVar2;
            this.b = cVar;
        }

        private c<K, V> f() {
            c<K, V> cVar = this.b;
            c<K, V> cVar2 = this.f537a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return d(cVar);
        }

        @Override // androidx.arch.core.b.b.f
        public void b(c<K, V> cVar) {
            if (this.f537a == cVar && cVar == this.b) {
                this.b = null;
                this.f537a = null;
            }
            c<K, V> cVar2 = this.f537a;
            if (cVar2 == cVar) {
                this.f537a = c(cVar2);
            }
            if (this.b == cVar) {
                this.b = f();
            }
        }

        abstract c<K, V> c(c<K, V> cVar);

        abstract c<K, V> d(c<K, V> cVar);

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.b;
            this.b = f();
            return cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b != null;
        }
    }

    interface f<K, V> {
        void b(c<K, V> cVar);
    }

    public Map.Entry<K, V> a() {
        return this.f532a;
    }

    protected c<K, V> b(K k) {
        c<K, V> cVar = this.f532a;
        while (cVar != null && !cVar.f534a.equals(k)) {
            cVar = cVar.c;
        }
        return cVar;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C0012b c0012b = new C0012b(this.b, this.f532a);
        this.c.put(c0012b, Boolean.FALSE);
        return c0012b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public b<K, V>.d f() {
        b<K, V>.d dVar = new d();
        this.c.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
    }

    public Map.Entry<K, V> i() {
        return this.b;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f532a, this.b);
        this.c.put(aVar, Boolean.FALSE);
        return aVar;
    }

    protected c<K, V> j(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.f533d++;
        c<K, V> cVar2 = this.b;
        if (cVar2 == null) {
            this.f532a = cVar;
            this.b = cVar;
            return cVar;
        }
        cVar2.c = cVar;
        cVar.f535d = cVar2;
        this.b = cVar;
        return cVar;
    }

    public V l(K k, V v) {
        c<K, V> cVarB = b(k);
        if (cVarB != null) {
            return cVarB.b;
        }
        j(k, v);
        return null;
    }

    public V m(K k) {
        c<K, V> cVarB = b(k);
        if (cVarB == null) {
            return null;
        }
        this.f533d--;
        if (!this.c.isEmpty()) {
            Iterator<f<K, V>> it = this.c.keySet().iterator();
            while (it.hasNext()) {
                it.next().b(cVarB);
            }
        }
        c<K, V> cVar = cVarB.f535d;
        if (cVar != null) {
            cVar.c = cVarB.c;
        } else {
            this.f532a = cVarB.c;
        }
        c<K, V> cVar2 = cVarB.c;
        if (cVar2 != null) {
            cVar2.f535d = cVar;
        } else {
            this.b = cVar;
        }
        cVarB.c = null;
        cVarB.f535d = null;
        return cVarB.b;
    }

    public int size() {
        return this.f533d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
