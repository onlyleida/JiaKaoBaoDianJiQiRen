package com.amap.api.mapcore.util;

import android.content.Context;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class m6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h6 f11007a;
    private Context b;

    public m6(Context context, boolean z) {
        this.b = context;
        this.f11007a = a(context, z);
    }

    private h6 a(Context context, boolean z) {
        try {
            return new h6(context, h6.c(l6.class));
        } catch (Throwable th) {
            if (!z) {
                e6.r(th, "sd", "gdb");
            }
            return null;
        }
    }

    private boolean d(List<m5> list, m5 m5Var) {
        Iterator<m5> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().equals(m5Var)) {
                return false;
            }
        }
        return true;
    }

    public List<m5> b() {
        try {
            return this.f11007a.g(m5.l(), m5.class, true);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void c(m5 m5Var) {
        if (m5Var == null) {
            return;
        }
        try {
            if (this.f11007a == null) {
                this.f11007a = a(this.b, false);
            }
            String strB = m5.b(m5Var.a());
            List<m5> listU = this.f11007a.u(strB, m5.class);
            if (listU != null && listU.size() != 0) {
                if (d(listU, m5Var)) {
                    this.f11007a.n(strB, m5Var);
                    return;
                }
                return;
            }
            this.f11007a.i(m5Var);
        } catch (Throwable th) {
            e6.r(th, "sd", "it");
        }
    }
}
