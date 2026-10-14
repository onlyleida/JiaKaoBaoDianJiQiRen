package com.amap.api.mapcore.util;

import com.amap.api.mapcore.util.y3;

/* JADX INFO: loaded from: classes5.dex */
public abstract class x3<T extends y3<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected T f11337a;

    protected boolean a(T t) {
        return true;
    }

    public T b(T t) {
        if (t == null) {
            return null;
        }
        while (t != null) {
            Object obj = t.f11366a;
            a(t);
            t.f11366a = this.f11337a;
            this.f11337a = t;
            t = (T) obj;
        }
        return null;
    }
}
