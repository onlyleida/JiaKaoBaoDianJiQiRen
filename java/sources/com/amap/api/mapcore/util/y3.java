package com.amap.api.mapcore.util;

import com.amap.api.mapcore.util.y3;

/* JADX INFO: loaded from: classes5.dex */
public class y3<T extends y3<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public T f11366a;

    public static <T extends y3<?>> T a(T t, T t2) {
        if (t2.f11366a != null) {
            throw new IllegalArgumentException("'item' is a list");
        }
        t2.f11366a = t;
        return t2;
    }
}
