package cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle;

import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/BrakeDialogShowEvent;", "", "reason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "time", "", "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;J)V", "getReason", "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "getTime", "()J", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BrakeDialogShowEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BrakeReason f6023a;
    private final long b;

    public BrakeDialogShowEvent(BrakeReason reason, long j) {
        r.e(reason, "reason");
        this.f6023a = reason;
        this.b = j;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final BrakeReason getF6023a() {
        return this.f6023a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final long getB() {
        return this.b;
    }
}
