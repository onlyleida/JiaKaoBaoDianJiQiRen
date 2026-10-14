package com.loc;

import android.content.Context;
import java.io.InputStream;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class bs {
    public static bm a(WeakReference<bm> weakReference) {
        if (weakReference == null || weakReference.get() == null) {
            weakReference = new WeakReference<>(new bm());
        }
        return weakReference.get();
    }

    public static String a() {
        return w.a(System.currentTimeMillis());
    }

    public static String a(Context context, v vVar) {
        StringBuilder sb = new StringBuilder();
        try {
            String strF = n.f(context);
            sb.append("\"sim\":\"");
            sb.append(strF);
            sb.append("\",\"sdkversion\":\"");
            sb.append(vVar.c());
            sb.append("\",\"product\":\"");
            sb.append(vVar.a());
            sb.append("\",\"ed\":\"");
            sb.append(vVar.d());
            sb.append("\",\"nt\":\"");
            sb.append(n.d(context));
            sb.append("\",\"np\":\"");
            sb.append(n.b(context));
            sb.append("\",\"mnc\":\"");
            sb.append(n.c(context));
            sb.append("\",\"ant\":\"");
            sb.append(n.e(context));
            sb.append("\"");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return sb.toString();
    }

    public static String a(String str, String str2, int i, String str3, String str4) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(",\"timestamp\":\"");
        stringBuffer.append(str2);
        stringBuffer.append("\",\"et\":\"");
        stringBuffer.append(i);
        stringBuffer.append("\",\"classname\":\"");
        stringBuffer.append(str3);
        stringBuffer.append("\",");
        stringBuffer.append("\"detail\":\"");
        stringBuffer.append(str4);
        stringBuffer.append("\"");
        return stringBuffer.toString();
    }

    public static void a(Context context, bm bmVar, String str, int i, int i2, String str2) {
        bmVar.f12623a = ak.c(context, str);
        bmVar.f12624d = i;
        bmVar.b = i2;
        bmVar.c = str2;
    }

    static byte[] a(bc bcVar, String str) {
        bc.b bVarA;
        byte[] bArr = new byte[0];
        InputStream inputStream = null;
        try {
            bVarA = bcVar.a(str);
            if (bVarA == null) {
                if (bVarA != null) {
                    try {
                        bVarA.close();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                return bArr;
            }
            try {
                InputStream inputStreamA = bVarA.a();
                if (inputStreamA == null) {
                    if (inputStreamA != null) {
                        try {
                            inputStreamA.close();
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                    }
                    if (bVarA != null) {
                        try {
                            bVarA.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                    return bArr;
                }
                bArr = new byte[inputStreamA.available()];
                inputStreamA.read(bArr);
                if (inputStreamA != null) {
                    try {
                        inputStreamA.close();
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                }
                if (bVarA != null) {
                    try {
                        bVarA.close();
                    } catch (Throwable th5) {
                        th5.printStackTrace();
                    }
                }
                return bArr;
            } catch (Throwable th6) {
                th = th6;
                try {
                    am.b(th, "sui", "rdS");
                    return bArr;
                } finally {
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (Throwable th7) {
                            th7.printStackTrace();
                        }
                    }
                    if (bVarA != null) {
                        try {
                            bVarA.close();
                        } catch (Throwable th8) {
                            th8.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th9) {
            th = th9;
            bVarA = null;
        }
    }
}
