package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class l0 {
    private static l0 c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m8 f10979a;
    private LinkedHashMap<String, n8> b = new LinkedHashMap<>();

    private l0(boolean z, int i) {
        if (z) {
            try {
                this.f10979a = m8.a(i);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static l0 a(int i) {
        return b(true, i);
    }

    private static synchronized l0 b(boolean z, int i) {
        try {
            l0 l0Var = c;
            if (l0Var == null) {
                c = new l0(z, i);
            } else if (z && l0Var.f10979a == null) {
                l0Var.f10979a = m8.a(i);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return c;
    }

    public static void h() {
        c = null;
    }

    public void c() {
        synchronized (this.b) {
            if (this.b.size() < 1) {
                return;
            }
            for (Map.Entry<String, n8> entry : this.b.entrySet()) {
                entry.getKey();
                ((h0) entry.getValue()).a();
            }
            this.b.clear();
        }
    }

    public void d(k0 k0Var) {
        synchronized (this.b) {
            h0 h0Var = (h0) this.b.get(k0Var.b());
            if (h0Var == null) {
                return;
            }
            h0Var.a();
            this.b.remove(k0Var.b());
        }
    }

    public void e(k0 k0Var, Context context, AMap aMap) throws gb {
        if (!this.b.containsKey(k0Var.b())) {
            h0 h0Var = new h0((b1) k0Var, context.getApplicationContext(), aMap);
            synchronized (this.b) {
                this.b.put(k0Var.b(), h0Var);
            }
        }
        this.f10979a.d(this.b.get(k0Var.b()));
    }

    public void f() {
        c();
        m8.b();
        this.f10979a = null;
        h();
    }

    public void g(k0 k0Var) {
        h0 h0Var = (h0) this.b.get(k0Var.b());
        if (h0Var != null) {
            synchronized (this.b) {
                h0Var.b();
                this.b.remove(k0Var.b());
            }
        }
    }
}
