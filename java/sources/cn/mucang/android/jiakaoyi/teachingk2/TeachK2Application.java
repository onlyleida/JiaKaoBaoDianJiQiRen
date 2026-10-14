package cn.mucang.android.jiakaoyi.teachingk2;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.tts.AbsTtsDataProvider;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.android.jiakaoyi.speech.provider.AbsInteractionProvider;
import cn.mucang.android.jiakaoyi.teachingk2.assist.intercept.ErrorEventInterceptor;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachManager;
import cn.mucang.android.jiakaoyi.teachingk2.collect.K2TeachCollectActivity;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.InteractionProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.RobotSignalProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.SettingProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TeachSafeProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TtsProvider;
import cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TeachSplashActivity;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.TeachEventHandler;
import cn.mucang.jiakaoyi.uilib.ui.setting.AbsSettingProvider;
import cn.mucang.sundial.library.activity.TopActivity;
import com.amap.api.fence.GeoFence;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0014J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/TeachK2Application;", "Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity$EggTeachSync;", "Lcn/mucang/jiakaoyi/uilib/TeachEventHandler;", "()V", "doOnAppExit", "", "doOnForeground", "handleEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "initOnMainProcess", "syncTeach", "activity", "Landroid/app/Activity;", "appteachk2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachK2Application extends TeachBaseApplication implements K2TeachCollectActivity.b, TeachEventHandler {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0() {
        if (!cn.mucang.android.jiakaoyi.framework.utils.d0.a() && !(MucangConfig.i() instanceof TeachSplashActivity)) {
            cn.mucang.android.jiakaoyi.framework.utils.d0.c(MucangConfig.i(), null);
        } else {
            if (MucangConfig.i() instanceof TopActivity) {
                return;
            }
            SundialClient.f9111a.I();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0() {
        ResourceManager.p(null, kotlin.collections.u.p(ResourceManager.Resource.Teaching));
        cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.d0 d0VarC = cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.s.b().c();
        if (d0VarC == null) {
            return;
        }
        d0VarC.b();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication, cn.mucang.jiakaoyi.uilib.e
    protected void L() {
        super.L();
        PusherManager.f7472a.x();
        JLocationManager.f5733a.m(this);
    }

    @Override // cn.mucang.jiakaoyi.uilib.e
    public void N() {
        super.N();
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.e0
            @Override // java.lang.Runnable
            public final void run() {
                TeachK2Application.f0();
            }
        });
    }

    @Override // cn.mucang.jiakaoyi.uilib.TeachEventHandler
    public boolean a(AutoTeachEvent event) {
        r.e(event, "event");
        if (event == AutoTeachEvent.OpenAutoTeach) {
            return LocalConfigManager.f(LocalConfig.AutoTeach);
        }
        ErrorEventInterceptor errorEventInterceptor = ErrorEventInterceptor.b;
        return (errorEventInterceptor.a() && (event == AutoTeachEvent.P0Error || event == AutoTeachEvent.CarBrake || event == AutoTeachEvent.GpsError || event == AutoTeachEvent.NetError || event == AutoTeachEvent.ServerError)) ? errorEventInterceptor.f(event) : AssistTeachManager.e(event);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.collect.K2TeachCollectActivity.b
    public void i(Activity activity) {
        r.e(activity, "activity");
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(activity).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.d0
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                TeachK2Application.i0();
            }
        }, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.appteachk2_key1), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.appteachk2_key2));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication, cn.mucang.jiakaoyi.uilib.e, cn.mucang.android.core.config.p
    protected void u() {
        super.u();
        DataProviderRegister dataProviderRegister = DataProviderRegister.f3433a;
        dataProviderRegister.c(AbsTeachBaseProvider.class, TeachBaseProvider.class);
        dataProviderRegister.c(AbsSettingProvider.class, SettingProvider.class);
        dataProviderRegister.c(AbsTtsDataProvider.class, TtsProvider.class);
        dataProviderRegister.c(AbsSignalProvider.class, RobotSignalProvider.class);
        dataProviderRegister.c(TeachSafeProvider.class, TeachSafeProvider.class);
        dataProviderRegister.c(AbsInteractionProvider.class, InteractionProvider.class);
        cn.mucang.android.jiakaoyi.signal.b.c.b(new cn.mucang.jiakaoyi.uilib.l.a());
    }
}
