package com.amap.api.mapcore.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Proxy;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.mobile.auth.BuildConfig;
import java.net.InetSocketAddress;
import java.net.ProxySelector;
import java.net.URI;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class l5 {
    private static String a() {
        String defaultHost;
        try {
            defaultHost = Proxy.getDefaultHost();
        } catch (Throwable th) {
            e6.r(th, "pu", "gdh");
            defaultHost = null;
        }
        return defaultHost == null ? BuildConfig.COMMON_MODULE_COMMIT_ID : defaultHost;
    }

    public static String b(String str) {
        return n5.t(str);
    }

    public static java.net.Proxy c(Context context) {
        try {
            return Build.VERSION.SDK_INT >= 11 ? d(context, new URI("http://restapi.amap.com")) : g(context);
        } catch (Throwable th) {
            e6.r(th, "pu", "gp");
            return null;
        }
    }

    private static java.net.Proxy d(Context context, URI uri) {
        java.net.Proxy proxy;
        if (h(context)) {
            try {
                List<java.net.Proxy> listSelect = ProxySelector.getDefault().select(uri);
                if (listSelect == null || listSelect.isEmpty() || (proxy = listSelect.get(0)) == null || proxy.type() == java.net.Proxy.Type.DIRECT) {
                    return null;
                }
                return proxy;
            } catch (Throwable th) {
                e6.r(th, "pu", "gpsc");
            }
        }
        return null;
    }

    private static boolean e(String str, int i) {
        return (str == null || str.length() <= 0 || i == -1) ? false : true;
    }

    private static int f() {
        try {
            return Proxy.getDefaultPort();
        } catch (Throwable th) {
            e6.r(th, "pu", "gdp");
            return -1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0136 A[PHI: r11
      0x0136: PHI (r11v10 java.lang.String) = (r11v5 java.lang.String), (r11v12 java.lang.String) binds: [B:90:0x011d, B:87:0x0116] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:101:0x0139  */
    /* JADX WARN: Code duplicated, block: B:109:0x014c A[Catch: all -> 0x0158, TRY_LEAVE, TryCatch #9 {all -> 0x0158, blocks: (B:107:0x0146, B:109:0x014c), top: B:129:0x0146 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x013d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0076 A[PHI: r10 r11
      0x0076: PHI (r10v7 int) = (r10v6 int), (r10v9 int) binds: [B:50:0x00a9, B:29:0x0073] A[DONT_GENERATE, DONT_INLINE]
      0x0076: PHI (r11v30 java.lang.String) = (r11v26 java.lang.String), (r11v34 java.lang.String) binds: [B:50:0x00a9, B:29:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ec A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:66:0x00c7, B:75:0x00e1, B:77:0x00ec, B:79:0x0100, B:81:0x0106, B:86:0x0112, B:89:0x0119, B:91:0x011f, B:93:0x0125, B:98:0x0131), top: B:124:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0100 A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:66:0x00c7, B:75:0x00e1, B:77:0x00ec, B:79:0x0100, B:81:0x0106, B:86:0x0112, B:89:0x0119, B:91:0x011f, B:93:0x0125, B:98:0x0131), top: B:124:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0106 A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:66:0x00c7, B:75:0x00e1, B:77:0x00ec, B:79:0x0100, B:81:0x0106, B:86:0x0112, B:89:0x0119, B:91:0x011f, B:93:0x0125, B:98:0x0131), top: B:124:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x010e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0112 A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:66:0x00c7, B:75:0x00e1, B:77:0x00ec, B:79:0x0100, B:81:0x0106, B:86:0x0112, B:89:0x0119, B:91:0x011f, B:93:0x0125, B:98:0x0131), top: B:124:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0118  */
    /* JADX WARN: Code duplicated, block: B:89:0x0119 A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:66:0x00c7, B:75:0x00e1, B:77:0x00ec, B:79:0x0100, B:81:0x0106, B:86:0x0112, B:89:0x0119, B:91:0x011f, B:93:0x0125, B:98:0x0131), top: B:124:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x011f A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:66:0x00c7, B:75:0x00e1, B:77:0x00ec, B:79:0x0100, B:81:0x0106, B:86:0x0112, B:89:0x0119, B:91:0x011f, B:93:0x0125, B:98:0x0131), top: B:124:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0125 A[Catch: all -> 0x0162, TryCatch #1 {all -> 0x0162, blocks: (B:66:0x00c7, B:75:0x00e1, B:77:0x00ec, B:79:0x0100, B:81:0x0106, B:86:0x0112, B:89:0x0119, B:91:0x011f, B:93:0x0125, B:98:0x0131), top: B:124:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x012e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0131 A[Catch: all -> 0x0162, TRY_LEAVE, TryCatch #1 {all -> 0x0162, blocks: (B:66:0x00c7, B:75:0x00e1, B:77:0x00ec, B:79:0x0100, B:81:0x0106, B:86:0x0112, B:89:0x0119, B:91:0x011f, B:93:0x0125, B:98:0x0131), top: B:124:0x0028 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v5, types: [int] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v13 */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.content.ContentResolver, android.database.Cursor] */
    private static java.net.Proxy g(Context context) {
        Cursor cursorQuery;
        ?? r10;
        String strX;
        Throwable th;
        String lowerCase;
        String strA;
        int iF;
        boolean z;
        ?? r15;
        String lowerCase2;
        int iF2;
        boolean z2;
        boolean z3;
        if (h(context)) {
            Uri uri = Uri.parse("content://telephony/carriers/preferapn");
            ?? contentResolver = context.getContentResolver();
            String strB = null;
            boolean z4 = true;
            ?? r17 = 80;
            r17 = 80;
            r17 = 80;
            r17 = 80;
            r17 = 80;
            ?? r16 = -1;
            r16 = -1;
            try {
                try {
                    cursorQuery = contentResolver.query(uri, null, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex("apn"));
                                if (string != null) {
                                    lowerCase2 = string;
                                    r10 = uri;
                                    Locale locale = Locale.US;
                                    lowerCase2 = string.toLowerCase(locale);
                                    r10 = locale;
                                }
                                try {
                                    try {
                                        lowerCase2 = string;
                                        r10 = uri;
                                        if (lowerCase2 != null && lowerCase2.contains("ctwap")) {
                                            String strA2 = a();
                                            iF2 = f();
                                            if (TextUtils.isEmpty(strA2) || strA2.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                                                strB = null;
                                                z3 = false;
                                            } else {
                                                strB = strA2;
                                                z3 = true;
                                            }
                                            if (!z3) {
                                                strB = b("QMTAuMC4wLjIwMA==");
                                            }
                                            if (iF2 != -1) {
                                                r17 = iF2;
                                            }
                                        } else if (lowerCase2 == null || !lowerCase2.contains("wap")) {
                                            strB = null;
                                            r17 = -1;
                                        } else {
                                            String strA3 = a();
                                            iF2 = f();
                                            if (TextUtils.isEmpty(strA3) || strA3.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                                                strB = null;
                                                z2 = false;
                                            } else {
                                                strB = strA3;
                                                z2 = true;
                                            }
                                            if (!z2) {
                                                strB = b("QMTAuMC4wLjE3Mg==");
                                            }
                                            if (iF2 != -1) {
                                                r17 = iF2;
                                            }
                                        }
                                    } catch (SecurityException e2) {
                                        e = e2;
                                        strB = null;
                                        e6.r(e, "pu", "ghp");
                                        strX = g5.X(context);
                                        if (strX != null) {
                                            lowerCase = strX.toLowerCase(Locale.US);
                                            strA = a();
                                            iF = f();
                                            if (lowerCase.indexOf("ctwap") != -1) {
                                                if (!TextUtils.isEmpty(strA) || strA.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                                                    z4 = false;
                                                } else {
                                                    strB = strA;
                                                }
                                                if (!z4) {
                                                    strB = b("QMTAuMC4wLjIwMA==");
                                                }
                                                if (iF != -1) {
                                                    r17 = iF;
                                                }
                                            } else if (lowerCase.indexOf("wap") != -1) {
                                                if (!TextUtils.isEmpty(strA) || strA.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                                                    z = false;
                                                } else {
                                                    strB = strA;
                                                    z = true;
                                                }
                                                if (!z) {
                                                    strB = b("QMTAuMC4wLjE3Mg==");
                                                }
                                            } else {
                                                r17 = iF;
                                            }
                                        } else {
                                            r17 = r10;
                                        }
                                        if (cursorQuery != null) {
                                            try {
                                                cursorQuery.close();
                                            } catch (Throwable th2) {
                                                th = th2;
                                                r17 = r17;
                                                e6.r(th, "pu", "gPx2");
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        strB = null;
                                        r16 = r10;
                                        e6.r(th, "pu", "gPx1");
                                        th.printStackTrace();
                                        r15 = r16;
                                        if (cursorQuery != null) {
                                            try {
                                                cursorQuery.close();
                                                r15 = r16;
                                            } catch (Throwable th4) {
                                                e6.r(th4, "pu", "gPx2");
                                                r15 = r16;
                                            }
                                        }
                                        if (e(strB, r15)) {
                                            return new java.net.Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(strB, r15));
                                        }
                                        return null;
                                    }
                                } catch (SecurityException e3) {
                                    e = e3;
                                    e6.r(e, "pu", "ghp");
                                    strX = g5.X(context);
                                    if (strX != null) {
                                        lowerCase = strX.toLowerCase(Locale.US);
                                        strA = a();
                                        iF = f();
                                        if (lowerCase.indexOf("ctwap") != -1) {
                                            if (TextUtils.isEmpty(strA)) {
                                                z4 = false;
                                            } else {
                                                z4 = false;
                                            }
                                            if (!z4) {
                                                strB = b("QMTAuMC4wLjIwMA==");
                                            }
                                            if (iF != -1) {
                                                r17 = iF;
                                            }
                                        } else if (lowerCase.indexOf("wap") != -1) {
                                            if (TextUtils.isEmpty(strA)) {
                                                z = false;
                                            } else {
                                                z = false;
                                            }
                                            if (!z) {
                                                strB = b("QMTAuMC4wLjE3Mg==");
                                            }
                                        } else {
                                            r17 = iF;
                                        }
                                    } else {
                                        r17 = r10;
                                    }
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    r16 = r10;
                                    e6.r(th, "pu", "gPx1");
                                    th.printStackTrace();
                                    r15 = r16;
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                        r15 = r16;
                                    }
                                    if (e(strB, r15)) {
                                        return new java.net.Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(strB, r15));
                                    }
                                    return null;
                                }
                            } else {
                                strB = null;
                                r17 = -1;
                            }
                        } catch (SecurityException e4) {
                            e = e4;
                            strB = null;
                            r10 = -1;
                            e6.r(e, "pu", "ghp");
                            strX = g5.X(context);
                            if (strX != null) {
                                lowerCase = strX.toLowerCase(Locale.US);
                                strA = a();
                                iF = f();
                                if (lowerCase.indexOf("ctwap") != -1) {
                                    if (TextUtils.isEmpty(strA)) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (!z4) {
                                        strB = b("QMTAuMC4wLjIwMA==");
                                    }
                                    if (iF != -1) {
                                        r17 = iF;
                                    }
                                } else if (lowerCase.indexOf("wap") != -1) {
                                    if (TextUtils.isEmpty(strA)) {
                                        z = false;
                                    } else {
                                        z = false;
                                    }
                                    if (!z) {
                                        strB = b("QMTAuMC4wLjE3Mg==");
                                    }
                                } else {
                                    r17 = iF;
                                }
                            } else {
                                r17 = r10;
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            r15 = r17;
                            if (e(strB, r15)) {
                                return new java.net.Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(strB, r15));
                            }
                            return null;
                        } catch (Throwable th6) {
                            th = th6;
                            strB = null;
                        }
                    } else {
                        strB = null;
                        r17 = -1;
                    }
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th7) {
                            th = th7;
                            r17 = r17;
                            e6.r(th, "pu", "gPx2");
                        }
                    }
                } catch (Throwable th8) {
                    if (contentResolver == 0) {
                        throw th8;
                    }
                    try {
                        contentResolver.close();
                        throw th8;
                    } catch (Throwable th9) {
                        e6.r(th9, "pu", "gPx2");
                        throw th8;
                    }
                }
            } catch (SecurityException e5) {
                e = e5;
                cursorQuery = null;
                strB = null;
            } catch (Throwable th10) {
                th = th10;
                cursorQuery = null;
                strB = null;
            }
            r15 = r17;
            try {
                if (e(strB, r15)) {
                    return new java.net.Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(strB, r15));
                }
            } catch (Throwable th11) {
                b6.e(th11, "pu", "gp2");
                th11.printStackTrace();
            }
        }
        return null;
    }

    private static boolean h(Context context) {
        return g5.V(context) == 0;
    }
}
