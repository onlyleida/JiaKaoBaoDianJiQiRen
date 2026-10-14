package cn.mucang.android.core.webview.client;

import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.y;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, WeakReference<c>> f2705a;
    private c b;
    private c c;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static g f2706a = new g();
    }

    public interface c {
        WebResourceResponse a(String str);
    }

    private void a() {
        if (this.f2705a.get("core.luban.album.interceptor.mucang.cn") == null) {
            f("core.luban.album.interceptor.mucang.cn", this.b);
        }
        if (this.f2705a.get("core.luban.local.file.interceptor.mucang.cn") == null) {
            f("core.luban.local.file.interceptor.mucang.cn", this.c);
        }
    }

    public static g b() {
        return b.f2706a;
    }

    static /* synthetic */ WebResourceResponse d(String str) {
        byte[] byteArray;
        try {
            Uri uri = Uri.parse(str);
            String path = uri.getPath();
            if (path == null) {
                return null;
            }
            if (path.startsWith("/content:")) {
                path = path.substring(1);
            }
            Bitmap bitmapC = f.a.a.b.a.a.c(MucangConfig.getContext(), path);
            if (bitmapC == null) {
                return null;
            }
            int iG = y.g(uri.getQueryParameter("size"));
            if (iG > 0) {
                byteArray = cn.mucang.android.core.utils.e.a(bitmapC, iG);
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmapC.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                byteArray = byteArrayOutputStream.toByteArray();
            }
            return new WebResourceResponse(bitmapC.hasAlpha() ? FileUploadApi.TYPE_IMAGE_PNG : "image/jpeg", "UTF-8", new ByteArrayInputStream(byteArray));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    static /* synthetic */ WebResourceResponse e(String str) {
        try {
            String strL = cn.mucang.android.core.webview.protocol.e.a.l(str);
            if (strL == null) {
                return null;
            }
            File file = new File(strL);
            if (file.exists()) {
                return new WebResourceResponse(d.b(file.getName()), "UTF-8", new FileInputStream(file));
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    Map<String, WeakReference<c>> c() {
        return this.f2705a;
    }

    public void f(String str, c cVar) {
        if (n0.e(str) || cVar == null) {
            throw new IllegalArgumentException("host 或 requestInterceptor为空");
        }
        this.f2705a.put(str, new WeakReference<>(cVar));
    }

    private g() {
        this.f2705a = new HashMap();
        this.b = new c() { // from class: cn.mucang.android.core.webview.client.b
            @Override // cn.mucang.android.core.webview.client.g.c
            public final WebResourceResponse a(String str) {
                return g.d(str);
            }
        };
        this.c = new c() { // from class: cn.mucang.android.core.webview.client.c
            @Override // cn.mucang.android.core.webview.client.g.c
            public final WebResourceResponse a(String str) {
                return g.e(str);
            }
        };
        a();
    }
}
