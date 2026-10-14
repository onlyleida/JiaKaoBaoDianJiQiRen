package cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior;

import cn.mucang.android.jiakaoyi.signal.c.e;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.behavior.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;", "", "behavior", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;)V", "getBehavior", "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;", "hasTriggered", "", "getHasTriggered", "()Z", "setHasTriggered", "(Z)V", "isTriggered", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "reset", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class BaseBehaviorCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TrainBehavior f8377a;
    private boolean b;

    public BaseBehaviorCheck(TrainBehavior behavior) {
        r.e(behavior, "behavior");
        this.f8377a = behavior;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final TrainBehavior getF8377a() {
        return this.f8377a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    protected final boolean getB() {
        return this.b;
    }

    public abstract TrainBehavior c(e eVar);

    public TrainBehavior d() {
        return null;
    }

    protected final void e(boolean z) {
        this.b = z;
    }
}
