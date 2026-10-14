package cn.mucang.android.jiakaoyi.teachingk2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.facelib.GoogleDetectorFactory;
import cn.mucang.android.jiakaoyi.framework.CrossModuleCaller;
import cn.mucang.android.jiakaoyi.framework.VoiceRobotPageHandler;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.AbsApiLangDataProvider;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.tts.TtsConfig;
import cn.mucang.android.jiakaoyi.framework.utils.TrafficHelper;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceManager;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.RobotAcceptanceListener;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.MediaService;
import cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotLoginListener;
import cn.mucang.android.jiakaoyi.teachingk2.login.UserSwitcher;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TraceErrorTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.RobotApiLangProvider;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ModuleStatusReporter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.FloatWindowManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.LogicOnComReconnectedMgr;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityDrawLineHelper;
import cn.mucang.android.jiakaoyi.teachingk2.unity.f.w0;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.sundial.library.activity.TopActivity;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0006H\u0014J\b\u0010\f\u001a\u00020\u0006H\u0014J\b\u0010\r\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u0006H\u0016J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0014J\u0012\u0010\u0012\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\b\u0010\u0015\u001a\u00020\u0006H\u0014J\b\u0010\u0016\u001a\u00020\u0006H\u0002J\b\u0010\u0017\u001a\u00020\u0006H\u0002J\b\u0010\u0018\u001a\u00020\nH\u0016J\u0012\u0010\u0019\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u001a\u001a\u00020\u0006H\u0016J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\nH\u0016J\b\u0010 \u001a\u00020\u0006H\u0016J\b\u0010!\u001a\u00020\u0006H\u0016J\b\u0010\"\u001a\u00020\u0006H\u0016J\b\u0010#\u001a\u00020\u0006H\u0016¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;", "Lcn/mucang/jiakaoyi/uilib/BaseApplication;", "Lcn/mucang/android/jiakaoyi/framework/VoiceRobotPageHandler;", "Lcn/mucang/android/jiakaoyi/framework/CrossModuleCaller;", "()V", "attachBaseContext", "", TtmlNode.RUBY_BASE, "Landroid/content/Context;", "canPlayTts", "", "doOnActivityStart", "doOnAppExit", "doOnBackground", "doOnCrash", "exitEvents", "", "Lcn/mucang/android/jiakaoyi/framework/base/exit/ExitEvent;", "filterActivity", "activity", "Landroid/app/Activity;", "initOnMainProcess", "initSpeech", "initTeachErrorCorrect", "isFaceRecordOpen", "isUnityPage", "onTerminate", "setFaceRecord", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "view", "Landroid/view/View;", "showFaceRecord", "uploadBackGearType", "uploadGearType", "uploadGpsSpeed", "uploadVoiceGrade", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class TeachBaseApplication extends cn.mucang.jiakaoyi.uilib.e implements VoiceRobotPageHandler, CrossModuleCaller {

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$exitEvents$1", "Lcn/mucang/android/jiakaoyi/framework/base/exit/ExitEvent;", "run", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends cn.mucang.android.jiakaoyi.framework.base.k.c {
        a() {
            super(10000);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(TeachBaseApplication this$0) {
            r.e(this$0, "this$0");
            if (((cn.mucang.jiakaoyi.uilib.e) this$0).f9310a.get() == 0) {
                this$0.O();
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.base.k.c, java.lang.Runnable
        public void run() {
            SystemClock.sleep(300L);
            if (((cn.mucang.jiakaoyi.uilib.e) TeachBaseApplication.this).f9310a.get() == 0) {
                final TeachBaseApplication teachBaseApplication = TeachBaseApplication.this;
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TeachBaseApplication.a.b(teachBaseApplication);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X() {
        w0.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final cn.mucang.android.jiakaoyi.mapcollect.render.f Y(String str) {
        cn.mucang.android.jiakaoyi.mapcollect.c.j jVar = cn.mucang.android.jiakaoyi.teachingk2.res.n.b().c;
        LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.c.j.class).l(jVar);
        LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.render.f.class).l(jVar);
        return jVar;
    }

    private final void Z() {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new TeachBaseApplication$initSpeech$1(null), 3, null);
    }

    private final void a0() {
        Tiger.j(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.z
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                TeachBaseApplication.b0((cn.mucang.android.jiakaoyi.teachingk2.a1.c.a) obj);
            }
        }, cn.mucang.android.jiakaoyi.teachingk2.a1.c.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(cn.mucang.android.jiakaoyi.teachingk2.a1.c.a aVar) {
        List<Pos> list = aVar.c;
        if (list != null) {
            UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 0, 6, list, "#ffffff", 1.0f, aVar.f5945d * 2, 5, false, null, "correctLine", false, 2819, null);
        } else if (!aVar.f5944a) {
            UnityDrawLineHelper.f6360a.a(6);
        }
        cn.mucang.android.jiakaoyi.unity.c.d.e(new TraceErrorTipModel(aVar.f5944a, aVar.b));
    }

    @Override // cn.mucang.jiakaoyi.uilib.e
    protected void K() {
    }

    @Override // cn.mucang.jiakaoyi.uilib.e
    protected void L() {
        super.L();
        FloatWindowManager.f();
        n0.g();
        UsbCameraManager.release();
        AiCameraManager.f7519a.c();
        SpeechManager.f5839a.q();
        SundialClient.f9111a.q();
        UserSwitcher.f7303a.j();
        FaceLoginManager.f3000a.w();
        GoogleDetectorFactory.f3007a.b();
    }

    @Override // cn.mucang.jiakaoyi.uilib.e
    public void M() {
        super.M();
        SundialClient.f9111a.t();
    }

    @Override // cn.mucang.jiakaoyi.uilib.e
    protected List<cn.mucang.android.jiakaoyi.framework.base.k.c> P() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a());
        return arrayList;
    }

    @Override // cn.mucang.jiakaoyi.uilib.e
    protected boolean Q(Activity activity) {
        if (activity instanceof TopActivity) {
            return false;
        }
        return super.Q(activity);
    }

    @Override // cn.mucang.jiakaoyi.uilib.e, cn.mucang.android.core.config.p, android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        cn.mucang.android.jiakaoyi.framework.utils.f0.a(base);
        super.attachBaseContext(base);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.CrossModuleCaller
    public boolean b() {
        return r.a(LoginHelper.f7296a.c().e(), Boolean.TRUE);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.CrossModuleCaller
    public void d() {
        LocalConfigManager.o(LocalConfig.GearType, String.valueOf(cn.mucang.android.jiakaoyi.signal.utils.f.a()));
    }

    @Override // cn.mucang.android.jiakaoyi.framework.CrossModuleCaller
    public void e(boolean z, View view) {
        r.e(view, "view");
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new TeachBaseApplication$setFaceRecord$1(view, z, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.CrossModuleCaller
    public void f() {
        LocalConfigManager.o(LocalConfig.BackGearType, String.valueOf(cn.mucang.android.jiakaoyi.signal.utils.a.a()));
    }

    @Override // cn.mucang.android.jiakaoyi.framework.CrossModuleCaller
    public void g() {
        LocalConfigManager.o(LocalConfig.EnableGps, String.valueOf(cn.mucang.android.jiakaoyi.signal.d.i.a()));
    }

    @Override // cn.mucang.jiakaoyi.uilib.e, cn.mucang.android.jiakaoyi.framework.b
    public void j() {
        super.j();
        ModuleStatusReporter.f7613a.b();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.CrossModuleCaller
    public boolean k() {
        return RobotAccount.i().e() != null;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.CrossModuleCaller
    public void l() {
        LocalConfigManager.o(LocalConfig.VoiceGrade, String.valueOf(TtsConfig.e()));
    }

    @Override // cn.mucang.android.jiakaoyi.framework.CrossModuleCaller
    public boolean n() {
        return SpeechManager.f5839a.h() != 1;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.VoiceRobotPageHandler
    public boolean o(Activity activity) {
        AbsTeachBaseProvider absTeachBaseProvider;
        return (activity == null || (absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsTeachBaseProvider.class, null, 2, null)) == null || !absTeachBaseProvider.isUnityPage(activity)) ? false : true;
    }

    @Override // cn.mucang.jiakaoyi.uilib.e, android.app.Application
    public void onTerminate() {
        super.onTerminate();
        cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.d.c();
    }

    @Override // cn.mucang.jiakaoyi.uilib.e, cn.mucang.android.core.config.p
    protected void u() {
        super.u();
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("当前语言: ", cn.mucang.android.jiakaoyi.framework.utils.f0.b().desc));
        cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.d.e();
        n0.a();
        cn.mucang.android.jiakaoyi.unity.c.d.n(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.c0
            @Override // java.lang.Runnable
            public final void run() {
                TeachBaseApplication.X();
            }
        });
        x0.f5139a = new x0.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.a0
            @Override // cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0.a
            public final cn.mucang.android.jiakaoyi.mapcollect.render.f a(String str) {
                return TeachBaseApplication.Y(str);
            }
        };
        registerActivityLifecycleCallbacks(new RobotInterceptor(this));
        Z();
        LoginManager.o(new RobotLoginListener());
        AcceptanceManager.b(new RobotAcceptanceListener());
        TrafficHelper.f3594a.h();
        LogicOnComReconnectedMgr.f7770a.d();
        a0();
        if (Build.VERSION.SDK_INT >= 26) {
            startService(new Intent(this, (Class<?>) MediaService.class));
        }
        DataProviderRegister.f3433a.c(AbsApiLangDataProvider.class, RobotApiLangProvider.class);
    }
}
