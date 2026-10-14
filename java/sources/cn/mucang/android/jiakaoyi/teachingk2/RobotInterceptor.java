package cn.mucang.android.jiakaoyi.teachingk2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.trace.TraceCacheManager;
import cn.mucang.android.jiakaoyi.framework.VoiceRobotPageHandler;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.order.OrderSettingActivity;
import cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.speech.semantic.SpeechMcProtocolHelper;
import cn.mucang.android.jiakaoyi.speech.ui.VoiceHelperDialog;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.calibration.CalibartionActivity;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ota.RobotFirmWareManagerActivity;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OpenPageModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayExamModel;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.RadarDebugActivity;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity;
import cn.mucang.android.jiakaoyi.teachingk2.setting.ai.AISignalActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.RobotGuideActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.TrainingSiteManageActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.RobotCarDataActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.settings.CheckModuleSettingActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.settings.DrivingSettingActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TeachSplashActivity;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.AboutActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J$\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00072\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0017\u001a\u00020\u000fH\u0002J\b\u0010\u0018\u001a\u00020\u000fH\u0002J\b\u0010\u0019\u001a\u00020\u000fH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;", "Lcn/mucang/android/core/config/EmptyActivityLifecycleCallbacks;", "robotPageHandler", "Lcn/mucang/android/jiakaoyi/framework/VoiceRobotPageHandler;", "(Lcn/mucang/android/jiakaoyi/framework/VoiceRobotPageHandler;)V", "globalList", "", "", "getProtocol", "url", "handleUrl", "", "doSomething", "Lkotlin/Function1;", "initLang", "", "activity", "Landroid/app/Activity;", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onActivityResumed", "onActivityStopped", "registerProtocol", "registerSettings", "registerUnity", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotInterceptor extends cn.mucang.android.core.config.l {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final VoiceRobotPageHandler f5934a;
    private final List<String> b;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$Companion;", "", "()V", "URL_AI_SIGNAL", "", "URL_APP_UPGRADE", "URL_CALL_CONTROL", "URL_CALL_UNITY", "URL_CAR_INFO", "URL_CAR_MODEL", "URL_CAR_SIGNAL", "URL_CHECK_MODULE", "URL_ENABLE_DBD", "URL_FIRMWARE", "URL_LOOK_TRACE", "URL_ORDER_SETTING", "URL_RADAR_CALIBRATION", "URL_RADAR_CHECK", "URL_SAFE_DATA", "URL_TEACH_SETTING", "URL_TRAINING_MODEL", "URL_VOICE_HELPER", "isUserPage", "", "ac", "Landroid/app/Activity;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final boolean a(Activity ac) {
            r.e(ac, "ac");
            return (ac instanceof TeachSplashActivity) || (ac instanceof CheckActivity) || (ac instanceof LoginActivity) || (ac instanceof RobotGuideActivity) || (ac instanceof AboutActivity) || (ac instanceof UnityMainActivity);
        }
    }

    public RobotInterceptor(VoiceRobotPageHandler robotPageHandler) {
        r.e(robotPageHandler, "robotPageHandler");
        this.f5934a = robotPageHandler;
        this.b = kotlin.collections.t.d("http://robot.nav.mucang.cn/callControl");
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean A(RobotInterceptor this$0, Context context, String str) {
        r.e(this$0, "this$0");
        Activity activityI = MucangConfig.i();
        androidx.fragment.app.d dVar = activityI instanceof androidx.fragment.app.d ? (androidx.fragment.app.d) activityI : null;
        if (this$0.f5934a.o(dVar)) {
            FragmentManager supportFragmentManager = dVar != null ? dVar.getSupportFragmentManager() : null;
            if (supportFragmentManager == null) {
                return true;
            }
            VoiceHelperDialog.a aVar = VoiceHelperDialog.b;
            if (supportFragmentManager.j0(aVar.a()) == null) {
                new VoiceHelperDialog().show(supportFragmentManager, aVar.a());
            }
        }
        return true;
    }

    private final void B() {
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/carInfo", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.n
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.K(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/carSignal", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.v
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.L(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/carModel", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.x
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.M(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/training", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.m
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.N(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/safeData", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.o
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.O(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/radarCheck", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.p
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.P(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/AISignal", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.w
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.C(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/calibration", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.u
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.D(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/enableDBD", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.q
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.E(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/firmware", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.l
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.F(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/checkModule", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.k
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.G(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/appUpgrade", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.j
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.H(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/orderSetting", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.i
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.I(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/teachSetting", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.h
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.J(context, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        AISignalActivity.a aVar = AISignalActivity.f7925h;
        r.d(context, "context");
        aVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        CalibartionActivity.a aVar = CalibartionActivity.f6442d;
        r.d(context, "context");
        aVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean E(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        DrivingSettingActivity.a aVar = DrivingSettingActivity.c;
        r.d(context, "context");
        aVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean F(Context context, String str) {
        RobotFirmWareManagerActivity.a aVar = RobotFirmWareManagerActivity.j;
        r.d(context, "context");
        aVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean G(Context context, String str) {
        CheckModuleSettingActivity.b bVar = CheckModuleSettingActivity.c;
        r.d(context, "context");
        bVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean H(Context context, String str) {
        Activity activityI = MucangConfig.i();
        if (activityI instanceof SettingActivity) {
            SettingActivity settingActivity = (SettingActivity) activityI;
            if (!settingActivity.isFinishing() && !settingActivity.isDestroyed()) {
                cn.mucang.jiakaoyi.uilib.upgrade.update.q.d(true, null);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean I(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) OrderSettingActivity.class);
        r.d(context, "context");
        ActivityUtils.c(context, intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean J(Context context, String str) {
        K3TeachSettingActivity.a aVar = K3TeachSettingActivity.l;
        r.d(context, "context");
        ExamSiteModel examSiteModelG = ExamSiteUtil.g();
        r.c(examSiteModelG);
        aVar.a(context, examSiteModelG);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean K(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        CarBindActivity.a aVar = CarBindActivity.f8171d;
        r.d(context, "context");
        aVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean L(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        SignalCheckActivity.b bVar = SignalCheckActivity.f10203h;
        r.d(context, "context");
        bVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean M(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        RobotCarDataActivity.a aVar = RobotCarDataActivity.f8173d;
        r.d(context, "context");
        aVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean N(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        boolean zA = r.a("0", Uri.parse(str).getQueryParameter("role"));
        TrainingSiteManageActivity.a aVar = TrainingSiteManageActivity.f8159d;
        r.d(context, "context");
        aVar.a(context, zA);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean O(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        SafeDataManageActivity.a aVar = SafeDataManageActivity.f7846d;
        r.d(context, "context");
        aVar.a(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean P(Context context, String str) {
        if (!(MucangConfig.i() instanceof SettingActivity)) {
            return false;
        }
        RadarDebugActivity.a aVar = RadarDebugActivity.c;
        r.d(context, "context");
        aVar.a(context);
        return true;
    }

    private final void Q() {
        SpeechMcProtocolHelper.f5901a.h(u0.c("http://robot.nav.mucang.cn/callUnity"));
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/callUnity", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.f
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.R(this.f7120a, context, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean R(RobotInterceptor this$0, Context context, final String url) {
        r.e(this$0, "this$0");
        r.d(url, "url");
        return this$0.b(url, new Function1<String, Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.RobotInterceptor$registerUnity$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String it) {
                r.e(it, "it");
                Uri uri = Uri.parse(url);
                String queryParameter = uri.getQueryParameter("page");
                int i = queryParameter == null ? 0 : Integer.parseInt(queryParameter);
                String queryParameter2 = uri.getQueryParameter("child");
                int i2 = queryParameter2 == null ? 0 : Integer.parseInt(queryParameter2);
                String queryParameter3 = uri.getQueryParameter("code");
                int i3 = queryParameter3 == null ? 0 : Integer.parseInt(queryParameter3);
                String queryParameter4 = uri.getQueryParameter("subCode");
                UserLevelManager.q(i, i2, i3, queryParameter4 != null ? Integer.parseInt(queryParameter4) : 0);
                OpenPageModel openPageModel = new OpenPageModel();
                openPageModel.page = i;
                openPageModel.child = i2;
                cn.mucang.android.jiakaoyi.unity.c.d.e(openPageModel);
                return Boolean.TRUE;
            }
        });
    }

    private final String a(String str) {
        URI uriCreate = URI.create(str);
        return uriCreate.getScheme() + "://" + ((Object) uriCreate.getHost()) + ((Object) uriCreate.getPath());
    }

    /* JADX WARN: Code duplicated, block: B:8:0x002b  */
    private final boolean b(String str, Function1<? super String, Boolean> function1) {
        boolean z;
        String strA = a(str);
        if (this.b.contains(strA)) {
            return function1.invoke(str).booleanValue();
        }
        Activity activity = MucangConfig.i();
        AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsTeachBaseProvider.class, null, 2, null);
        if (absTeachBaseProvider == null) {
            z = false;
        } else {
            r.d(activity, "activity");
            if (absTeachBaseProvider.processSpecial(str, activity)) {
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            return true;
        }
        if (this.f5934a.o(activity) && kotlin.collections.t.d("http://robot.nav.mucang.cn/callUnity").contains(strA)) {
            return function1.invoke(str).booleanValue();
        }
        return false;
    }

    private final void c(Activity activity) {
        if (cn.mucang.android.jiakaoyi.framework.utils.f0.e() && !c.a(activity)) {
            ((ViewGroup) activity.findViewById(android.R.id.content)).setLayoutDirection(0);
        }
        if (cn.mucang.android.jiakaoyi.framework.utils.f0.d() && c.a(activity)) {
            activity.setTheme(cn.mucang.android.jiakaoyi.teachbase.R.style.jiakaoyi_font_theme);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(Activity activity) {
        r.e(activity, "$activity");
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(android.R.id.content);
        viewGroup.addView(LayoutInflater.from(activity).inflate(cn.mucang.android.jiakaoyi.teachbase.R.layout.robot_extra_view, viewGroup, false));
    }

    private final void x() {
        B();
        Q();
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/callControl", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.t
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.y(this.f7989a, context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/lookTrace", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.s
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.z(context, str);
            }
        });
        f.a.a.a.activity.h.g("http://robot.nav.mucang.cn/voiceHelper", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.g
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return RobotInterceptor.A(this.f7127a, context, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean y(RobotInterceptor this$0, Context context, String url) {
        r.e(this$0, "this$0");
        r.d(url, "url");
        return this$0.b(url, new Function1<String, Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.RobotInterceptor$registerProtocol$1$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String it) {
                r.e(it, "it");
                AudioManager.C();
                return Boolean.TRUE;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean z(Context context, String str) {
        if (!TraceCacheManager.b()) {
            cn.mucang.android.core.utils.u.h(cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_trace_lack));
            return true;
        }
        ReplayExamModel replayExamModel = new ReplayExamModel();
        replayExamModel.setData();
        cn.mucang.android.jiakaoyi.unity.c.d.e(replayExamModel);
        return true;
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(final Activity activity, Bundle savedInstanceState) {
        r.e(activity, "activity");
        super.onActivityCreated(activity, savedInstanceState);
        c(activity);
        if (activity instanceof UnityMainActivity) {
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.y
                @Override // java.lang.Runnable
                public final void run() {
                    RobotInterceptor.w(activity);
                }
            }, 100L);
        }
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        r.e(activity, "activity");
        super.onActivityResumed(activity);
        if (this.f5934a.o(activity)) {
            SpeechManager.f5839a.u();
            UserLevelManager.B();
        }
    }

    @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        r.e(activity, "activity");
        super.onActivityStopped(activity);
        if (this.f5934a.o(activity)) {
            SpeechManager.f5839a.q();
        }
    }
}
