package cn.mucang.android.jiakaoyi.teachingk2.ui.splash;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.widget.TextView;
import androidx.lifecycle.a0;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.SsoLoginEvent;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.InProject;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.OutProject;
import cn.mucang.android.jiakaoyi.signal.communicate.AiCommandAdapter;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityTeachingSplashV11Binding;
import cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.AutoShuttleController;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.error.DriveSettingKeys;
import cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper;
import cn.mucang.android.jiakaoyi.teachingk2.login.api.RobotBusinessLoginApi;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ModuleStatusReporter;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestLocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestOTA;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestPrivacy;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.d1;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.e1;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.f1;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.j1;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.k1;
import cn.mucang.jiakaoyi.uilib.api.DeviceConfigApi;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.model.ConfigModel;
import cn.mucang.jiakaoyi.uilib.sso.SsoLoginActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.AbsSettingProvider;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.amap.api.fence.GeoFence;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.v;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\b\u0010\u0013\u001a\u00020\u000bH\u0002J\b\u0010\u0014\u001a\u00020\u000bH\u0002J\b\u0010\u0015\u001a\u00020\bH\u0016J\b\u0010\u0016\u001a\u00020\u000bH\u0015J\b\u0010\u0017\u001a\u00020\u000bH\u0002J\b\u0010\u0018\u001a\u00020\u000bH\u0014J\b\u0010\u0019\u001a\u00020\u000bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;", "()V", "firstEvent", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "startLog", "appendTimeDesc", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", GeoFence.BUNDLE_KEY_FENCESTATUS, "attachBaseContext", "newBase", "Landroid/content/Context;", "doThings", "exeTest", "getStatName", "init", "logout", "onDestroy", "uploadConfig", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachSplashActivity extends BaseViewBindingActivity<ActivityTeachingSplashV11Binding> {
    private k c;
    private final cn.mucang.android.jiakaoyi.framework.h.b<String> b = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.e
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            TeachSplashActivity.A(this.f8270a, (String) obj);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8264d = "";

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(final TeachSplashActivity this$0, final String str) {
        r.e(this$0, "this$0");
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.f
            @Override // java.lang.Runnable
            public final void run() {
                TeachSplashActivity.B(this.f8271a, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(TeachSplashActivity this$0, String str) {
        r.e(this$0, "this$0");
        this$0.g().descTv.setText(str);
    }

    private final void C() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.d
            @Override // java.lang.Runnable
            public final void run() {
                TeachSplashActivity.D();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D() {
        try {
            ArrayList arrayList = new ArrayList();
            for (LocalConfig localConfig : LocalConfig.values()) {
                ConfigModel configModel = new ConfigModel();
                configModel.setCode(localConfig.getCode());
                configModel.setValue(localConfig.getValue());
                arrayList.add(configModel);
            }
            DeviceConfigApi deviceConfigApi = new DeviceConfigApi();
            String jSONString = JSON.toJSONString(arrayList, SerializerFeature.DisableCircularReferenceDetect);
            r.d(jSONString, "toJSONString(\n          …ect\n                    )");
            deviceConfigApi.n(jSONString, true);
        } catch (Exception e2) {
            t.d("TeachSplashActivity", e2.toString());
        }
    }

    private final void j(StringBuilder sb, k kVar) {
        sb.append((char) 65292 + ((Object) kVar.f8342d) + "执行时间:" + kVar.f8345g + '-' + kVar.f8346h);
        k kVar2 = kVar.f8341a;
        if (kVar2 != null) {
            r.d(kVar2, "event.nextEvent");
            j(sb, kVar2);
        }
    }

    private final void k() {
        b0.a().e(1);
        ModuleStatusReporter.f7613a.d();
        AiCommandAdapter.a();
        DriveSettingKeys.a();
        cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.b();
        LoginHelper.d();
        TimeReporter.f8265a.c();
        C();
        y();
        AutoShuttleController.f6239a.j();
        i0.k("keyInProjectBg", InProject.None.type);
        i0.k("keyOutProjectBg", OutProject.Black.type);
        AbsSettingProvider absSettingProvider = (AbsSettingProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSettingProvider.class, null, 2, null);
        ActivityUtils.b(this, absSettingProvider == null ? 30 : absSettingProvider.getDefaultVolume(), false);
        getWindow().getDecorView().setSystemUiVisibility(Videoio.CAP_PROP_XI_LENS_FOCUS_MOVE);
    }

    private final void l() {
        AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsTeachBaseProvider.class, null, 2, null);
        k endTestEvent = absTeachBaseProvider != null ? absTeachBaseProvider.getEndTestEvent(this, this.b) : null;
        cn.mucang.android.jiakaoyi.framework.h.b<String> bVar = this.b;
        r.c(endTestEvent);
        d1 d1Var = new d1(this, this.b, new f1(this, this.b, new e1(this, this.b, new TestOTA(this, bVar, endTestEvent))));
        cn.mucang.android.jiakaoyi.framework.h.b<String> bVar2 = this.b;
        this.c = new TestPrivacy(this, this.b, new j1(this, bVar2, new TestLocalConfig(this, bVar2, new k1(this, bVar2, d1Var))));
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.a
            @Override // java.lang.Runnable
            public final void run() {
                TeachSplashActivity.m(this.f8266a);
            }
        }, 4000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(TeachSplashActivity this$0) {
        r.e(this$0, "this$0");
        k kVar = this$0.c;
        if (kVar == null) {
            return;
        }
        kVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(final TeachSplashActivity this$0, SsoLoginEvent ssoLoginEvent) {
        r.e(this$0, "this$0");
        SsoLoginActivity.c.d(this$0, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.b
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                TeachSplashActivity.o(this.f8267a, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(TeachSplashActivity this$0, String str) {
        r.e(this$0, "this$0");
        LoginManager.F(this$0, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(TeachSplashActivity this$0, l lVar) {
        r.e(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            float f2 = Float.parseFloat(this$0.g().progressTv.getText().toString());
            float f3 = lVar.f8347a;
            if (f2 <= f3 && f3 <= 100.0f) {
                this$0.g().progressBar.setProgress((int) lVar.f8347a);
                float f4 = lVar.f8347a;
                if (40.0f <= f4 && f4 <= 60.0f) {
                    TextView textView = this$0.g().progressTv;
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                    String str = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(lVar.f8347a)}, 1));
                    r.d(str, "java.lang.String.format(format, *args)");
                    textView.setText(str);
                } else {
                    this$0.g().progressTv.setText(String.valueOf((int) lVar.f8347a));
                }
            }
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    private final void y() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.g
            @Override // java.lang.Runnable
            public final void run() {
                TeachSplashActivity.z();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z() {
        try {
            new RobotBusinessLoginApi().n();
        } catch (Exception e2) {
            t.d("TeachSplashActivity", e2.toString());
        }
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        f0.a(newBase);
        super.attachBaseContext(newBase);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        String strA = k0.a(R.string.teachbase_robot_splash_page);
        r.d(strA, "getString(R.string.teachbase_robot_splash_page)");
        return strA;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jElapsedRealtime = jCurrentTimeMillis - SystemClock.elapsedRealtime();
        String str = "开机时间:" + ((Object) cn.mucang.android.jiakaoyi.framework.log.g.f(jElapsedRealtime)) + (char) 65292 + jElapsedRealtime + "，应用启动时间:" + jCurrentTimeMillis;
        this.f8264d = str;
        cn.mucang.android.jiakaoyi.framework.log.f.o(str);
        g().versionTv.setText(DeviceUtils.c() + " V" + ((Object) o0.u()));
        g().progressBar.setEnabled(false);
        new PAGSplashHandler(g()).d(this);
        l();
        LiveBus.d(SsoLoginEvent.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                TeachSplashActivity.n(this.f8273a, (SsoLoginEvent) obj);
            }
        });
        LiveBus.d(l.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                TeachSplashActivity.p(this.f8268a, (l) obj);
            }
        });
        k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g().pagView.freeCache();
        StringBuilder sb = new StringBuilder();
        k kVar = this.c;
        if (kVar != null) {
            j(sb, kVar);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("启屏页执行时间汇总:" + this.f8264d + ((Object) sb));
    }
}
