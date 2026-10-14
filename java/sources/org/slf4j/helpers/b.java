package org.slf4j.helpers;

import com.mobile.auth.BuildConfig;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Queue;

/* JADX INFO: loaded from: classes6.dex */
public class b implements org.slf4j.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16311a;
    private volatile org.slf4j.b b;
    private Boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Method f16312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Queue<org.slf4j.event.b> f16313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f16314f;

    public b(String str, Queue<org.slf4j.event.b> queue, boolean z) {
        this.f16311a = str;
        this.f16313e = queue;
        this.f16314f = z;
    }

    public String a() {
        return this.f16311a;
    }

    public boolean b() {
        Boolean bool = this.c;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.f16312d = this.b.getClass().getMethod(BuildConfig.FLAVOR_type, org.slf4j.event.a.class);
            this.c = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.c = Boolean.FALSE;
        }
        return this.c.booleanValue();
    }

    public boolean c() {
        return this.b instanceof NOPLogger;
    }

    public boolean d() {
        return this.b == null;
    }

    public void e(org.slf4j.event.a aVar) {
        if (b()) {
            try {
                this.f16312d.invoke(this.b, aVar);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && b.class == obj.getClass() && this.f16311a.equals(((b) obj).f16311a);
    }

    public void f(org.slf4j.b bVar) {
        this.b = bVar;
    }

    public int hashCode() {
        return this.f16311a.hashCode();
    }
}
