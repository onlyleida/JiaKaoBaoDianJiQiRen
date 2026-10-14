package cn.mucang.android.core.webview.core.page;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.ui.page.PageActivity;
import cn.mucang.android.core.ui.page.PageAppConfig;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import java.io.File;
import java.io.FileInputStream;
import java.io.Serializable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class AsteroidManager {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AsteroidManager f2738d = new AsteroidManager();
    private ExecutorService b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicInteger f2739a = new AtomicInteger();
    private cn.mucang.android.core.webview.client.g.c c = new cn.mucang.android.core.webview.client.g.c() { // from class: cn.mucang.android.core.webview.core.page.b
        @Override // cn.mucang.android.core.webview.client.g.c
        public final WebResourceResponse a(String str) {
            return AsteroidManager.g(str);
        }
    };

    private static class CheckResponse implements Serializable {
        private String hash;
        private boolean needUpdate;
        private String url;

        private CheckResponse() {
        }

        public String getHash() {
            return this.hash;
        }

        public String getUrl() {
            return this.url;
        }

        public boolean isNeedUpdate() {
            return this.needUpdate;
        }

        public void setHash(String str) {
            this.hash = str;
        }

        public void setNeedUpdate(boolean z) {
            this.needUpdate = z;
        }

        public void setUrl(String str) {
            this.url = str;
        }
    }

    private static class b extends cn.mucang.android.core.api.a {
        private b() {
        }

        public CheckResponse b(long j, String str) throws ApiException, InternalException, HttpException {
            return (CheckResponse) httpGetData("/api/open/check.htm?appId=" + j + "&hash=" + str + "&appletVersion=3", CheckResponse.class);
        }

        @Override // cn.mucang.android.core.api.a
        protected String getApiHost() {
            return "https://asteroid.mucang.cn";
        }

        @Override // cn.mucang.android.core.api.a
        protected String getSignKey() {
            return "*#06#kDw8qW9ElYqjhaSDRYY8iYqP";
        }
    }

    private AsteroidManager() {
        cn.mucang.android.core.webview.client.g.b().f("image.applet.luban.mucang.cn", this.c);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new ThreadPool.a("applet"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.b = threadPoolExecutor;
    }

    private boolean b(String str, long j, String str2) throws Exception {
        File fileD = e.d(str);
        if (n0.e(str) || j <= 0 || fileD.exists() || !fileD.createNewFile()) {
            return false;
        }
        try {
            CheckResponse checkResponseB = new b().b(j, str2);
            if (!checkResponseB.isNeedUpdate()) {
                return false;
            }
            c(str, checkResponseB.getUrl(), checkResponseB.getHash());
            return true;
        } finally {
            if (fileD.exists()) {
                fileD.delete();
            }
        }
    }

    private void c(String str, String str2, String str3) throws Throwable {
        File file = new File(MucangConfig.getContext().getCacheDir(), "temp_" + this.f2739a.incrementAndGet());
        j.g(str2, file, str3);
        File fileA = e.a(str);
        if (!fileA.exists()) {
            fileA.mkdirs();
        }
        j.h(file, fileA);
        j.f(file);
    }

    public static AsteroidManager d() {
        return f2738d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f(String str, long j, String str2, Runnable runnable) {
        try {
            if (!b(str, j, str2) || runnable == null) {
                return;
            }
            runnable.run();
        } catch (Exception e2) {
            t.c("e", e2);
        }
    }

    static /* synthetic */ WebResourceResponse g(String str) {
        Bitmap bitmapDecodeFile;
        try {
            File fileI = e.i(Uri.parse(str).getQueryParameter("url"));
            if (fileI == null || !fileI.exists() || (bitmapDecodeFile = BitmapFactory.decodeFile(fileI.getAbsolutePath())) == null) {
                return null;
            }
            return new WebResourceResponse(bitmapDecodeFile.hasAlpha() ? FileUploadApi.TYPE_IMAGE_PNG : "image/jpeg", "UTF-8", new FileInputStream(fileI));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    void a(String str, final long j, final String str2, final Runnable runnable) {
        final String host = Uri.parse(str).getHost();
        if (e.d(host).exists()) {
            return;
        }
        this.b.execute(new Runnable() { // from class: cn.mucang.android.core.webview.core.page.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f2751a.f(host, j, str2, runnable);
            }
        });
    }

    public synchronized void h(Context context, String str) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            }
            PageActivity.g(context, new PageAppConfig(), WebViewPage.class, WebPageArgument.defaultConfig(str));
        } catch (Throwable th) {
            throw th;
        }
    }
}
