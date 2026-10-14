package cn.mucang.jiakaoyi.uilib.upgrade.update;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.p;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback;
import cn.mucang.android.jiakaoyi.framework.utils.Downloader;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.jiakaoyi.uilib.api.RemoteConfigApi;
import cn.mucang.jiakaoyi.uilib.model.RemoteValueModel;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SimpleDateFormat f10342a = new SimpleDateFormat("yyMMdd", Locale.CHINA);
    private static boolean b = true;

    static class a implements cn.mucang.android.jiakaoyi.framework.h.b<Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b f10343a;
        final /* synthetic */ ApkUpdateDialog b;

        a(cn.mucang.android.jiakaoyi.framework.h.b bVar, ApkUpdateDialog apkUpdateDialog) {
            this.f10343a = bVar;
            this.b = apkUpdateDialog;
        }

        static /* synthetic */ void b(Boolean bool, cn.mucang.android.jiakaoyi.framework.h.b bVar, ApkUpdateDialog apkUpdateDialog) {
            if (bool.booleanValue()) {
                if (bVar != null) {
                    bVar.callback(Boolean.TRUE);
                }
            } else if (apkUpdateDialog != null && apkUpdateDialog.isShowing()) {
                apkUpdateDialog.c();
            } else if (bVar != null) {
                bVar.callback(Boolean.FALSE);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(final Boolean bool) {
            final cn.mucang.android.jiakaoyi.framework.h.b bVar = this.f10343a;
            final ApkUpdateDialog apkUpdateDialog = this.b;
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.a
                @Override // java.lang.Runnable
                public final void run() {
                    q.a.b(bool, bVar, apkUpdateDialog);
                }
            });
        }
    }

    static class b implements cn.mucang.android.jiakaoyi.framework.h.b<Float> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ApkUpdateDialog f10344a;

        b(ApkUpdateDialog apkUpdateDialog) {
            this.f10344a = apkUpdateDialog;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(Float f2) {
            this.f10344a.f(f2.floatValue());
        }
    }

    static class c implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b f10345a;
        final /* synthetic */ String b;
        final /* synthetic */ ApkUpdateDialog c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b f10346d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ File f10347e;

        c(cn.mucang.android.jiakaoyi.framework.h.b bVar, String str, ApkUpdateDialog apkUpdateDialog, cn.mucang.android.jiakaoyi.framework.h.b bVar2, File file) {
            this.f10345a = bVar;
            this.b = str;
            this.c = apkUpdateDialog;
            this.f10346d = bVar2;
            this.f10347e = file;
        }

        static /* synthetic */ void d(cn.mucang.android.jiakaoyi.framework.h.b bVar, Boolean bool) {
            if (bVar != null) {
                bVar.callback(Boolean.FALSE);
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.upgrade.e.q.f
        public void a(float f2) {
            cn.mucang.android.jiakaoyi.framework.h.b bVar = this.f10345a;
            if (bVar != null) {
                bVar.callback(Float.valueOf(f2));
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.upgrade.e.q.f
        public void b(Exception exc, String str) {
            u.h("下载更新失败");
            cn.mucang.android.jiakaoyi.framework.log.f.o("startUpgrade " + str + "  ; " + exc.getLocalizedMessage() + " ; " + Log.getStackTraceString(exc));
            cn.mucang.android.jiakaoyi.framework.h.b bVar = this.f10346d;
            if (bVar != null) {
                bVar.callback(Boolean.FALSE);
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.upgrade.e.q.f
        public void c(File file) {
            String str;
            cn.mucang.android.jiakaoyi.framework.log.f.o("startUpgrade " + file.getPath());
            String strB = h0.b(file);
            if (strB != null && ((str = this.b) == null || strB.equalsIgnoreCase(str))) {
                this.c.dismiss();
                final cn.mucang.android.jiakaoyi.framework.h.b bVar = this.f10346d;
                q.j(file, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.b
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        q.c.d(bVar, (Boolean) obj);
                    }
                });
                return;
            }
            u.h("下载文件出错");
            this.f10347e.delete();
            cn.mucang.android.jiakaoyi.framework.log.f.o("下载文件有问题 md5 出现问题 ,服务器md5=" + this.b + ",计算md5=" + strB);
            cn.mucang.android.jiakaoyi.framework.h.b bVar2 = this.f10346d;
            if (bVar2 != null) {
                bVar2.callback(Boolean.FALSE);
            }
        }
    }

    static class d implements DownloadCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f10348a;
        final /* synthetic */ File b;

        d(f fVar, File file) {
            this.f10348a = fVar;
            this.b = file;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void a(float f2) {
            f fVar = this.f10348a;
            if (fVar == null || f2 < BitmapDescriptorFactory.HUE_RED || f2 > 1.0f) {
                return;
            }
            fVar.a(f2);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void b() {
            f fVar = this.f10348a;
            if (fVar != null) {
                fVar.c(this.b);
            }
        }
    }

    static class e implements Runnable {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ RemoteValueModel f10349a;
            final /* synthetic */ String b;

            a(e eVar, RemoteValueModel remoteValueModel, String str) {
                this.f10349a = remoteValueModel;
                this.b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                String desc = n0.g(this.f10349a.getDesc()) ? this.f10349a.getDesc() : "解决一些问题";
                String version = "当前版本：" + p.k();
                if (this.f10349a.getVersion() != null) {
                    version = this.f10349a.getVersion();
                }
                q.w(this.f10349a.getValue(), null, this.b, "更新内测", version, desc, "取消", null, 0);
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    String str = "";
                    if (AppUtils.g()) {
                        str = "beta_k3_download_url";
                    } else if (AppUtils.f()) {
                        str = "beta_k2_download_url";
                    } else if (AppUtils.l()) {
                        str = "beta_b2_download_url";
                    } else if (AppUtils.i()) {
                        str = "beta_moto_download_url";
                    }
                    if (n0.g(str)) {
                        RemoteValueModel remoteValueModel = (RemoteValueModel) new RemoteConfigApi().d(str, RemoteValueModel.class);
                        if (remoteValueModel == null || !n0.g(remoteValueModel.getValue())) {
                            u.h("未检测到下载地址");
                            cn.mucang.android.jiakaoyi.framework.log.f.o("升级内测 " + JSON.toJSONString(remoteValueModel));
                        } else {
                            cn.mucang.android.jiakaoyi.framework.log.f.o("升级内测 " + remoteValueModel.getValue());
                            u.f(new a(this, remoteValueModel, MucangConfig.r().replace(".", "_") + "_v_beta_" + System.currentTimeMillis() + ".apk"));
                        }
                    } else {
                        u.h("无效的内测key");
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    cn.mucang.android.jiakaoyi.framework.log.f.o("升级内测 " + Log.getStackTraceString(e2));
                }
            } finally {
                boolean unused = q.b = true;
            }
        }
    }

    public interface f {
        void a(float f2);

        void b(Exception exc, String str);

        void c(File file);
    }

    private static void A(final String str, String str2, final String str3, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar, final cn.mucang.android.jiakaoyi.framework.h.b<Float> bVar2, final ApkUpdateDialog apkUpdateDialog) {
        File externalFilesDir = MucangConfig.getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        if (externalFilesDir == null) {
            u.h("获取apk存储文件失败");
            if (bVar != null) {
                bVar.callback(Boolean.FALSE);
                return;
            }
            return;
        }
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        final File file = new File(externalFilesDir, str2);
        if (file.exists()) {
            String strB = h0.b(file);
            if (strB != null && strB.equalsIgnoreCase(str3)) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("本地有下载好的apk " + file.getAbsolutePath());
                apkUpdateDialog.dismiss();
                j(file, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.k
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        q.u(bVar, (Boolean) obj);
                    }
                });
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("缓存的下载文件有问题 md5 出现问题 fileMD5 = " + strB + " ; apkMd5 = " + str3);
            file.delete();
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("开始下载： url " + str);
        e(externalFilesDir, file);
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.c
            @Override // java.lang.Runnable
            public final void run() {
                String str4 = str;
                File file2 = file;
                q.z(str4, file2, new q.c(bVar2, str3, apkUpdateDialog, bVar, file2));
            }
        });
    }

    public static void B() {
        if (b) {
            b = false;
            cn.mucang.android.jiakaoyi.framework.utils.n0.a(new e());
        }
    }

    @SuppressLint({"RestrictedApi"})
    public static void d(final boolean z, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(MucangConfig.i());
        jLoadingDialog.b("正在检查更新,请稍侯...");
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.d
            @Override // java.lang.Runnable
            public final void run() {
                q.k(jLoadingDialog, z, bVar);
            }
        });
    }

    public static void e(File file, final File file2) {
        final File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.h
            @Override // java.lang.Runnable
            public final void run() {
                q.l(fileArrListFiles, file2);
            }
        });
    }

    public static void f(FragmentManager fragmentManager, String str, String str2, String str3, String str4, String str5) {
        final ApkUpdateDialog apkUpdateDialog = new ApkUpdateDialog(MucangConfig.i(), null, str2, str5, null, null, false);
        apkUpdateDialog.show();
        apkUpdateDialog.f(BitmapDescriptorFactory.HUE_RED);
        A(str, str3, str4, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.n
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                apkUpdateDialog.dismiss();
            }
        }, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.o
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                apkUpdateDialog.f(((Float) obj).floatValue());
            }
        }, apkUpdateDialog);
    }

    private static int g() {
        try {
            return Integer.parseInt(f10342a.format(new Date()));
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static UpgradeInfoModel h() {
        try {
            List<UpgradeInfoModel> listA = cn.mucang.jiakaoyi.uilib.unityres.a.a(false, false);
            if (listA != null && listA.size() == 1 && listA.get(0).getType() == cn.mucang.jiakaoyi.uilib.unityres.a.f10311d) {
                return listA.get(0);
            }
            return null;
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("getNewUpgradeInfoModel " + e2.getLocalizedMessage());
            e2.printStackTrace();
            return null;
        }
    }

    public static int i() {
        return i0.d("APKUpdateTime", -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j(File file, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(536870912);
            m.o(MucangConfig.getContext(), intent, "application/vnd.android.package-archive", file, true);
            f.a.a.a.j.a.a(MucangConfig.i()).c(intent, 110, new f.a.a.a.j.c() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.f
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent2) {
                    q.n(bVar, i, i2, intent2);
                }
            });
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("跳转安装页面报错 ： " + e2.getLocalizedMessage());
        }
    }

    static /* synthetic */ void k(final JLoadingDialog jLoadingDialog, final boolean z, final cn.mucang.android.jiakaoyi.framework.h.b bVar) {
        try {
            final UpgradeInfoModel upgradeInfoModelH = h();
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.j
                @Override // java.lang.Runnable
                public final void run() {
                    q.o(jLoadingDialog, upgradeInfoModelH, z, bVar);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            u.h("更新失败");
            cn.mucang.android.jiakaoyi.framework.log.f.o("更新失败" + e2.getLocalizedMessage());
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.e
                @Override // java.lang.Runnable
                public final void run() {
                    q.p(bVar, jLoadingDialog);
                }
            });
        }
    }

    static /* synthetic */ void l(File[] fileArr, File file) {
        for (File file2 : fileArr) {
            if (file2.isFile() && file2.exists() && file2.getName().endsWith(".apk") && ((file == null || !file2.getAbsolutePath().equals(file.getAbsolutePath())) && !p0.e(new Date(file2.lastModified()), new Date()))) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(" 删除缓存apk " + file2.getName());
                file2.delete();
            }
        }
    }

    static /* synthetic */ void n(cn.mucang.android.jiakaoyi.framework.h.b bVar, int i, int i2, Intent intent) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("用户取消安装 requestCode " + i + " resultCode " + i2);
        if (i == 110) {
            bVar.callback(Boolean.FALSE);
        }
    }

    static /* synthetic */ void o(JLoadingDialog jLoadingDialog, UpgradeInfoModel upgradeInfoModel, boolean z, cn.mucang.android.jiakaoyi.framework.h.b bVar) {
        jLoadingDialog.dismiss();
        cn.mucang.android.jiakaoyi.framework.log.f.o("更新请求的返回数据：" + JSON.toJSONString(upgradeInfoModel));
        t.a("updateApk", JSON.toJSONString(upgradeInfoModel));
        cn.mucang.android.jiakaoyi.framework.log.f.o("updateApk" + JSON.toJSONString(upgradeInfoModel));
        if (upgradeInfoModel == null) {
            u.h("暂无更新");
            if (bVar != null) {
                bVar.callback(Boolean.TRUE);
                return;
            }
            return;
        }
        if (upgradeInfoModel.getVersion() > o0.t()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("有最新的版本,最新的版本是：" + upgradeInfoModel.getVersion());
            y(upgradeInfoModel, z, bVar);
        }
    }

    static /* synthetic */ void p(cn.mucang.android.jiakaoyi.framework.h.b bVar, JLoadingDialog jLoadingDialog) {
        if (bVar != null) {
            bVar.callback(Boolean.FALSE);
        }
        jLoadingDialog.dismiss();
    }

    static /* synthetic */ void q(ApkUpdateDialog apkUpdateDialog, String str, String str2, String str3, cn.mucang.android.jiakaoyi.framework.h.b bVar, View view) {
        if (apkUpdateDialog != null) {
            apkUpdateDialog.f(BitmapDescriptorFactory.HUE_RED);
        }
        A(str, str2, str3, new a(bVar, apkUpdateDialog), new b(apkUpdateDialog), apkUpdateDialog);
    }

    static /* synthetic */ void r(int i, ApkUpdateDialog apkUpdateDialog, cn.mucang.android.jiakaoyi.framework.h.b bVar, View view) {
        if (i > 0) {
            i0.k("APKUpdateTime", i);
        }
        apkUpdateDialog.dismiss();
        if (bVar != null) {
            bVar.callback(Boolean.TRUE);
        }
    }

    static /* synthetic */ void s(f fVar) {
        u.h("下载链接为null");
        fVar.b(new IllegalStateException("下载链接为null"), "下载链接为null");
    }

    static /* synthetic */ void t(f fVar, Exception exc) {
        if (fVar != null) {
            fVar.b(exc, "下载apk失败");
        }
    }

    static /* synthetic */ void u(cn.mucang.android.jiakaoyi.framework.h.b bVar, Boolean bool) {
        if (bVar != null) {
            bVar.callback(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void w(final String str, final String str2, final String str3, String str4, String str5, String str6, String str7, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar, final int i) {
        final ApkUpdateDialog apkUpdateDialog = new ApkUpdateDialog(MucangConfig.i(), str5, str4, str6, str7, "立即更新", false);
        apkUpdateDialog.e(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                q.q(apkUpdateDialog, str, str3, str2, bVar, view);
            }
        });
        apkUpdateDialog.d(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                q.r(i, apkUpdateDialog, bVar, view);
            }
        });
        apkUpdateDialog.show();
    }

    public static void x(UpgradeInfoModel upgradeInfoModel, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        y(upgradeInfoModel, false, bVar);
    }

    public static void y(UpgradeInfoModel upgradeInfoModel, boolean z, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        Boolean bool = Boolean.TRUE;
        boolean notice = (upgradeInfoModel.getForce() || z) ? true : upgradeInfoModel.getNotice();
        int i = i();
        int iG = g();
        if (!notice) {
            if (bVar != null) {
                bVar.callback(bool);
                return;
            }
            return;
        }
        if (!z && !upgradeInfoModel.getForce() && iG <= i) {
            if (bVar != null) {
                bVar.callback(bool);
                return;
            }
            return;
        }
        String noticeTitle = upgradeInfoModel.getNoticeTitle() == null ? "版本更新啦" : upgradeInfoModel.getNoticeTitle();
        String noticeContent = upgradeInfoModel.getNoticeContent() == null ? "解决一些问题" : upgradeInfoModel.getNoticeContent();
        w(upgradeInfoModel.getFilePath(), upgradeInfoModel.getMd5(), MucangConfig.r().replace(".", "_") + "_v" + upgradeInfoModel.getVersion() + "_" + iG + ".apk", noticeTitle, upgradeInfoModel.getVersionName(), noticeContent, upgradeInfoModel.getForce() ? null : "下次再说", bVar, iG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void z(String str, File file, final f fVar) {
        if (str == null || n0.e(str)) {
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.g
                @Override // java.lang.Runnable
                public final void run() {
                    q.s(fVar);
                }
            });
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("startDownload url " + str + "; localFile" + file);
        try {
            new Downloader(str, file.getAbsolutePath(), null).d(new d(fVar, file));
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("startDownload url=" + str + "; localFile=" + file + " ; " + e2.getLocalizedMessage() + " ; " + Log.getStackTraceString(e2));
            if (file.exists()) {
                file.delete();
            }
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.e.m
                @Override // java.lang.Runnable
                public final void run() {
                    q.t(fVar, e2);
                }
            });
        }
    }
}
