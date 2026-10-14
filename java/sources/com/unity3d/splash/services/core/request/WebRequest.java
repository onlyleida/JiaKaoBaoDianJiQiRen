package com.unity3d.splash.services.core.request;

import com.unity3d.splash.services.core.log.DeviceLog;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes6.dex */
public class WebRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private URL f14410a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f14411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map f14412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f14413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f14414g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f14415h;
    private int i;
    private int j;
    private a k;

    public enum RequestType {
        POST,
        GET,
        HEAD
    }

    public WebRequest(String str, String str2, Map map) {
        this(str, str2, map, CMAESOptimizer.DEFAULT_MAXITERATIONS, CMAESOptimizer.DEFAULT_MAXITERATIONS);
    }

    public WebRequest(String str, String str2, Map map, int i, int i2) {
        this.b = RequestType.GET.name();
        this.f14413f = -1;
        this.f14414g = -1L;
        this.f14415h = false;
        this.f14410a = new URL(str);
        this.b = str2;
        this.f14411d = map;
        this.i = i;
        this.j = i2;
    }

    private HttpURLConnection d() throws NetworkIOException {
        HttpURLConnection httpURLConnection;
        if (i().toString().startsWith("https://")) {
            try {
                httpURLConnection = (HttpsURLConnection) i().openConnection();
            } catch (IOException e2) {
                throw new NetworkIOException("Open HTTPS connection: " + e2.getMessage());
            }
        } else {
            if (!i().toString().startsWith("http://")) {
                throw new IllegalArgumentException("Invalid url-protocol in url: " + i().toString());
            }
            try {
                httpURLConnection = (HttpURLConnection) i().openConnection();
            } catch (IOException e3) {
                throw new NetworkIOException("Open HTTP connection: " + e3.getMessage());
            }
        }
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(b());
        httpURLConnection.setReadTimeout(f());
        try {
            httpURLConnection.setRequestMethod(g());
            if (c() != null && c().size() > 0) {
                for (String str : c().keySet()) {
                    for (String str2 : (List) c().get(str)) {
                        DeviceLog.c("Setting header: " + str + "=" + str2);
                        httpURLConnection.setRequestProperty(str, str2);
                    }
                }
            }
            return httpURLConnection;
        } catch (ProtocolException e4) {
            throw new NetworkIOException("Set Request Method: " + g() + ", " + e4.getMessage());
        }
    }

    public String a() {
        return this.c;
    }

    public int b() {
        return this.i;
    }

    public Map c() {
        return this.f14411d;
    }

    public String e() {
        URL url = this.f14410a;
        if (url != null) {
            return url.getQuery();
        }
        return null;
    }

    public int f() {
        return this.j;
    }

    public String g() {
        return this.b;
    }

    public int h() {
        return this.f14413f;
    }

    public URL i() {
        return this.f14410a;
    }

    public boolean j() {
        return this.f14415h;
    }

    public String k() throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        l(byteArrayOutputStream);
        return byteArrayOutputStream.toString("UTF-8");
    }

    public long l(OutputStream outputStream) throws Exception {
        InputStream errorStream;
        HttpURLConnection httpURLConnectionD = d();
        httpURLConnectionD.setDoInput(true);
        if (g().equals(RequestType.POST.name())) {
            httpURLConnectionD.setDoOutput(true);
            PrintWriter printWriter = null;
            try {
                try {
                    PrintWriter printWriter2 = new PrintWriter((Writer) new OutputStreamWriter(httpURLConnectionD.getOutputStream(), "UTF-8"), true);
                    try {
                        printWriter2.print(a() == null ? e() : a());
                        printWriter2.flush();
                        try {
                            printWriter2.close();
                        } catch (Exception e2) {
                            DeviceLog.f("Error closing writer", e2);
                            throw e2;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        printWriter = printWriter2;
                        DeviceLog.f("Error while writing POST params", e);
                        throw new NetworkIOException("Error writing POST params: " + e.getMessage());
                    } catch (Throwable th) {
                        th = th;
                        printWriter = printWriter2;
                        if (printWriter != null) {
                            try {
                                printWriter.close();
                            } catch (Exception e4) {
                                DeviceLog.f("Error closing writer", e4);
                                throw e4;
                            }
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        try {
            this.f14413f = httpURLConnectionD.getResponseCode();
            this.f14414g = httpURLConnectionD.getContentLength();
            if (httpURLConnectionD.getHeaderFields() != null) {
                this.f14412e = httpURLConnectionD.getHeaderFields();
            }
            try {
                errorStream = httpURLConnectionD.getInputStream();
            } catch (IOException e6) {
                errorStream = httpURLConnectionD.getErrorStream();
                if (errorStream == null) {
                    throw new NetworkIOException("Can't open error stream: " + e6.getMessage());
                }
            }
            a aVar = this.k;
            if (aVar != null) {
                aVar.b(i().toString(), this.f14414g, this.f14413f, this.f14412e);
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(errorStream);
            long j = 0;
            byte[] bArr = new byte[4096];
            int i = 0;
            while (!j() && i != -1) {
                try {
                    i = bufferedInputStream.read(bArr);
                    if (i > 0) {
                        outputStream.write(bArr, 0, i);
                        j += (long) i;
                        a aVar2 = this.k;
                        if (aVar2 != null) {
                            aVar2.a(i().toString(), j, this.f14414g);
                        }
                    }
                } catch (IOException e7) {
                    throw new NetworkIOException("Network exception: " + e7.getMessage());
                }
            }
            httpURLConnectionD.disconnect();
            outputStream.flush();
            return j;
        } catch (IOException | RuntimeException e8) {
            throw new NetworkIOException("Response code: " + e8.getMessage());
        }
    }

    public void m(String str) {
        this.c = str;
    }
}
