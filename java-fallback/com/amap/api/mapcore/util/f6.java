package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class f6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakReference<p7> f10795a = null;
    private static boolean b = true;
    private static WeakReference<k8> c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakReference<k8> f10796d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String[] f10797e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f10798f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f10799g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f10800h;
    private static m5 i;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10801a;
        final /* synthetic */ String b;
        final /* synthetic */ k8 c;

        a(Context r1, String r2, k8 r3) {
            this.f10801a = r1;
            this.b = r2;
            this.c = r3;
        }

        @Override // java.lang.Runnable
        public void run() {
            monitor-enter(f6.class);     // Catch: Throwable -> L13
            p7 r1 = w7.a(f6.d());     // Catch: Throwable -> L10
            w7.e(this.f10801a, r1, this.b, 1000, 40960, "1");     // Catch: Throwable -> L10
            r1.f11083f = this.c;     // Catch: Throwable -> L10
            if (r1.f11084g != null) goto L7;
            Context r4 = this.f10801a;     // Catch: Throwable -> L10
            r1.f11084g = new a8(new z7(r4, new f8(), new v6(new x6(new y6())), "EImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMiLA=", new Object[]{c5.j(r4), g5.a0(this.f10801a), c5.g(this.f10801a), Build.MODEL, c5.e(this.f10801a), c5.h(this.f10801a), Build.VERSION.RELEASE}));     // Catch: Throwable -> L10
        L7:
            r1.f11085h = 3600000;     // Catch: Throwable -> L10
            q7.c(r1);     // Catch: Throwable -> L10
            monitor-exit(f6.class);     // Catch: Throwable -> L10
        L20:
            return;
        L10:
            th = move-exception;
            throw th;     // Catch: Throwable -> L13
        L13:
            th = move-exception;
            e6.r(th, "lg", "pul");
        }
    }

    static {
        f10797e = new String[10];
    }

    public f6() {
    }

    static m5 a(Context r3, String r4) {
        List r5 = c6.f(r3);
        if (r5 != null) goto L6;
        r5 = new ArrayList();
    L6:
        if (r4 != null) goto L8;
    L32:
        return null;
    L8:
        if ("".equals(r4) == true) goto L32;
        Iterator r6 = r5.iterator();
    L12:
        if (r6.hasNext() == false) goto L17;
        m5 r1 = (m5) r6.next();
        if (c6.e(r1.k(), r4) == false) goto L12;
        return r1;
    L17:
        if (r4.contains("com.amap.api.col") == false) goto L23;
        return n5.a();
    L20:
        e = move-exception;
        e.printStackTrace();
    L23:
        if (r4.contains("com.amap.co") == false) goto L25;
    L33:
        m5 r7 = n5.p();     // Catch: gb -> L30
        r7.d(true);     // Catch: gb -> L30
        return r7;
    L30:
        e = move-exception;
        e.printStackTrace();
        goto L32
    L25:
        if (r4.contains("com.amap.opensdk.co") == true) goto L33;
        if (r4.contains("com.amap.location") == false) goto L32;
        goto L32
    }

    private static String b(Throwable r0) {
        return r0.toString();
    }

    static String c(List<m5> r10) {
        File r3 = new File("/data/anr/traces.txt");     // Catch: Throwable -> L49 FileNotFoundException -> L72
        if (r3.exists() == true) goto L6;
        return null;
    L6:
        FileInputStream r4 = new FileInputStream(r3);     // Catch: Throwable -> L49 FileNotFoundException -> L72
        int r5 = r4.available();     // Catch: Throwable -> L46 FileNotFoundException -> L48
        if (r5 <= 1024000) goto L10;
        r4.skip(r5 - 1024000);     // Catch: Throwable -> L46 FileNotFoundException -> L48
    L10:
        c7 r6 = new c7(r4, d7.f10684a);     // Catch: Throwable -> L46 FileNotFoundException -> L48
        boolean r7 = false;
    L105:
        String r8 = r6.a().trim();     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        if (r8.contains("pid") == false) goto L19;
    L15:
        if (r8.startsWith("\"main\"") == true) goto L17;
        r8 = r6.a();     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        goto L15
    L17:
        r7 = true;
    L19:
        if (r8.equals("") == false) goto L22;
        if (r7 == true) goto L91;
    L22:
        if (r7 == false) goto L105;
        l(r8);     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        int r9 = f10800h;     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        if (r9 == 5) goto L91;
        if (f10799g == false) goto L28;
        f10800h = r9 + 1;     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        goto L105
    L28:
        Iterator<m5> r11 = r10.iterator();     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
    L30:
        if (r11.hasNext() == false) goto L105;
        m5 r12 = r11.next();     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        boolean r13 = c6.h(r12.k(), r8);     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        f10799g = r13;     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        if (r13 == false) goto L30;
        i = r12;     // Catch: Throwable -> L36 EOFException -> L85 FileNotFoundException -> L86
        goto L105
    L36:
        th = th;
    L98:
        e6.r(th, "alg", "getA");     // Catch: Throwable -> L60
        if (r6 != null) goto L89;
    L57:
        if (r4 == null) goto L81;
        r4.close();     // Catch: Throwable -> L44
    L95:
    L81:
        if (f10799g == true) goto L83;
        return null;
    L83:
        return n();
    L89:
        r6.close();     // Catch: Throwable -> L55
    L55:
        th = move-exception;
        e6.r(th, "alg", "getA");
    L60:
        th = move-exception;
        if (r6 != null) goto L100;
    L66:
        if (r4 == null) goto L120;
        r4.close();     // Catch: Throwable -> L69
        throw th;
    L69:
        th = move-exception;
        e6.r(th, "alg", "getA");
        throw th;
    L120:
        throw th;
    L100:
        r6.close();     // Catch: Throwable -> L64
    L64:
        th = move-exception;
        e6.r(th, "alg", "getA");
    L91:
        r6.close();     // Catch: Throwable -> L40
    L42:
        r4.close();     // Catch: Throwable -> L44
    L40:
        th = move-exception;
        e6.r(th, "alg", "getA");
    L73:
        if (r6 != null) goto L93;
    L78:
        if (r4 == null) goto L81;
        r4.close();     // Catch: Throwable -> L44
        goto L95
    L93:
        r6.close();     // Catch: Throwable -> L76
    L76:
        th = move-exception;
        e6.r(th, "alg", "getA");
        goto L78
    L48:
        r6 = null;
    L46:
        th = th;
        r6 = null;
        goto L98
    L44:
        th = move-exception;
        e6.r(th, "alg", "getA");
    L72:
        r6 = null;
        r4 = null;
    L49:
        th = th;
        r6 = null;
        r4 = null;
        goto L98
    }

    static /* synthetic */ WeakReference d() {
        return f10795a;
    }

    static void e(Context r4) {
        List<m5> r0 = c6.f(r4);
        if (r0 != null) goto L5;
        return;
    L5:
        if (r0.size() == 0) goto L19;
        String r1 = c(r0);
        if (r1 != null) goto L10;
        return;
    L10:
        if ("".equals(r1) == true) goto L18;
        m5 r2 = i;
        if (r2 == null) goto L20;
        f(r4, r2, 2, "ANR", r1);
        return;
    L20:
        return;
    L18:
        return;
    }

    private static void f(Context r6, m5 r7, int r8, String r9, String r10) {
        String r2 = w7.b();
        String r1 = w7.c(r6, r7);
        String r11 = w7.d(c5.a(r6), r1, r2, r8, r9, r10);
        if (r11 != null) goto L5;
        return;
    L5:
        if ("".equals(r11) == true) goto L19;
        String r12 = k5.f(r10);
        if (r8 != 1) goto L11;
        String r13 = c6.b;
    L15:
        i(r6, r12, r13, r11);
        return;
    L11:
        if (r8 != 2) goto L13;
        r13 = c6.f10613d;
        goto L15
    L13:
        if (r8 != 0) goto L18;
        r13 = c6.c;
        goto L15
    L18:
        return;
    }

    public static void g(Context r2, m5 r3, String r4, int r5, String r6, String r7) {
        if (r6 != null) goto L4;
        return;
    L4:
        if ("".equals(r6) == true) goto L14;
        StringBuilder r0 = new StringBuilder();
        if (r6 == null) goto L9;
        r0.append("class:");
        r0.append(r6);
    L9:
        if (r7 == null) goto L11;
        r0.append(" method:");
        r0.append(r7);
        r0.append("$");
        r0.append("<br/>");
    L11:
        r0.append(r4);
        f(r2, r3, r5, r6, r0.toString());
        return;
    }

    private static void h(Context r2, k8 r3, String r4) {
        e6.s().submit(new a(r2, r4, r3));
    }

    private static void i(Context r7, String r8, String r9, String r10) {
        p7 r0 = w7.a(f10795a);
        w7.e(r7, r0, r9, 1000, 40960, "1");
        if (r0.f11082e != null) goto L8;
        r0.f11082e = new u6(new v6(new x6(new y6())));
    L8:
        q7.d(r8, n5.o(r10.replaceAll("\n", "<br/>")), r0);     // Catch: Throwable -> L7
        return;
    }

    public static void j(Context r5, Throwable r6, int r7, String r8, String r9) {
        String r0 = n5.e(r6);
        m5 r1 = a(r5, r0);
        if (m(r1) == true) goto L5;
        return;
    L5:
        String r2 = r0.replaceAll("\n", "<br/>");
        String r10 = b(r6);
        if (r10 != null) goto L8;
        return;
    L8:
        if ("".equals(r10) == true) goto L18;
        StringBuilder r3 = new StringBuilder();
        if (r8 == null) goto L13;
        r3.append("class:");
        r3.append(r8);
    L13:
        if (r9 == null) goto L15;
        r3.append(" method:");
        r3.append(r9);
        r3.append("$");
        r3.append("<br/>");
    L15:
        r3.append(r2);
        f(r5, r1, r7, r10, r3.toString());
        return;
    }

    static void k(m5 r1, Context r2, String r3, String r4) {
        if (m(r1) == true) goto L5;
        return;
    L5:
        if (r3 != null) goto L7;
        return;
    L7:
        if ("".equals(r3) == true) goto L12;
        f(r2, r1, 1, r3, r4);
        return;
    }

    private static void l(String r2) {
    L7:
        th = move-exception;
        e6.r(th, "alg", "aDa");
        return;
    L3:
        if (f10798f <= 9) goto L5;
        f10798f = 0;     // Catch: Throwable -> L7
    L5:
        String[] r0 = f10797e;     // Catch: Throwable -> L7
        int r1 = f10798f;     // Catch: Throwable -> L7
        r0[r1] = r2;     // Catch: Throwable -> L7
        f10798f = r1 + 1;     // Catch: Throwable -> L7
    }

    private static boolean m(m5 r0) {
        if (r0 != null) goto L4;
    L6:
        return false;
    L4:
        if (r0.j() == false) goto L6;
        return true;
    }

    private static String n() {
        StringBuilder r0 = new StringBuilder();
        int r1 = f10798f;     // Catch: Throwable -> L15
    L5:
        if (r1 >= 10) goto L10;
        if (r1 > 9) goto L10;
        r0.append(f10797e[r1]);     // Catch: Throwable -> L15
        r1 = r1 + 1;     // Catch: Throwable -> L15
    L10:
        int r2 = 0;
    L11:
        if (r2 >= f10798f) goto L18;
        r0.append(f10797e[r2]);     // Catch: Throwable -> L15
        r2 = r2 + 1;
    L18:
        return r0.toString();
    L15:
        th = move-exception;
        e6.r(th, "alg", "gLI");
        goto L18
    }

    static void o(Context r2) {
        i8 r0 = new i8(b);
        b = false;
        h(r2, r0, c6.c);
    }

    static void p(Context r5) {
        WeakReference<k8> r0 = c;
        if (r0 != null) goto L5;
    L6:
        c = new WeakReference(new j8(r5, 3600000, "hKey", new l8(r5, false)));
    L7:
        h(r5, c.get(), c6.f10613d);
        return;
    L5:
        if (r0.get() != null) goto L7;
        goto L6
    }

    static void q(Context r5) {
        WeakReference<k8> r0 = f10796d;
        if (r0 != null) goto L5;
    L6:
        f10796d = new WeakReference(new j8(r5, 3600000, "gKey", new l8(r5, false)));
    L7:
        h(r5, f10796d.get(), c6.b);
        return;
    L5:
        if (r0.get() != null) goto L7;
        goto L6
    }
}
