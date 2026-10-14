package com.loc;

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

/* JADX INFO: loaded from: classes4.dex */
public final class u {
    private static String a() {
        String defaultHost;
        try {
            defaultHost = Proxy.getDefaultHost();
        } catch (Throwable th) {
            am.b(th, "pu", "gdh");
            defaultHost = null;
        }
        return defaultHost == null ? BuildConfig.COMMON_MODULE_COMMIT_ID : defaultHost;
    }

    private static String a(String str) {
        return w.c(str);
    }

    public static java.net.Proxy a(Context context) {
        try {
            return Build.VERSION.SDK_INT >= 11 ? a(context, new URI("http://restsdk.amap.com")) : b(context);
        } catch (Throwable th) {
            am.b(th, "pu", "gp");
            return null;
        }
    }

    private static java.net.Proxy a(Context context, URI uri) {
        java.net.Proxy proxy;
        if (c(context)) {
            try {
                List<java.net.Proxy> listSelect = ProxySelector.getDefault().select(uri);
                if (listSelect == null || listSelect.isEmpty() || (proxy = listSelect.get(0)) == null || proxy.type() == java.net.Proxy.Type.DIRECT) {
                    return null;
                }
                return proxy;
            } catch (Throwable th) {
                am.b(th, "pu", "gpsc");
            }
        }
        return null;
    }

