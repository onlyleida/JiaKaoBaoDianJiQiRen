package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeModeChanged;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u0019\u001a\u00020\u0018H\u0007J\b\u0010\u001a\u001a\u00020\u0018H\u0007J\b\u0010\u001b\u001a\u00020\u0018H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;", "", "()V", "TipTime", "", "backSpeed", "", "enableTip", "", "inProject", "isHighSpeed", "isK3StraightProject", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "lastTipTime", "maxSpeed", "modeObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeModeChanged;", "projectObserver", "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "changeKeMu", "", "init", "initValue", "setForwardSpeed", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeedBrakeManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpeedBrakeManager f7732a = new SpeedBrakeManager();
    private static KeMu b;
    private static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f7733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f7734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f7735f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f7736g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f7737h;
    private static long i;
    private static final a0<SafeModeChanged> j;
    private static final a0<cn.mucang.android.jiakaoyi.engine.i.f.a> k;
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a l;

    static {
        b = AppUtils.b() ? KeMu.B2 : KeMu.K2;
        f7735f = 15;
        f7736g = true;
        f7737h = 5;
        j = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.l
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SpeedBrakeManager.g((SafeModeChanged) obj);
            }
        };
        k = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SpeedBrakeManager.h((cn.mucang.android.jiakaoyi.engine.i.f.a) obj);
            }
        };
        l = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.k
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
                SpeedBrakeManager.j(eVar);
            }
        };
    }

    private SpeedBrakeManager() {
    }

    public static final void a(KeMu keMu) {
        kotlin.jvm.internal.r.e(keMu, "keMu");
        if (b == keMu) {
            return;
        }
        SpeedBrakeManager speedBrakeManager = f7732a;
        b = keMu;
        c = false;
        f7733d = false;
        f7734e = false;
        speedBrakeManager.i();
    }

    public static final void b() {
        c();
        LiveBus.d(SafeModeChanged.class).i(j);
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).i(k);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(l);
    }

    public static final void c() {
        SafeModeManager.SafeModeParam safeModeParamF = SafeModeManager.f();
        SpeedBrakeManager speedBrakeManager = f7732a;
        f7736g = safeModeParamF.getHardwareSpeedBrake();
        if (!safeModeParamF.getHardwareSpeedBrake()) {
            SafeCommandManager.f7621a.q(false);
            return;
        }
        SafeCommandManager.f7621a.q(true);
        speedBrakeManager.i();
        SafeCommandManager.r((byte) 3, safeModeParamF.getBackSpeed(), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SpeedBrakeManager$initValue$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_hardware_back_limit_speed));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(SafeModeChanged safeModeChanged) {
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(cn.mucang.android.jiakaoyi.engine.i.f.a aVar) {
        if (aVar.f3095a) {
            c = false;
            f7733d = false;
            f7734e = false;
        } else if (aVar.b) {
            c = true;
            int i2 = aVar.c;
            f7733d = i2 == Step.K3_ZhiXian.type || i2 == Step.K3_JiaJianDang.type;
            f7734e = i2 == Step.B2_GaoSu.type;
        }
        f7732a.i();
    }

    private final void i() {
        int b2HighSpeed;
        SafeModeManager.SafeModeParam safeModeParamF = SafeModeManager.f();
        if (b == KeMu.K2) {
            b2HighSpeed = c ? safeModeParamF.getSpeed() : safeModeParamF.getProjectOutSpeed();
        } else if (b == KeMu.K3) {
            b2HighSpeed = f7733d ? safeModeParamF.getK3StraightSpeed() : safeModeParamF.getK3Speed();
        } else if (b == KeMu.B2) {
            b2HighSpeed = f7734e ? safeModeParamF.getB2HighSpeed() : safeModeParamF.getB2Speed();
        } else {
            b2HighSpeed = -1;
        }
        f7737h = safeModeParamF.getBackSpeed() < 1 ? 5 : kotlin.ranges.f.b(safeModeParamF.getBackSpeed(), 1);
        f7735f = kotlin.ranges.f.b(b2HighSpeed - 1, 4);
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置前进限速:" + f7735f + " keMu:" + b + " inProject:" + c + " isK3StraightProject:" + f7733d + " isHighSpeed:" + f7734e);
        if (b2HighSpeed > -1) {
            SafeCommandManager.r((byte) 2, b2HighSpeed, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SpeedBrakeManager$setForwardSpeed$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_hardware_forward_limit_speed));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(cn.mucang.android.jiakaoyi.signal.c.e it) {
        kotlin.jvm.internal.r.e(it, "it");
        if (f7736g) {
            if (kotlin.ranges.f.a(it.d().b, it.d().c) <= (it.d().m == Gear.GearBack ? f7737h : f7735f) || it.d().L - i <= 10000) {
                return;
            }
            i = it.d().L;
            TtsManager.z(k0.a(R.string.teachbase_speed_too_fast_hint), TtsGrade.ActiveRemember);
        }
    }
}
