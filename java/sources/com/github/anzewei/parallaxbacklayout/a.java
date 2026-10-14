package com.github.anzewei.parallaxbacklayout;

import java.util.LinkedHashMap;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes5.dex */
public class a<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinkedList<K> f11717a = new LinkedList<>();
    private LinkedHashMap<K, V> b = new LinkedHashMap<>();

    public K a(K k) {
        int iIndexOf = this.f11717a.indexOf(k);
        if (iIndexOf < 1) {
            return null;
        }
        return this.f11717a.get(iIndexOf - 1);
    }

    public void b(K k, V v) {
        this.f11717a.add(k);
        this.b.put(k, v);
    }

    public void c(K k) {
        this.f11717a.remove(k);
        this.b.remove(k);
    }

    public int d() {
        return this.f11717a.size();
    }
}
