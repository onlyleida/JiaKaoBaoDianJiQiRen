package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class i extends j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n f15429e;

    static class b<K> implements Map.Entry<K, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Map.Entry<K, i> f15430a;

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f15430a.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            i value = this.f15430a.getValue();
            if (value == null) {
                return null;
            }
            return value.e();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof n) {
                return this.f15430a.getValue().d((n) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }

        private b(Map.Entry<K, i> entry) {
            this.f15430a = entry;
        }
    }

    static class c<K> implements Iterator<Map.Entry<K, Object>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Iterator<Map.Entry<K, Object>> f15431a;

        public c(Iterator<Map.Entry<K, Object>> it) {
            this.f15431a = it;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f15431a.next();
            return next.getValue() instanceof i ? new b(next) : next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15431a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f15431a.remove();
        }
    }

    public n e() {
        return c(this.f15429e);
    }

    public boolean equals(Object obj) {
        return e().equals(obj);
    }

    public int hashCode() {
        return e().hashCode();
    }

    public String toString() {
        return e().toString();
    }
}
