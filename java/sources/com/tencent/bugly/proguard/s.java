package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes6.dex */
public final class s {
    private static s b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, String> f13910a = null;
    private Context c;

    private s(Context context) {
        this.c = context;
    }

    public static s a(Context context) {
        if (b == null) {
            b = new s(context);
        }
        return b;
    }

    private static byte[] b(HttpURLConnection httpURLConnection) {
        BufferedInputStream bufferedInputStream;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                byteArrayOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    bufferedInputStream.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                    return null;
                } finally {
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x017b A[Catch: all -> 0x016e, TRY_LEAVE, TryCatch #10 {all -> 0x016e, blocks: (B:24:0x009b, B:26:0x00b6, B:30:0x00c7, B:29:0x00c5, B:50:0x00f0, B:52:0x00f8, B:65:0x0127, B:67:0x0132, B:81:0x014f, B:84:0x015c, B:98:0x0175, B:100:0x017b), top: B:129:0x009b }] */
    /* JADX WARN: Code duplicated, block: B:106:0x018a A[PHI: r4 r6 r10 r13 r14
      0x018a: PHI (r4v4 java.lang.Throwable) = (r4v3 java.lang.Throwable), (r4v15 java.lang.Throwable) binds: [B:105:0x0188, B:89:0x0169] A[DONT_GENERATE, DONT_INLINE]
      0x018a: PHI (r6v7 int) = (r6v6 int), (r6v13 int) binds: [B:105:0x0188, B:89:0x0169] A[DONT_GENERATE, DONT_INLINE]
      0x018a: PHI (r10v8 java.lang.String) = (r10v7 java.lang.String), (r10v14 java.lang.String) binds: [B:105:0x0188, B:89:0x0169] A[DONT_GENERATE, DONT_INLINE]
      0x018a: PHI (r13v5 int) = (r13v4 int), (r13v9 int) binds: [B:105:0x0188, B:89:0x0169] A[DONT_GENERATE, DONT_INLINE]
      0x018a: PHI (r14v5 boolean) = (r14v4 boolean), (r14v10 boolean) binds: [B:105:0x0188, B:89:0x0169] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public final byte[] a(String str, byte[] bArr, w wVar, Map<String, String> map) {
        int i;
        Throwable th;
        byte[] bArr2 = null;
        int i2 = 0;
        if (str == null) {
            y.e("Failed for no URL.", new Object[0]);
            return null;
        }
        long length = bArr == null ? 0L : bArr.length;
        int i3 = 1;
        y.c("request: %s, send: %d (pid=%d | tid=%d)", str, Long.valueOf(length), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        String str2 = str;
        int i4 = 0;
        int i5 = 0;
        boolean z = false;
        while (i4 <= 0 && i5 <= 0) {
            if (z) {
                i = i4;
                z = false;
            } else {
                int i6 = i4 + 1;
                if (i6 > i3) {
                    y.c("try time: " + i6, new Object[i2]);
                    SystemClock.sleep(((long) new Random(System.currentTimeMillis()).nextInt(10000)) + 10000);
                }
                i = i6;
            }
            String strB = com.tencent.bugly.crashreport.common.info.b.b(this.c);
            if (strB == null) {
                y.d("Failed to request for network not avail", new Object[i2]);
                i4 = i;
            } else {
                wVar.a(length);
                HttpURLConnection httpURLConnectionA = a(str2, bArr, strB, map);
                if (httpURLConnectionA != null) {
                    try {
                        try {
                            try {
                                int responseCode = httpURLConnectionA.getResponseCode();
                                y.c("response code " + responseCode, new Object[i2]);
                                if (responseCode == 200) {
                                    this.f13910a = a(httpURLConnectionA);
                                    byte[] bArrB = b(httpURLConnectionA);
                                    wVar.b(bArrB == null ? 0L : bArrB.length);
                                    try {
                                        httpURLConnectionA.disconnect();
                                    } catch (Throwable th2) {
                                        if (!y.a(th2)) {
                                            th2.printStackTrace();
                                        }
                                    }
                                    return bArrB;
                                }
                                if (responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307) {
                                    try {
                                        String headerField = httpURLConnectionA.getHeaderField(HttpHeaders.LOCATION);
                                        if (headerField == null) {
                                            try {
                                                y.e("Failed to redirect: %d" + responseCode, new Object[0]);
                                                try {
                                                    httpURLConnectionA.disconnect();
                                                    return null;
                                                } catch (Throwable th3) {
                                                    if (y.a(th3)) {
                                                        return null;
                                                    }
                                                    th3.printStackTrace();
                                                    return null;
                                                }
                                            } catch (IOException e2) {
                                                e = e2;
                                                z = true;
                                            }
                                        } else {
                                            i5++;
                                            try {
                                                Object[] objArr = new Object[2];
                                                objArr[0] = Integer.valueOf(responseCode);
                                                try {
                                                    objArr[1] = headerField;
                                                    y.c("redirect code: %d ,to:%s", objArr);
                                                    str2 = headerField;
                                                    i = 0;
                                                    z = true;
                                                } catch (IOException e3) {
                                                    e = e3;
                                                    str2 = headerField;
                                                    i = 0;
                                                    z = true;
                                                }
                                            } catch (IOException e4) {
                                                e = e4;
                                            }
                                        }
                                    } catch (IOException e5) {
                                        e = e5;
                                    }
                                }
                                try {
                                    long contentLength = httpURLConnectionA.getContentLength();
                                    if (contentLength < 0) {
                                        contentLength = 0;
                                    }
                                    wVar.b(contentLength);
                                    try {
                                        httpURLConnectionA.disconnect();
                                    } catch (Throwable th4) {
                                        th = th4;
                                        if (!y.a(th)) {
                                            th.printStackTrace();
                                        }
                                    }
                                } catch (IOException e6) {
                                    e = e6;
                                    if (!y.a(e)) {
                                        e.printStackTrace();
                                    }
                                    httpURLConnectionA.disconnect();
                                }
                                i4 = i;
                            } catch (IOException e7) {
                                e = e7;
                            }
                            i4 = i;
                        } catch (Throwable th5) {
                            try {
                                httpURLConnectionA.disconnect();
                                throw th5;
                            } catch (Throwable th6) {
                                if (!y.a(th6)) {
                                    th6.printStackTrace();
                                    throw th5;
                                }
                                throw th5;
                            }
                        }
                        httpURLConnectionA.disconnect();
                    } catch (Throwable th7) {
                        th = th7;
                        if (!y.a(th)) {
                            th.printStackTrace();
                        }
                    }
                    if (!y.a(e)) {
                        e.printStackTrace();
                    }
                } else {
                    y.c("Failed to execute post.", new Object[0]);
                    wVar.b(0L);
                    i4 = i;
                }
                bArr2 = null;
                i2 = 0;
            }
            i3 = 1;
        }
        return bArr2;
    }

    private static Map<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null || headerFields.size() == 0) {
            return null;
        }
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list.size() > 0) {
                map.put(str, list.get(0));
            }
        }
        return map;
    }

    private HttpURLConnection a(String str, byte[] bArr, String str2, Map<String, String> map) {
        if (str == null) {
            y.e("destUrl is null.", new Object[0]);
            return null;
        }
        TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.tencent.bugly.proguard.s.1
            @Override // javax.net.ssl.X509TrustManager
            public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str3) throws CertificateException {
                y.c("checkClientTrusted", new Object[0]);
            }

            @Override // javax.net.ssl.X509TrustManager
            public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str3) throws CertificateException {
                y.c("checkServerTrusted", new Object[0]);
            }

            @Override // javax.net.ssl.X509TrustManager
            public final X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        }};
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        HttpURLConnection httpURLConnectionA = a(str2, str);
        if (httpURLConnectionA == null) {
            y.e("Failed to get HttpURLConnection object.", new Object[0]);
            return null;
        }
        try {
            httpURLConnectionA.setRequestProperty("wup_version", "3.0");
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnectionA.setRequestProperty(entry.getKey(), URLEncoder.encode(entry.getValue(), "utf-8"));
                }
            }
            httpURLConnectionA.setRequestProperty("A37", URLEncoder.encode(str2, "utf-8"));
            httpURLConnectionA.setRequestProperty("A38", URLEncoder.encode(str2, "utf-8"));
            OutputStream outputStream = httpURLConnectionA.getOutputStream();
            if (bArr == null) {
                outputStream.write(0);
            } else {
                outputStream.write(bArr);
            }
            return httpURLConnectionA;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            y.e("Failed to upload, please check your network.", new Object[0]);
            return null;
        }
    }

    private static HttpURLConnection a(String str, String str2) {
        HttpURLConnection httpURLConnection;
        try {
            URL url = new URL(str2);
            if (a.b() != null) {
                httpURLConnection = (HttpURLConnection) url.openConnection(a.b());
            } else if (str != null && str.toLowerCase(Locale.US).contains("wap")) {
                httpURLConnection = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("http.proxyHost"), Integer.parseInt(System.getProperty("http.proxyPort")))));
            } else {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            }
            httpURLConnection.setConnectTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod(Constants.HTTP_POST);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(false);
            return httpURLConnection;
        } catch (Throwable th) {
            if (y.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
