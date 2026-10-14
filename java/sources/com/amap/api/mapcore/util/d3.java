package com.amap.api.mapcore.util;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class d3<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<K, V> f10642a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10645f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10646g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10647h;

    public d3(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = i;
        this.f10642a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private void d(int i) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.b >= 0 && this.f10642a.isEmpty()) {
                    int i2 = this.b;
                }
                if (this.b <= i) {
                    return;
                }
                Iterator<Map.Entry<K, V>> it = this.f10642a.entrySet().iterator();
                Map.Entry<K, V> next = null;
                while (it.hasNext()) {
                    next = it.next();
                }
                if (next == null) {
                    return;
                }
                key = next.getKey();
                value = next.getValue();
                this.f10642a.remove(key);
                this.b -= h(key, value);
                this.f10645f++;
            }
            e(true, key, value, null);
        }
    }

    private int h(K k, V v) {
        int iF = f(k, v);
        if (iF >= 0) {
            return iF;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public final V a(K k) {
        V vPut;
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            V v = this.f10642a.get(k);
            if (v != null) {
                this.f10646g++;
                return v;
            }
            this.f10647h++;
            V vG = g(k);
            if (vG == null) {
                return null;
            }
            synchronized (this) {
                this.f10644e++;
                vPut = this.f10642a.put(k, vG);
                if (vPut != null) {
                    this.f10642a.put(k, vPut);
                } else {
                    this.b += h(k, vG);
                }
            }
            if (vPut != null) {
                e(false, k, vG, vPut);
                return vPut;
            }
            d(this.c);
            return vG;
        }
    }

    public final V b(K k, V v) {
        V vPut;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f10643d++;
            this.b += h(k, v);
            vPut = this.f10642a.put(k, v);
            if (vPut != null) {
                this.b -= h(k, vPut);
            }
        }
        if (vPut != null) {
            e(false, k, vPut, v);
        }
        d(this.c);
        return vPut;
    }

    public final void c() {
        d(-1);
    }

    protected void e(boolean z, K k, V v, V v2) {
        throw null;
    }

    protected int f(K k, V v) {
        throw null;
    }

    protected V g(K k) {
        return null;
    }

    public final synchronized String toString() {
        int i;
        int i2;
        i = this.f10646g;
        i2 = this.f10647h + i;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.c), Integer.valueOf(this.f10646g), Integer.valueOf(this.f10647h), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }
}
