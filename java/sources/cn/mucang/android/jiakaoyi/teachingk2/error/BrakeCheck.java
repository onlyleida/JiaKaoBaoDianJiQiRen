package cn.mucang.android.jiakaoyi.teachingk2.error;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeModeChanged;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeModeManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0007J\b\u0010\u0012\u001a\u00020\u000bH\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/BrakeCheck;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeModeChanged;", "wheelOpen", "", "wheelTime", "", "initValue", "", "initWheel", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;", "onSignalChanged", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", TtmlNode.START, "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BrakeCheck implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    private static boolean b;
    private static long c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BrakeCheck f7080a = new BrakeCheck();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a0<SafeModeChanged> f7081d = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.error.a
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            BrakeCheck.d((SafeModeChanged) obj);
        }
    };

    private BrakeCheck() {
    }

    public static final void a() {
        SafeModeManager.SafeModeParam safeModeParamB = b();
        boolean hardwareDoorBrake = safeModeParamB.getHardwareDoorBrake();
        boolean hardwareBeltBrake = safeModeParamB.getHardwareBeltBrake();
        SafeCommandManager safeCommandManager = SafeCommandManager.f7621a;
        safeCommandManager.o(hardwareBeltBrake);
        safeCommandManager.p(hardwareDoorBrake);
    }

    public static final SafeModeManager.SafeModeParam b() {
        SafeModeManager.SafeModeParam safeModeParamF = SafeModeManager.f();
        b = safeModeParamF.getWheel();
        return safeModeParamF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(SafeModeChanged safeModeChanged) {
        a();
    }

    public static final void e() {
        BrakeCheck brakeCheck = f7080a;
        a();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(brakeCheck);
        LiveBus.d(SafeModeChanged.class).i(f7081d);
    }

    public static final void f() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(f7080a);
        LiveBus.d(SafeModeChanged.class).m(f7081d);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signal) {
        r.e(signal, "signal");
        if (signal.d().b < 2.0f) {
            c = 0L;
            return;
        }
        if (!signal.a().r() || !b) {
            c = 0L;
            return;
        }
        if (c == 0) {
            c = System.currentTimeMillis();
        }
        if (System.currentTimeMillis() - c > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            SafeCommandAdapter.b(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.WHEEL, null, false, 6, null), (byte) 1);
            c = 0L;
        }
    }
}
