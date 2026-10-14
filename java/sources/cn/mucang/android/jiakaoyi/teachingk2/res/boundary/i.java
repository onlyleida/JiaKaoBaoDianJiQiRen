package cn.mucang.android.jiakaoyi.teachingk2.res.boundary;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.SystemClock;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.Downloader;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.ResLoadModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.l;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.s;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.siterule.SiteApi;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a f7578a = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.a
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            i.d(eVar);
        }
    };
    private static long b = 0;
    private static volatile boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<ExamSiteModel, Boolean> f7579d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final r0<ArrayList<ExamSiteModel>> f7580e = r0.g("site_model_data_list", null, new ArrayList().getClass(), ExamSiteModel.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Map<ExamSiteModel, List<Gps>> f7581f = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    static class b implements ResourceManager.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ProgressDialog f7582a;

        private b() {
            this.f7582a = null;
        }

        private void c() {
            try {
                ProgressDialog progressDialog = this.f7582a;
                if (progressDialog != null && progressDialog.isShowing()) {
                    this.f7582a.dismiss();
                }
                this.f7582a = null;
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void e() {
            ResourceManager.p(this, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void g(View view) {
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7569a.e();
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.b
        public void a(ResourceManager.Resource resource, String str) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("考场切换时资源加载失败:" + resource.name + "," + str);
            c();
            Activity activityI = MucangConfig.i();
            if (activityI == null || activityI.isDestroyed()) {
                return;
            }
            new JCommonDialog(activityI, new JCommonDialog.DialogParams(str, "请确认相关资源是否上传完成", "关闭", null, "重试", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f7570a.g(view);
                }
            }, false)).show();
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.b
        public void b(float f2) {
            Activity activityI = MucangConfig.i();
            if (this.f7582a == null && activityI != null && !activityI.isFinishing() && !activityI.isDestroyed()) {
                this.f7582a = ProgressDialog.show(activityI, null, "加载中..." + ((int) (f2 * 100.0f)) + "%");
            }
            ProgressDialog progressDialog = this.f7582a;
            if (progressDialog != null) {
                progressDialog.setMessage("加载中..." + ((int) (100.0f * f2)) + "%");
            }
            if (f2 >= 1.0f) {
                c();
                TtsManager.r(k0.a(R.string.teachbase_site_switch_end), TtsGrade.GlobalTip);
                cn.mucang.android.jiakaoyi.framework.log.f.o("考场切换完成");
            }
            if (cn.mucang.android.jiakaoyi.unity.c.d.q()) {
                ResLoadModel resLoadModel = new ResLoadModel();
                resLoadModel.process = f2;
                cn.mucang.android.jiakaoyi.unity.c.d.e(resLoadModel);
                if (f2 >= 1.0f) {
                    cn.mucang.android.jiakaoyi.unity.c.d.e(s.c());
                }
            }
        }
    }

    private static void a(final ExamSiteModel examSiteModel, final ExamSiteModel examSiteModel2) {
        c = true;
        final Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isDestroyed() || activityI.isFinishing()) {
            return;
        }
        final String str = String.format(k0.a(R.string.teachbase_check_enter_other_site), examSiteModel.examSiteName);
        final String str2 = String.format(k0.a(R.string.teachbase_auto_switch_site), examSiteModel2.examSiteName);
        TtsManager.r(str, TtsGrade.GlobalTip);
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.e
            @Override // java.lang.Runnable
            public final void run() {
                new SwitchSiteDialog(activityI, str, str2, new Function1() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return i.l(examSiteModel, examSiteModel, (Boolean) obj);
                    }
                }).show();
            }
        });
    }

    private static boolean b(Gps gps, List<Gps> list) {
        int i;
        if (cn.mucang.android.core.utils.g.b(list)) {
            return false;
        }
        double d2 = gps.latitude;
        double d3 = gps.longitude;
        int size = list.size();
        int i2 = size - 1;
        int i3 = 0;
        boolean z = false;
        while (i3 < size) {
            Gps gps2 = list.get(i3);
            Gps gps3 = list.get(i2);
            double d4 = gps2.longitude;
            double d5 = d2;
            boolean z2 = d4 > d3;
            double d6 = gps3.longitude;
            if (z2 != (d6 > d3)) {
                double d7 = gps3.latitude;
                i = size;
                double d8 = gps2.latitude;
                if (d5 < (((d7 - d8) * (d3 - d4)) / (d6 - d4)) + d8) {
                    z = !z;
                }
            } else {
                i = size;
            }
            i2 = i3;
            d2 = d5;
            i3++;
            size = i;
        }
        return z;
    }

    private static List<Gps> c(File file) {
        String str = new String(m.j(file));
        if (cn.mucang.android.core.utils.n0.e(str)) {
            return null;
        }
        return JSON.parseArray(str, Gps.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (!eVar.d().h() || eVar.d().L - b <= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS || c) {
            return;
        }
        b = eVar.d().L;
        if ((MucangConfig.i() instanceof UnityMainActivity) || (MucangConfig.i() instanceof LoginActivity)) {
            final Gps gpsFrom = Gps.from(eVar.getCurrentPosition().f5281g);
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.f
                @Override // java.lang.Runnable
                public final void run() {
                    i.j(gpsFrom);
                }
            });
        }
    }

    private static void e(final ExamSiteModel examSiteModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("开始切换考场:" + examSiteModel.examSiteId + "," + examSiteModel.examSiteName);
        f7579d.put(examSiteModel, Boolean.TRUE);
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.g
            @Override // java.lang.Runnable
            public final void run() {
                i.k(examSiteModel);
            }
        });
    }

    private static void f(Gps gps) {
        ExamSiteModel examSiteModelD;
        Map<ExamSiteModel, List<Gps>> map = f7581f;
        if (cn.mucang.android.core.utils.g.c(map) || map.size() == 1 || (examSiteModelD = ExamSiteUtil.d()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<ExamSiteModel, List<Gps>> entry : map.entrySet()) {
            Boolean bool = f7579d.get(entry.getKey());
            if (bool == null || !bool.booleanValue()) {
                if (!b(gps, entry.getValue())) {
                    continue;
                } else {
                    if (examSiteModelD.examSiteId == entry.getKey().examSiteId) {
                        return;
                    }
                    if (cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(entry.getKey().examSiteId) > 0) {
                        arrayList.add(entry.getKey());
                    }
                }
            }
        }
        if (cn.mucang.android.core.utils.g.b(arrayList)) {
            return;
        }
        a((ExamSiteModel) arrayList.get(0), examSiteModelD);
    }

    private static File g(ExamSiteModel examSiteModel) {
        if (cn.mucang.android.core.utils.n0.e(examSiteModel.boundaryUrl)) {
            return null;
        }
        File file = new File(MucangConfig.getContext().getCacheDir(), examSiteModel.boundaryMd5);
        if (file.exists()) {
            return file;
        }
        try {
            if (new Downloader(examSiteModel.boundaryUrl, file.getAbsolutePath(), examSiteModel.boundaryMd5).c()) {
                return file;
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    static /* synthetic */ void j(Gps gps) {
        try {
            f(gps);
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("考场边界检测崩溃:" + th.getLocalizedMessage());
        }
    }

    static /* synthetic */ void k(ExamSiteModel examSiteModel) {
        if (cn.mucang.android.jiakaoyi.unity.c.d.q()) {
            cn.mucang.android.jiakaoyi.unity.c.d.b(20023);
            SystemClock.sleep(500L);
        }
        ExamSiteUtil.r(examSiteModel);
        ResourceManager.p(cn.mucang.android.jiakaoyi.unity.c.d.r() ? new l() : new b(), null);
        RainModeMgr.f();
    }

    static /* synthetic */ v l(ExamSiteModel examSiteModel, ExamSiteModel examSiteModel2, Boolean bool) {
        if (bool.booleanValue()) {
            e(examSiteModel);
            return null;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("不切换考场到:" + examSiteModel.examSiteId + "," + examSiteModel.examSiteName + ";当前考场:" + examSiteModel2.examSiteId + "," + examSiteModel2.examSiteName);
        f7579d.put(examSiteModel, Boolean.TRUE);
        return null;
    }

    public static void m() {
        List<Gps> listC;
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(f7578a);
        try {
            List<ExamSiteModel> listQ = new SiteApi().q();
            if (cn.mucang.android.core.utils.g.d(listQ)) {
                f7580e.j(new ArrayList<>(listQ));
            }
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("获取考场边界数据失败:" + th.getLocalizedMessage());
        }
        r0<ArrayList<ExamSiteModel>> r0Var = f7580e;
        if (cn.mucang.android.core.utils.g.b(r0Var.b())) {
            return;
        }
        HashMap map = new HashMap();
        for (ExamSiteModel examSiteModel : r0Var.b()) {
            try {
                File fileG = g(examSiteModel);
                if (fileG != null && fileG.exists() && (listC = c(fileG)) != null) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("加载" + examSiteModel.examSiteId + ":" + examSiteModel.examSiteName + "边界数据完成");
                    map.put(examSiteModel, listC);
                }
            } catch (Throwable th2) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("加载" + examSiteModel.examSiteId + ":" + examSiteModel.examSiteName + "边界数据失败:" + th2.getLocalizedMessage());
            }
        }
        Map<ExamSiteModel, List<Gps>> map2 = f7581f;
        map2.clear();
        map2.putAll(map);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(f7578a);
    }
}
