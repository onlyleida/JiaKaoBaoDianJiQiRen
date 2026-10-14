package cn.mucang.jiakaoyi.uilib.utils;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Intent;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.download.DownloadEntity;
import cn.mucang.android.download.client.DownloadManager;
import cn.mucang.android.download.client.c;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.api.RemoteConfigApi;
import cn.mucang.jiakaoyi.uilib.model.RemoteValueModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import java.io.File;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u0007H\u0003J\b\u0010\u0012\u001a\u00020\rH\u0007J\b\u0010\u0013\u001a\u00020\rH\u0007J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0004H\u0007J\b\u0010\u001a\u001a\u00020\rH\u0007J\b\u0010\u001b\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\tj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/DownloadUtils;", "", "()V", "PACKAGE_K2", "", "PACKAGE_K3", "canDownload", "", "installMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "checkInstall", "", "packageName", "key", "title", "update", "checkInstallK2", "checkInstallK3", "doDownload", "url", "goInstall", "file", "Ljava/io/File;", "installRobot", "updateInstallBetaK2", "updateInstallBetaK3", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DownloadUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DownloadUtils f9580a = new DownloadUtils();
    private static final HashMap<String, Long> b = new HashMap<>();
    private static boolean c = true;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.i$a */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/utils/DownloadUtils$doDownload$1$1$1", "Lcn/mucang/android/download/client/DownloadConnection;", "onDownloadCompleted", "", TtmlNode.ATTR_ID, "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.download.client.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ File f9581d;

        a(File file) {
            this.f9581d = file;
        }

        @Override // cn.mucang.android.download.client.a
        public void a(long j) {
            DownloadUtils downloadUtils = DownloadUtils.f9580a;
            DownloadUtils.c = true;
            downloadUtils.j(this.f9581d);
        }
    }

    private DownloadUtils() {
    }

    @SuppressLint({"RestrictedApi"})
    private final void c(String str, final String str2, final String str3, boolean z) {
        if (!z && o0.b(str)) {
            u.h("应用已安装");
        } else if (c) {
            c = false;
            n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.s.a
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadUtils.e(str2, str3);
                }
            });
        }
    }

    static /* synthetic */ void d(DownloadUtils downloadUtils, String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        downloadUtils.c(str, str2, str3, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(String key, String title) {
        r.e(key, "$key");
        r.e(title, "$title");
        try {
            RemoteValueModel remoteValueModel = (RemoteValueModel) new RemoteConfigApi().d(key, RemoteValueModel.class);
            if (remoteValueModel == null || !cn.mucang.android.core.utils.n0.g(remoteValueModel.getValue())) {
                c = true;
                u.h("未检测到下载地址");
            } else {
                String value = remoteValueModel.getValue();
                if (value != null) {
                    f9580a.g(value, title);
                }
            }
        } catch (Exception e2) {
            c = true;
            t.d("SettingViewModel", e2.toString());
        }
    }

    public static final void f() {
        DownloadUtils downloadUtils = f9580a;
        String string = MucangConfig.getContext().getString(R.string.k3_app_name);
        r.d(string, "getContext().getString(R.string.k3_app_name)");
        d(downloadUtils, "cn.mucang.android.jiakaoyi", "k3_download_url", string, false, 8, null);
    }

    private final void g(final String str, final String str2) {
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.s.b
            @Override // java.lang.Runnable
            public final void run() {
                DownloadUtils.h(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(final String url, String title) {
        r.e(url, "$url");
        r.e(title, "$title");
        if (!cn.mucang.android.core.utils.n0.g(url)) {
            c = true;
            u.h("未检测到下载地址");
            return;
        }
        final File file = new File(MucangConfig.getContext().getExternalFilesDir(null), h0.d(url));
        HashMap<String, Long> map = b;
        if (map.get(url) != null) {
            DownloadUtils downloadUtils = f9580a;
            c = true;
            cn.mucang.android.download.a aVarG = cn.mucang.android.download.a.G();
            Long l = map.get(url);
            r.c(l);
            r.d(l, "installMap[url]!!");
            DownloadEntity downloadEntity = (DownloadEntity) aVarG.m(DownloadEntity.class, l.longValue());
            if (downloadEntity != null && downloadEntity.getDownloadStatus() == 8) {
                u.h("正在下载，下载完成后立即安装，请稍后");
                return;
            } else if (downloadEntity != null && downloadEntity.getDownloadStatus() == 32) {
                u.h("正在安装中，请稍后");
                downloadUtils.j(file);
                return;
            }
        }
        if (file.exists()) {
            file.delete();
        }
        DownloadManager downloadManagerI = DownloadManager.i();
        DownloadManager.Request request = new DownloadManager.Request(url);
        request.b("jky");
        request.a(3);
        request.c(true);
        request.e(title);
        request.d(file);
        downloadManagerI.g(request, new c() { // from class: cn.mucang.jiakaoyi.uilib.s.c
            @Override // cn.mucang.android.download.client.c
            public final void a(Object obj) {
                DownloadUtils.i(url, file, (Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String url, File file, Long l) {
        r.e(url, "$url");
        r.e(file, "$file");
        b.put(url, Long.valueOf(l == null ? 0L : l.longValue()));
        DownloadManager.i().c(new a(file));
        u.h("开始下载，下载完成后立即安装，请稍后");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(File file) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(268435456);
        m.o(MucangConfig.getContext(), intent, "application/vnd.android.package-archive", file, true);
        Application context = MucangConfig.getContext();
        r.d(context, "getContext()");
        ActivityUtils.c(context, intent);
    }
}
