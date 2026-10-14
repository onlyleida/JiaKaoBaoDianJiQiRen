package cn.mucang.android.jiakaoyi.framework.utils;

import com.google.common.net.HttpHeaders;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.t, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J2\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\bJ\u0010\u0010\u0013\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u001a\u0010\u0014\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001a\u0010\u0015\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010\u0016\u001a\u00020\bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/Downloader;", "", "url", "", "path", "md5", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "doDownload", "", "cacheFile", "Ljava/io/File;", "totalSize", "", "downloadCallback", "Lcn/mucang/android/jiakaoyi/framework/utils/DownloadCallback;", "inputStream", "Ljava/io/InputStream;", "fileOutputStream", "Ljava/io/FileOutputStream;", "download", "downloadByOkHttp", "downloadByURLConnection", "execute", "Companion", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class Downloader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3644a;
    private final String b;
    private final String c;

    public Downloader(String url, String path, String str) {
        kotlin.jvm.internal.r.e(url, "url");
        kotlin.jvm.internal.r.e(path, "path");
        this.f3644a = url;
        this.b = path;
        this.c = str;
    }

    private final boolean a(File file, final long j, final DownloadCallback downloadCallback, InputStream inputStream, FileOutputStream fileOutputStream) throws Exception {
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        byte[] bArr = new byte[65536];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                break;
            }
            fileOutputStream.write(bArr, 0, i);
            ref$IntRef.element += i;
            cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.d
                @Override // java.lang.Runnable
                public final void run() {
                    Downloader.b(downloadCallback, ref$IntRef, j);
                }
            });
        }
        fileOutputStream.flush();
        if (cn.mucang.android.core.utils.n0.g(this.c)) {
            String strB = h0.b(file);
            if (!kotlin.text.t.p(this.c, strB, true)) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("文件下载失败，MD5校验不通过，计算md5:" + ((Object) strB) + ",下发md5:" + ((Object) this.c));
                if (file.exists()) {
                    file.delete();
                }
                return false;
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("文件下载完成，文件大小:", Long.valueOf(file.length())));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(DownloadCallback downloadCallback, Ref$IntRef downloadSize, long j) {
        kotlin.jvm.internal.r.e(downloadSize, "$downloadSize");
        if (downloadCallback == null) {
            return;
        }
        downloadCallback.a((downloadSize.element * 1.0f) / j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(DownloadCallback downloadCallback) {
        if (downloadCallback != null) {
            downloadCallback.a(1.0f);
        }
        if (downloadCallback == null) {
            return;
        }
        downloadCallback.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(DownloadCallback downloadCallback) {
        if (downloadCallback == null) {
            return;
        }
        downloadCallback.b();
    }

    private final boolean g(DownloadCallback downloadCallback, File file) throws Exception {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            cn.mucang.android.core.http.b bVarW = cn.mucang.android.core.http.a.q().w(this.f3644a);
            if (bVarW == null) {
                throw new IOException("response is null");
            }
            long jA = bVarW.a();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("okhttp 文件下载 totalSize ", Long.valueOf(jA)));
            if (jA <= 0) {
                jA = 125829120;
            }
            long j = jA;
            InputStream inputStreamC = bVarW.c();
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    boolean zA = a(file, j, downloadCallback, inputStreamC, fileOutputStream);
                    cn.mucang.android.core.utils.o.a(inputStreamC);
                    cn.mucang.android.core.utils.o.a(fileOutputStream);
                    return zA;
                } catch (Exception e2) {
                    e = e2;
                    inputStream = inputStreamC;
                    try {
                        if (file.exists()) {
                            file.delete();
                        }
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("文件下载异常，删掉临时文件:", q0.d(e)));
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        cn.mucang.android.core.utils.o.a(inputStream);
                        cn.mucang.android.core.utils.o.a(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStreamC;
                    cn.mucang.android.core.utils.o.a(inputStream);
                    cn.mucang.android.core.utils.o.a(fileOutputStream);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    private final boolean h(DownloadCallback downloadCallback, File file) throws Exception {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            URLConnection uRLConnectionOpenConnection = new URL(this.f3644a).openConnection();
            if (uRLConnectionOpenConnection == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.net.HttpURLConnection");
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setConnectTimeout(3000);
            httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "identity");
            long contentLength = httpURLConnection.getContentLength();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("HttpURLConnection 文件下载 totalSize ", Long.valueOf(contentLength)));
            if (contentLength <= 0) {
                contentLength = 125829120;
            }
            long j = contentLength;
            InputStream inputStream2 = httpURLConnection.getInputStream();
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    boolean zA = a(file, j, downloadCallback, inputStream2, fileOutputStream);
                    cn.mucang.android.core.utils.o.a(inputStream2);
                    cn.mucang.android.core.utils.o.a(fileOutputStream);
                    return zA;
                } catch (Exception e2) {
                    e = e2;
                    inputStream = inputStream2;
                    try {
                        if (file.exists()) {
                            file.delete();
                        }
                        new File(this.b).delete();
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("文件下载异常，删掉临时文件:", q0.d(e)));
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        cn.mucang.android.core.utils.o.a(inputStream);
                        cn.mucang.android.core.utils.o.a(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                    cn.mucang.android.core.utils.o.a(inputStream);
                    cn.mucang.android.core.utils.o.a(fileOutputStream);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public final boolean c() throws Exception {
        return d(null);
    }

    public final boolean d(final DownloadCallback downloadCallback) throws Exception {
        File parentFile;
        File file = new File(this.b);
        if (file.exists() && file.length() > 0) {
            cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.e
                @Override // java.lang.Runnable
                public final void run() {
                    Downloader.e(downloadCallback);
                }
            });
            return true;
        }
        file.delete();
        String strM = kotlin.jvm.internal.r.m(this.b, "-d");
        File file2 = new File(strM);
        int i = 0;
        while (true) {
            i++;
            try {
                if (file2.exists()) {
                    file2.delete();
                }
                File parentFile2 = file2.getParentFile();
                if (parentFile2 == null) {
                    throw new NullPointerException(kotlin.jvm.internal.r.m(file2.getAbsolutePath(), "父文件时null"));
                }
                if (!parentFile2.exists() && (parentFile = file2.getParentFile()) != null) {
                    parentFile.mkdirs();
                }
                file2.createNewFile();
                if (i == 1 ? g(downloadCallback, file2) : h(downloadCallback, file2)) {
                    cn.mucang.android.core.utils.m.r(strM, this.b);
                    cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            Downloader.f(downloadCallback);
                        }
                    });
                    return true;
                }
                new File(this.b).delete();
                if (i >= 2) {
                    throw new NullPointerException("文件下载失败，md5校验没通过");
                }
            } catch (Exception e2) {
                new File(this.b).delete();
                if (i >= 2) {
                    throw e2;
                }
            }
        }
    }

    public final boolean i() {
        try {
            return c();
        } catch (Exception unused) {
            return false;
        }
    }
}
