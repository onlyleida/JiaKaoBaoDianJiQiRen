package com.mobile.auth.d;

import android.content.Context;
import android.net.Network;
import android.os.Build;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13136a = "d";

    /* JADX WARN: Code duplicated, block: B:45:0x00dd A[Catch: Exception -> 0x00d9, all -> 0x0121, TryCatch #1 {all -> 0x0121, blocks: (B:3:0x0012, B:6:0x001c, B:41:0x00d5, B:45:0x00dd, B:47:0x00e2, B:49:0x00e6, B:57:0x00f7, B:61:0x00ff, B:63:0x0104, B:68:0x010c, B:72:0x0114, B:74:0x0119, B:77:0x0120, B:76:0x011d, B:55:0x00ee), top: B:87:0x0012, inners: #0, #5 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e2 A[Catch: Exception -> 0x00d9, all -> 0x0121, TRY_LEAVE, TryCatch #1 {all -> 0x0121, blocks: (B:3:0x0012, B:6:0x001c, B:41:0x00d5, B:45:0x00dd, B:47:0x00e2, B:49:0x00e6, B:57:0x00f7, B:61:0x00ff, B:63:0x0104, B:68:0x010c, B:72:0x0114, B:74:0x0119, B:77:0x0120, B:76:0x011d, B:55:0x00ee), top: B:87:0x0012, inners: #0, #5 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ff A[Catch: Exception -> 0x00fb, all -> 0x0121, TryCatch #1 {all -> 0x0121, blocks: (B:3:0x0012, B:6:0x001c, B:41:0x00d5, B:45:0x00dd, B:47:0x00e2, B:49:0x00e6, B:57:0x00f7, B:61:0x00ff, B:63:0x0104, B:68:0x010c, B:72:0x0114, B:74:0x0119, B:77:0x0120, B:76:0x011d, B:55:0x00ee), top: B:87:0x0012, inners: #0, #5 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0104 A[Catch: Exception -> 0x00fb, all -> 0x0121, TRY_LEAVE, TryCatch #1 {all -> 0x0121, blocks: (B:3:0x0012, B:6:0x001c, B:41:0x00d5, B:45:0x00dd, B:47:0x00e2, B:49:0x00e6, B:57:0x00f7, B:61:0x00ff, B:63:0x0104, B:68:0x010c, B:72:0x0114, B:74:0x0119, B:77:0x0120, B:76:0x011d, B:55:0x00ee), top: B:87:0x0012, inners: #0, #5 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String a(Context context, String str, Network network) {
        InputStream inputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        int i = Build.VERSION.SDK_INT;
        try {
            String str2 = "";
            int i2 = com.mobile.auth.a.a.f13067d;
            if (i2 <= 0) {
                i2 = 3000;
            }
            int i3 = com.mobile.auth.a.a.f13068e;
            int i4 = i3 > 0 ? i3 : 3000;
            try {
                URL url = new URL(str);
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((network == null || i < 21) ? url.openConnection() : network.openConnection(url));
                httpsURLConnection.setRequestProperty("accept", "*/*");
                httpsURLConnection.setRequestProperty("connection", "Keep-Alive");
                httpsURLConnection.setRequestMethod(Constants.HTTP_GET);
                httpsURLConnection.setDoOutput(false);
                httpsURLConnection.setDoInput(true);
                httpsURLConnection.setConnectTimeout(i2);
                httpsURLConnection.setReadTimeout(i4);
                httpsURLConnection.setUseCaches(false);
                httpsURLConnection.addRequestProperty(HttpHeaders.ACCEPT_CHARSET, "UTF-8");
                httpsURLConnection.connect();
                if (httpsURLConnection.getResponseCode() == 302) {
                    URL url2 = new URL(httpsURLConnection.getHeaderField(HttpHeaders.LOCATION));
                    httpsURLConnection = (HttpsURLConnection) ((network == null || i < 21) ? url2.openConnection() : network.openConnection(url2));
                    httpsURLConnection.setRequestProperty("accept", "*/*");
                    httpsURLConnection.setRequestProperty("connection", "Keep-Alive");
                    httpsURLConnection.setRequestMethod(Constants.HTTP_GET);
                    httpsURLConnection.setDoOutput(false);
                    httpsURLConnection.setDoInput(true);
                    httpsURLConnection.setConnectTimeout(i2);
                    httpsURLConnection.setReadTimeout(i4);
                    httpsURLConnection.setUseCaches(false);
                    httpsURLConnection.addRequestProperty(HttpHeaders.ACCEPT_CHARSET, "UTF-8");
                    httpsURLConnection.connect();
                }
                if (httpsURLConnection.getResponseCode() == 200) {
                    inputStream = httpsURLConnection.getInputStream();
                    try {
                        inputStreamReader = new InputStreamReader(inputStream);
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                            while (true) {
                                try {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    }
                                    str2 = str2 + line;
                                } catch (Throwable th) {
                                    th = th;
                                    try {
                                        com.mobile.auth.a.a.a(f13136a, "doGet error", th);
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                                if (inputStreamReader != null) {
                                                    inputStreamReader.close();
                                                }
                                                if (inputStream != null) {
                                                    inputStream.close();
                                                }
                                            } catch (Exception e2) {
                                                e = e2;
                                                e.printStackTrace();
                                            }
                                        } else {
                                            if (inputStreamReader != null) {
                                                inputStreamReader.close();
                                            }
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                        }
                                        return str2;
                                    } catch (Throwable th2) {
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                            } catch (Exception e3) {
                                                e3.printStackTrace();
                                                throw th2;
                                            }
                                        }
                                        if (inputStreamReader != null) {
                                            inputStreamReader.close();
                                        }
                                        if (inputStream == null) {
                                            throw th2;
                                        }
                                        inputStream.close();
                                        throw th2;
                                    }
                                }
                                e.printStackTrace();
                                return str2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            bufferedReader = null;
                            com.mobile.auth.a.a.a(f13136a, "doGet error", th);
                            if (bufferedReader != null) {
                                bufferedReader.close();
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            } else {
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            }
                            return str2;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        inputStreamReader = null;
                        bufferedReader = null;
                        com.mobile.auth.a.a.a(f13136a, "doGet error", th);
                        if (bufferedReader != null) {
                            bufferedReader.close();
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } else {
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        }
                        return str2;
                    }
                }
                inputStream = null;
                inputStreamReader = null;
                bufferedReader = null;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                    }
                } else {
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
            }
            return str2;
        } catch (Throwable th6) {
            try {
                com.mobile.auth.gatewayauth.a.a(th6);
                return null;
            } catch (Throwable th7) {
                com.mobile.auth.gatewayauth.a.a(th7);
                return null;
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0354 */
    /* JADX WARN: Code duplicated, block: B:101:0x0271 A[Catch: all -> 0x0346, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0346, blocks: (B:83:0x01e1, B:85:0x01e6, B:92:0x0229, B:94:0x022e, B:101:0x0271, B:109:0x02b5, B:117:0x02fa, B:125:0x033f), top: B:146:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x02b5 A[Catch: all -> 0x0346, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0346, blocks: (B:83:0x01e1, B:85:0x01e6, B:92:0x0229, B:94:0x022e, B:101:0x0271, B:109:0x02b5, B:117:0x02fa, B:125:0x033f), top: B:146:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x02fa A[Catch: all -> 0x0346, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0346, blocks: (B:83:0x01e1, B:85:0x01e6, B:92:0x0229, B:94:0x022e, B:101:0x0271, B:109:0x02b5, B:117:0x02fa, B:125:0x033f), top: B:146:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x033f A[Catch: all -> 0x0346, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0346, blocks: (B:83:0x01e1, B:85:0x01e6, B:92:0x0229, B:94:0x022e, B:101:0x0271, B:109:0x02b5, B:117:0x02fa, B:125:0x033f), top: B:146:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0229 A[Catch: all -> 0x0346, TRY_ENTER, TryCatch #1 {all -> 0x0346, blocks: (B:83:0x01e1, B:85:0x01e6, B:92:0x0229, B:94:0x022e, B:101:0x0271, B:109:0x02b5, B:117:0x02fa, B:125:0x033f), top: B:146:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x022e A[Catch: all -> 0x0346, PHI: r1 r3 r12
      0x022e: PHI (r1v20 ??) = (r1v15 ??), (r1v16 ??), (r1v17 ??), (r1v18 ??), (r1v21 ??) binds: [B:93:0x022c, B:102:0x0274, B:110:0x02b8, B:118:0x02fd, B:126:0x0342] A[DONT_GENERATE, DONT_INLINE]
      0x022e: PHI (r3v12 ??) = (r3v7 ??), (r3v8 ??), (r3v9 ??), (r3v10 ??), (r3v13 ??) binds: [B:93:0x022c, B:102:0x0274, B:110:0x02b8, B:118:0x02fd, B:126:0x0342] A[DONT_GENERATE, DONT_INLINE]
      0x022e: PHI (r12v7 java.lang.String) = 
      (r12v2 java.lang.String)
      (r12v3 java.lang.String)
      (r12v4 java.lang.String)
      (r12v5 java.lang.String)
      (r12v8 java.lang.String)
     binds: [B:93:0x022c, B:102:0x0274, B:110:0x02b8, B:118:0x02fd, B:126:0x0342] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {all -> 0x0346, blocks: (B:83:0x01e1, B:85:0x01e6, B:92:0x0229, B:94:0x022e, B:101:0x0271, B:109:0x02b5, B:117:0x02fa, B:125:0x033f), top: B:146:0x0020 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v45 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.BufferedReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r23, java.lang.String r24, java.lang.String r25, android.net.Network r26, java.lang.String r27) {
        /*
            Method dump skipped, instruction units count: 866
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mobile.auth.d.d.a(android.content.Context, java.lang.String, java.lang.String, android.net.Network, java.lang.String):java.lang.String");
    }

    public static String a(Context context, HttpsURLConnection httpsURLConnection) {
        try {
            Map headerFields = httpsURLConnection.getHeaderFields();
            List list = (List) headerFields.get("Log-Level");
            if (list != null && !list.isEmpty()) {
                for (int i = 0; i < list.size(); i++) {
                    String str = (String) list.get(0);
                    if (!TextUtils.isEmpty(str)) {
                        com.mobile.auth.c.e.b(context, str);
                    }
                }
            }
            List list2 = (List) headerFields.get("p-ikgx");
            if (list2 != null && !list2.isEmpty()) {
                String str2 = (String) list2.get(0);
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                }
            }
        }
        return null;
    }

    public static final HostnameVerifier a() {
        try {
            return new HostnameVerifier() { // from class: com.mobile.auth.d.d.1
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    try {
                        return HttpsURLConnection.getDefaultHostnameVerifier().verify("id6.me", sSLSession);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                            return false;
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                            return false;
                        }
                    }
                }
            };
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}
