package cn.mucang.android.jiakaoyi.teachingk2.login;

import android.app.Activity;
import android.text.TextUtils;
import androidx.lifecycle.a0;
import androidx.lifecycle.z;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.teachingk2.AppDataInLogin;
import cn.mucang.android.jiakaoyi.teachingk2.ai.AiManager;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.l0;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.model.BaseOperatorModel;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.ErrorPointHandler;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.HighErrorHandler;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.s;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.LoadingCloseModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityExitModel;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecorder;
import cn.mucang.android.jiakaoyi.teachingk2.ui.RobotGuideActivity;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.uilib.login.ClassTimeManager;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.TimeOutCallback;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.socket.model.LoginStudent;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000U\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n*\u0001\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0002J\u0006\u0010\u001f\u001a\u00020 J\b\u0010!\u001a\u00020\u001eH\u0002J\n\u0010\"\u001a\u0004\u0018\u00010\u0016H\u0007J\u0018\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0002J\u0006\u0010(\u001a\u00020\u000fJ\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0019H\u0007J\u0018\u0010*\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0003J\u001c\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020\u00162\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0016H\u0007J\b\u0010.\u001a\u00020\u001eH\u0002J\b\u0010/\u001a\u00020\u001eH\u0002J\u0018\u00100\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0007R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R,\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082T¢\u0006\u0002\n\u0000R\"\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u001c¨\u00061"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;", "", "()V", "logoutObserver", "cn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$logoutObserver$1", "Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$logoutObserver$1;", "operatorList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;", "getOperatorList$annotations", "getOperatorList", "()Ljava/util/List;", "setOperatorList", "(Ljava/util/List;)V", "showNavigation", "", "getShowNavigation$annotations", "getShowNavigation", "()Z", "setShowNavigation", "(Z)V", "timeOver", "", "user", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "getUser$annotations", "getUser", "()Landroidx/lifecycle/MutableLiveData;", "getBaseOperator", "", "getCourseId", "", "getNavigationConfig", "getUserId", "goingToBack", "activity", "Landroid/app/Activity;", "loginAction", "", "isCoach", "login", "logout", "manualLogout", "reason", "studentId", "startListenLogout", "stopListenLogout", "unityLogout", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotAccount {
    private static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static List<BaseOperatorModel> f7299d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RobotAccount f7298a = new RobotAccount();
    private static final z<XyUserModel> b = new z<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final b f7300e = new b();

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$login$1", "Lcn/mucang/jiakaoyi/uilib/login/TimeOutCallback;", "onTimeTip", "", "timeTip", "Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements TimeOutCallback {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.TimeOutCallback
        public void a(ClassTimeManager.ClassTimeTip timeTip) {
            r.e(timeTip, "timeTip");
            if (timeTip == ClassTimeManager.ClassTimeTip.Over) {
                RobotAccount.p("timeOver", null, 2, null);
            } else if ((MucangConfig.i() instanceof RobotGuideActivity) || !LoadingCloseModel.isUnityLoaded) {
                TtsManager.z(timeTip.getTip(), TtsGrade.GlobalRemind);
            } else {
                RobotTips.Y(timeTip.getTip(), null, TtsGrade.GlobalRemind, 0, null, 16, null);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$logoutObserver$1", "Landroidx/lifecycle/Observer;", "Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;", "onChanged", "", "t", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements a0<LoginStudent> {
        b() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(LoginStudent loginStudent) {
            StringBuilder sb = new StringBuilder();
            sb.append("收到退出消息:");
            sb.append((Object) (loginStudent == null ? null : loginStudent.studentId));
            sb.append(", ");
            XyUserModel xyUserModelE = RobotAccount.i().e();
            sb.append(xyUserModelE == null ? null : Long.valueOf(xyUserModelE.getStudentId()));
            sb.append(", ");
            XyUserModel xyUserModelE2 = RobotAccount.i().e();
            sb.append((Object) (xyUserModelE2 == null ? null : xyUserModelE2.getMucangId()));
            sb.append(", ");
            sb.append(loginStudent == null ? null : Boolean.valueOf(loginStudent.timeOver));
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            if (n0.g(loginStudent == null ? null : loginStudent.studentId)) {
                String str = loginStudent == null ? null : loginStudent.studentId;
                XyUserModel xyUserModelE3 = RobotAccount.i().e();
                if (!TextUtils.equals(str, xyUserModelE3 == null ? null : Long.valueOf(xyUserModelE3.getStudentId()).toString())) {
                    String str2 = loginStudent == null ? null : loginStudent.studentId;
                    XyUserModel xyUserModelE4 = RobotAccount.i().e();
                    if (!TextUtils.equals(str2, xyUserModelE4 == null ? null : xyUserModelE4.getMucangId())) {
                        return;
                    }
                }
            }
            RobotAccount.f7298a.t();
            boolean z = false;
            int i = 1;
            if (loginStudent != null && loginStudent.timeOver) {
                z = true;
            }
            if (z) {
                i = 3;
            } else {
                if (!n0.e(loginStudent != null ? loginStudent.studentId : null)) {
                    i = 2;
                }
            }
            Activity activity = MucangConfig.i();
            if (!(activity instanceof UnityMainActivity)) {
                r.d(activity, "activity");
                RobotAccount.n(activity, i);
            } else {
                UnityExitModel unityExitModel = new UnityExitModel();
                unityExitModel.quitType = i;
                cn.mucang.android.jiakaoyi.unity.c.d.e(unityExitModel);
            }
        }
    }

    private RobotAccount() {
    }

    private final void d() {
        kotlinx.coroutines.g.b(j0.b(), null, null, new RobotAccount$getBaseOperator$1(null), 3, null);
    }

    private final void f() {
        kotlinx.coroutines.g.b(j0.b(), null, null, new RobotAccount$getNavigationConfig$1(null), 3, null);
    }

    public static final List<BaseOperatorModel> g() {
        return f7299d;
    }

    public static final boolean h() {
        return c;
    }

    public static final z<XyUserModel> i() {
        return b;
    }

    public static final String j() {
        XyUserModel xyUserModelE = b.e();
        if (xyUserModelE == null) {
            return null;
        }
        return xyUserModelE.getMucangId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(Activity activity, int i) {
        if (LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin)) {
            FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
            faceLoginManager.N();
            faceLoginManager.O();
            UserSwitcher.f7303a.C();
        }
        if (i == 2) {
            UserSwitcher.i(b.e());
        }
        b.l(null);
        ClassTimeManager.b();
        GlobalChecker.l();
        LoginHelper.f7296a.g(false);
        if (activity instanceof LoginActivity) {
            return;
        }
        w.p.l(null);
        s.b().f();
        RobotTips.f7184a.g0();
        UserRecorder.n();
        AppDataInLogin.f7224a.d();
        AiManager.f7544a.b();
        LoginActivity.f7362g.a(activity, i);
        AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsTeachBaseProvider.class, null, 2, null);
        if (absTeachBaseProvider != null) {
            absTeachBaseProvider.logout(activity);
        }
        LoginManager.z();
        DialogMgr.f3457a.a();
    }

    public static final void m(XyUserModel user) {
        r.e(user, "user");
        cn.mucang.android.jiakaoyi.framework.p002e.g.a("esId", String.valueOf(ExamSiteUtil.e(0L)));
        cn.mucang.android.jiakaoyi.framework.p002e.g.a("tpId", String.valueOf(cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(ExamSiteUtil.e(0L))));
        z<String> zVar = w.q;
        AuthUser authUser = user.getAuthUser();
        zVar.o(authUser == null ? null : authUser.getMucangId());
        w.r.studentId = String.valueOf(user.getStudentId());
        w.r.xyToken = user.getXyToken();
        s.b().h();
        String strValueOf = String.valueOf(ExamSiteUtil.e(0L));
        AuthUser authUser2 = user.getAuthUser();
        UserRecorder.m(strValueOf, authUser2 != null ? authUser2.getMucangId() : null);
        AppDataInLogin.f7224a.c();
        RobotAccount robotAccount = f7298a;
        robotAccount.s();
        RobotTips.f7184a.Z();
        AiManager.f7544a.a();
        TeachConfig.g();
        l0.c();
        robotAccount.f();
        robotAccount.d();
        SpeechManager.f5839a.j();
        UserLevelManager.o();
        ClassTimeManager.e(new a());
        ErrorPointHandler.d(user);
        HighErrorHandler.g();
        GlobalChecker.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(final Activity activity, final int i) {
        SundialClient.f9111a.z(activity, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount$logout$1
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
                RobotAccount.f7298a.k(activity, i);
            }
        }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount$logout$2
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
                RobotAccount.f7298a.k(activity, i);
            }
        });
    }

    public static final void o(String reason, String str) {
        r.e(reason, "reason");
        cn.mucang.android.jiakaoyi.framework.log.f.o("退出登录:" + reason + ',' + ((Object) str));
        LoginStudent loginStudent = new LoginStudent(str, System.currentTimeMillis());
        if (r.a(reason, "timeOver")) {
            loginStudent.timeOver = true;
        }
        LiveBus.d(LoginStudent.class).l(loginStudent);
    }

    public static /* synthetic */ void p(String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        o(str, str2);
    }

    public static final void q(List<BaseOperatorModel> list) {
        f7299d = list;
    }

    public static final void r(boolean z) {
        c = z;
    }

    private final void s() {
        LiveBus.d(LoginStudent.class).i(f7300e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        LiveBus.d(LoginStudent.class).m(f7300e);
    }

    public static final void u(Activity activity, int i) {
        r.e(activity, "activity");
        n(activity, i);
    }

    public final long e() {
        XyUserModel xyUserModelE = b.e();
        if (xyUserModelE == null) {
            return 0L;
        }
        return xyUserModelE.getCourseId();
    }

    public final boolean l() {
        XyUserModel xyUserModelE = b.e();
        if (xyUserModelE == null) {
            return false;
        }
        return xyUserModelE.isCoach();
    }
}
