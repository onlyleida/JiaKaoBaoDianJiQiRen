package com.amap.api.mapcore.util;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class n6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m5 f11030a;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Map<String, n6> f11031a = new HashMap();
    }

    private n6(m5 m5Var) {
        this.f11030a = m5Var;
    }

    public static n6 a(m5 m5Var) {
        if (a.f11031a.get(m5Var.a()) == null) {
            a.f11031a.put(m5Var.a(), new n6(m5Var));
        }
        return a.f11031a.get(m5Var.a());
    }

    public void b(Context context, boolean z, boolean z2) {
        m5 m5Var = this.f11030a;
        StringBuilder sb = new StringBuilder();
        sb.append(z);
        r6.b(context, m5Var, "sckey", sb.toString());
        if (z) {
            m5 m5Var2 = this.f11030a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(z2);
            r6.b(context, m5Var2, "scisf", sb2.toString());
        }
    }

    public boolean c(Context context) {
        try {
            return Boolean.parseBoolean(r6.a(context, this.f11030a, "sckey"));
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean d(Context context) {
        try {
            return Boolean.parseBoolean(r6.a(context, this.f11030a, "scisf"));
        } catch (Throwable unused) {
            return true;
        }
    }
}
