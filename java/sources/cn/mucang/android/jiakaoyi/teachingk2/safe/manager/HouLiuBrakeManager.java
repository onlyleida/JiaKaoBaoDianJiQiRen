package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeModeChanged;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0007J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/HouLiuBrakeManager;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "checker", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/HouLiuChecker;", "configDistance", "", "distanceChange", "", "lastDistance", "lastTime", "", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeModeChanged;", "clearHouLiu", "", "init", "initValue", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HouLiuBrakeManager implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    private static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f7767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f7768f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HouLiuBrakeManager f7765a = new HouLiuBrakeManager();
    private static final cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d b = new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a0<SafeModeChanged> f7769g = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.c
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HouLiuBrakeManager.e((SafeModeChanged) obj);
        }
    };

    private HouLiuBrakeManager() {
    }

    private final void a() {
        if (c) {
            c = false;
            cn.mucang.jiakaoyi.uilib.socket.u.n(0);
        }
    }

    public static final void b() {
        HouLiuBrakeManager houLiuBrakeManager = f7765a;
        houLiuBrakeManager.c();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(houLiuBrakeManager);
        LiveBus.d(SafeModeChanged.class).i(f7769g);
    }

    private final void c() {
        f7766d = SafeModeManager.f().getHouLiu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(SafeModeChanged safeModeChanged) {
        f7765a.c();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (signalGetter.d().M != 3) {
            return;
        }
        if (!signalGetter.getCurrentPosition().c()) {
            b.b();
            return;
        }
        if (!cn.mucang.android.jiakaoyi.teachingk2.safe.c0.b.a(signalGetter)) {
            b.b();
            return;
        }
        if (signalGetter.d().m == Gear.GearBack) {
            b.b();
            a();
            return;
        }
        cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d dVar = b;
        double dA = dVar.a(signalGetter);
        boolean z = cn.mucang.android.jiakaoyi.signal.h.a.f5675a.get();
        if (z && !signalGetter.d().f5268f) {
            dVar.b();
            return;
        }
        int i = (int) dA;
        boolean z2 = false;
        if ((z ? 10 : 100) + 1 <= i && i <= 500) {
            z2 = true;
        }
        if (z2) {
            c = true;
            if (signalGetter.d().L - f7767e >= 1000) {
                f7767e = signalGetter.d().L;
                cn.mucang.jiakaoyi.uilib.socket.u.n(i);
            }
        } else {
            a();
        }
        int iB = z ? f7766d : kotlin.ranges.f.b(200, f7766d);
        if (iB > 0 && dA > iB) {
            cn.mucang.android.jiakaoyi.framework.log.f.d("后溜刹车:后溜距离=" + i + ",距离阈值=" + iB + ",档位=" + ((Object) signalGetter.d().m.zhName));
            dVar.b();
            SafeCommandAdapter.b(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.HouLiu, null, false, 6, null), (byte) 1);
        }
        f7768f = i;
    }
}
