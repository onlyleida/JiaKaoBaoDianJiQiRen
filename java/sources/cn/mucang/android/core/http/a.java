package cn.mucang.android.core.http;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.webkit.WebSettings;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.jni.Riddle;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.tcp.message.training.TrainingMessage;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import f.a.a.a.activity.h;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import okhttp3.Authenticator;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static a c = new b().i();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile OkHttpClient f2525d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OkHttpClient f2526a;
    private String b;

    /* JADX INFO: renamed from: cn.mucang.android.core.http.a$a, reason: collision with other inner class name */
    class C0080a implements Interceptor {

        /* JADX INFO: renamed from: cn.mucang.android.core.http.a$a$a, reason: collision with other inner class name */
        class RunnableC0081a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Intent f2528a;

            RunnableC0081a(C0080a c0080a, Intent intent) {
                this.f2528a = intent;
            }

            @Override // java.lang.Runnable
            public void run() {
                MucangConfig.getContext().startActivity(this.f2528a);
            }
        }

        C0080a() {
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws Exception {
            String strHeader;
            Response responseProceed = chain.proceed(chain.request());
            int iCode = responseProceed.code();
            if (iCode == 307 && chain.request().method().equalsIgnoreCase(Constants.HTTP_POST)) {
                String strHeader2 = responseProceed.header(HttpHeaders.LOCATION);
                if (strHeader2 == null) {
                    return null;
                }
                URL url = (strHeader2.startsWith("http://") || strHeader2.startsWith("https://")) ? new URL(strHeader2) : new URL(chain.request().url().url(), strHeader2);
                if (!url.getProtocol().equals("https") && !url.getProtocol().equals("http")) {
                    return null;
                }
                if (!url.getProtocol().equals(chain.request().url().url().getProtocol()) && !a.this.f2526a.followSslRedirects()) {
                    return null;
                }
                Request requestBuild = chain.request().newBuilder().url(url).build();
                OkHttpClient okHttpClientBuild = a.this.f2526a.newBuilder().build();
                okHttpClientBuild.networkInterceptors().clear();
                try {
                    return okHttpClientBuild.newCall(requestBuild).execute().newBuilder().networkResponse(null).build();
                } catch (Exception e2) {
                    a.this.l(e2);
                    throw e2;
                }
            }
            if ((iCode != 307 && iCode != 308 && iCode != 300 && iCode != 301 && iCode != 302 && iCode != 303 && iCode != 304) || (strHeader = responseProceed.header(HttpHeaders.LOCATION)) == null) {
                return responseProceed;
            }
            if (h.f(strHeader, false)) {
                return null;
            }
            Uri uri = Uri.parse(strHeader);
            String scheme = uri.getScheme();
            if (!"http".equals(scheme) && !"https".equals(scheme)) {
                PackageManager packageManager = MucangConfig.getContext().getPackageManager();
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                intent.addFlags(268435456);
                List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, Build.VERSION.SDK_INT >= 23 ? 131072 : 0);
                if (listQueryIntentActivities != null && listQueryIntentActivities.size() > 0) {
                    u.c(new RunnableC0081a(this, intent));
                    return null;
                }
            }
            return responseProceed;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f2529a;
        private long b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2530d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Proxy f2531e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Authenticator f2532f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Authenticator f2533g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private c f2534h;

        public a i() {
            return new a(this, null);
        }

        public b j(cn.mucang.android.core.api.request.e.c cVar) {
            this.f2529a = cVar.c();
            this.b = cVar.f();
            this.c = cVar.h();
            cVar.i();
            this.f2530d = cVar.g();
            this.f2531e = cVar.d();
            this.f2532f = cVar.a();
            this.f2533g = cVar.e();
            this.f2534h = cVar.b();
            return this;
        }

        public b k(String str) {
            this.f2530d = str;
            return this;
        }
    }

    public interface c {
        void a(OkHttpClient.Builder builder);
    }

    /* synthetic */ a(b bVar, C0080a c0080a) {
        this(bVar);
    }

    private static byte[] C(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return MessageDigest.getInstance(TrainingMessage.ExtendAttribute.SHA_1).digest(str.getBytes("UTF-8"));
    }

    private byte[] D(Request request) throws Exception {
        try {
            Response responseExecute = this.f2526a.newCall(request).execute();
            if (responseExecute.code() >= 200) {
                try {
                    if (responseExecute.code() < 300) {
                        try {
                            byte[] bArrH = h(responseExecute);
                            f(responseExecute);
                            return bArrH;
                        } catch (Exception e2) {
                            throw new IOException(e2);
                        }
                    }
                } catch (Throwable th) {
                    f(responseExecute);
                    throw th;
                }
            }
            f(responseExecute);
            throw new HttpException("http code is not 2XX , code is = " + responseExecute.code(), responseExecute.code());
        } catch (Exception e3) {
            l(e3);
            throw e3;
        }
    }

    private String E(Request request, String str) throws IOException, HttpException {
        Response responseExecute = this.f2526a.newCall(request).execute();
        int iCode = responseExecute.code();
        try {
            try {
                byte[] bArrH = h(responseExecute);
                f(responseExecute);
                if (str == null) {
                    str = "UTF-8";
                }
                String str2 = new String(bArrH, str);
                if (iCode < 200 || iCode >= 300) {
                    throw new HttpException(str2, iCode);
                }
                return str2;
            } catch (Exception e2) {
                throw new IOException(e2);
            }
        } catch (Throwable th) {
            f(responseExecute);
            throw th;
        }
    }

    private void c(String str, Request.Builder builder, List<cn.mucang.android.core.api.request.e.a> list) {
        if (builder == null || g.b(list)) {
            return;
        }
        for (cn.mucang.android.core.api.request.e.a aVar : list) {
            if (!n0.e(aVar.a()) && !n0.e(aVar.b())) {
                if (aVar.c()) {
                    builder.addHeader(aVar.a(), aVar.b());
                } else {
                    builder.header(aVar.a(), aVar.b());
                }
            }
        }
    }

    private void d(Request.Builder builder) throws RuntimeException {
        e(builder);
        builder.header(HttpHeaders.ACCEPT_ENCODING, "gzip");
        builder.addHeader(HttpHeaders.ACCEPT_ENCODING, "tnpn4");
    }

    private void e(Request.Builder builder) {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("appendUserAgentHeader");
            throw new RuntimeException("Get userAgent not permitted.");
        }
        try {
            if ("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 3.5.21022;)".equals(this.b)) {
                this.b = s();
            }
            builder.header(HttpHeaders.USER_AGENT, this.b);
        } catch (IllegalArgumentException e2) {
            t.c("默认替换", e2);
        }
    }

    private void f(Response response) throws IOException {
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody != null) {
            responseBodyBody.close();
        }
    }

    private static Cipher g(String str) throws Exception {
        byte[] bArrY = y(str);
        byte[] bArrC = C(str);
        byte[] bArr = new byte[24];
        System.arraycopy(bArrY, 0, bArr, 0, 16);
        System.arraycopy(bArrC, 0, bArr, 16, 8);
        SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("DESede").generateSecret(new DESedeKeySpec(bArr));
        Cipher cipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
        cipher.init(2, secretKeyGenerateSecret);
        return cipher;
    }

    public static byte[] h(Response response) throws Exception {
        return i(response.body().bytes(), response.headers().toMultimap());
    }

    public static byte[] i(byte[] bArr, Map<String, List<String>> map) throws Exception {
        if (g.c(map) || bArr == null) {
            return bArr;
        }
        List<String> listT = t(HttpHeaders.CONTENT_TYPE, map);
        List<String> listT2 = t(HttpHeaders.CONTENT_ENCODING, map);
        List<String> listT3 = t("X-Simple-Token", map);
        String str = !g.b(listT) ? listT.get(0) : "text/plain";
        String str2 = !g.b(listT2) ? listT2.get(0) : "default";
        String str3 = !g.b(listT3) ? listT3.get(0) : null;
        if (str.contains("application/gzip-enc-stream")) {
            return j(k(bArr, str3));
        }
        if (str.contains("application/enc-stream")) {
            return k(bArr, str3);
        }
        return str2.contains("gzip") ? j(bArr) : bArr;
    }

    private static byte[] j(byte[] bArr) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        BufferedInputStream bufferedInputStream;
        try {
            bufferedInputStream = new BufferedInputStream(new GZIPInputStream(new ByteArrayInputStream(bArr)));
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    j.d(bufferedInputStream, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    o.a(byteArrayOutputStream);
                    o.a(bufferedInputStream);
                    return byteArray;
                } catch (Throwable th2) {
                    th = th2;
                    o.a(byteArrayOutputStream);
                    o.a(bufferedInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                byteArrayOutputStream = null;
                th = th3;
            }
        } catch (Throwable th4) {
            byteArrayOutputStream = null;
            th = th4;
            bufferedInputStream = null;
        }
    }

    private static byte[] k(byte[] bArr, String str) throws Exception {
        if (!n0.g(str)) {
            return Riddle.d(bArr, "");
        }
        Cipher cipherG = g(str);
        return (cipherG == null || bArr.length % 8 != 0) ? bArr : cipherG.doFinal(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Exception exc) {
        exc.printStackTrace();
        if (exc.getClass().getName().contains("Gai") || (exc instanceof SocketTimeoutException) || (exc instanceof UnknownHostException)) {
            try {
                this.f2526a.connectionPool().evictAll();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private String m(Request request) throws IOException, HttpException {
        return n(request, "UTF-8");
    }

    private String n(Request request, String str) throws IOException, HttpException {
        try {
            String strE = E(request, str);
            t.a("hadeslee", request.method() + " , url = " + request.url() + " , content = " + strE);
            return strE;
        } catch (HttpException e2) {
            l(e2);
            throw e2;
        } catch (Exception e3) {
            l(e3);
            t.c("默认替换", e3);
            throw new IOException("网络连接失败", e3);
        }
    }

    public static a q() {
        return c;
    }

    public static OkHttpClient r() {
        if (f2525d == null) {
            synchronized (a.class) {
                if (f2525d == null) {
                    f2525d = new OkHttpClient();
                }
            }
        }
        return f2525d;
    }

    public static String s() {
        String strF = j0.f("Mucang-UA", "userAgent", null);
        if (n0.g(strF)) {
            return strF;
        }
        String defaultUserAgent = WebSettings.getDefaultUserAgent(MucangConfig.getContext());
        if (n0.e(defaultUserAgent)) {
            defaultUserAgent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 3.5.21022;)";
        }
        j0.k("Mucang-UA", "userAgent", defaultUserAgent);
        return defaultUserAgent;
    }

    private static List<String> t(String str, Map<String, List<String>> map) {
        if (!g.c(map) && !n0.e(str)) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                if (str.equalsIgnoreCase(entry.getKey())) {
                    return map.get(entry.getKey());
                }
            }
        }
        return null;
    }

    private static byte[] y(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
    }

    public String A(String str, cn.mucang.android.core.api.request.e.b bVar, List<cn.mucang.android.core.api.request.e.a> list, cn.mucang.android.core.http.c.b bVar2) throws IOException, HttpException {
        RequestBody requestBodyBuild;
        Request.Builder builderB = B();
        builderB.url(str);
        c(str, builderB, cn.mucang.android.core.api.request.f.a.f(list, bVar));
        if (bVar != null) {
            String strD = cn.mucang.android.core.api.request.f.a.d(bVar.p());
            MediaType mediaType = strD != null ? MediaType.parse(strD) : null;
            if (bVar.s()) {
                requestBodyBuild = cn.mucang.android.core.http.c.a.b(mediaType, bVar.n(), bVar2);
            } else {
                requestBodyBuild = bVar.r() ? new MultipartBody.Builder().setType(mediaType).addFormDataPart(bVar.q(), bVar.o(), RequestBody.create(mediaType, bVar.m())).build() : RequestBody.create(mediaType, bVar.m());
            }
            builderB.post(requestBodyBuild);
        }
        return m(builderB.build());
    }

    public Request.Builder B() throws RuntimeException {
        Request.Builder builder = new Request.Builder();
        d(builder);
        return builder;
    }

    public String o(String str, List<cn.mucang.android.core.api.request.e.a> list) throws IOException, HttpException {
        return p(str, list, "UTF-8");
    }

    public String p(String str, List<cn.mucang.android.core.api.request.e.a> list, String str2) throws IOException, HttpException {
        Request.Builder builderB = B();
        builderB.url(str);
        c(str, builderB, list);
        return n(builderB.build(), str2);
    }

    public byte[] u(String str) throws IOException, HttpException {
        Request.Builder builderB = B();
        builderB.url(str);
        try {
            return D(builderB.build());
        } catch (Exception e2) {
            t.c("默认替换", e2);
            throw new IOException("网络连接失败");
        }
    }

    public InputStream v(String str) throws Exception {
        Request.Builder builderB = B();
        builderB.removeHeader(HttpHeaders.ACCEPT_ENCODING);
        builderB.removeHeader(HttpHeaders.CONTENT_ENCODING);
        builderB.url(str);
        try {
            Response responseExecute = this.f2526a.newCall(builderB.build()).execute();
            if (responseExecute == null) {
                throw new IOException("response is null");
            }
            if (responseExecute.code() >= 200 && responseExecute.code() < 300) {
                try {
                    return responseExecute.body().byteStream();
                } catch (Exception e2) {
                    throw new IOException(e2);
                }
            }
            throw new HttpException("http code is not 2XX , code is = " + responseExecute.code(), responseExecute.code());
        } catch (Exception e3) {
            l(e3);
            throw e3;
        }
    }

    public cn.mucang.android.core.http.b w(String str) throws Exception {
        Request.Builder builderB = B();
        builderB.removeHeader(HttpHeaders.ACCEPT_ENCODING);
        builderB.removeHeader(HttpHeaders.CONTENT_ENCODING);
        builderB.url(str);
        try {
            Response responseExecute = this.f2526a.newCall(builderB.build()).execute();
            return new cn.mucang.android.core.http.b(responseExecute.body().contentLength(), responseExecute.body().byteStream(), responseExecute.code(), responseExecute.headers().toMultimap());
        } catch (Exception e2) {
            l(e2);
            throw e2;
        }
    }

    public InputStream x(String str) throws IOException, HttpException {
        byte[] bArrU = u(str);
        if (bArrU == null || bArrU.length == 0) {
            return null;
        }
        return new ByteArrayInputStream(bArrU);
    }

    public String z(String str, cn.mucang.android.core.api.request.e.b bVar, List<cn.mucang.android.core.api.request.e.a> list) throws IOException, HttpException {
        return A(str, bVar, list, null);
    }

    private a(b bVar) {
        this.b = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 3.5.21022;)";
        OkHttpClient.Builder builderNewBuilder = r().newBuilder();
        if (bVar.f2529a > 0) {
            builderNewBuilder.connectTimeout(bVar.f2529a, TimeUnit.MILLISECONDS);
        } else {
            builderNewBuilder.connectTimeout(10000L, TimeUnit.MILLISECONDS);
        }
        if (bVar.b > 0) {
            builderNewBuilder.readTimeout(bVar.b, TimeUnit.MILLISECONDS);
        } else {
            builderNewBuilder.readTimeout(10000L, TimeUnit.MILLISECONDS);
        }
        if (bVar.c > 0) {
            builderNewBuilder.writeTimeout(bVar.c, TimeUnit.MILLISECONDS);
        } else {
            builderNewBuilder.writeTimeout(10000L, TimeUnit.MILLISECONDS);
        }
        if (n0.g(bVar.f2530d)) {
            this.b = bVar.f2530d;
        }
        if (bVar.f2531e != null) {
            builderNewBuilder.proxy(bVar.f2531e);
        }
        if (bVar.f2532f != null) {
            builderNewBuilder.authenticator(bVar.f2532f);
        }
        if (bVar.f2533g != null) {
            builderNewBuilder.proxyAuthenticator(bVar.f2533g);
        }
        if (bVar.f2534h != null) {
            bVar.f2534h.a(builderNewBuilder);
        }
        builderNewBuilder.addNetworkInterceptor(new C0080a());
        this.f2526a = builderNewBuilder.build();
    }
}
