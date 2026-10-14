package cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.TrainBehavior;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.behavior.c.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/impl/IgnitionBehaviorCheck;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;", "()V", "lastState", "", "isTriggered", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "reset", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class IgnitionBehaviorCheck extends BaseBehaviorCheck {
    private boolean c;

    public IgnitionBehaviorCheck() {
        super(TrainBehavior.Behavior10007);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck
    public TrainBehavior c(e signal) {
        r.e(signal, "signal");
        if (getB() || !signal.d().k()) {
            return null;
        }
        if (this.c && signal.d().f5270h && (signal.d().m != Gear.GearN || signal.d().f5268f)) {
            e(true);
            return getF8377a();
        }
        this.c = !signal.d().f5270h;
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck
    public TrainBehavior d() {
        this.c = false;
        e(false);
        return null;
    }
}
