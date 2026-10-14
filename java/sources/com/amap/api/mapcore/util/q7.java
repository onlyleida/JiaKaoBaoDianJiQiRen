package com.amap.api.mapcore.util;

import java.io.File;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class q7 {
    private static void a(z6 z6Var) {
        if (z6Var != null) {
            try {
                z6Var.F();
            } catch (Throwable th) {
                e6.r(th, "ofm", "dlo");
            }
        }
    }

    private static void b(z6 z6Var, List<String> list) {
        if (z6Var != null) {
            try {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    z6Var.x(it.next());
                }
                z6Var.close();
            } catch (Throwable th) {
                e6.r(th, "ofm", "dlo");
            }
        }
    }

    public static void c(p7 p7Var) {
        z6 z6Var = null;
        try {
            try {
                if (p7Var.f11083f.e()) {
                    p7Var.f11083f.b(true);
                    z6 z6VarD = z6.d(new File(p7Var.f11080a), 1, 1, p7Var.b);
                    try {
                        ArrayList arrayList = new ArrayList();
                        byte[] bArrF = f(z6VarD, p7Var, arrayList);
                        if (bArrF != null && bArrF.length != 0) {
                            JSONObject jSONObject = new JSONObject(new String(f7.a().e(new d6(bArrF, p7Var.c))));
                            if (jSONObject.has("code") && jSONObject.getInt("code") == 1) {
                                k8 k8Var = p7Var.f11083f;
                                if (k8Var != null && bArrF != null) {
                                    k8Var.a(bArrF.length);
                                }
                                if (p7Var.f11083f.d() < Integer.MAX_VALUE) {
                                    b(z6VarD, arrayList);
                                } else {
                                    a(z6VarD);
                                }
                            } else {
                                z6Var = z6VarD;
                            }
                        }
                        if (z6VarD != null) {
                            try {
                                z6VarD.close();
                                return;
                            } catch (Throwable th) {
                                th.printStackTrace();
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        z6Var = z6VarD;
                        try {
                            e6.r(th, "leg", "uts");
                            if (z6Var == null) {
                                return;
                            } else {
                                z6Var.close();
                            }
                        } catch (Throwable th3) {
                            if (z6Var != null) {
                                try {
                                    z6Var.close();
                                } catch (Throwable th4) {
                                    th4.printStackTrace();
                                }
                            }
                            throw th3;
                        }
                    }
                }
                if (z6Var != null) {
                    z6Var.close();
                }
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public static void d(String str, byte[] bArr, p7 p7Var) throws Throwable {
        z6 z6VarD;
        OutputStream outputStreamB = null;
        try {
            if (e(p7Var.f11080a, str)) {
                return;
            }
            File file = new File(p7Var.f11080a);
            if (!file.exists()) {
                file.mkdirs();
            }
            z6VarD = z6.d(file, 1, 1, p7Var.b * ((long) p7Var.f11081d));
            try {
                z6VarD.h(p7Var.f11081d);
                byte[] bArrB = p7Var.f11082e.b(bArr);
                z6.d dVarN = z6VarD.n(str);
                outputStreamB = dVarN.b(0);
                outputStreamB.write(bArrB);
                dVarN.c();
                z6VarD.C();
                if (outputStreamB != null) {
                    try {
                        outputStreamB.close();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                if (z6VarD != null) {
                    try {
                        z6VarD.close();
                        return;
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        return;
                    }
                }
                return;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            z6VarD = null;
        }
        if (outputStreamB != null) {
            try {
                outputStreamB.close();
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
        }
        if (z6VarD == null) {
            throw th;
        }
        try {
            z6VarD.close();
            throw th;
        } catch (Throwable th6) {
            th6.printStackTrace();
            throw th;
        }
    }

    private static boolean e(String str, String str2) {
        try {
            return new File(str, str2 + ".0").exists();
        } catch (Throwable th) {
            e6.r(th, "leg", "fet");
            return false;
        }
    }

    private static byte[] f(z6 z6Var, p7 p7Var, List<String> list) {
        try {
            File fileS = z6Var.s();
            if (fileS != null && fileS.exists()) {
                int length = 0;
                for (String str : fileS.list()) {
                    if (str.contains(".0")) {
                        String str2 = str.split("\\.")[0];
                        byte[] bArrF = w7.f(z6Var, str2, false);
                        length += bArrF.length;
                        list.add(str2);
                        if (length > p7Var.f11083f.d()) {
                            break;
                        }
                        p7Var.f11084g.c(bArrF);
                    }
                }
                return p7Var.f11084g.a();
            }
        } catch (Throwable th) {
            e6.r(th, "leg", "gCo");
        }
        return new byte[0];
    }
}