    private static int b() {
        try {
            return Proxy.getDefaultPort();
        } catch (Throwable th) {
            am.b(th, "pu", "gdp");
            return -1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0150 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:114:0x0159 A[Catch: all -> 0x0155, TRY_LEAVE, TryCatch #9 {all -> 0x0155, blocks: (B:107:0x014a, B:114:0x0159), top: B:129:0x014a }] */
    /* JADX WARN: Code duplicated, block: B:126:0x013e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:0x014a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x00d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0076 A[PHI: r11
      0x0076: PHI (r11v29 java.lang.String) = (r11v24 java.lang.String), (r11v33 java.lang.String) binds: [B:49:0x00ab, B:29:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:31:0x0079 A[PHI: r10 r11
      0x0079: PHI (r10v11 int) = (r10v10 int), (r10v13 int) binds: [B:49:0x00ab, B:29:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0079: PHI (r11v28 java.lang.String) = (r11v24 java.lang.String), (r11v33 java.lang.String) binds: [B:49:0x00ab, B:29:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:55:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ef A[Catch: all -> 0x016e, TryCatch #2 {all -> 0x016e, blocks: (B:65:0x00ca, B:74:0x00e4, B:76:0x00ef, B:78:0x0103, B:80:0x0109, B:85:0x0115, B:88:0x011c, B:90:0x0122, B:92:0x0128, B:97:0x0134), top: B:128:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0103 A[Catch: all -> 0x016e, TryCatch #2 {all -> 0x016e, blocks: (B:65:0x00ca, B:74:0x00e4, B:76:0x00ef, B:78:0x0103, B:80:0x0109, B:85:0x0115, B:88:0x011c, B:90:0x0122, B:92:0x0128, B:97:0x0134), top: B:128:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0109 A[Catch: all -> 0x016e, TryCatch #2 {all -> 0x016e, blocks: (B:65:0x00ca, B:74:0x00e4, B:76:0x00ef, B:78:0x0103, B:80:0x0109, B:85:0x0115, B:88:0x011c, B:90:0x0122, B:92:0x0128, B:97:0x0134), top: B:128:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0112  */
    /* JADX WARN: Code duplicated, block: B:85:0x0115 A[Catch: all -> 0x016e, TryCatch #2 {all -> 0x016e, blocks: (B:65:0x00ca, B:74:0x00e4, B:76:0x00ef, B:78:0x0103, B:80:0x0109, B:85:0x0115, B:88:0x011c, B:90:0x0122, B:92:0x0128, B:97:0x0134), top: B:128:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x011b  */
    /* JADX WARN: Code duplicated, block: B:88:0x011c A[Catch: all -> 0x016e, TryCatch #2 {all -> 0x016e, blocks: (B:65:0x00ca, B:74:0x00e4, B:76:0x00ef, B:78:0x0103, B:80:0x0109, B:85:0x0115, B:88:0x011c, B:90:0x0122, B:92:0x0128, B:97:0x0134), top: B:128:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0122 A[Catch: all -> 0x016e, TryCatch #2 {all -> 0x016e, blocks: (B:65:0x00ca, B:74:0x00e4, B:76:0x00ef, B:78:0x0103, B:80:0x0109, B:85:0x0115, B:88:0x011c, B:90:0x0122, B:92:0x0128, B:97:0x0134), top: B:128:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0128 A[Catch: all -> 0x016e, TryCatch #2 {all -> 0x016e, blocks: (B:65:0x00ca, B:74:0x00e4, B:76:0x00ef, B:78:0x0103, B:80:0x0109, B:85:0x0115, B:88:0x011c, B:90:0x0122, B:92:0x0128, B:97:0x0134), top: B:128:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0131  */
    /* JADX WARN: Code duplicated, block: B:97:0x0134 A[Catch: all -> 0x016e, TRY_LEAVE, TryCatch #2 {all -> 0x016e, blocks: (B:65:0x00ca, B:74:0x00e4, B:76:0x00ef, B:78:0x0103, B:80:0x0109, B:85:0x0115, B:88:0x011c, B:90:0x0122, B:92:0x0128, B:97:0x0134), top: B:128:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x013b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v8, types: [int] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [int] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.content.ContentResolver, android.database.Cursor] */
    private static java.net.Proxy b(Context context) {
        Cursor cursorQuery;
        ?? r10;
        String strQ;
        ?? B;
        ?? r11;
        String lowerCase;
        String strA;
        boolean z;
        boolean z2;
        String lowerCase2;
        int iB;
        boolean z3;
        int i;
        boolean z4;
        if (c(context)) {
            Uri uri = Uri.parse("content://telephony/carriers/preferapn");
            ?? contentResolver = context.getContentResolver();
            String strA2 = null;
            boolean z5 = false;
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
                                            String strA3 = a();
                                            iB = b();
                                            if (TextUtils.isEmpty(strA3) || strA3.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                                                strA2 = null;
                                                z4 = false;
                                            } else {
                                                strA2 = strA3;
                                                z4 = true;
                                            }
                                            if (!z4) {
                                                strA2 = a("QMTAuMC4wLjIwMA==");
                                            }
                                            if (iB == -1) {
                                                i = 80;
                                            } else {
                                                i = iB;
                                            }
                                        } else if (lowerCase2 == null || !lowerCase2.contains("wap")) {
                                            strA2 = null;
                                            i = -1;
                                        } else {
                                            String strA4 = a();
                                            iB = b();
                                            if (TextUtils.isEmpty(strA4) || strA4.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                                                strA2 = null;
                                                z3 = false;
                                            } else {
                                                strA2 = strA4;
                                                z3 = true;
                                            }
                                            if (!z3) {
                                                strA2 = a("QMTAuMC4wLjE3Mg==");
                                            }
                                            if (iB == -1) {
                                                i = 80;
                                            } else {
                                                i = iB;
                                            }
                                        }
                                    } catch (SecurityException e2) {
                                        e = e2;
                                        am.b(e, "pu", "ghp");
                                        strQ = n.q(context);
                                        if (strQ != null) {
                                            lowerCase = strQ.toLowerCase(Locale.US);
                                            strA = a();
                                            B = b();
                                            if (lowerCase.indexOf("ctwap") != -1) {
                                                if (!TextUtils.isEmpty(strA) || strA.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                                                    z2 = false;
                                                } else {
                                                    strA2 = strA;
                                                    z2 = true;
                                                }
                                                if (!z2) {
                                                    strA2 = a("QMTAuMC4wLjIwMA==");
                                                }
                                                if (B == -1) {
                                                    B = 80;
                                                }
                                            } else if (lowerCase.indexOf("wap") != -1) {
                                                if (!TextUtils.isEmpty(strA) || strA.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                                                    z = false;
                                                } else {
                                                    strA2 = strA;
                                                    z = true;
                                                }
                                                if (!z) {
                                                    strA2 = a("QMTAuMC4wLjE3Mg==");
                                                }
                                                B = 80;
                                            }
                                        } else {
                                            B = r10;
                                        }
                                        if (cursorQuery != null) {
                                            try {
                                                cursorQuery.close();
                                            } catch (Throwable th) {
                                                am.b(th, "pu", "gPx2");
                                            }
                                        }
                                        r11 = B;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        am.b(th, "pu", "gPx1");
                                        th.printStackTrace();
                                        r11 = r10;
                                        if (cursorQuery != null) {
                                            try {
                                                cursorQuery.close();
                                                r11 = r10;
                                            } catch (Throwable th3) {
                                                am.b(th3, "pu", "gPx2");
                                                r11 = r10;
                                            }
                                        }
                                    }
                                } catch (SecurityException e3) {
                                    e = e3;
                                    strA2 = null;
                                    am.b(e, "pu", "ghp");
                                    strQ = n.q(context);
                                    if (strQ != null) {
                                        lowerCase = strQ.toLowerCase(Locale.US);
                                        strA = a();
                                        B = b();
                                        if (lowerCase.indexOf("ctwap") != -1) {
                                            if (TextUtils.isEmpty(strA)) {
                                                z2 = false;
                                            } else {
                                                z2 = false;
                                            }
                                            if (!z2) {
                                                strA2 = a("QMTAuMC4wLjIwMA==");
                                            }
                                            if (B == -1) {
                                                B = 80;
                                            }
                                        } else if (lowerCase.indexOf("wap") != -1) {
                                            if (TextUtils.isEmpty(strA)) {
                                                z = false;
                                            } else {
                                                z = false;
                                            }
                                            if (!z) {
                                                strA2 = a("QMTAuMC4wLjE3Mg==");
                                            }
                                            B = 80;
                                        }
                                    } else {
                                        B = r10;
                                    }
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    r11 = B;
                                } catch (Throwable th4) {
                                    th = th4;
                                    strA2 = null;
                                    am.b(th, "pu", "gPx1");
                                    th.printStackTrace();
                                    r11 = r10;
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                        r11 = r10;
                                    }
                                }
                            } else {
                                strA2 = null;
                                i = -1;
                            }
                        } catch (SecurityException e4) {
                            e = e4;
                            strA2 = null;
                            r10 = -1;
                            am.b(e, "pu", "ghp");
                            strQ = n.q(context);
                            if (strQ != null) {
                                lowerCase = strQ.toLowerCase(Locale.US);
                                strA = a();
                                B = b();
                                if (lowerCase.indexOf("ctwap") != -1) {
                                    if (TextUtils.isEmpty(strA)) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    if (!z2) {
                                        strA2 = a("QMTAuMC4wLjIwMA==");
                                    }
                                    if (B == -1) {
                                        B = 80;
                                    }
                                } else if (lowerCase.indexOf("wap") != -1) {
                                    if (TextUtils.isEmpty(strA)) {
                                        z = false;
                                    } else {
                                        z = false;
                                    }
                                    if (!z) {
                                        strA2 = a("QMTAuMC4wLjE3Mg==");
                                    }
                                    B = 80;
                                }
                            } else {
                                B = r10;
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            r11 = B;
                            if (strA2 != null) {
                                try {
                                    if (strA2.length() > 0) {
                                        z5 = true;
                                    }
                                } catch (Throwable th5) {
                                    aj.a(th5, "pu", "gp2");
                                    th5.printStackTrace();
                                }
                            }
                            if (z5) {
                                return new java.net.Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(strA2, r11));
                            }
                            return null;
                        } catch (Throwable th6) {
                            th = th6;
                            strA2 = null;
                            r10 = -1;
                            am.b(th, "pu", "gPx1");
                            th.printStackTrace();
                            r11 = r10;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                                r11 = r10;
                            }
                            if (strA2 != null) {
                                if (strA2.length() > 0) {
                                    z5 = true;
                                }
                            }
                            if (z5) {
                                return new java.net.Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(strA2, r11));
                            }
                            return null;
                        }
                    } else {
                        strA2 = null;
                        i = -1;
                    }
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th7) {
                            am.b(th7, "pu", "gPx2");
                        }
                    }
                    r11 = i;
                } catch (Throwable th8) {
                    if (contentResolver == 0) {
                        throw th8;
                    }
                    try {
                        contentResolver.close();
                        throw th8;
                    } catch (Throwable th9) {
                        am.b(th9, "pu", "gPx2");
                        throw th8;
                    }
                }
            } catch (SecurityException e5) {
                e = e5;
                cursorQuery = null;
                strA2 = null;
            } catch (Throwable th10) {
                th = th10;
                cursorQuery = null;
                strA2 = null;
            }
            if (strA2 != null) {
                if (strA2.length() > 0 && r11 != -1) {
                    z5 = true;
                }
            }
            if (z5) {
                return new java.net.Proxy(java.net.Proxy.Type.HTTP, InetSocketAddress.createUnresolved(strA2, r11));
            }
        }
        return null;
    }

    private static boolean c(Context context) {
        return n.o(context) == 0;
    }
}
