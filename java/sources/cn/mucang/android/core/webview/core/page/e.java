package cn.mucang.android.core.webview.core.page;

import android.net.Uri;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestOptions;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class e {
    static File a(String str) {
        File file = new File(g(), str + "_archive");
        file.mkdirs();
        return file;
    }

    static File b(String str) {
        File file = new File(g(), str);
        file.mkdirs();
        return file;
    }

    public static String c() {
        return u0.d() + " (MCApplet v3)";
    }

    static File d(String str) {
        return new File(g(), str + ".lock");
    }

    public static String e(String str) {
        if (n0.e(str)) {
            return null;
        }
        Uri uri = Uri.parse(str);
        String host = uri.getHost();
        File fileB = b(host);
        File fileA = a(host);
        String path = uri.getPath();
        if (path != null && path.endsWith("/")) {
            path = path + "index.html";
        }
        if (path == null) {
            return null;
        }
        File file = new File(fileB, path);
        File file2 = new File(fileA, path);
        if (!file.exists()) {
            file = file2;
        }
        if (file.exists()) {
            return j(file);
        }
        return null;
    }

    static String f(String str) {
        if (str.contains("htm")) {
            return "text/html";
        }
        if (str.matches("png|jpg|jpeg|bmp|webp|gif|svg")) {
            return "image/" + str;
        }
        if (str.contains("json")) {
            return FileUploadApi.TYPE_APPLICATION_JSON;
        }
        if (str.contains("js")) {
            return "application/js";
        }
        if (str.contains("css")) {
            return "text/css";
        }
        return str.contains("txt") ? "text/plain" : "application/octet-stream";
    }

    private static String g() {
        File file = new File(MucangConfig.getContext().getFilesDir(), "asteroid");
        if (!file.exists()) {
            file.mkdir();
        }
        return file.getAbsolutePath();
    }

    public static boolean h(String str) {
        return !n0.e(str) && str.contains("asteroid.mucang.cn");
    }

    static File i(String str) throws ExecutionException, InterruptedException {
        return Glide.with(MucangConfig.getContext()).setDefaultRequestOptions(new RequestOptions().diskCacheStrategy(DiskCacheStrategy.ALL).skipMemoryCache(true)).download(str).submit().get();
    }

    private static String j(File file) throws Throwable {
        FileInputStream fileInputStream;
        byte[] bArr = new byte[Long.valueOf(file.length()).intValue()];
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    fileInputStream.read(bArr);
                } catch (FileNotFoundException e2) {
                    e = e2;
                    e.printStackTrace();
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                o.a(fileInputStream2);
                throw th;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            fileInputStream = null;
        } catch (IOException e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            o.a(fileInputStream2);
            throw th;
        }
        o.a(fileInputStream);
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e6) {
            t.c("e", e6);
            return null;
        }
    }
}
