package cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl;

import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.TrainBehavior;
import com.google.android.exoplayer2.SimpleExoPlayer;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.behavior.c.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\n\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/impl/StartBehaviorCheck;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;", "()V", "lastState", "", "stopChecker", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/StopChecker;", "isTriggered", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "reset", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StartBehaviorCheck extends BaseBehaviorCheck {
    private e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8387d;

    public StartBehaviorCheck() {
        super(TrainBehavior.Behavior10006);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck
    public TrainBehavior c(cn.mucang.android.jiakaoyi.signal.c.e signal) {
        r.e(signal, "signal");
        if (getB() || !signal.d().k()) {
            return null;
        }
        if (this.c == null) {
            this.c = new e(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
        if (this.f8387d && signal.d().F == CarModel.Direction.Forward && (!signal.d().f5268f || !signal.d().j || !signal.d().f5266d)) {
            e(true);
            return getF8377a();
        }
        e eVar = this.c;
        r.c(eVar);
        this.f8387d = eVar.a(signal.d().F, signal.d().L);
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck
    public TrainBehavior d() {
        this.c = null;
        this.f8387d = false;
        e(false);
        return null;
    }
}
