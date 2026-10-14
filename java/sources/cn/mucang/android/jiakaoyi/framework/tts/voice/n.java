package cn.mucang.android.jiakaoyi.framework.tts.voice;

import android.util.Log;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import com.google.common.net.HttpHeaders;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3579a;
    private String b;
    private volatile InputStream c = null;

    public n(String str, String str2) {
        this.f3579a = str;
        this.b = str2;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x016d A[Catch: all -> 0x0179, TRY_LEAVE, TryCatch #2 {all -> 0x0179, blocks: (B:15:0x00e6, B:16:0x0103, B:18:0x010c, B:19:0x0111, B:29:0x0145, B:31:0x016d), top: B:39:0x00e6 }] */
    private File a() throws Throwable {
        FileOutputStream fileOutputStream;
        long jCurrentTimeMillis = System.currentTimeMillis();
        File file = new File(this.b);
        if (file.exists()) {
            return file;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            Request.Builder builderB = cn.mucang.android.core.http.a.q().B();
            builderB.removeHeader(HttpHeaders.ACCEPT_ENCODING);
            builderB.removeHeader(HttpHeaders.CONTENT_ENCODING);
            builderB.url(this.f3579a);
            Call callNewCall = cn.mucang.android.core.http.a.r().newCall(builderB.build());
            Log.i("KTag", "call load = " + (System.currentTimeMillis() - jCurrentTimeMillis));
            ResponseBody responseBodyBody = callNewCall.execute().body();
            Log.i("KTag", "exe load = " + (System.currentTimeMillis() - jCurrentTimeMillis));
            if (responseBodyBody == null) {
                cn.mucang.android.core.utils.o.a(null);
                cn.mucang.android.core.utils.o.a(this.c);
                return null;
            }
            this.c = responseBodyBody.byteStream();
            Log.i("KTag", "stream load = " + (System.currentTimeMillis() - jCurrentTimeMillis));
            String str = this.b + "-t";
            File file2 = new File(str);
            if (file2.exists()) {
                file2.delete();
            }
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            Log.i("KTag", "file load = " + (System.currentTimeMillis() - jCurrentTimeMillis));
            file2.createNewFile();
            fileOutputStream = new FileOutputStream(file2);
            try {
                try {
                    Log.i("KTag", "before load = " + (System.currentTimeMillis() - jCurrentTimeMillis));
                    byte[] bArr = new byte[16384];
                    while (true) {
                        int i = this.c.read(bArr);
                        if (i == -1) {
                            fileOutputStream.flush();
                            cn.mucang.android.core.utils.m.r(str, this.b);
                            Log.i("KTag", "after load = " + (System.currentTimeMillis() - jCurrentTimeMillis));
                            cn.mucang.android.core.utils.o.a(fileOutputStream);
                            cn.mucang.android.core.utils.o.a(this.c);
                            return file;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        th = th;
                        fileOutputStream2 = fileOutputStream;
                        cn.mucang.android.core.utils.o.a(fileOutputStream2);
                        cn.mucang.android.core.utils.o.a(this.c);
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cn.mucang.android.jiakaoyi.framework.log.f.o("文件下载失败:" + this.f3579a + ":" + q0.d(e));
                    if (file.exists()) {
                        file.delete();
                    }
                    cn.mucang.android.core.utils.o.a(fileOutputStream);
                    cn.mucang.android.core.utils.o.a(this.c);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream2 = fileOutputStream;
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("文件下载失败:" + this.f3579a + ":" + q0.d(e));
        if (file.exists()) {
            file.delete();
        }
        cn.mucang.android.core.utils.o.a(fileOutputStream);
        cn.mucang.android.core.utils.o.a(this.c);
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00e4 A[Catch: all -> 0x00ec, TRY_LEAVE, TryCatch #3 {all -> 0x00ec, blocks: (B:16:0x007a, B:17:0x007c, B:19:0x0085, B:21:0x008d, B:22:0x009c, B:33:0x00bc, B:35:0x00e4), top: B:42:0x007a }] */
    private File b(cn.mucang.android.jiakaoyi.framework.h.b<Float> bVar) throws Throwable {
        FileOutputStream fileOutputStream;
        File file = new File(this.b);
        if (file.exists()) {
            return file;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            Request.Builder builderB = cn.mucang.android.core.http.a.q().B();
            builderB.removeHeader(HttpHeaders.ACCEPT_ENCODING);
            builderB.removeHeader(HttpHeaders.CONTENT_ENCODING);
            builderB.url(this.f3579a);
            cn.mucang.android.core.http.b bVarW = cn.mucang.android.core.http.a.q().w(this.f3579a);
            if (bVarW == null) {
                cn.mucang.android.core.utils.o.a(null);
                cn.mucang.android.core.utils.o.a(this.c);
                return null;
            }
            this.c = bVarW.c();
            long jA = bVarW.a();
            long j = 0;
            String str = this.b + "-t";
            File file2 = new File(str);
            if (file2.exists()) {
                file2.delete();
            }
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            file2.createNewFile();
            fileOutputStream = new FileOutputStream(file2);
            try {
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i = this.c.read(bArr);
                        if (i == -1) {
                            fileOutputStream.flush();
                            cn.mucang.android.core.utils.m.r(str, this.b);
                            cn.mucang.android.core.utils.o.a(fileOutputStream);
                            cn.mucang.android.core.utils.o.a(this.c);
                            return file;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        j += (long) i;
                        if (bVar != null) {
                            bVar.callback(Float.valueOf((j * 1.0f) / jA));
                        }
                        th = th;
                        fileOutputStream2 = fileOutputStream;
                        cn.mucang.android.core.utils.o.a(fileOutputStream2);
                        cn.mucang.android.core.utils.o.a(this.c);
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cn.mucang.android.jiakaoyi.framework.log.f.o("progress文件下载失败:" + this.f3579a + ":" + q0.d(e));
                    if (file.exists()) {
                        file.delete();
                    }
                    cn.mucang.android.core.utils.o.a(fileOutputStream);
                    cn.mucang.android.core.utils.o.a(this.c);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream2 = fileOutputStream;
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("progress文件下载失败:" + this.f3579a + ":" + q0.d(e));
        if (file.exists()) {
            file.delete();
        }
        cn.mucang.android.core.utils.o.a(fileOutputStream);
        cn.mucang.android.core.utils.o.a(this.c);
        return null;
    }

    public synchronized File c() {
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
        return a();
    }

    public File d(cn.mucang.android.jiakaoyi.framework.h.b<Float> bVar) {
        try {
            return b(bVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
