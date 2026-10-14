package com.amap.api.mapcore.util;

import android.content.Context;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class r0 {
    private static volatile r0 b;
    private static h6 c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11116a;

    private r0(Context context) {
        this.f11116a = context;
        c = i(context);
    }

    public static r0 b(Context context) {
        if (b == null) {
            synchronized (r0.class) {
                if (b == null) {
                    b = new r0(context);
                }
            }
        }
        return b;
    }

    private List<String> d(List<o0> list) {
        ArrayList arrayList = new ArrayList();
        if (list.size() > 0) {
            Iterator<o0> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().a());
            }
        }
        return arrayList;
    }

    private void h(String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return;
        }
        String strB = o0.b(str);
        if (c.u(strB, o0.class).size() > 0) {
            c.m(strB, o0.class);
        }
        String[] strArrSplit = str2.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
        ArrayList arrayList = new ArrayList();
        for (String str3 : strArrSplit) {
            arrayList.add(new o0(str, str3));
        }
        c.p(arrayList);
    }

    private h6 i(Context context) {
        try {
            return new h6(context, q0.d());
        } catch (Throwable th) {
            e6.r(th, "OfflineDB", "getDB");
            th.printStackTrace();
            return null;
        }
    }

    private boolean l() {
        if (c == null) {
            c = i(this.f11116a);
        }
        return c != null;
    }

    public synchronized m0 a(String str) {
        if (!l()) {
            return null;
        }
        List listU = c.u(p0.e(str), m0.class);
        if (listU.size() <= 0) {
            return null;
        }
        return (m0) listU.get(0);
    }

    public ArrayList<m0> c() {
        ArrayList<m0> arrayList = new ArrayList<>();
        if (!l()) {
            return arrayList;
        }
        Iterator it = c.u("", m0.class).iterator();
        while (it.hasNext()) {
            arrayList.add((m0) it.next());
        }
        return arrayList;
    }

    public synchronized void e(m0 m0Var) {
        if (l()) {
            c.j(m0Var, p0.g(m0Var.j()));
            h(m0Var.f(), m0Var.n());
        }
    }

    public void f(String str, int i, long j, long j2, long j3) {
        if (l()) {
            g(str, i, j, new long[]{j2, 0, 0, 0, 0}, new long[]{j3, 0, 0, 0, 0});
        }
    }

    public synchronized void g(String str, int i, long j, long[] jArr, long[] jArr2) {
        if (l()) {
            c.j(new n0(str, j, i, jArr[0], jArr2[0]), n0.a(str));
        }
    }

    public synchronized List<String> j(String str) {
        ArrayList arrayList = new ArrayList();
        if (!l()) {
            return arrayList;
        }
        arrayList.addAll(d(c.u(o0.b(str), o0.class)));
        return arrayList;
    }

    public synchronized void k(m0 m0Var) {
        if (l()) {
            c.m(p0.g(m0Var.j()), p0.class);
            c.m(o0.b(m0Var.f()), o0.class);
            c.m(n0.a(m0Var.f()), n0.class);
        }
    }

    public synchronized void m(String str) {
        if (l()) {
            c.m(p0.e(str), p0.class);
            c.m(o0.b(str), o0.class);
            c.m(n0.a(str), n0.class);
        }
    }

    public synchronized String n(String str) {
        if (!l()) {
            return null;
        }
        List listU = c.u(p0.g(str), p0.class);
        return listU.size() > 0 ? ((p0) listU.get(0)).d() : null;
    }
}
