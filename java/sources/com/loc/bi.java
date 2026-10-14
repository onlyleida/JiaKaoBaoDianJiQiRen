package com.loc;

import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.amap.api.maps.AMapException;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.lang.ref.SoftReference;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSession;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public final class bi {
    private static SoftReference<SSLContext> k;
    private static SoftReference<bj> t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f12572a;
    private SSLContext b;
    private Proxy c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f12576g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private bf.a f12577h;
    private d i;
    private boolean l;
    private String m;
    private String n;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f12573d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f12574e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f12575f = 0;
    private String j = "";
    private boolean o = false;
    private boolean p = false;
    private String q = "";
    private String r = "";
    private String s = "";
    private f u = new f();

    public static class a implements Cloneable, Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f12578a;
        public String b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f12579d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f12580e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f12581f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f12582g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f12583h;
        public long i;
        public volatile AtomicInteger j = new AtomicInteger(1);

        public a(c cVar) {
            this.b = cVar.c;
            this.c = cVar.f12587e;
            this.f12580e = cVar.f12586d;
            this.f12581f = cVar.m;
            this.f12582g = cVar.n;
            this.f12583h = cVar.b.a();
            this.f12579d = cVar.f12585a;
            this.i = cVar.f12588f;
            if (this.f12581f == 10) {
                this.f12578a = 0;
            }
        }

        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final a clone() {
            try {
                return (a) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        public final String b() {
            StringBuilder sb;
            StringBuilder sb2;
            StringBuilder sb3;
            StringBuilder sb4;
            try {
                String str = this.f12581f + "#";
                if (TextUtils.isEmpty(this.f12580e)) {
                    sb = new StringBuilder();
                    sb.append(str);
                    sb.append("-#");
                } else {
                    sb = new StringBuilder();
                    sb.append(str);
                    sb.append(this.f12580e);
                    sb.append("#");
                }
                String str2 = (sb.toString() + this.f12583h + "#") + this.j + "#";
                if (TextUtils.isEmpty(this.b)) {
                    sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append("-#");
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append(this.b);
                    sb2.append("#");
                }
                String string = sb2.toString();
                if (this.f12581f == 1) {
                    sb3 = new StringBuilder();
                    sb3.append(string);
                    sb3.append(this.f12579d);
                    sb3.append("#");
                } else {
                    sb3 = new StringBuilder();
                    sb3.append(string);
                    sb3.append("-#");
                }
                String string2 = sb3.toString();
                if (this.f12581f == 1) {
                    sb4 = new StringBuilder();
                    sb4.append(string2);
                    sb4.append(this.i);
                    sb4.append("#");
                } else {
                    sb4 = new StringBuilder();
                    sb4.append(string2);
                    sb4.append("-#");
                }
                String str3 = (sb4.toString() + this.c + "#") + this.f12582g;
                String strB = o.b(bb.a(str3.getBytes(), "YXBtX25ldHdvcmtf".getBytes()));
                StringBuilder sb5 = new StringBuilder("上报异常数据");
                sb5.append(str3);
                sb5.append("加密后：");
                sb5.append(strB);
                bi.a();
                return strB;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f12578a - ((a) obj).f12578a;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HttpURLConnection f12584a;
        public int b = this.b;
        public int b = this.b;

        public b(HttpURLConnection httpURLConnection) {
            this.f12584a = httpURLConnection;
        }
    }

    public static class c implements Cloneable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f12585a = "";
        public bk.b b = bk.b.FIRST_NONDEGRADE;
        public String c = "";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f12586d = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f12587e = "";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f12588f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f12589g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f12590h = 0;
        public long i = 0;
        public long j = 0;
        public String k = "-";
        public String l = "-";
        public int m = 0;
        public int n = 0;

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final c clone() {
            try {
                return (c) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        protected final String b() {
            String str;
            String str2;
            if (TextUtils.isEmpty(this.c)) {
                str = "-#";
            } else {
                str = this.c + "#";
            }
            if (TextUtils.isEmpty(this.f12586d)) {
                str2 = str + "-#";
            } else {
                str2 = str + this.f12586d + "#";
            }
            String str3 = (((str2 + this.b.a() + "#") + this.f12590h + "#") + this.j + "#") + this.f12588f;
            String strB = o.b(bb.a(str3.getBytes(), "YXBtX25ldHdvcmtf".getBytes()));
            StringBuilder sb = new StringBuilder("上报耗时数据");
            sb.append(str3);
            sb.append("加密后：");
            sb.append(strB);
            bi.a();
            return strB;
        }

        public final String toString() {
            return "RequestInfo{csid='" + this.f12585a + "', degradeType=" + this.b + ", serverIp='" + this.c + "', path='" + this.f12586d + "', hostname='" + this.f12587e + "', totalTime=" + this.f12588f + ", DNSTime=" + this.f12589g + ", connectionTime=" + this.f12590h + ", writeTime=" + this.i + ", readTime=" + this.j + ", serverTime='" + this.k + "', datasize='" + this.l + "', errorcode=" + this.m + ", errorcodeSub=" + this.n + '}';
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Vector<e> f12591a;
        private volatile e b;

        private d() {
            this.f12591a = new Vector<>();
            this.b = new e((byte) 0);
        }

        /* synthetic */ d(byte b) {
            this();
        }

        public final e a(String str) {
            if (TextUtils.isEmpty(str)) {
                return this.b;
            }
            byte b = 0;
            for (int i = 0; i < this.f12591a.size(); i++) {
                e eVar = this.f12591a.get(i);
                if (eVar != null && eVar.a().equals(str)) {
                    return eVar;
                }
            }
            e eVar2 = new e(b);
            eVar2.b(str);
            this.f12591a.add(eVar2);
            return eVar2;
        }
    }

    private static class e implements HostnameVerifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f12592a;
        private String b;

        private e() {
        }

        /* synthetic */ e(byte b) {
            this();
        }

        public final String a() {
            return this.b;
        }

        public final void a(String str) {
            String[] strArrSplit;
            if (TextUtils.isEmpty(this.f12592a) || !str.contains(":") || (strArrSplit = str.split(":")) == null || strArrSplit.length <= 0) {
                this.f12592a = str;
            } else {
                this.f12592a = strArrSplit[0];
            }
        }

        public final void b(String str) {
            this.b = str;
        }

        @Override // javax.net.ssl.HostnameVerifier
        public final boolean verify(String str, SSLSession sSLSession) {
            HostnameVerifier defaultHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
            if (TextUtils.isEmpty(this.f12592a)) {
                return !TextUtils.isEmpty(this.b) ? defaultHostnameVerifier.verify(this.b, sSLSession) : defaultHostnameVerifier.verify(str, sSLSession);
            }
            return this.f12592a.equals(str);
        }
    }

    class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f12593a = 0;
        long b = 0;
        c c = new c();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        a f12594d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c f12595e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f12596f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        URL f12597g;

        f() {
        }

        public final void a() {
            this.c.f12590h = SystemClock.elapsedRealtime() - this.b;
        }

        public final void a(int i) {
            "----errorcode-----".concat(String.valueOf(i));
            bi.a();
            try {
                this.c.f12588f = SystemClock.elapsedRealtime() - this.f12593a;
                c cVar = this.c;
                cVar.m = i;
                if (cVar.b.e()) {
                    l.a(false, this.c.f12587e);
                }
                boolean zA = bi.this.a(this.c.f12587e);
                if (zA) {
                    if (bi.this.p && !TextUtils.isEmpty(bi.this.n) && this.c.b.b()) {
                        l.d();
                    }
                    if (this.c.b.c()) {
                        l.a(this.c.b.c(), this.c.f12587e);
                    }
                    l.c(this.f12595e);
                    l.a(false, this.f12594d);
                    l.b(this.c);
                }
                l.a(this.f12597g.toString(), this.c.b.c(), true, zA);
                new StringBuilder("!!!error-").append(this.c.toString());
                bi.a();
            } catch (Throwable unused) {
            }
        }

        public final void a(long j) {
            this.c.l = new DecimalFormat("0.00").format(j / 1024.0f);
        }

        public final void a(bk bkVar, URL url) {
            this.f12597g = url;
            this.c.f12586d = url.getPath();
            this.c.f12587e = url.getHost();
            if (!TextUtils.isEmpty(bi.this.n) && bkVar.u().b()) {
                c cVar = this.c;
                cVar.c = cVar.f12587e.replace("[", "").replace("]", "");
                this.c.f12587e = bi.this.n;
            }
            if (bkVar.u().b()) {
                bkVar.a(this.c.f12587e);
            }
            if (bkVar.u().d()) {
                this.f12596f = bkVar.x();
            }
        }

        public final void a(bl blVar) {
            c cVarClone;
            try {
                this.c.f12588f = SystemClock.elapsedRealtime() - this.f12593a;
                if (blVar != null) {
                    blVar.f12622f = this.c.b.c();
                }
                if (this.c.b.b()) {
                    c cVar = this.c;
                    if (cVar.f12588f > 10000) {
                        l.a(false, cVar.f12587e);
                    }
                }
                if (this.c.b.d()) {
                    l.a(false, this.f12596f);
                }
                boolean zA = bi.this.a(this.c.f12587e);
                if (zA) {
                    l.c(this.c);
                    l.a(true, this.f12594d);
                    c cVar2 = this.c;
                    if (cVar2.f12588f > l.f12971e && (cVarClone = cVar2.clone()) != null) {
                        cVarClone.m = 1;
                        l.b(cVarClone);
                        new StringBuilder("!!!finish&error-").append(cVarClone.toString());
                        bi.a();
                    }
                }
                l.a(this.f12597g.toString(), this.c.b.c(), false, zA);
                new StringBuilder("!!!finish-").append(this.c.toString());
                bi.a();
            } catch (Throwable unused) {
            }
        }

        public final void b() {
            this.c.i = SystemClock.elapsedRealtime() - this.b;
        }

        public final void b(int i) {
            this.c.n = i;
        }

        public final void c() {
            this.c.j = SystemClock.elapsedRealtime() - this.b;
        }

        public final void d() {
            c cVarClone = this.c.clone();
            if (this.c.f12588f > l.f12971e) {
                cVarClone.m = 1;
            }
            l.a(cVarClone);
        }
    }

    bi() {
        l.e();
        try {
            this.f12576g = UUID.randomUUID().toString().replaceAll("-", "").toLowerCase();
        } catch (Throwable th) {
            aj.a(th, "ht", "ic");
        }
    }

    private static int a(Exception exc) {
        if (exc instanceof SSLHandshakeException) {
            return 4101;
        }
        if (exc instanceof SSLKeyException) {
            return 4102;
        }
        if (exc instanceof SSLProtocolException) {
            return 4103;
        }
        if (exc instanceof SSLPeerUnverifiedException) {
            return 4104;
        }
        if (exc instanceof ConnectException) {
            return 6101;
        }
        if (exc instanceof SocketException) {
            return 6102;
        }
        if (exc instanceof ConnectTimeoutException) {
            return 2101;
        }
        return exc instanceof SocketTimeoutException ? 2102 : 0;
    }

    /* JADX WARN: Code duplicated, block: B:159:0x01fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x0205 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x020f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0219 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x009f A[PHI: r2
      0x009f: PHI (r2v11 java.lang.String) = (r2v0 java.lang.String), (r2v19 java.lang.String), (r2v19 java.lang.String) binds: [B:4:0x0017, B:150:0x009f, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    private bl a(b bVar) throws Throwable {
        ?? r4;
        InputStream inputStream;
        PushbackInputStream pushbackInputStream;
        boolean zA;
        InputStream inputStream2;
        char c2;
        String str = "";
        ByteArrayOutputStream byteArrayOutputStream = null;
        gZIPInputStream = null;
        gZIPInputStream = null;
        gZIPInputStream = null;
        InputStream gZIPInputStream = null;
        byteArrayOutputStream = null;
        byteArrayOutputStream = null;
        try {
            try {
                bh.a();
                HttpURLConnection httpURLConnection = bVar.f12584a;
                Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                int responseCode = httpURLConnection.getResponseCode();
                if (headerFields == null) {
                    zA = false;
                } else {
                    List<String> list = headerFields.get("gsid");
                    if (list != null && list.size() > 0) {
                        str = list.get(0);
                    }
                    this.u.c.k = b(headerFields);
                    try {
                        if (TextUtils.isEmpty(this.j)) {
                            zA = false;
                        } else {
                            if (!this.o) {
                                zA = a(headerFields, true);
                                c2 = 2;
                            } else if (headerFields.containsKey("sc")) {
                                zA = a(headerFields, false);
                                c2 = 1;
                            } else {
                                l.b(this.j);
                                zA = false;
                                c2 = 0;
                            }
                            try {
                                if (zA) {
                                    if (this.j.equals("loc")) {
                                        String host = this.s;
                                        if (TextUtils.isEmpty(host)) {
                                            host = httpURLConnection.getURL().getHost();
                                        }
                                        l.a(this.j, c2 == 2, host, host, this.n);
                                    } else {
                                        l.b(this.j, c2 == 2);
                                    }
                                } else if (c2 == 1) {
                                    bh.a(false, this.j);
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    } catch (Throwable unused2) {
                    }
                }
                if (responseCode != 200) {
                    j jVar = new j("网络异常原因：" + httpURLConnection.getResponseMessage() + " 网络异常状态码：" + responseCode + "  " + str + " " + this.f12576g, str, this.f12576g);
                    jVar.a(httpURLConnection.getResponseMessage());
                    jVar.a(headerFields);
                    this.u.b(responseCode);
                    this.u.a(10);
                    jVar.h();
                    throw jVar;
                }
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    this.u.b = SystemClock.elapsedRealtime();
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        pushbackInputStream = new PushbackInputStream(inputStream, 2);
                        try {
                            byte[] bArr = new byte[2];
                            pushbackInputStream.read(bArr);
                            pushbackInputStream.unread(bArr);
                            gZIPInputStream = (bArr[0] == 31 && bArr[1] == -117) ? new GZIPInputStream(pushbackInputStream) : pushbackInputStream;
                            byte[] bArr2 = new byte[1024];
                            while (true) {
                                int i = gZIPInputStream.read(bArr2);
                                if (i == -1) {
                                    break;
                                }
                                byteArrayOutputStream2.write(bArr2, 0, i);
                            }
                            this.u.c();
                            am.c();
                            bl blVar = new bl();
                            blVar.f12619a = byteArrayOutputStream2.toByteArray();
                            blVar.b = headerFields;
                            blVar.c = this.f12576g;
                            blVar.f12620d = str;
                            blVar.f12621e = zA;
                            bh.a(httpURLConnection.getURL(), blVar);
                            this.u.a(blVar.f12619a.length);
                            try {
                                byteArrayOutputStream2.close();
                            } catch (Throwable th) {
                                aj.a(th, "ht", "par");
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th2) {
                                    aj.a(th2, "ht", "par");
                                }
                            }
                            try {
                                pushbackInputStream.close();
                            } catch (Throwable th3) {
                                aj.a(th3, "ht", "par");
                            }
                            try {
                                gZIPInputStream.close();
                            } catch (Throwable th4) {
                                aj.a(th4, "ht", "par");
                            }
                            return blVar;
                        } catch (SocketTimeoutException e2) {
                            e = e2;
                            throw e;
                        } catch (ConnectTimeoutException e3) {
                            e = e3;
                            throw e;
                        } catch (IOException e4) {
                            e = e4;
                            inputStream2 = gZIPInputStream;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            r4 = inputStream2;
                            try {
                                if (!(e instanceof InterruptedIOException)) {
                                    throw e;
                                }
                                j jVar2 = new j(AMapException.ERROR_IO, str, this.f12576g);
                                if (TextUtils.isEmpty(e.getMessage()) || !e.getMessage().equals("thread interrupted")) {
                                    throw jVar2;
                                }
                                jVar2.j();
                                throw jVar2;
                            } catch (Throwable th5) {
                                th = th5;
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Throwable th6) {
                                        aj.a(th6, "ht", "par");
                                    }
                                }
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Throwable th7) {
                                        aj.a(th7, "ht", "par");
                                    }
                                }
                                if (pushbackInputStream != null) {
                                    try {
                                        pushbackInputStream.close();
                                    } catch (Throwable th8) {
                                        aj.a(th8, "ht", "par");
                                    }
                                }
                                if (r4 != 0) {
                                    throw th;
                                }
                                try {
                                    r4.close();
                                    throw th;
                                } catch (Throwable th9) {
                                    aj.a(th9, "ht", "par");
                                    throw th;
                                }
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            r4 = gZIPInputStream;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (pushbackInputStream != null) {
                                pushbackInputStream.close();
                            }
                            if (r4 != 0) {
                                throw th;
                            }
                            r4.close();
                            throw th;
                        }
                    } catch (SocketTimeoutException e5) {
                        e = e5;
                    } catch (ConnectTimeoutException e6) {
                        e = e6;
                    } catch (IOException e7) {
                        e = e7;
                        inputStream2 = null;
                        pushbackInputStream = null;
                    } catch (Throwable th11) {
                        th = th11;
                        r4 = 0;
                        pushbackInputStream = null;
                    }
                } catch (SocketTimeoutException e8) {
                    e = e8;
                } catch (ConnectTimeoutException e9) {
                    e = e9;
                } catch (IOException e10) {
                    e = e10;
                    inputStream2 = null;
                    inputStream = null;
                    pushbackInputStream = null;
                } catch (Throwable th12) {
                    th = th12;
                    r4 = 0;
                    inputStream = null;
                    pushbackInputStream = null;
                }
            } catch (Throwable th13) {
                th = th13;
                r4 = "";
            }
        } catch (SocketTimeoutException e11) {
            throw e11;
        } catch (ConnectTimeoutException e12) {
            throw e12;
        } catch (IOException e13) {
            e = e13;
            r4 = 0;
            inputStream = null;
            pushbackInputStream = null;
        } catch (Throwable th14) {
            th = th14;
            r4 = 0;
            inputStream = null;
            pushbackInputStream = null;
        }
    }

    static String a(Map<String, String> map) {
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

    public static void a() {
    }

    private void a(Map<String, String> map, HttpURLConnection httpURLConnection) {
        String str;
        c cVarG;
        if (map != null) {
            try {
                for (String str2 : map.keySet()) {
                    httpURLConnection.addRequestProperty(str2, map.get(str2));
                }
            } catch (Throwable th) {
                aj.a(th, "ht", "adh");
                return;
            }
        }
        HashMap<String, String> map2 = bf.f12561d;
        if (map2 != null) {
            for (String str3 : map2.keySet()) {
                httpURLConnection.addRequestProperty(str3, bf.f12561d.get(str3));
            }
        }
        if (!this.m.contains("/v3/iasdkauth") && !TextUtils.isEmpty(this.j) && l.a(this.j)) {
            this.o = true;
            httpURLConnection.addRequestProperty("lct", String.valueOf(l.c(this.j)));
        }
        httpURLConnection.addRequestProperty("csid", this.f12576g);
        if (a(this.u.c.f12587e)) {
            f fVar = this.u;
            if (TextUtils.isEmpty(fVar.c.c)) {
                str = "";
            } else {
                String strB = o.b(bb.a(fVar.c.c.getBytes(), "YXBtX25ldHdvcmtf".getBytes()));
                StringBuilder sb = new StringBuilder("上报本次请求serverIp:");
                sb.append(fVar.c.c);
                sb.append("加密后：");
                sb.append(strB);
                str = strB;
            }
            if (!TextUtils.isEmpty(str)) {
                httpURLConnection.addRequestProperty("sip", str);
            }
            if (l.j && (cVarG = l.g()) != null) {
                httpURLConnection.addRequestProperty("nls", cVarG.b());
                this.u.f12595e = cVarG;
            }
            a aVarF = l.f();
            if (aVarF != null) {
                httpURLConnection.addRequestProperty("nlf", aVarF.b());
                this.u.f12594d = aVarF;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        if (this.l) {
            return true;
        }
        return (!TextUtils.isEmpty(this.n) && (this.n.contains("rest") || this.n.contains("apilocate"))) || b(str);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003c  */
    private boolean a(Map<String, List<String>> map, boolean z) {
        boolean z2;
        List<String> list;
        try {
            List<String> list2 = map.get("sc");
            if (list2 == null || list2.size() <= 0) {
                z2 = false;
            } else {
                String str = list2.get(0);
                if (TextUtils.isEmpty(str)) {
                    z2 = false;
                } else {
                    if (str.contains("#")) {
                        String[] strArrSplit = str.split("#");
                        if (strArrSplit.length <= 1 || !"1".equals(strArrSplit[1])) {
                            z2 = false;
                        }
                    }
                    z2 = true;
                }
            }
            if (!z2) {
                return false;
            }
            if (!z) {
                return true;
            }
            if (map.containsKey("lct") && (list = map.get("lct")) != null && list.size() > 0) {
                String str2 = list.get(0);
                if (!TextUtils.isEmpty(str2)) {
                    return l.a(this.j, Long.valueOf(str2).longValue());
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private bj b() {
        try {
            SoftReference<bj> softReference = t;
            if (softReference == null || softReference.get() == null) {
                t = new SoftReference<>(new bj(l.c, this.b));
            }
            bj bjVar = k != null ? t.get() : null;
            return bjVar == null ? new bj(l.c, this.b) : bjVar;
        } catch (Throwable th) {
            am.b(th, "ht", "gsf");
            return null;
        }
    }

    private static String b(Map<String, List<String>> map) {
        try {
            List<String> list = map.get("sc");
            if (list == null || list.size() <= 0) {
                return "";
            }
            String str = list.get(0);
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            if (str.contains("#")) {
                String[] strArrSplit = str.split("#");
                if (strArrSplit.length <= 1) {
                    return "";
                }
                str = strArrSplit[0];
            }
            return str;
        } catch (Throwable unused) {
            return "";
        }
    }

    private void b(bk bkVar) throws j {
        this.i = new d((byte) 0);
        this.p = bkVar.y();
        this.c = bkVar.o();
        this.f12577h = bkVar.t();
        this.l = bkVar.q();
        this.j = bkVar.z();
        this.f12572a = p.a().a(bkVar.s());
        String strM = bkVar.u().b() ? bkVar.m() : bkVar.l();
        this.m = strM;
        this.m = bh.a(strM, this.j);
        this.n = bkVar.g();
        if ("loc".equals(this.j)) {
            String strL = bkVar.l();
            String strM2 = bkVar.m();
            if (!TextUtils.isEmpty(strL)) {
                try {
                    this.r = new URL(strL).getHost();
                } catch (Exception unused) {
                }
            }
            if (TextUtils.isEmpty(strM2)) {
                return;
            }
            try {
                if (TextUtils.isEmpty(this.n)) {
                    this.q = new URL(strM2).getHost();
                } else {
                    this.q = this.n;
                }
            } catch (Exception unused2) {
            }
        }
    }

    private static boolean b(String str) {
        return str.contains("rest") || str.contains("apilocate");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:107:0x0204 A[Catch: all -> 0x021a, TryCatch #2 {all -> 0x021a, blocks: (B:103:0x01fa, B:105:0x01fe, B:108:0x020f, B:110:0x0213, B:107:0x0204), top: B:139:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0213 A[Catch: all -> 0x021a, TRY_LEAVE, TryCatch #2 {all -> 0x021a, blocks: (B:103:0x01fa, B:105:0x01fe, B:108:0x020f, B:110:0x0213, B:107:0x0204), top: B:139:0x01fa }] */
    /* JADX WARN: Code duplicated, block: B:112:0x021a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0242  */
    /* JADX WARN: Code duplicated, block: B:126:0x024f  */
    /* JADX WARN: Code duplicated, block: B:135:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x021d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x01fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:80:0x015c  */
    /* JADX WARN: Code duplicated, block: B:83:0x0185 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:45:0x00cb, B:48:0x00e3, B:50:0x00e6, B:52:0x00ea, B:54:0x00f0, B:58:0x00f9, B:61:0x0105, B:63:0x0108, B:65:0x010e, B:75:0x013c, B:77:0x0142, B:79:0x014c, B:81:0x015d, B:83:0x0185, B:85:0x01a6, B:86:0x01a9, B:66:0x0124, B:68:0x0128, B:70:0x012b, B:72:0x0131, B:73:0x0138), top: B:135:0x00cb }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01a6 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:45:0x00cb, B:48:0x00e3, B:50:0x00e6, B:52:0x00ea, B:54:0x00f0, B:58:0x00f9, B:61:0x0105, B:63:0x0108, B:65:0x010e, B:75:0x013c, B:77:0x0142, B:79:0x014c, B:81:0x015d, B:83:0x0185, B:85:0x01a6, B:86:0x01a9, B:66:0x0124, B:68:0x0128, B:70:0x012b, B:72:0x0131, B:73:0x0138), top: B:135:0x00cb }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:94:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:95:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:97:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:99:0x01ed  */
    private b c(bk bkVar) throws IOException, j {
        String str;
        boolean z;
        URL url;
        URL url2;
        bf.a aVar;
        URLConnection uRLConnectionOpenConnection;
        SSLContext sSLContext;
        HttpsURLConnection httpsURLConnection;
        bj bjVarB;
        SoftReference<SSLContext> softReference;
        SoftReference<SSLContext> softReference2;
        HttpURLConnection httpURLConnection;
        Proxy proxy;
        String str2;
        boolean z2;
        InetAddress[] allByName;
        String hostAddress;
        String host;
        f fVar = this.u;
        bk.b bVarU = bkVar.u();
        c cVar = fVar.c;
        cVar.f12585a = bi.this.f12576g;
        cVar.b = bVarU;
        fVar.f12593a = SystemClock.elapsedRealtime();
        Map<String, String> mapA = bkVar.a();
        if (mapA == null) {
            mapA = new HashMap<>();
        }
        e eVarA = this.i.a(this.n);
        int i = bf.f12560a;
        String string = this.m;
        Uri uri = Uri.parse(string);
        String host2 = uri.getHost();
        if (i != 1) {
            if (i != 2) {
                str = "";
            } else {
                HashMap<String, String> map = bf.c;
                str = map != null ? map.get(host2) : "";
                z = false;
            }
            if (!TextUtils.isEmpty(str)) {
                bkVar.w();
                string = uri.buildUpon().encodedAuthority(str).build().toString();
                if (z && mapA != null) {
                    mapA.put("targetHost", host2);
                    this.s = host2;
                }
                if (z && this.f12572a) {
                    eVarA.a(str);
                }
            }
            this.m = string;
            url = new URL(this.m);
            this.u.a(bkVar, url);
            if (b(url.getHost()) && bkVar.c_()) {
                bk.b bVarU2 = bkVar.u();
                str2 = this.u.c.f12587e;
                if (a(str2) || !((bVarU2.b() && l.f12973g) || (bVarU2.c() && l.e(str2)))) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2) {
                    try {
                        this.u.b = SystemClock.elapsedRealtime();
                        allByName = InetAddress.getAllByName(this.u.c.f12587e);
                        if (allByName != null || allByName.length <= 0 || allByName[0] == null) {
                            hostAddress = "";
                        } else {
                            boolean z3 = l.a() && l.c();
                            "---canUseIpv6---".concat(String.valueOf(z3));
                            if (!z3) {
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= allByName.length) {
                                        hostAddress = "";
                                        break;
                                    }
                                    if (allByName[i2] instanceof Inet4Address) {
                                        hostAddress = allByName[i2].getHostAddress();
                                        break;
                                    }
                                    i2++;
                                }
                            } else {
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= allByName.length) {
                                        hostAddress = "";
                                        break;
                                    }
                                    if (allByName[i3] instanceof Inet6Address) {
                                        hostAddress = "[" + allByName[i3].getHostAddress() + "]";
                                        break;
                                    }
                                    i3++;
                                }
                            }
                            if (TextUtils.isEmpty(hostAddress)) {
                                InetAddress inetAddress = allByName[0];
                                hostAddress = inetAddress.getHostAddress();
                                if (inetAddress instanceof Inet6Address) {
                                    hostAddress = "[" + hostAddress + "]";
                                }
                            }
                        }
                        f fVar2 = this.u;
                        "---onDNSEnd---ip=".concat(String.valueOf(hostAddress));
                        fVar2.c.c = hostAddress.replace("[", "").replace("]", "");
                        fVar2.c.f12589g = SystemClock.elapsedRealtime() - fVar2.b;
                        if (!TextUtils.isEmpty(hostAddress)) {
                            Uri uri2 = Uri.parse(this.m);
                            host = uri2.getHost();
                            Uri uriBuild = uri2.buildUpon().encodedAuthority(hostAddress).build();
                            this.n = host;
                            mapA.put("host", host);
                            if (this.f12572a) {
                                eVarA.b(host);
                            }
                            this.m = uriBuild.toString();
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
            if (this.f12572a) {
                this.m = p.a(this.m);
            }
            StringBuilder sb = new StringBuilder("是否降级=");
            sb.append(bkVar.u());
            sb.append("-最终url=");
            sb.append(this.m);
            url2 = new URL(this.m);
            aVar = this.f12577h;
            if (aVar != null) {
                uRLConnectionOpenConnection = aVar.a();
            } else {
                uRLConnectionOpenConnection = null;
            }
            if (uRLConnectionOpenConnection == null) {
                proxy = this.c;
                if (proxy != null) {
                    uRLConnectionOpenConnection = url2.openConnection(proxy);
                } else {
                    uRLConnectionOpenConnection = url2.openConnection();
                }
            }
            if (this.f12572a) {
                try {
                    softReference = k;
                    if (softReference != null || softReference.get() == null) {
                        k = new SoftReference<>(SSLContext.getInstance("TLS"));
                    }
                    softReference2 = k;
                    if (softReference2 != null) {
                        sSLContext = softReference2.get();
                    } else {
                        sSLContext = null;
                    }
                } catch (Throwable unused2) {
                }
                if (sSLContext == null) {
                    try {
                        sSLContext = SSLContext.getInstance("TLS");
                    } catch (Throwable th) {
                        aj.a(th, "ht", "ne");
                    }
                }
                sSLContext.init(null, null, null);
                this.b = sSLContext;
                httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                if (l.f.f12988a || (bjVarB = b()) == null) {
                    httpsURLConnection.setSSLSocketFactory(this.b.getSocketFactory());
                } else {
                    httpsURLConnection.setSSLSocketFactory(bjVarB);
                    bjVarB.a();
                }
                httpsURLConnection.setHostnameVerifier(eVarA);
                httpURLConnection = httpsURLConnection;
            } else {
                httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            }
            if (Build.VERSION.SDK != null && Build.VERSION.SDK_INT > 13) {
                httpURLConnection.setRequestProperty(HttpHeaders.CONNECTION, "close");
            }
            int iV = (int) (((long) bkVar.v()) - (this.u.c.f12589g / 1000));
            a(mapA, httpURLConnection);
            httpURLConnection.setConnectTimeout(iV);
            httpURLConnection.setReadTimeout(iV);
            httpURLConnection.setRequestMethod(Constants.HTTP_POST);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            return new b(httpURLConnection);
        }
        str = bf.b;
        z = true;
        if (!TextUtils.isEmpty(str)) {
            bkVar.w();
            string = uri.buildUpon().encodedAuthority(str).build().toString();
            if (z) {
                mapA.put("targetHost", host2);
                this.s = host2;
            }
            if (z) {
                eVarA.a(str);
            }
        }
        this.m = string;
        url = new URL(this.m);
        this.u.a(bkVar, url);
        if (b(url.getHost())) {
            bk.b bVarU3 = bkVar.u();
            str2 = this.u.c.f12587e;
            if (a(str2)) {
                z2 = false;
            } else {
                z2 = false;
            }
            if (z2) {
                this.u.b = SystemClock.elapsedRealtime();
                allByName = InetAddress.getAllByName(this.u.c.f12587e);
                if (allByName != null) {
                    hostAddress = "";
                } else {
                    hostAddress = "";
                }
                f fVar3 = this.u;
                "---onDNSEnd---ip=".concat(String.valueOf(hostAddress));
                fVar3.c.c = hostAddress.replace("[", "").replace("]", "");
                fVar3.c.f12589g = SystemClock.elapsedRealtime() - fVar3.b;
                if (!TextUtils.isEmpty(hostAddress)) {
                    Uri uri3 = Uri.parse(this.m);
                    host = uri3.getHost();
                    Uri uriBuild2 = uri3.buildUpon().encodedAuthority(hostAddress).build();
                    this.n = host;
                    mapA.put("host", host);
                    if (this.f12572a) {
                        eVarA.b(host);
                    }
                    this.m = uriBuild2.toString();
                }
            }
        }
        if (this.f12572a) {
            this.m = p.a(this.m);
        }
        StringBuilder sb2 = new StringBuilder("是否降级=");
        sb2.append(bkVar.u());
        sb2.append("-最终url=");
        sb2.append(this.m);
        url2 = new URL(this.m);
        aVar = this.f12577h;
        if (aVar != null) {
            uRLConnectionOpenConnection = aVar.a();
        } else {
            uRLConnectionOpenConnection = null;
        }
        if (uRLConnectionOpenConnection == null) {
            proxy = this.c;
            if (proxy != null) {
                uRLConnectionOpenConnection = url2.openConnection(proxy);
            } else {
                uRLConnectionOpenConnection = url2.openConnection();
            }
        }
        if (this.f12572a) {
            softReference = k;
            if (softReference != null) {
                k = new SoftReference<>(SSLContext.getInstance("TLS"));
            } else {
                k = new SoftReference<>(SSLContext.getInstance("TLS"));
            }
            softReference2 = k;
            if (softReference2 != null) {
                sSLContext = softReference2.get();
            } else {
                sSLContext = null;
            }
            if (sSLContext == null) {
                sSLContext = SSLContext.getInstance("TLS");
            }
            sSLContext.init(null, null, null);
            this.b = sSLContext;
            httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
            if (l.f.f12988a) {
                httpsURLConnection.setSSLSocketFactory(this.b.getSocketFactory());
            } else {
                httpsURLConnection.setSSLSocketFactory(this.b.getSocketFactory());
            }
            httpsURLConnection.setHostnameVerifier(eVarA);
            httpURLConnection = httpsURLConnection;
        } else {
            httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        }
        if (Build.VERSION.SDK != null) {
            httpURLConnection.setRequestProperty(HttpHeaders.CONNECTION, "close");
        }
        int iV2 = (int) (((long) bkVar.v()) - (this.u.c.f12589g / 1000));
        a(mapA, httpURLConnection);
        httpURLConnection.setConnectTimeout(iV2);
        httpURLConnection.setReadTimeout(iV2);
        httpURLConnection.setRequestMethod(Constants.HTTP_POST);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        return new b(httpURLConnection);
    }

    final bl a(bk bkVar) throws j {
        DataOutputStream dataOutputStream;
        Throwable th;
        OutputStream outputStream;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                b(bkVar);
                bl blVarB = bh.b(this.m, this.j);
                if (blVarB != null) {
                    this.u.d();
                    return blVarB;
                }
                b bVarC = c(bkVar);
                HttpURLConnection httpURLConnection2 = bVarC.f12584a;
                try {
                    this.u.b = SystemClock.elapsedRealtime();
                    httpURLConnection2.connect();
                    this.u.a();
                    byte[] bArrE = bkVar.e();
                    if (bArrE == null || bArrE.length == 0) {
                        Map<String, String> mapD = bkVar.d();
                        HashMap<String, String> map = bf.f12562e;
                        if (map != null) {
                            if (mapD != null) {
                                mapD.putAll(map);
                            } else {
                                mapD = map;
                            }
                        }
                        String strA = a(mapD);
                        if (!TextUtils.isEmpty(strA)) {
                            bArrE = w.a(strA);
                        }
                    }
                    if (bArrE != null && bArrE.length > 0) {
                        try {
                            this.u.b = SystemClock.elapsedRealtime();
                            outputStream = httpURLConnection2.getOutputStream();
                            try {
                                dataOutputStream = new DataOutputStream(outputStream);
                                try {
                                    dataOutputStream.write(bArrE);
                                    dataOutputStream.close();
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    this.u.b();
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (dataOutputStream != null) {
                                        dataOutputStream.close();
                                    }
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    this.u.b();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                dataOutputStream = null;
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            dataOutputStream = null;
                            th = th4;
                            outputStream = null;
                        }
                    }
                    bl blVarA = a(bVarC);
                    this.u.a(blVarA);
                    if (httpURLConnection2 != null) {
                        try {
                            httpURLConnection2.disconnect();
                        } catch (Throwable th5) {
                            aj.a(th5, "ht", "mPt");
                        }
                    }
                    this.u.d();
                    return blVarA;
                } catch (j e2) {
                    e = e2;
                } catch (ConnectException e3) {
                    e = e3;
                    e.printStackTrace();
                    this.u.b(a(e));
                    this.u.a(6);
                    throw new j(AMapException.ERROR_CONNECTION);
                } catch (MalformedURLException e4) {
                    e = e4;
                    e.printStackTrace();
                    this.u.a(8);
                    throw new j(AMapException.ERROR_URL);
                } catch (SocketException e5) {
                    e = e5;
                    e.printStackTrace();
                    this.u.b(a(e));
                    this.u.a(6);
                    throw new j(AMapException.ERROR_SOCKET);
                } catch (SocketTimeoutException e6) {
                    e = e6;
                    e.printStackTrace();
                    this.u.b(a(e));
                    this.u.a(2);
                    throw new j(AMapException.ERROR_SOCKE_TIME_OUT);
                } catch (UnknownHostException e7) {
                    e = e7;
                    e.printStackTrace();
                    this.u.a(5);
                    throw new j(AMapException.ERROR_UNKNOW_HOST);
                } catch (SSLException e8) {
                    e = e8;
                    e.printStackTrace();
                    this.u.b(a(e));
                    this.u.a(4);
                    throw new j(AMapException.ERROR_IO);
                } catch (ConnectTimeoutException e9) {
                    e = e9;
                    e.printStackTrace();
                    this.u.b(a(e));
                    this.u.a(2);
                    throw new j(AMapException.ERROR_IO);
                } catch (InterruptedIOException unused) {
                    this.u.b(7101);
                    this.u.a(7);
                    throw new j(AMapException.ERROR_UNKNOWN);
                } catch (IOException e10) {
                    e = e10;
                    e.printStackTrace();
                    this.u.a(7);
                    throw new j(AMapException.ERROR_IO);
                } catch (Throwable th6) {
                    th = th6;
                    aj.a(th, "ht", "mPt");
                    this.u.a(9);
                    throw new j(AMapException.ERROR_UNKNOWN);
                }
            } catch (Throwable th7) {
                if (0 != 0) {
                    try {
                        httpURLConnection.disconnect();
                    } catch (Throwable th8) {
                        aj.a(th8, "ht", "mPt");
                    }
                }
                this.u.d();
                throw th7;
            }
        } catch (j e11) {
            e = e11;
        } catch (InterruptedIOException unused2) {
        } catch (ConnectException e12) {
            e = e12;
        } catch (MalformedURLException e13) {
            e = e13;
        } catch (SocketException e14) {
            e = e14;
        } catch (SocketTimeoutException e15) {
            e = e15;
        } catch (UnknownHostException e16) {
            e = e16;
        } catch (SSLException e17) {
            e = e17;
        } catch (ConnectTimeoutException e18) {
            e = e18;
        } catch (IOException e19) {
            e = e19;
        } catch (Throwable th9) {
            th = th9;
        }
        if (!e.i() && e.g() != 10) {
            this.u.a(e.g());
        }
        aj.a(e, "ht", "mPt");
        throw e;
    }
}
