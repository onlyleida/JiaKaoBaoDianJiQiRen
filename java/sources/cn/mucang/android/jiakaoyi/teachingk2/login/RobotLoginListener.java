package cn.mucang.android.jiakaoyi.teachingk2.login;

import android.app.Activity;
import android.content.Intent;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.facelib.model.NonPerceiveLoginData;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.StepAlias;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.communicate.AiCommandAdapter;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.api.RobotBusinessLoginApi;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.CoachLoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.NonPerceivePrivacyView;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.RecordPrivacyView;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.ui.RobotGuideActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindInfo;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;
import cn.mucang.android.jiakaoyi.teachingk2.video.VideoGuideManager;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.uilib.login.AppointClassEntity;
import cn.mucang.jiakaoyi.uilib.login.ClassTimeManager;
import cn.mucang.jiakaoyi.uilib.login.LoginListener;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.RobotClassTimeModel;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.siterule.InstructResult;
import cn.mucang.jiakaoyi.uilib.siterule.RobotSiteInstructApi;
import cn.mucang.jiakaoyi.uilib.ui.dialog.DefaultPrivacyView;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog;
import cn.mucang.jiakaoyi.uilib.ui.setting.AbsSettingProvider;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingActivity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J4\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u0019H\u0016J\b\u0010\u001b\u001a\u00020\bH\u0002J\u0018\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J \u0010 \u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\nH\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;", "Lcn/mucang/jiakaoyi/uilib/login/LoginListener;", "()V", "students", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "beforeLoginStart", "", "data", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "doLoadResource", "needCallback", "", "getDeviceType", "Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;", "getPrivacyViews", "", "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;", "loginType", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "interceptLogin", "user", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "next", "Lkotlin/Function0;", "back", "loadStepAlias", "notifyBusiness", "onSsoLogin", "activity", "Landroid/app/Activity;", "onUserLogin", "loginUser", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotLoginListener implements LoginListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet<Long> f7301a = new HashSet<>();

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$onUserLogin$listener$1", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "onIntercept", "", "onSpeakEnd", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements TtsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f7302a;
        final /* synthetic */ Activity b;

        a(boolean z, Activity activity) {
            this.f7302a = z;
            this.b = activity;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            if (this.f7302a) {
                Activity activity = this.b;
                AbsSettingProvider absSettingProvider = (AbsSettingProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSettingProvider.class, null, 2, null);
                ActivityUtils.b(activity, absSettingProvider == null ? 100 : absSettingProvider.getDefaultVolume(), true);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakBegin() {
            TtsListener.a.c(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            if (this.f7302a) {
                Activity activity = this.b;
                AbsSettingProvider absSettingProvider = (AbsSettingProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSettingProvider.class, null, 2, null);
                ActivityUtils.b(activity, absSettingProvider == null ? 100 : absSettingProvider.getDefaultVolume(), true);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakPaused() {
            TtsListener.a.e(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakResumed() {
            TtsListener.a.g(this);
        }
    }

    private final void i(final boolean z) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.g
            @Override // java.lang.Runnable
            public final void run() {
                RobotLoginListener.j(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(boolean z) {
        try {
            if (z) {
                ResourceManager.p(new cn.mucang.android.jiakaoyi.teachingk2.res.l(), null);
            } else {
                ResourceManager.p(null, null);
            }
        } catch (Exception e2) {
            u.h(r.m("资源加载失败", e2.getLocalizedMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(XyUserModel user) {
        r.e(user, "$user");
        VideoGuideManager.a(user);
    }

    private final void r() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.d
            @Override // java.lang.Runnable
            public final void run() {
                RobotLoginListener.s();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s() {
        try {
            InstructResult instructResultM = new RobotSiteInstructApi().m(ExamSiteUtil.n(KeMu.K2, -1L), 1);
            if (instructResultM == null || !cn.mucang.android.core.utils.n0.g(instructResultM.getContent())) {
                return;
            }
            cn.mucang.android.jiakaoyi.engine.k.a.f(JSON.parseArray(instructResultM.getContent(), StepAlias.class));
        } catch (Exception e2) {
            t.d("LoginActivity", e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(final Exception e2) {
        r.e(e2, "$e");
        DebounceUtil.f3633a.a(1000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.h
            @Override // java.lang.Runnable
            public final void run() {
                RobotLoginListener.u(e2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(Exception e2) {
        r.e(e2, "$e");
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        CommonAlertDialog.a aVar = new CommonAlertDialog.a(activityI);
        aVar.e(e2.getMessage());
        String strA = k0.a(R.string.teachbase_knew);
        r.d(strA, "getString(R.string.teachbase_knew)");
        aVar.c(strA);
        aVar.a().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(XyUserModel loginUser) {
        r.e(loginUser, "$loginUser");
        FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
        String mucangId = loginUser.getMucangId();
        if (mucangId == null) {
            mucangId = "";
        }
        String name = loginUser.getName();
        faceLoginManager.Q(mucangId, name != null ? name : "");
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.LoginListener
    public void a(Activity activity, final XyUserModel loginUser, LoginData data) {
        Intent launchPageIntent;
        r.e(activity, "activity");
        r.e(loginUser, "loginUser");
        r.e(data, "data");
        u.h(k0.a(R.string.teachbase_login_success));
        cn.mucang.android.jiakaoyi.framework.log.f.o("登录成功:" + ((Object) loginUser.getName()) + ", loginData:" + ((Object) data.getClass().getSimpleName()));
        RobotAccount.i().o(loginUser);
        ThreadPool.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.e
            @Override // java.lang.Runnable
            public final void run() {
                RobotLoginListener.v(loginUser);
            }
        });
        if (LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin) && !loginUser.isCoach()) {
            UserSwitcher.f7303a.A(data);
        }
        AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsTeachBaseProvider.class, null, 2, null);
        if (absTeachBaseProvider != null) {
            absTeachBaseProvider.updateUserInfo(loginUser);
        }
        if (this.f7301a.contains(Long.valueOf(loginUser.getStudentId()))) {
            if (absTeachBaseProvider != null && (launchPageIntent = absTeachBaseProvider.getLaunchPageIntent(activity)) != null) {
                activity.startActivity(launchPageIntent);
            }
            r.d(k0.a(R.string.teachbase_adjust_seat_mirror), "getString(R.string.teachbase_adjust_seat_mirror)");
        } else {
            RobotGuideActivity.f8138h.a(activity);
            this.f7301a.add(Long.valueOf(loginUser.getStudentId()));
        }
        r();
        i(true);
        RobotAccount.m(loginUser);
        a aVar = new a(ActivityUtils.b(activity, 90, false), activity);
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_ai_welcome_word);
        r.d(strA, "getString(R.string.teachbase_ai_welcome_word)");
        Object[] objArr = new Object[2];
        objArr[0] = loginUser.getName();
        CarBindInfo carBindInfoA = CarInfoManager.a();
        objArr[1] = carBindInfoA != null ? carBindInfoA.getDriveSchoolName() : null;
        String str = String.format(strA, Arrays.copyOf(objArr, 2));
        r.d(str, "java.lang.String.format(format, *args)");
        TtsManager.u(str, TtsGrade.SuperLevel, aVar);
        if (activity instanceof LoginActivity) {
            activity.finish();
        } else if (activity instanceof CoachLoginActivity) {
            ((CoachLoginActivity) activity).m();
        }
        AiCommandAdapter.l(loginUser.getStudentId());
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.LoginListener
    public void b() {
        LoginListener.a.b(this);
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.LoginListener
    public void c(final XyUserModel user, LoginType loginType, final Function0<v> next, final Function0<v> back) {
        r.e(user, "user");
        r.e(loginType, "loginType");
        r.e(next, "next");
        r.e(back, "back");
        if (ExamSiteUtil.e(0L) <= 0) {
            u.h(k0.a(R.string.teachbase_select_site_hint));
            back.invoke();
            return;
        }
        if (cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(ExamSiteUtil.e(0L)) <= 0) {
            u.h(k0.a(R.string.teachbase_enable_teach_plan_hint));
            back.invoke();
            return;
        }
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.f
            @Override // java.lang.Runnable
            public final void run() {
                RobotLoginListener.k(user);
            }
        });
        SundialClient sundialClient = SundialClient.f9111a;
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        String xyToken = user.getXyToken();
        if (xyToken == null) {
            xyToken = "";
        }
        sundialClient.y(activityI, xyToken, true, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.RobotLoginListener$interceptLogin$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                next.invoke();
            }
        }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.RobotLoginListener$interceptLogin$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                back.invoke();
            }
        });
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.LoginListener
    public List<PrivacyAgreementDialog.a> d(LoginType loginType) {
        ArrayList arrayList = new ArrayList();
        if (loginType == null || loginType != LoginType.QR_CODE) {
            arrayList.add(new DefaultPrivacyView("", DeviceType.ROBOT.getType(), "ai_coach_1"));
        }
        if (LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin)) {
            arrayList.add(new NonPerceivePrivacyView());
        }
        arrayList.add(new RecordPrivacyView());
        return arrayList;
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.LoginListener
    public DeviceType e() {
        return DeviceType.ROBOT;
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.LoginListener
    public void f(LoginData data) {
        r.e(data, "data");
        LoginListener.a.a(this, data);
        if (data instanceof NonPerceiveLoginData) {
            return;
        }
        FaceLoginManager.f3000a.O();
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.LoginListener
    public void g(Activity activity) {
        r.e(activity, "activity");
        i(false);
        SettingActivity.f9892f.a(activity, 3);
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.LoginListener
    public boolean h(XyUserModel user, LoginType loginType) {
        r.e(user, "user");
        r.e(loginType, "loginType");
        try {
            RobotClassTimeModel robotClassTimeModel = (RobotClassTimeModel) new RobotBusinessLoginApi().p(user, loginType).getData(RobotClassTimeModel.class);
            if (robotClassTimeModel == null || robotClassTimeModel.orderRecordId <= 0) {
                return true;
            }
            ClassTimeManager.f9354a.d().l(new AppointClassEntity(robotClassTimeModel.orderRemainingMillis));
            return true;
        } catch (Exception e2) {
            if (e2 instanceof ApiException) {
                ApiException apiException = (ApiException) e2;
                if (apiException.getErrorCode() == 230001 || apiException.getErrorCode() == 230002 || apiException.getErrorCode() == 230003) {
                    ClassTimeManager.f9354a.c().l(kotlin.l.a(loginType, Boolean.TRUE));
                    u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            RobotLoginListener.t(e2);
                        }
                    });
                    return false;
                }
            }
            u.h(e2.getMessage());
            return false;
        }
    }
}
