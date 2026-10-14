package com.iflytek.idata.extension;

import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.connect.common.Constants;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class b extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f12462a = Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT;
    private a b = null;
    private volatile boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private URL f12463d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<byte[]> f12464e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f12465f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12466g = 0;

    public interface a {
        void a(b bVar, byte[] bArr);

        void a(Exception exc);
    }

    private int c() {
        int length = 0;
        for (int i = 0; i < this.f12464e.size(); i++) {
            length += this.f12464e.get(i).length;
        }
        return length;
    }

    public void a(int i) {
        this.f12466g = i;
    }

    public void b(int i) {
        this.f12462a = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        if (this.f12466g == 1) {
            a();
        } else {
            b();
        }
    }

    public void a(String str, String str2, byte[] bArr) {
        this.f12464e.clear();
        a(bArr);
        try {
            this.f12463d = a(str, str2);
        } catch (MalformedURLException e2) {
            com.iflytek.idata.extension.d.a.c("Collector", "url error:" + e2);
        }
    }

    public void b(a aVar) {
        this.b = aVar;
        start();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x006b A[Catch: Exception -> 0x006e, TRY_LEAVE, TryCatch #1 {Exception -> 0x006e, blocks: (B:25:0x0066, B:27:0x006b), top: B:31:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private void b() throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream = null;
        Object[] objArr = 0;
        InputStream inputStream2 = null;
        Object[] objArr2 = 0;
        try {
            try {
                try {
                    httpURLConnection = (HttpURLConnection) this.f12463d.openConnection();
                    try {
                        httpURLConnection.setConnectTimeout(this.f12462a);
                        httpURLConnection.setReadTimeout(this.f12462a);
                        httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                        int responseCode = httpURLConnection.getResponseCode();
                        if (200 == responseCode) {
                            inputStream2 = httpURLConnection.getInputStream();
                            b(a(inputStream2));
                        } else {
                            a(new Exception("HttpRequest Failed: " + responseCode));
                        }
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        a(e);
                        if (0 != 0) {
                            (objArr2 == true ? 1 : 0).close();
                        }
                        if (httpURLConnection == null) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        try {
                            inputStream.close();
                            if (0 != 0) {
                                (objArr == true ? 1 : 0).disconnect();
                            }
                        } catch (Exception unused) {
                            throw th;
                        }
                    } else if (0 != 0) {
                        (objArr == true ? 1 : 0).disconnect();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    inputStream.close();
                    if (0 != 0) {
                        (objArr == true ? 1 : 0).disconnect();
                    }
                } else if (0 != 0) {
                    (objArr == true ? 1 : 0).disconnect();
                }
                throw th;
            }
            httpURLConnection.disconnect();
        } catch (Exception unused2) {
        }
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public static URL a(String str, String str2) throws MalformedURLException {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!str.endsWith("?")) {
                str = str + "?";
            }
            str = str + str2;
        }
        com.iflytek.idata.extension.d.a.a("Collector", "url:" + str);
        return new URL(str);
    }

    private byte[] a(InputStream inputStream) throws IOException {
        int i;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        byte[] bArr = new byte[1024];
        while (!this.c && (i = bufferedInputStream.read(bArr, 0, 1024)) != -1) {
            byteArrayOutputStream.write(bArr, 0, i);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public void a(byte[] bArr) {
        if (bArr != null) {
            this.f12464e.add(bArr);
        }
    }

    private void a(Exception exc) {
        if (this.b == null || this.c) {
            return;
        }
        this.b.a(exc);
    }

    private void b(byte[] bArr) {
        if (this.b == null || this.c) {
            return;
        }
        this.b.a(this, bArr);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c2 A[Catch: Exception -> 0x00c5, TRY_LEAVE, TryCatch #4 {Exception -> 0x00c5, blocks: (B:32:0x00bd, B:34:0x00c2), top: B:41:0x00bd }] */
    /* JADX WARN: Multi-variable type inference failed */
    public void a() throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream = null;
        Object[] objArr = 0;
        InputStream inputStream2 = null;
        Object[] objArr2 = 0;
        try {
            try {
                try {
                    httpURLConnection = (HttpURLConnection) this.f12463d.openConnection();
                    try {
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setUseCaches(false);
                        httpURLConnection.setRequestMethod(Constants.HTTP_POST);
                        httpURLConnection.setConnectTimeout(this.f12462a);
                        httpURLConnection.setReadTimeout(this.f12462a);
                        httpURLConnection.setRequestProperty("Content-length", "" + c());
                        httpURLConnection.setRequestProperty(HttpHeaders.CONNECTION, "Keep-Alive");
                        httpURLConnection.setRequestProperty("Charset", "utf-8");
                        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-gzip");
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        Iterator<byte[]> it = this.f12464e.iterator();
                        while (it.hasNext()) {
                            outputStream.write(it.next());
                        }
                        outputStream.flush();
                        outputStream.close();
                        int responseCode = httpURLConnection.getResponseCode();
                        if (200 == responseCode) {
                            inputStream2 = httpURLConnection.getInputStream();
                            b(a(inputStream2));
                        } else {
                            a(new Exception("Http Request Failed: " + responseCode));
                        }
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        a(e);
                        if (0 != 0) {
                            (objArr2 == true ? 1 : 0).close();
                        }
                        if (httpURLConnection == null) {
                            return;
                        }
                    }
                } catch (Exception unused) {
                    return;
                }
            } catch (Exception e3) {
                e = e3;
                httpURLConnection = null;
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        inputStream.close();
                        if (0 != 0) {
                            (objArr == true ? 1 : 0).disconnect();
                        }
                    } catch (Exception unused2) {
                        throw th;
                    }
                } else if (0 != 0) {
                    (objArr == true ? 1 : 0).disconnect();
                }
                throw th;
            }
            httpURLConnection.disconnect();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject.has("rsp") && jSONObject.getJSONObject("rsp").getInt("code") != 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
