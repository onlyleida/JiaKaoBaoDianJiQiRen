package com.loc;

import android.content.Context;
import android.os.Build;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class an {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakReference<bm> f12520a = null;
    private static boolean b = true;
    private static WeakReference<cf> c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakReference<cf> f12521d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String[] f12522e = new String[10];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f12523f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f12524g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f12525h;
    private static v i;

    private static v a(String str) {
        List<v> listA = ak.a();
        if (listA == null) {
            listA = new ArrayList();
        }
        if (str != null && !"".equals(str)) {
            for (v vVar : listA) {
                if (ak.a(vVar.f(), str)) {
                    return vVar;
                }
            }
            if (str.contains("com.amap.api.col")) {
                try {
                    return w.a();
                } catch (j e2) {
                    e2.printStackTrace();
                }
            }
            if (str.contains("com.amap.co") || str.contains("com.amap.opensdk.co") || str.contains("com.amap.location")) {
                try {
                    v vVarB = w.b();
                    vVarB.a(true);
                    return vVarB;
                } catch (j e3) {
                    e3.printStackTrace();
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:89:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:91:0x00ff A[RETURN] */
    private static String a(List<v> list) {
        bd bdVar;
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
                    bdVar = new bd(fileInputStream, bc.b);
                    boolean z = false;
                    while (true) {
                        try {
                            String strTrim = bdVar.a().trim();
                            if (strTrim.contains("pid")) {
                                while (!strTrim.startsWith("\"main\"")) {
                                    strTrim = bdVar.a();
                                }
                                z = true;
                            }
                            if (strTrim.equals("") && z) {
                                break;
                            }
                            if (z) {
                                try {
                                    if (f12523f > 9) {
                                        f12523f = 0;
                                    }
                                    String[] strArr = f12522e;
                                    int i2 = f12523f;
                                    strArr[i2] = strTrim;
                                    f12523f = i2 + 1;
                                } catch (Throwable th) {
                                    am.b(th, "alg", "aDa");
                                }
                                int i3 = f12525h;
                                if (i3 == 5) {
                                    break;
                                }
                                if (!f12524g) {
                                    for (v vVar : list) {
                                        boolean zB = ak.b(vVar.f(), strTrim);
                                        f12524g = zB;
                                        if (zB) {
                                            i = vVar;
                                            break;
                                        }
                                    }
                                } else {
                                    f12525h = i3 + 1;
                                }
                            }
                        } catch (EOFException unused) {
                            break;
                        } catch (FileNotFoundException unused2) {
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                am.b(th, "alg", "getA");
                                if (bdVar != null) {
                                    try {
                                        bdVar.close();
                                    } catch (Throwable th3) {
                                        am.b(th3, "alg", "getA");
                                    }
                                }
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                if (f12524g) {
                                    return b();
                                }
                                return null;
                            } catch (Throwable th4) {
                                if (bdVar != null) {
                                    try {
                                        bdVar.close();
                                    } catch (Throwable th5) {
                                        am.b(th5, "alg", "getA");
                                    }
                                }
                                if (fileInputStream == null) {
                                    throw th4;
                                }
                                try {
                                    fileInputStream.close();
                                    throw th4;
                                } catch (Throwable th6) {
                                    am.b(th6, "alg", "getA");
                                    throw th4;
                                }
                            }
                        }
                    }
                    try {
                        bdVar.close();
                    } catch (Throwable th7) {
                        am.b(th7, "alg", "getA");
                    }
                    fileInputStream.close();
                } catch (FileNotFoundException unused3) {
                    bdVar = null;
                } catch (Throwable th8) {
                    th = th8;
                    bdVar = null;
                }
                if (f12524g) {
                    return b();
                }
                return null;
            } catch (Throwable th9) {
                am.b(th9, "alg", "getA");
            }
        } catch (FileNotFoundException unused4) {
            bdVar = null;
            fileInputStream = null;
        } catch (Throwable th10) {
            th = th10;
            bdVar = null;
            fileInputStream = null;
        }
        if (bdVar != null) {
            try {
                bdVar.close();
            } catch (Throwable th11) {
                am.b(th11, "alg", "getA");
            }
        }
        if (fileInputStream != null) {
            fileInputStream.close();
        }
        if (f12524g) {
            return b();
        }
        return null;
    }

    static void a(Context context) {
        String strA;
        v vVar;
        List<v> listA = ak.a();
        if (listA == null || listA.size() == 0 || (strA = a(listA)) == null || "".equals(strA) || (vVar = i) == null) {
            return;
        }
        a(context, vVar, 2, "ANR", strA);
    }

    private static void a(final Context context, final cf cfVar, final String str) {
        ci.a().b(new cj() { // from class: com.loc.an.1
            @Override // com.loc.cj
            public final void a() {
                try {
                    synchronized (an.class) {
                        bm bmVarA = bs.a(an.f12520a);
                        bs.a(context, bmVarA, str, 1000, 4096000, "1");
                        bmVarA.f12626f = cfVar;
                        if (bmVarA.f12627g == null) {
                            bmVarA.f12627g = new bw(new bv(context, new ca(), new ax(new az(new ba())), "QImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJhZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMi", k.f(context), n.v(context), n.u(context), k.c(context), Build.MODEL, k.b(context), k.d(context), Build.VERSION.RELEASE));
                        }
                        bmVarA.f12628h = 3600000;
                        bn.a(bmVarA);
                    }
                } catch (Throwable th) {
                    am.b(th, "lg", "pul");
                }
            }
        });
    }

    private static void a(Context context, v vVar, int i2, String str, String str2) {
        String str3;
        String strA = bs.a();
        String strA2 = bs.a(context, vVar);
        k.a(context);
        String strA3 = bs.a(strA2, strA, i2, str, str2);
        if (strA3 == null || "".equals(strA3)) {
            return;
        }
        String strB = r.b(str2);
        if (i2 == 1) {
            str3 = ak.b;
        } else if (i2 == 2) {
            str3 = ak.f12505d;
        } else if (i2 != 0) {
            return;
        } else {
            str3 = ak.c;
        }
        String str4 = str3;
        bm bmVarA = bs.a(f12520a);
        bs.a(context, bmVarA, str4, 1000, 4096000, "1");
        if (bmVarA.f12625e == null) {
            bmVarA.f12625e = new aw(new ax(new az(new ba())));
        }
        try {
            bn.a(strB, w.a(strA3.replaceAll("\n", "<br/>")), bmVarA);
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context, Throwable th, int i2, String str, String str2) {
        String strA = w.a(th);
        v vVarA = a(strA);
        if (a(vVarA)) {
            String strReplaceAll = strA.replaceAll("\n", "<br/>");
            String string = th.toString();
            if (string == null || "".equals(string)) {
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
                sb.append("$<br/>");
            }
            sb.append(strReplaceAll);
            a(context, vVarA, i2, string, sb.toString());
        }
    }

    static void a(v vVar, Context context, String str, String str2) {
        if (!a(vVar) || str == null || "".equals(str)) {
            return;
        }
        a(context, vVar, 1, str, str2);
    }

    private static boolean a(v vVar) {
        return vVar != null && vVar.e();
    }

    private static String b() {
        StringBuilder sb = new StringBuilder();
        try {
            for (int i2 = f12523f; i2 < 10 && i2 <= 9; i2++) {
                sb.append(f12522e[i2]);
            }
            for (int i3 = 0; i3 < f12523f; i3++) {
                sb.append(f12522e[i3]);
            }
        } catch (Throwable th) {
            am.b(th, "alg", "gLI");
        }
        return sb.toString();
    }

    static void b(Context context) {
        cd cdVar = new cd(b);
        b = false;
        a(context, cdVar, ak.c);
    }

    static void c(Context context) {
        WeakReference<cf> weakReference = c;
        if (weakReference == null || weakReference.get() == null) {
            c = new WeakReference<>(new ce(context, 3600000, "hKey", new cg(context)));
        }
        a(context, c.get(), ak.f12505d);
    }

    static void d(Context context) {
        WeakReference<cf> weakReference = f12521d;
        if (weakReference == null || weakReference.get() == null) {
            f12521d = new WeakReference<>(new ce(context, 3600000, "gKey", new cg(context)));
        }
        a(context, f12521d.get(), ak.b);
    }
}
