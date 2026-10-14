package com.amap.api.mapcore.util;

import android.content.Context;
import java.io.InputStream;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class w7 {
    public static p7 a(WeakReference<p7> weakReference) {
        if (weakReference == null || weakReference.get() == null) {
            weakReference = new WeakReference<>(new p7());
        }
        return weakReference.get();
    }

    public static String b() {
        return n5.b(System.currentTimeMillis());
    }

    public static String c(Context context, m5 m5Var) {
        StringBuilder sb = new StringBuilder();
        try {
            String strK = g5.K(context);
            sb.append("\"sim\":\"");
            sb.append(strK);
            sb.append("\",\"sdkversion\":\"");
            sb.append(m5Var.g());
            sb.append("\",\"product\":\"");
            sb.append(m5Var.a());
            sb.append("\",\"ed\":\"");
            sb.append(m5Var.i());
            sb.append("\",\"nt\":\"");
            sb.append(g5.G(context));
            sb.append("\",\"np\":\"");
            sb.append(g5.C(context));
            sb.append("\",\"mnc\":\"");
            sb.append(g5.F(context));
            sb.append("\",\"ant\":\"");
            sb.append(g5.I(context));
            sb.append("\"");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return sb.toString();
    }

    public static String d(String str, String str2, String str3, int i, String str4, String str5) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2);
        stringBuffer.append(",");
        stringBuffer.append("\"timestamp\":\"");
        stringBuffer.append(str3);
        stringBuffer.append("\",\"et\":\"");
        stringBuffer.append(i);
        stringBuffer.append("\",\"classname\":\"");
        stringBuffer.append(str4);
        stringBuffer.append("\",");
        stringBuffer.append("\"detail\":\"");
        stringBuffer.append(str5);
        stringBuffer.append("\"");
        return stringBuffer.toString();
    }

    public static void e(Context context, p7 p7Var, String str, int i, int i2, String str2) {
        p7Var.f11080a = c6.i(context, str);
        p7Var.f11081d = i;
        p7Var.b = i2;
        p7Var.c = str2;
    }

    static byte[] f(z6 z6Var, String str, boolean z) {
        z6.e eVarC;
        byte[] bArr = new byte[0];
        InputStream inputStream = null;
        try {
            eVarC = z6Var.c(str);
            if (eVarC == null) {
                if (eVarC != null) {
                    try {
                        eVarC.close();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                return bArr;
            }
            try {
                InputStream inputStreamA = eVarC.a(0);
                if (inputStreamA == null) {
                    if (inputStreamA != null) {
                        try {
                            inputStreamA.close();
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                    }
                    if (eVarC != null) {
                        try {
                            eVarC.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                    return bArr;
                }
                bArr = new byte[inputStreamA.available()];
                inputStreamA.read(bArr);
                if (z) {
                    z6Var.x(str);
                }
                if (inputStreamA != null) {
                    try {
                        inputStreamA.close();
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                }
                if (eVarC != null) {
                    try {
                        eVarC.close();
                    } catch (Throwable th5) {
                        th5.printStackTrace();
                    }
                }
                return bArr;
            } catch (Throwable th6) {
                th = th6;
                try {
                    e6.r(th, "sui", "rdS");
                    return bArr;
                } finally {
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (Throwable th7) {
                            th7.printStackTrace();
                        }
                    }
                    if (eVarC != null) {
                        try {
                            eVarC.close();
                        } catch (Throwable th8) {
                            th8.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th9) {
            th = th9;
            eVarC = null;
        }
    }
}
