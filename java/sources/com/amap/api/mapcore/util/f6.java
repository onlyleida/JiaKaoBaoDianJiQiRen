package com.amap.api.mapcore.util;

import android.content.Context;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
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
    private static String[] f10797e = new String[10];

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

        a(Context context, String str, k8 k8Var) {
            this.f10801a = context;
            this.b = str;
            this.c = k8Var;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x008c */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0094, code lost:
        
            return;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r11 = this;
                java.lang.Class<com.amap.api.mapcore.util.f6> r0 = com.amap.api.mapcore.util.f6.class
                monitor-enter(r0)     // Catch: java.lang.Throwable -> L8c
                java.lang.ref.WeakReference r1 = com.amap.api.mapcore.util.f6.d()     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.p7 r1 = com.amap.api.mapcore.util.w7.a(r1)     // Catch: java.lang.Throwable -> L89
                android.content.Context r2 = r11.f10801a     // Catch: java.lang.Throwable -> L89
                java.lang.String r4 = r11.b     // Catch: java.lang.Throwable -> L89
                r5 = 1000(0x3e8, float:1.401E-42)
                r6 = 40960(0xa000, float:5.7397E-41)
                java.lang.String r7 = "1"
                r3 = r1
                com.amap.api.mapcore.util.w7.e(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.k8 r2 = r11.c     // Catch: java.lang.Throwable -> L89
                r1.f11083f = r2     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.e8 r2 = r1.f11084g     // Catch: java.lang.Throwable -> L89
                if (r2 != 0) goto L7f
                com.amap.api.mapcore.util.a8 r2 = new com.amap.api.mapcore.util.a8     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.z7 r9 = new com.amap.api.mapcore.util.z7     // Catch: java.lang.Throwable -> L89
                android.content.Context r4 = r11.f10801a     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.f8 r5 = new com.amap.api.mapcore.util.f8     // Catch: java.lang.Throwable -> L89
                r5.<init>()     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.v6 r6 = new com.amap.api.mapcore.util.v6     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.x6 r3 = new com.amap.api.mapcore.util.x6     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.y6 r7 = new com.amap.api.mapcore.util.y6     // Catch: java.lang.Throwable -> L89
                r7.<init>()     // Catch: java.lang.Throwable -> L89
                r3.<init>(r7)     // Catch: java.lang.Throwable -> L89
                r6.<init>(r3)     // Catch: java.lang.Throwable -> L89
                java.lang.String r7 = "EImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMiLA="
                r3 = 7
                java.lang.Object[] r8 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L89
                r3 = 0
                java.lang.String r10 = com.amap.api.mapcore.util.c5.j(r4)     // Catch: java.lang.Throwable -> L89
                r8[r3] = r10     // Catch: java.lang.Throwable -> L89
                r3 = 1
                android.content.Context r10 = r11.f10801a     // Catch: java.lang.Throwable -> L89
                java.lang.String r10 = com.amap.api.mapcore.util.g5.a0(r10)     // Catch: java.lang.Throwable -> L89
                r8[r3] = r10     // Catch: java.lang.Throwable -> L89
                r3 = 2
                android.content.Context r10 = r11.f10801a     // Catch: java.lang.Throwable -> L89
                java.lang.String r10 = com.amap.api.mapcore.util.c5.g(r10)     // Catch: java.lang.Throwable -> L89
                r8[r3] = r10     // Catch: java.lang.Throwable -> L89
                r3 = 3
                java.lang.String r10 = android.os.Build.MODEL     // Catch: java.lang.Throwable -> L89
                r8[r3] = r10     // Catch: java.lang.Throwable -> L89
                r3 = 4
                android.content.Context r10 = r11.f10801a     // Catch: java.lang.Throwable -> L89
                java.lang.String r10 = com.amap.api.mapcore.util.c5.e(r10)     // Catch: java.lang.Throwable -> L89
                r8[r3] = r10     // Catch: java.lang.Throwable -> L89
                r3 = 5
                android.content.Context r10 = r11.f10801a     // Catch: java.lang.Throwable -> L89
                java.lang.String r10 = com.amap.api.mapcore.util.c5.h(r10)     // Catch: java.lang.Throwable -> L89
                r8[r3] = r10     // Catch: java.lang.Throwable -> L89
                r3 = 6
                java.lang.String r10 = android.os.Build.VERSION.RELEASE     // Catch: java.lang.Throwable -> L89
                r8[r3] = r10     // Catch: java.lang.Throwable -> L89
                r3 = r9
                r3.<init>(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L89
                r2.<init>(r9)     // Catch: java.lang.Throwable -> L89
                r1.f11084g = r2     // Catch: java.lang.Throwable -> L89
            L7f:
                r2 = 3600000(0x36ee80, float:5.044674E-39)
                r1.f11085h = r2     // Catch: java.lang.Throwable -> L89
                com.amap.api.mapcore.util.q7.c(r1)     // Catch: java.lang.Throwable -> L89
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L89
                goto L94
            L89:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L89
                throw r1     // Catch: java.lang.Throwable -> L8c
            L8c:
                r0 = move-exception
                java.lang.String r1 = "lg"
                java.lang.String r2 = "pul"
                com.amap.api.mapcore.util.e6.r(r0, r1, r2)
            L94:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.f6.a.run():void");
        }
    }

    static m5 a(Context context, String str) {
        List<m5> listF = c6.f(context);
        if (listF == null) {
            listF = new ArrayList();
        }
        if (str != null && !"".equals(str)) {
            for (m5 m5Var : listF) {
                if (c6.e(m5Var.k(), str)) {
                    return m5Var;
                }
            }
            if (str.contains("com.amap.api.col")) {
                try {
                    return n5.a();
                } catch (gb e2) {
                    e2.printStackTrace();
                }
            }
            if (str.contains("com.amap.co") || str.contains("com.amap.opensdk.co") || str.contains("com.amap.location")) {
                try {
                    m5 m5VarP = n5.p();
                    m5VarP.d(true);
                    return m5VarP;
                } catch (gb e3) {
                    e3.printStackTrace();
                }
            }
        }
        return null;
    }

    private static String b(Throwable th) {
        return th.toString();
    }

    /* JADX WARN: Code duplicated, block: B:82:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e8 A[RETURN] */
    static String c(List<m5> list) {
        c7 c7Var;
        FileInputStream fileInputStream;
        try {
            try {
                File file = new File("/data/anr/traces.txt");
                if (!file.exists()) {
                    return null;
                }
                fileInputStream = new FileInputStream(file);
                try {
                    int iAvailable = fileInputStream.available();
                    if (iAvailable > 1024000) {
                        fileInputStream.skip(iAvailable - 1024000);
                    }
                    c7Var = new c7(fileInputStream, d7.f10684a);
                    boolean z = false;
                    while (true) {
                        try {
                            String strTrim = c7Var.a().trim();
                            if (strTrim.contains("pid")) {
                                while (!strTrim.startsWith("\"main\"")) {
                                    strTrim = c7Var.a();
                                }
                                z = true;
                            }
                            if (strTrim.equals("") && z) {
                                break;
                            }
                            if (z) {
                                l(strTrim);
                                int i2 = f10800h;
                                if (i2 == 5) {
                                    break;
                                }
                                if (!f10799g) {
                                    for (m5 m5Var : list) {
                                        boolean zH = c6.h(m5Var.k(), strTrim);
                                        f10799g = zH;
                                        if (zH) {
                                            i = m5Var;
                                            break;
                                        }
                                    }
                                } else {
                                    f10800h = i2 + 1;
                                }
                            }
                        } catch (EOFException unused) {
                        } catch (FileNotFoundException unused2) {
                        } catch (Throwable th) {
                            th = th;
                            try {
                                e6.r(th, "alg", "getA");
                                if (c7Var != null) {
                                    try {
                                        c7Var.close();
                                    } catch (Throwable th2) {
                                        e6.r(th2, "alg", "getA");
                                    }
                                }
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                if (f10799g) {
                                    return n();
                                }
                                return null;
                            } catch (Throwable th3) {
                                if (c7Var != null) {
                                    try {
                                        c7Var.close();
                                    } catch (Throwable th4) {
                                        e6.r(th4, "alg", "getA");
                                    }
                                }
                                if (fileInputStream == null) {
                                    throw th3;
                                }
                                try {
                                    fileInputStream.close();
                                    throw th3;
                                } catch (Throwable th5) {
                                    e6.r(th5, "alg", "getA");
                                    throw th3;
                                }
                            }
                        }
                    }
                    try {
                        c7Var.close();
                    } catch (Throwable th6) {
                        e6.r(th6, "alg", "getA");
                    }
                    fileInputStream.close();
                } catch (FileNotFoundException unused3) {
                    c7Var = null;
                } catch (Throwable th7) {
                    th = th7;
                    c7Var = null;
                }
                if (f10799g) {
                    return n();
                }
                return null;
            } catch (Throwable th8) {
                e6.r(th8, "alg", "getA");
            }
        } catch (FileNotFoundException unused4) {
            c7Var = null;
            fileInputStream = null;
        } catch (Throwable th9) {
            th = th9;
            c7Var = null;
            fileInputStream = null;
        }
        if (c7Var != null) {
            try {
                c7Var.close();
            } catch (Throwable th10) {
                e6.r(th10, "alg", "getA");
            }
        }
        if (fileInputStream != null) {
            fileInputStream.close();
        }
        if (f10799g) {
            return n();
        }
        return null;
    }

    static void e(Context context) {
        String strC;
        m5 m5Var;
        List<m5> listF = c6.f(context);
        if (listF == null || listF.size() == 0 || (strC = c(listF)) == null || "".equals(strC) || (m5Var = i) == null) {
            return;
        }
        f(context, m5Var, 2, "ANR", strC);
    }

    private static void f(Context context, m5 m5Var, int i2, String str, String str2) {
        String str3;
        String strB = w7.b();
        String strD = w7.d(c5.a(context), w7.c(context, m5Var), strB, i2, str, str2);
        if (strD == null || "".equals(strD)) {
            return;
        }
        String strF = k5.f(str2);
        if (i2 == 1) {
            str3 = c6.b;
        } else if (i2 == 2) {
            str3 = c6.f10613d;
        } else if (i2 != 0) {
            return;
        } else {
            str3 = c6.c;
        }
        i(context, strF, str3, strD);
    }

    public static void g(Context context, m5 m5Var, String str, int i2, String str2, String str3) {
        if (str2 == null || "".equals(str2)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (str2 != null) {
            sb.append("class:");
            sb.append(str2);
        }
        if (str3 != null) {
            sb.append(" method:");
            sb.append(str3);
            sb.append("$");
            sb.append("<br/>");
        }
        sb.append(str);
        f(context, m5Var, i2, str2, sb.toString());
    }

    private static void h(Context context, k8 k8Var, String str) {
        e6.s().submit(new a(context, str, k8Var));
    }

    private static void i(Context context, String str, String str2, String str3) {
        p7 p7VarA = w7.a(f10795a);
        w7.e(context, p7VarA, str2, 1000, 40960, "1");
        if (p7VarA.f11082e == null) {
            p7VarA.f11082e = new u6(new v6(new x6(new y6())));
        }
        try {
            q7.d(str, n5.o(str3.replaceAll("\n", "<br/>")), p7VarA);
        } catch (Throwable unused) {
        }
    }

    public static void j(Context context, Throwable th, int i2, String str, String str2) {
        String strE = n5.e(th);
        m5 m5VarA = a(context, strE);
        if (m(m5VarA)) {
            String strReplaceAll = strE.replaceAll("\n", "<br/>");
            String strB = b(th);
            if (strB == null || "".equals(strB)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            if (str != null) {
                sb.append("class:");
                sb.append(str);
            }
            if (str2 != null) {
                sb.append(" method:");
                sb.append(str2);
                sb.append("$");
                sb.append("<br/>");
            }
            sb.append(strReplaceAll);
            f(context, m5VarA, i2, strB, sb.toString());
        }
    }

    static void k(m5 m5Var, Context context, String str, String str2) {
        if (!m(m5Var) || str == null || "".equals(str)) {
            return;
        }
        f(context, m5Var, 1, str, str2);
    }

    private static void l(String str) {
        try {
            if (f10798f > 9) {
                f10798f = 0;
            }
            String[] strArr = f10797e;
            int i2 = f10798f;
            strArr[i2] = str;
            f10798f = i2 + 1;
        } catch (Throwable th) {
            e6.r(th, "alg", "aDa");
        }
    }

    private static boolean m(m5 m5Var) {
        return m5Var != null && m5Var.j();
    }

    private static String n() {
        StringBuilder sb = new StringBuilder();
        try {
            for (int i2 = f10798f; i2 < 10 && i2 <= 9; i2++) {
                sb.append(f10797e[i2]);
            }
            for (int i3 = 0; i3 < f10798f; i3++) {
                sb.append(f10797e[i3]);
            }
        } catch (Throwable th) {
            e6.r(th, "alg", "gLI");
        }
        return sb.toString();
    }

    static void o(Context context) {
        i8 i8Var = new i8(b);
        b = false;
        h(context, i8Var, c6.c);
    }

    static void p(Context context) {
        WeakReference<k8> weakReference = c;
        if (weakReference == null || weakReference.get() == null) {
            c = new WeakReference<>(new j8(context, 3600000, "hKey", new l8(context, false)));
        }
        h(context, c.get(), c6.f10613d);
    }

    static void q(Context context) {
        WeakReference<k8> weakReference = f10796d;
        if (weakReference == null || weakReference.get() == null) {
            f10796d = new WeakReference<>(new j8(context, 3600000, "gKey", new l8(context, false)));
        }
        h(context, f10796d.get(), c6.b);
    }
}
