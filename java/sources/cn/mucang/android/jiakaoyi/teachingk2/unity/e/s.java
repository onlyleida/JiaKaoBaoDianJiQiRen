package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import android.content.pm.PackageManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.utils.a;
import cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr;
import cn.mucang.android.jiakaoyi.teachingk2.calibration.CalibarDataUtil;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.ResVersionInfoModel;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResDirUtils;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindInfo;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class s implements c<ResVersionInfoModel> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f6391a;

    public static ResVersionInfoModel b() {
        if (n0.e(f6391a)) {
            d();
        }
        ResVersionInfoModel resVersionInfoModel = new ResVersionInfoModel();
        resVersionInfoModel.version = "v" + f6391a;
        resVersionInfoModel.mediaResPath = "";
        resVersionInfoModel.deviceNum = DeviceUtils.c();
        resVersionInfoModel.auto = SelectCarManager.d().isAuto() ? 1 : 0;
        resVersionInfoModel.leftFullAngel = CalibarDataUtil.h();
        resVersionInfoModel.rightFullAngel = CalibarDataUtil.i();
        resVersionInfoModel.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
        CarBindInfo carBindInfoA = CarInfoManager.a();
        if (carBindInfoA == null) {
            resVersionInfoModel.examSiteName = "";
        } else {
            resVersionInfoModel.examSiteName = carBindInfoA.getDriveSchoolName();
        }
        resVersionInfoModel.isLeftUpper = a.b();
        resVersionInfoModel.showMap = LocalConfigManager.f(LocalConfig.ShowMap);
        if (n.b().c != null) {
            resVersionInfoModel.stepConfig = cn.mucang.android.jiakaoyi.signal.d.j.a.f(cn.mucang.android.jiakaoyi.signal.d.j.a.f(cn.mucang.android.jiakaoyi.signal.d.j.a.f(0, ResVersionInfoModel.TrainProject.BianXianLianXi.id, n.b().c.p.size() > 0), ResVersionInfoModel.TrainProject.YuanHuanLianXi.id, n.b().c.r.size() > 0), ResVersionInfoModel.TrainProject.DoubleYuanHuanLianXi.id, n.b().c.s.size() > 0);
        }
        resVersionInfoModel.clutchActiveStart = CalibarDataUtil.f() / 100.0f;
        resVersionInfoModel.clutchActiveEnd = CalibarDataUtil.e() / 100.0f;
        resVersionInfoModel.showNavigation = RobotAccount.h();
        AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.f3433a.a(AbsTeachBaseProvider.class, null);
        if (absTeachBaseProvider != null) {
            resVersionInfoModel.appType = absTeachBaseProvider.getAppType();
        }
        resVersionInfoModel.showAutoTeach = LocalConfigManager.f(LocalConfig.AutoTeach);
        resVersionInfoModel.showHelpTeach = LocalConfigManager.f(LocalConfig.HelpTeach) && !AppUtils.c();
        resVersionInfoModel.openK3 = LocalConfigManager.f(LocalConfig.OpenK3);
        resVersionInfoModel.speedControlHelper = CtrSpeedAssistMgr.f6128e.O();
        resVersionInfoModel.basePointAltitude = String.valueOf(n.b().f7599a.getZero().altitude);
        resVersionInfoModel.basePointLongitude = String.valueOf(n.b().f7599a.getZero().longitude);
        resVersionInfoModel.basePointLatitude = String.valueOf(n.b().f7599a.getZero().latitude);
        resVersionInfoModel.mapPath = "file://" + n.b().b;
        resVersionInfoModel.enableNonPerceiveLogin = LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin);
        resVersionInfoModel.clutchTrainType = CalibarDataUtil.g();
        resVersionInfoModel.showLanguage = LocalConfigManager.f(LocalConfig.ShowLanguage);
        resVersionInfoModel.showSetting = RobotAccount.f7298a.l();
        return resVersionInfoModel;
    }

    public static ResVersionInfoModel c() {
        ResVersionInfoModel resVersionInfoModelB = b();
        long jE = ExamSiteUtil.e(0L);
        ResourceManager.Resource resource = ResourceManager.Resource.Unity;
        ResourceManager.VersionInfo versionInfoF = ResourceManager.f(resource, jE);
        if (n0.e(versionInfoF.url)) {
            u.h("unity资源不存在");
            resVersionInfoModelB.respath = "";
            return resVersionInfoModelB;
        }
        File fileC = ResDirUtils.c(resource.fileRoot, jE, versionInfoF.version, versionInfoF.url, versionInfoF.md5);
        if (!fileC.exists()) {
            u.h("unity资源不存在");
            resVersionInfoModelB.respath = "";
            return resVersionInfoModelB;
        }
        resVersionInfoModelB.respath = "file://" + fileC.getAbsolutePath();
        return resVersionInfoModelB;
    }

    private static void d() {
        try {
            f6391a = MucangConfig.getContext().getPackageManager().getPackageInfo(MucangConfig.getContext().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<ResVersionInfoModel> a(UnityMessage<ResVersionInfoModel> unityMessage, Activity activity) {
        return new UnityMessage<>(c());
    }
}
