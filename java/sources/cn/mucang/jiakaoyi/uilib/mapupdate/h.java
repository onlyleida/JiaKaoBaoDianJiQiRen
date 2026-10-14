package cn.mucang.jiakaoyi.uilib.mapupdate;

import androidx.appcompat.app.d;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback;
import cn.mucang.android.jiakaoyi.framework.utils.Downloader;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    static class a implements DownloadCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f9467a;
        final /* synthetic */ File b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f9468d;

        a(b bVar, File file, String str, long j) {
            this.f9467a = bVar;
            this.b = file;
            this.c = str;
            this.f9468d = j;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void a(float f2) {
            b bVar = this.f9467a;
            if (bVar == null || f2 < BitmapDescriptorFactory.HUE_RED || f2 > 1.0f) {
                return;
            }
            bVar.a(f2);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void b() {
            if (!this.b.exists()) {
                f.o("serverDownload 下载完成 文件不存在 downloadEntityMd5 " + this.c);
                h.f(this.f9468d, this.f9467a);
                return;
            }
            String strB = h0.b(this.b);
            f.o("serverDownload 下载完成 fileMd5 " + this.c + " ; 下载 fileMD5 " + strB);
            if (!this.c.equalsIgnoreCase(strB)) {
                this.b.delete();
                h.f(this.f9468d, this.f9467a);
                return;
            }
            h.m(this.f9468d, this.b, strB);
            b bVar = this.f9467a;
            if (bVar != null) {
                bVar.b(true, this.b);
            }
        }
    }

    public interface b {
        void a(float f2);

        void b(boolean z, File file);
    }

    static class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DownloadProgressDialog f9469a;
        private final b b;
        private final boolean c;

        public c(DownloadProgressDialog downloadProgressDialog, d dVar, b bVar, ExamSiteModel examSiteModel, boolean z) {
            this.f9469a = downloadProgressDialog;
            this.b = bVar;
            this.c = z;
        }

        @Override // cn.mucang.jiakaoyi.uilib.q.h.b
        public void a(float f2) {
            this.f9469a.r(f2);
            if (f2 >= 100.0f) {
                this.f9469a.dismiss();
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.q.h.b
        public void b(boolean z, File file) {
            this.f9469a.dismiss();
            b bVar = this.b;
            if (bVar != null) {
                if (this.c) {
                    bVar.b(z, null);
                } else {
                    bVar.b(z, file);
                }
            }
        }
    }

    private static File d(long j) {
        String strG = i0.g(e(j), "");
        if (!n0.g(strG)) {
            return null;
        }
        File file = new File(strG);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public static String e(long j) {
        return "map_" + AppUtils.a() + "_" + j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(long j, b bVar) {
        u.h("更新地图出错,使用缓存地图或者重新更新");
        if (bVar != null) {
            bVar.b(false, d(j));
        }
    }

    static /* synthetic */ void h(b bVar, File file) {
        if (bVar != null) {
            bVar.b(false, file);
        }
    }

    static /* synthetic */ void i(ExamSiteModel examSiteModel, boolean z, c cVar) {
        f.o("showDialog 开始更新地图 examSiteId: " + examSiteModel.examSiteId + " ;mapDataUrl: " + FormatUtils.e(examSiteModel.mapDataUrl, false) + " ;mapDataMd5:" + examSiteModel.mapDataMd5);
        n(examSiteModel.examSiteId, examSiteModel.mapDataUrl, examSiteModel.mapDataMd5, cVar);
    }

    static /* synthetic */ void j(b bVar, long j) {
        if (bVar != null) {
            f(j, bVar);
        }
    }

    static /* synthetic */ void k(d dVar, b bVar, final ExamSiteModel examSiteModel, final boolean z) {
        DownloadProgressDialog downloadProgressDialog = new DownloadProgressDialog();
        downloadProgressDialog.show(dVar.getSupportFragmentManager(), "MapDownloadDialog");
        final c cVar = new c(downloadProgressDialog, dVar, bVar, examSiteModel, z);
        if (downloadProgressDialog.getDialog() != null) {
            downloadProgressDialog.getDialog().setCanceledOnTouchOutside(false);
        }
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.q.a
            @Override // java.lang.Runnable
            public final void run() {
                h.i(examSiteModel, z, cVar);
            }
        });
    }

    public static String l(long j) throws Throwable {
        File fileD = d(j);
        if (fileD == null || !fileD.exists()) {
            return null;
        }
        try {
            return g.b(fileD);
        } catch (Throwable th) {
            fileD.delete();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m(long j, File file, String str) {
        KeMu keMu;
        if (AppUtils.l()) {
            keMu = KeMu.B2;
        } else {
            keMu = AppUtils.g() ? KeMu.K3 : KeMu.K2;
        }
        if (file == null || !file.exists() || file.length() <= 0) {
            i0.m(e(j), null);
            ExamSiteUtil.u(j, keMu, null);
        } else {
            i0.m(e(j), file.getAbsolutePath());
            ExamSiteUtil.u(j, keMu, str);
        }
    }

    private static void n(final long j, String str, String str2, final b bVar) {
        File file = new File(MucangConfig.getContext().getExternalFilesDir(null), "MC_ExamMap");
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file, String.valueOf(j));
        if (!file2.exists()) {
            file2.mkdir();
        }
        File file3 = new File(file2, str2 + ".dat");
        if (file3.exists()) {
            String strB = h0.b(file3);
            if (str2.equalsIgnoreCase(strB)) {
                m(j, file3, strB);
                if (bVar != null) {
                    bVar.b(true, file3);
                    return;
                }
                return;
            }
            file3.delete();
        }
        try {
            new Downloader(str, file3.getAbsolutePath(), null).d(new a(bVar, file3, str2, j));
        } catch (Exception e2) {
            e2.printStackTrace();
            f.o("更新下载地图失败 " + e2.getLocalizedMessage());
            if (file3.exists()) {
                file3.deleteOnExit();
            }
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.q.d
                @Override // java.lang.Runnable
                public final void run() {
                    h.j(bVar, j);
                }
            });
        }
    }

    private static void o(final d dVar, final b bVar, final ExamSiteModel examSiteModel, final boolean z) {
        u.f(new SafeRunnable(dVar, new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.q.c
            @Override // java.lang.Runnable
            public final void run() {
                h.k(dVar, bVar, examSiteModel, z);
            }
        }));
    }

    public void c(d dVar, ExamSiteModel examSiteModel, final b bVar) {
        if (!b0.a().b() || examSiteModel == null || n0.e(examSiteModel.mapDataMd5) || n0.e(examSiteModel.mapDataUrl)) {
            f.o("地图数据null 或者 isHighGps =" + b0.a().b());
            if (bVar != null) {
                u.f(new SafeRunnable(dVar, new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.q.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        bVar.b(false, null);
                    }
                }));
                return;
            }
            return;
        }
        examSiteModel.mapDataMd5 = examSiteModel.mapDataMd5.toLowerCase();
        f.o("mapDataMd5 " + examSiteModel.mapDataMd5 + " ; mapDataUrl " + FormatUtils.e(examSiteModel.mapDataUrl, false));
        final File fileD = d(examSiteModel.examSiteId);
        if (fileD == null || !fileD.exists()) {
            f.o("本地地图文件不存在");
            o(dVar, bVar, examSiteModel, false);
            return;
        }
        String strB = h0.b(fileD);
        f.o("checkUpdateMap examSiteId " + examSiteModel.examSiteId + ";localFileMD5 " + strB + ";mapDataMd5 " + examSiteModel.mapDataMd5);
        if (strB == null || !strB.equalsIgnoreCase(examSiteModel.mapDataMd5)) {
            o(dVar, bVar, examSiteModel, false);
        } else {
            u.f(new SafeRunnable(dVar, new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.q.e
                @Override // java.lang.Runnable
                public final void run() {
                    h.h(bVar, fileD);
                }
            }));
        }
    }
}
