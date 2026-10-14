package com.amap.api.mapcore.util;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.amap.api.maps.AMapException;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.PushbackInputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.Vector;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
public class i7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10913a;
    private int b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SSLContext f10914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Proxy f10915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f10916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f10917g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f10918h;
    private String i;
    private c j;
    private f7.a k;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HttpURLConnection f10919a;
        public int b;

        public b(HttpURLConnection httpURLConnection, int i) {
            this.f10919a = httpURLConnection;
            this.b = i;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Vector<d> f10920a;
        private volatile d b;

        private c() {
            this.f10920a = new Vector<>();
            this.b = new d();
        }

        public d a() {
            return this.b;
        }

        public d b(String str) {
            if (TextUtils.isEmpty(str)) {
                return this.b;
            }
            for (int i = 0; i < this.f10920a.size(); i++) {
                d dVar = this.f10920a.get(i);
                if (dVar != null && dVar.a().equals(str)) {
                    return dVar;
                }
            }
            d dVar2 = new d();
            dVar2.c(str);
            this.f10920a.add(dVar2);
            return dVar2;
        }

        public void c(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.b.b(str);
        }
    }

    private static class d implements HostnameVerifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f10921a;
        private String b;

        private d() {
        }

        public String a() {
            return this.b;
        }

        public void b(String str) {
            this.f10921a = str;
        }

        public void c(String str) {
            this.b = str;
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            HostnameVerifier defaultHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
            if (TextUtils.isEmpty(this.f10921a)) {
                return !TextUtils.isEmpty(this.b) ? defaultHostnameVerifier.verify(this.b, sSLSession) : defaultHostnameVerifier.verify(str, sSLSession);
            }
            return this.f10921a.equals(str);
        }
    }

    i7(int i, int i2, Proxy proxy, boolean z) {
        this(i, i2, proxy, z, null);
    }

    public static int a(int i, k7 k7Var) {
        try {
            if (d5.D()) {
                return 4;
            }
            if ((k7Var == null || k7Var.isSupportIPV6()) && i == 2 && i == r(i)) {
                return 2;
            }
        } catch (Throwable th) {
            e6.r(th, "htu", "gt");
        }
        return 1;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x013a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x012f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0150 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private m7 c(b bVar, boolean z) throws Throwable {
        Throwable th;
        InputStream inputStream;
        InputStream inputStream2;
        PushbackInputStream pushbackInputStream;
        List<String> list;
        String str = "";
        ByteArrayOutputStream byteArrayOutputStream = null;
        gZIPInputStream = null;
        InputStream gZIPInputStream = null;
        byteArrayOutputStream = null;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            HttpURLConnection httpURLConnection = bVar.f10919a;
            httpURLConnection.connect();
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            int responseCode = httpURLConnection.getResponseCode();
            if (headerFields != null && (list = headerFields.get("gsid")) != null && list.size() > 0) {
                str = list.get(0);
            }
            if (responseCode != 200) {
                gb gbVar = new gb("网络异常原因：" + httpURLConnection.getResponseMessage() + " 网络异常状态码：" + responseCode + "  " + str + " " + this.i, str, this.i);
                gbVar.a(responseCode);
                throw gbVar;
            }
            n(bVar, false, jCurrentTimeMillis, System.currentTimeMillis());
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                inputStream2 = httpURLConnection.getInputStream();
                try {
                    pushbackInputStream = new PushbackInputStream(inputStream2, 2);
                    try {
                        byte[] bArr = new byte[2];
                        pushbackInputStream.read(bArr);
                        pushbackInputStream.unread(bArr);
                        gZIPInputStream = (bArr[0] == 31 && bArr[1] == -117 && !z) ? new GZIPInputStream(pushbackInputStream) : pushbackInputStream;
                        byte[] bArr2 = new byte[1024];
                        while (true) {
                            int i = gZIPInputStream.read(bArr2);
                            if (i == -1) {
                                break;
                            }
                            byteArrayOutputStream2.write(bArr2, 0, i);
                        }
                        e6.q();
                        m7 m7Var = new m7();
                        m7Var.f11008a = byteArrayOutputStream2.toByteArray();
                        m7Var.b = headerFields;
                        m7Var.c = this.i;
                        m7Var.f11009d = str;
                        try {
                            byteArrayOutputStream2.close();
                        } catch (Throwable th2) {
                            b6.e(th2, "ht", "par");
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (Throwable th3) {
                                b6.e(th3, "ht", "par");
                            }
                        }
                        try {
                            pushbackInputStream.close();
                        } catch (Throwable th4) {
                            b6.e(th4, "ht", "par");
                        }
                        try {
                            gZIPInputStream.close();
                        } catch (Throwable th5) {
                            b6.e(th5, "ht", "par");
                        }
                        return m7Var;
                    } catch (IOException unused) {
                        InputStream inputStream3 = gZIPInputStream;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        inputStream = inputStream3;
                        try {
                            throw new gb(AMapException.ERROR_IO, str, this.i);
                        } catch (Throwable th6) {
                            th = th6;
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Throwable th7) {
                                    b6.e(th7, "ht", "par");
                                }
                            }
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                } catch (Throwable th8) {
                                    b6.e(th8, "ht", "par");
                                }
                            }
                            if (pushbackInputStream != null) {
                                try {
                                    pushbackInputStream.close();
                                } catch (Throwable th9) {
                                    b6.e(th9, "ht", "par");
                                }
                            }
                            if (inputStream == null) {
                                throw th;
                            }
                            try {
                                inputStream.close();
                                throw th;
                            } catch (Throwable th10) {
                                b6.e(th10, "ht", "par");
                                throw th;
                            }
                        }
                    } catch (Throwable th11) {
                        th = th11;
                        InputStream inputStream4 = gZIPInputStream;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        inputStream = inputStream4;
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        if (pushbackInputStream != null) {
                            pushbackInputStream.close();
                        }
                        if (inputStream == null) {
                            throw th;
                        }
                        inputStream.close();
                        throw th;
                    }
                } catch (IOException unused2) {
                    pushbackInputStream = null;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    inputStream = pushbackInputStream;
                    throw new gb(AMapException.ERROR_IO, str, this.i);
                } catch (Throwable th12) {
                    th = th12;
                    pushbackInputStream = null;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    inputStream = pushbackInputStream;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                    if (pushbackInputStream != null) {
                        pushbackInputStream.close();
                    }
                    if (inputStream == null) {
                        throw th;
                    }
                    inputStream.close();
                    throw th;
                }
            } catch (IOException unused3) {
                inputStream2 = null;
                pushbackInputStream = null;
            } catch (Throwable th13) {
                th = th13;
                inputStream2 = null;
                pushbackInputStream = null;
            }
        } catch (IOException unused4) {
            inputStream = null;
            inputStream2 = null;
            pushbackInputStream = null;
        } catch (Throwable th14) {
            th = th14;
            inputStream = null;
            inputStream2 = null;
            pushbackInputStream = null;
        }
    }

    private String e(int i, String str, Map<String, String> map) {
        String str2 = i != 1 ? "" : f7.b;
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        Uri uri = Uri.parse(str);
        String host = uri.getHost();
        String string = uri.buildUpon().encodedAuthority(str2).build().toString();
        if (map != null) {
            map.put("targetHost", host);
        }
        if (this.c) {
            this.j.c(str2);
        }
        return string;
    }

    private String f(String str, String str2, int i) {
        if (i == 2 || i == 4) {
            try {
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
            } catch (Throwable unused) {
            }
        }
        return str;
    }

    private String g(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strI = i(map);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        if (strI != null) {
            stringBuffer.append("?");
            stringBuffer.append(strI);
        }
        return stringBuffer.toString();
    }

    private String h(HttpURLConnection httpURLConnection) {
        List<String> list;
        if (httpURLConnection == null) {
            return "";
        }
        try {
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            if (headerFields != null && (list = headerFields.get("gsid")) != null && list.size() > 0) {
                return list.get(0);
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    static String i(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (value == null) {
                value = "";
            }
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(URLEncoder.encode(key));
            sb.append("=");
            sb.append(URLEncoder.encode(value));
        }
        return sb.toString();
    }

    private void m(b bVar) {
        if (bVar == null) {
            return;
        }
        d5.g(bVar.b);
    }

    private void n(b bVar, boolean z, long j, long j2) {
        String str;
        boolean z2;
        boolean z3;
        String string = null;
        try {
            string = bVar.f10919a.getURL().toString();
            int i = bVar.b;
            boolean z4 = i == 3;
            z2 = i == 2 || i == 4;
            z3 = z4;
            str = string;
        } catch (Throwable unused) {
            str = string;
            z2 = false;
            z3 = false;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d5.q(str, z2, z3, z, Math.max(0L, j2 - j));
    }

    private void p(Map<String, String> map, HttpURLConnection httpURLConnection) {
        if (map != null) {
            for (String str : map.keySet()) {
                httpURLConnection.addRequestProperty(str, map.get(str));
            }
        }
        try {
            httpURLConnection.addRequestProperty("csid", this.i);
        } catch (Throwable th) {
            b6.e(th, "ht", "adh");
        }
        httpURLConnection.setConnectTimeout(this.f10913a);
        httpURLConnection.setReadTimeout(this.b);
    }

    public static boolean q(int i) {
        return i == 2;
    }

    public static int r(int i) {
        if (i != 2 || d5.w()) {
            return i;
        }
        return 1;
    }

    private void t() {
        try {
            this.i = UUID.randomUUID().toString().replaceAll("-", "").toLowerCase();
        } catch (Throwable th) {
            b6.e(th, "ht", "ic");
        }
    }

    private void v(b bVar) {
        n(bVar, true, 0L, 0L);
    }

    private void w(int i) {
        try {
            if (i == 2) {
                this.f10913a = Math.max(this.f10913a - 5000, 5000);
                this.b = Math.max(this.b - 5000, 5000);
            } else {
                if (i != 3) {
                    return;
                }
                this.f10913a = 5000;
                this.b = 5000;
            }
        } catch (Throwable unused) {
        }
    }

    b b(String str, String str2, boolean z, String str3, Map<String, String> map, boolean z2, int i) throws IOException {
        HttpURLConnection httpURLConnection;
        g5.D();
        String strF = f(str, str2, i);
        w(i);
        if (map == null) {
            map = new HashMap<>();
        }
        d dVarA = this.j.a();
        if (z && !TextUtils.isEmpty(str3)) {
            dVarA = this.j.b(str3);
        }
        String strE = e(f7.f10802a, strF, map);
        if (this.c) {
            strE = i5.b(strE);
        }
        URL url = new URL(strE);
        f7.a aVar = this.k;
        URLConnection uRLConnectionA = aVar != null ? aVar.a(this.f10915e, url) : null;
        if (uRLConnectionA == null) {
            Proxy proxy = this.f10915e;
            uRLConnectionA = proxy != null ? url.openConnection(proxy) : url.openConnection();
        }
        if (this.c) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionA;
            httpsURLConnection.setSSLSocketFactory(this.f10914d.getSocketFactory());
            httpsURLConnection.setHostnameVerifier(dVarA);
            httpURLConnection = httpsURLConnection;
        } else {
            httpURLConnection = (HttpURLConnection) uRLConnectionA;
        }
        if (Build.VERSION.SDK != null && Build.VERSION.SDK_INT > 13) {
            httpURLConnection.setRequestProperty(HttpHeaders.CONNECTION, "close");
        }
        p(map, httpURLConnection);
        if (z2) {
            httpURLConnection.setRequestMethod(Constants.HTTP_POST);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
        } else {
            httpURLConnection.setRequestMethod(Constants.HTTP_GET);
            httpURLConnection.setDoInput(true);
        }
        return new b(httpURLConnection, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    m7 d(String str, String str2, boolean z, String str3, Map<String, String> map, byte[] bArr, boolean z2, int i) throws gb {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                b bVarB = b(str, str2, z, str3, map, true, i);
                try {
                    HttpURLConnection httpURLConnection2 = bVarB.f10919a;
                    if (bArr != null && bArr.length > 0) {
                        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                        dataOutputStream.write(bArr);
                        dataOutputStream.close();
                    }
                    m7 m7VarC = c(bVarB, z2);
                    if (httpURLConnection2 != null) {
                        try {
                            httpURLConnection2.disconnect();
                        } catch (Throwable th) {
                            b6.e(th, "ht", "mPt");
                        }
                    }
                    return m7VarC;
                } catch (gb e2) {
                    e = e2;
                    b6.e(e, "ht", "mPt");
                    throw e;
                } catch (InterruptedIOException unused) {
                    throw new gb(AMapException.ERROR_UNKNOWN);
                } catch (ConnectException e3) {
                    e = e3;
                    e.printStackTrace();
                    throw new gb(AMapException.ERROR_CONNECTION);
                } catch (MalformedURLException e4) {
                    e = e4;
                    e.printStackTrace();
                    throw new gb(AMapException.ERROR_URL);
                } catch (SocketException e5) {
                    e = e5;
                    e.printStackTrace();
                    throw new gb(AMapException.ERROR_SOCKET);
                } catch (SocketTimeoutException e6) {
                    e = e6;
                    e.printStackTrace();
                    throw new gb(AMapException.ERROR_SOCKE_TIME_OUT);
                } catch (UnknownHostException e7) {
                    e = e7;
                    e.printStackTrace();
                    throw new gb(AMapException.ERROR_UNKNOW_HOST);
                } catch (IOException e8) {
                    e = e8;
                    e.printStackTrace();
                    throw new gb(AMapException.ERROR_IO);
                } catch (Throwable th2) {
                    th = th2;
                    b6.e(th, "ht", "mPt");
                    throw new gb(AMapException.ERROR_UNKNOWN);
                }
            } catch (Throwable th3) {
                try {
                    d5.g(i);
                    v(this);
                } catch (Throwable unused2) {
                }
                if (0 == 0) {
                    throw th3;
                }
                try {
                    httpURLConnection.disconnect();
                    throw th3;
                } catch (Throwable th4) {
                    b6.e(th4, "ht", "mPt");
                    throw th3;
                }
            }
        } catch (gb e9) {
            e = e9;
        } catch (InterruptedIOException unused3) {
        } catch (ConnectException e10) {
            e = e10;
        } catch (MalformedURLException e11) {
            e = e11;
        } catch (SocketException e12) {
            e = e12;
        } catch (SocketTimeoutException e13) {
            e = e13;
        } catch (UnknownHostException e14) {
            e = e14;
        } catch (IOException e15) {
            e = e15;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    Map<String, String> j(String str, String str2, boolean z, String str3, Map<String, String> map, Map<String, String> map2, boolean z2, int i) throws gb {
        String headerFieldKey;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                String strG = g(str, map2);
                String strG2 = g(str2, map2);
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    b bVarB = b(strG, strG2, z, str3, map, false, i);
                    try {
                        httpURLConnection = bVarB.f10919a;
                        if (httpURLConnection.getResponseCode() >= 400) {
                            throw new gb("http读取header失败");
                        }
                        try {
                            n(bVarB, false, jCurrentTimeMillis, System.currentTimeMillis());
                            HashMap map3 = new HashMap();
                            for (int i2 = 0; i2 < 50 && (headerFieldKey = httpURLConnection.getHeaderFieldKey(i2)) != null; i2++) {
                                map3.put(headerFieldKey.toLowerCase(), httpURLConnection.getHeaderField(headerFieldKey));
                            }
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Throwable th) {
                                    b6.e(th, "hth", "mgr");
                                }
                            }
                            return map3;
                        } catch (gb e2) {
                            e = e2;
                            throw e;
                        } catch (InterruptedIOException unused) {
                            throw new gb(AMapException.ERROR_UNKNOWN);
                        } catch (ConnectException unused2) {
                            throw new gb(AMapException.ERROR_CONNECTION);
                        } catch (MalformedURLException unused3) {
                            throw new gb(AMapException.ERROR_URL);
                        } catch (SocketException unused4) {
                            throw new gb(AMapException.ERROR_SOCKET);
                        } catch (SocketTimeoutException unused5) {
                            throw new gb(AMapException.ERROR_SOCKE_TIME_OUT);
                        } catch (UnknownHostException unused6) {
                            throw new gb(AMapException.ERROR_UNKNOW_HOST);
                        } catch (IOException unused7) {
                            throw new gb(AMapException.ERROR_IO);
                        } catch (Throwable th2) {
                            th = th2;
                            th.printStackTrace();
                            throw new gb(AMapException.ERROR_UNKNOWN);
                        }
                    } catch (gb e3) {
                        e = e3;
                    } catch (ConnectException unused8) {
                    } catch (MalformedURLException unused9) {
                    } catch (SocketException unused10) {
                    } catch (SocketTimeoutException unused11) {
                    } catch (InterruptedIOException unused12) {
                    } catch (UnknownHostException unused13) {
                    } catch (IOException unused14) {
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (gb e4) {
                    throw e4;
                } catch (InterruptedIOException unused15) {
                } catch (ConnectException unused16) {
                } catch (MalformedURLException unused17) {
                } catch (SocketException unused18) {
                } catch (SocketTimeoutException unused19) {
                } catch (UnknownHostException unused20) {
                } catch (IOException unused21) {
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                if (1 != 0) {
                    try {
                        m(null);
                        v(null);
                    } catch (Throwable unused22) {
                    }
                }
                if (str == 0) {
                    throw th5;
                }
                try {
                    str.disconnect();
                    throw th5;
                } catch (Throwable th6) {
                    b6.e(th6, "hth", "mgr");
                    throw th5;
                }
            }
        } catch (gb e5) {
            throw e5;
        } catch (InterruptedIOException unused23) {
        } catch (ConnectException unused24) {
        } catch (MalformedURLException unused25) {
        } catch (SocketException unused26) {
        } catch (SocketTimeoutException unused27) {
        } catch (UnknownHostException unused28) {
        } catch (IOException unused29) {
        } catch (Throwable th7) {
            th = th7;
        }
    }

    void k() {
        this.f10916f = true;
    }

    void l(long j) {
        this.f10918h = j;
    }

    /* JADX WARN: Code duplicated, block: B:129:0x01b9 A[Catch: all -> 0x015d, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #25 {all -> 0x015d, blocks: (B:89:0x0158, B:129:0x01b9), top: B:193:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:166:0x01ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x0193 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x019d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    void o(String str, String str2, boolean z, String str3, Map<String, String> map, Map<String, String> map2, byte[] bArr, h7.a aVar, int i) {
        ?? r1;
        HttpURLConnection httpURLConnection;
        DataOutputStream dataOutputStream;
        boolean z2;
        boolean z3;
        InputStream inputStream;
        int i2;
        if (aVar == null) {
            return;
        }
        b bVarB = null;
        try {
            try {
                String strG = g(str, map2);
                String strG2 = g(str2, map2);
                if (bArr != null) {
                    try {
                        if (bArr.length > 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r1 = 0;
                        httpURLConnection = null;
                        dataOutputStream = null;
                        z2 = false;
                        try {
                            aVar.onException(th);
                            if (z2) {
                                try {
                                    m(bVarB);
                                    v(bVarB);
                                } catch (Throwable unused) {
                                }
                            }
                            if (r1 != 0) {
                                try {
                                    r1.close();
                                } catch (IOException e2) {
                                    b6.e(e2, "ht", "mdr");
                                } catch (Throwable th2) {
                                    b6.e(th2, "ht", "mdr");
                                }
                            }
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Throwable th3) {
                                    b6.e(th3, "ht", "mdr");
                                }
                            }
                            if (dataOutputStream == null) {
                            }
                        } finally {
                            if (z2) {
                                try {
                                    m(bVarB);
                                    v(bVarB);
                                } catch (Throwable unused2) {
                                }
                            }
                            if (r1 != 0) {
                                try {
                                    r1.close();
                                } catch (IOException e3) {
                                    b6.e(e3, "ht", "mdr");
                                } catch (Throwable th4) {
                                    b6.e(th4, "ht", "mdr");
                                }
                            }
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Throwable th5) {
                                    b6.e(th5, "ht", "mdr");
                                }
                            }
                            if (dataOutputStream != null) {
                                try {
                                    dataOutputStream.close();
                                } catch (Throwable th6) {
                                    b6.e(th6, "ht", "mdr");
                                }
                            }
                        }
                    }
                } else {
                    z3 = false;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i3 = 0;
                try {
                    bVarB = b(strG, strG2, z, str3, map, z3, i);
                    try {
                        httpURLConnection = bVarB.f10919a;
                        try {
                            httpURLConnection.setRequestProperty("RANGE", "bytes=" + this.f10918h + "-");
                            if (z3) {
                                dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                                try {
                                    dataOutputStream.write(bArr);
                                    dataOutputStream.close();
                                } catch (Throwable th7) {
                                    th = th7;
                                    z2 = true;
                                    bVarB = bVarB;
                                    r1 = 0;
                                    aVar.onException(th);
                                    if (z2) {
                                        m(bVarB);
                                        v(bVarB);
                                    }
                                    if (r1 != 0) {
                                        r1.close();
                                    }
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    if (dataOutputStream == null) {
                                    }
                                }
                            } else {
                                dataOutputStream = null;
                            }
                            httpURLConnection.connect();
                            String strH = h(httpURLConnection);
                            int responseCode = httpURLConnection.getResponseCode();
                            if ((responseCode != 206) && (responseCode != 200)) {
                                aVar.onException(new gb("网络异常原因：" + httpURLConnection.getResponseMessage() + " 网络异常状态码：" + responseCode, strH, this.i));
                                try {
                                    m(bVarB);
                                    v(bVarB);
                                } catch (Throwable unused3) {
                                }
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Throwable th8) {
                                        b6.e(th8, "ht", "mdr");
                                    }
                                }
                                if (dataOutputStream != null) {
                                    try {
                                        dataOutputStream.close();
                                        return;
                                    } catch (Throwable th9) {
                                        b6.e(th9, "ht", "mdr");
                                        return;
                                    }
                                }
                                return;
                            }
                            n(bVarB, false, jCurrentTimeMillis, System.currentTimeMillis());
                            InputStream inputStream2 = httpURLConnection.getInputStream();
                            try {
                                byte[] bArr2 = new byte[1024];
                                while (true) {
                                    if (Thread.interrupted() || this.f10916f || (i2 = inputStream2.read(bArr2, i3, 1024)) <= 0) {
                                        inputStream = inputStream2;
                                        break;
                                    }
                                    long j = this.f10917g;
                                    if (j != -1) {
                                        inputStream = inputStream2;
                                        try {
                                            if (this.f10918h >= j) {
                                                break;
                                            }
                                        } catch (Throwable th10) {
                                            th = th10;
                                            z2 = true;
                                            r1 = inputStream;
                                            aVar.onException(th);
                                            if (z2) {
                                                m(bVarB);
                                                v(bVarB);
                                            }
                                            if (r1 != 0) {
                                                r1.close();
                                            }
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                            if (dataOutputStream == null) {
                                            }
                                        }
                                    } else {
                                        inputStream = inputStream2;
                                    }
                                    if (i2 == 1024) {
                                        aVar.onDownload(bArr2, this.f10918h);
                                    } else {
                                        byte[] bArr3 = new byte[i2];
                                        System.arraycopy(bArr2, 0, bArr3, 0, i2);
                                        aVar.onDownload(bArr3, this.f10918h);
                                    }
                                    this.f10918h += (long) i2;
                                    inputStream2 = inputStream;
                                    i3 = 0;
                                }
                                try {
                                    if (this.f10916f) {
                                        aVar.onStop();
                                    } else {
                                        aVar.onFinish();
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e4) {
                                            b6.e(e4, "ht", "mdr");
                                        } catch (Throwable th11) {
                                            b6.e(th11, "ht", "mdr");
                                        }
                                    }
                                    if (httpURLConnection != null) {
                                        try {
                                            httpURLConnection.disconnect();
                                        } catch (Throwable th12) {
                                            b6.e(th12, "ht", "mdr");
                                        }
                                    }
                                    if (dataOutputStream != null) {
                                        dataOutputStream.close();
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                    z2 = false;
                                    r1 = inputStream;
                                    aVar.onException(th);
                                    if (z2) {
                                        m(bVarB);
                                        v(bVarB);
                                    }
                                    if (r1 != 0) {
                                        r1.close();
                                    }
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    if (dataOutputStream == null) {
                                    }
                                }
                            } catch (Throwable th14) {
                                th = th14;
                                inputStream = inputStream2;
                            }
                        } catch (Throwable th15) {
                            th = th15;
                            dataOutputStream = null;
                            z2 = true;
                            bVarB = bVarB;
                            r1 = dataOutputStream;
                            aVar.onException(th);
                            if (z2) {
                                m(bVarB);
                                v(bVarB);
                            }
                            if (r1 != 0) {
                                r1.close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            if (dataOutputStream == null) {
                            }
                        }
                    } catch (Throwable th16) {
                        th = th16;
                        httpURLConnection = null;
                        dataOutputStream = null;
                    }
                } catch (Throwable th17) {
                    th = th17;
                    r1 = 0;
                    httpURLConnection = null;
                    dataOutputStream = null;
                    z2 = true;
                }
            } catch (Throwable th18) {
                th = th18;
            }
        } catch (Throwable th19) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    m7 s(String str, String str2, boolean z, String str3, Map<String, String> map, Map<String, String> map2, boolean z2, int i) throws gb {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                b bVarB = b(g(str, map2), g(str2, map2), z, str3, map, false, i);
                try {
                    httpURLConnection = bVarB.f10919a;
                    m7 m7VarC = c(bVarB, z2);
                    if (httpURLConnection != null) {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Throwable th) {
                            b6.e(th, "ht", "mgr");
                        }
                    }
                    return m7VarC;
                } catch (gb e2) {
                    throw e2;
                } catch (MalformedURLException unused) {
                    throw new gb(AMapException.ERROR_URL);
                } catch (SocketException unused2) {
                    throw new gb(AMapException.ERROR_SOCKET);
                } catch (SocketTimeoutException unused3) {
                    throw new gb(AMapException.ERROR_SOCKE_TIME_OUT);
                } catch (InterruptedIOException unused4) {
                    throw new gb(AMapException.ERROR_UNKNOWN);
                } catch (ConnectException unused5) {
                    throw new gb(AMapException.ERROR_CONNECTION);
                } catch (UnknownHostException unused6) {
                    throw new gb(AMapException.ERROR_UNKNOW_HOST);
                } catch (IOException unused7) {
                    throw new gb(AMapException.ERROR_IO);
                } catch (Throwable th2) {
                    th = th2;
                    th.printStackTrace();
                    throw new gb(AMapException.ERROR_UNKNOWN);
                }
            } catch (Throwable th3) {
                try {
                    d5.g(i);
                    v(null);
                } catch (Throwable unused8) {
                }
                if (str == 0) {
                    throw th3;
                }
                try {
                    str.disconnect();
                    throw th3;
                } catch (Throwable th4) {
                    b6.e(th4, "ht", "mgr");
                    throw th3;
                }
            }
        } catch (gb e3) {
            throw e3;
        } catch (InterruptedIOException unused9) {
        } catch (ConnectException unused10) {
        } catch (MalformedURLException unused11) {
        } catch (SocketException unused12) {
        } catch (SocketTimeoutException unused13) {
        } catch (UnknownHostException unused14) {
        } catch (IOException unused15) {
        } catch (Throwable th5) {
            th = th5;
        }
    }

    void u(long j) {
        this.f10917g = j;
    }

    i7(int i, int i2, Proxy proxy, boolean z, f7.a aVar) {
        this.f10916f = false;
        this.f10917g = -1L;
        this.f10918h = 0L;
        this.f10913a = i;
        this.b = i2;
        this.f10915e = proxy;
        this.c = i5.a().i(z);
        if (i5.j()) {
            this.c = false;
        }
        this.k = aVar;
        t();
        if (this.c) {
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, null, null);
                this.f10914d = sSLContext;
            } catch (Throwable th) {
                b6.e(th, "ht", "ne");
            }
        }
        this.j = new c();
    }
}
