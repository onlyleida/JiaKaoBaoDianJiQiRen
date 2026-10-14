package com.iflytek.cloud.msc.util;

import android.text.TextUtils;
import android.util.Base64;
import com.google.common.net.HttpHeaders;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;
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

/* JADX INFO: loaded from: classes4.dex */
public class i extends Thread {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f12369f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f12366a = Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT;
    private a b = null;
    private volatile boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private URL f12367d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<byte[]> f12368e = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Object f12370g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12371h = 0;

    public interface a {
        void a(i iVar, byte[] bArr);

        void onError(SpeechError speechError);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x00ac A[Catch: Exception -> 0x00af, TRY_LEAVE, TryCatch #0 {Exception -> 0x00af, blocks: (B:25:0x00a7, B:27:0x00ac), top: B:31:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private void c() throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream = null;
        Object[] objArr = 0;
        InputStream inputStream2 = null;
        Object[] objArr2 = 0;
        try {
            try {
                try {
                    DebugLog.LogD("Start connect server");
                    httpURLConnection = (HttpURLConnection) this.f12367d.openConnection();
                    try {
                        httpURLConnection.setConnectTimeout(this.f12366a);
                        httpURLConnection.setReadTimeout(this.f12366a);
                        httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                        int responseCode = httpURLConnection.getResponseCode();
                        DebugLog.LogD("responseCode = " + responseCode);
                        if (200 == responseCode) {
                            inputStream2 = httpURLConnection.getInputStream();
                            b(a(inputStream2));
                        } else {
                            DebugLog.LogD("MscHttpRequest connect error:" + responseCode);
                            a(new SpeechError(Math.abs(responseCode) + ErrorCode.MSP_ERROR_HTTP_BASE));
                        }
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        DebugLog.LogE(e);
                        DebugLog.LogD("MscHttpRequest error:" + e.toString());
                        a(new SpeechError(ErrorCode.ERROR_NET_EXCEPTION));
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

    public void a(int i) {
        this.f12371h = i;
    }

    public void b(int i) {
        this.f12366a = i;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0103 A[Catch: Exception -> 0x0106, TRY_LEAVE, TryCatch #4 {Exception -> 0x0106, blocks: (B:35:0x00fe, B:37:0x0103), top: B:44:0x00fe }] */
    /* JADX WARN: Multi-variable type inference failed */
    public void d() throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream = null;
        Object[] objArr = 0;
        InputStream inputStream2 = null;
        Object[] objArr2 = 0;
        try {
            try {
                try {
                    DebugLog.LogD("MscHttpRequest start Post");
                    httpURLConnection = (HttpURLConnection) this.f12367d.openConnection();
                    try {
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setUseCaches(false);
                        httpURLConnection.setRequestMethod(Constants.HTTP_POST);
                        httpURLConnection.setConnectTimeout(this.f12366a);
                        httpURLConnection.setReadTimeout(this.f12366a);
                        httpURLConnection.setRequestProperty("Content-length", "" + b());
                        httpURLConnection.setRequestProperty(HttpHeaders.CONNECTION, "Keep-Alive");
                        httpURLConnection.setRequestProperty("Charset", "utf-8");
                        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-gzip");
                        if (!TextUtils.isEmpty(this.f12369f)) {
                            httpURLConnection.setRequestProperty("X-Par", Base64.encodeToString(this.f12369f.getBytes(), 2));
                        }
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        Iterator<byte[]> it = this.f12368e.iterator();
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
                            DebugLog.LogD("Http Request Failed." + responseCode);
                            a(new SpeechError(responseCode + ErrorCode.MSP_ERROR_HTTP_BASE));
                        }
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        a(new SpeechError(ErrorCode.ERROR_NET_EXCEPTION));
                        DebugLog.LogD("MscHttpRequest error:" + e.toString());
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

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        if (this.f12371h == 1) {
            d();
        } else {
            c();
        }
    }

    private void b(byte[] bArr) {
        if (this.b == null || this.c) {
            return;
        }
        this.b.a(this, bArr);
    }

    public void a(String str, String str2, byte[] bArr) {
        this.f12368e.clear();
        a(bArr);
        try {
            this.f12367d = a(str, str2);
        } catch (MalformedURLException e2) {
            DebugLog.LogE(e2);
        }
    }

    private int b() {
        int length = 0;
        for (int i = 0; i < this.f12368e.size(); i++) {
            length += this.f12368e.get(i).length;
        }
        return length;
    }

    public void a(String str, String str2, byte[] bArr, String str3) {
        this.f12369f = str3;
        a(str, str2, bArr);
    }

    public void a(a aVar) {
        this.b = aVar;
        start();
    }

    public static URL a(String str, String str2) throws MalformedURLException {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!str.endsWith("?")) {
                str = str + "?";
            }
            str = str + str2;
        }
        return new URL(str);
    }

    public void a() {
        this.c = true;
    }

    private byte[] a(InputStream inputStream) throws IOException {
        int i;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (!this.c && (i = bufferedInputStream.read(bArr, 0, 1024)) != -1) {
            byteArrayOutputStream.write(bArr, 0, i);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public void a(byte[] bArr) {
        if (bArr != null) {
            this.f12368e.add(bArr);
        }
    }

    private void a(SpeechError speechError) {
        if (this.b == null || this.c) {
            return;
        }
        this.b.onError(speechError);
    }
}
