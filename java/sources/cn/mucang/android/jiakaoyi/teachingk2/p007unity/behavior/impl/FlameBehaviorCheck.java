package cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.TrainBehavior;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.behavior.c.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\n\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/impl/FlameBehaviorCheck;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;", "()V", "errorCount", "", "lastState", "", "isTriggered", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "reset", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FlameBehaviorCheck extends BaseBehaviorCheck {
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8380d;

    public FlameBehaviorCheck() {
        super(TrainBehavior.Behavior10005);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck
    public TrainBehavior c(e signal) {
        r.e(signal, "signal");
        if (getB() || !signal.d().k()) {
            return null;
        }
        if (this.f8380d && !signal.d().f5270h) {
            this.c++;
            f.o(r.m("练车行为加一:", Integer.valueOf(getF8377a().getCode())));
        }
        this.f8380d = signal.d().f5270h;
        if (this.c <= 2) {
            return null;
        }
        e(true);
        return getF8377a();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.BaseBehaviorCheck
    public TrainBehavior d() {
        this.c = 0;
        this.f8380d = false;
        e(false);
        return null;
    }
}
