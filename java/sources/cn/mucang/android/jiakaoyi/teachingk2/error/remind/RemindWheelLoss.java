package cn.mucang.android.jiakaoyi.teachingk2.error.remind;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.f.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/remind/RemindWheelLoss;", "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;", "()V", "changedDeg", "", "count", "lastDeg", "Ljava/lang/Integer;", "maxDeg", "secondFrameTime", "", "isTriggered", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RemindWheelLoss extends BaseCheck {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f7098h;
    private int i;
    private int j;
    private Integer k;

    public RemindWheelLoss() {
        super(new Pair(k0.a(R.string.teachbase_remind_wheel_loss), Integer.valueOf(RecordEvent.WheelLoss.getCode())), true, false, true, false, "keyPlayGlobalRemind", 20, null);
        this.i = Integer.MAX_VALUE;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck
    public boolean h(e signal) {
        r.e(signal, "signal");
        if (g(signal) || GlobalChecker.f7068a.c()) {
            this.k = Integer.valueOf(signal.d().r);
            this.f7098h = System.currentTimeMillis();
            this.i = Integer.MAX_VALUE;
            this.j = 0;
        } else {
            if (this.i == Integer.MAX_VALUE) {
                this.i = Math.abs(signal.d().r);
            } else {
                this.i = Math.max(Math.abs(signal.d().r), this.i);
            }
            if (this.k == null) {
                this.k = Integer.valueOf(signal.d().r);
                return false;
            }
            int i = this.j;
            int i2 = signal.d().r;
            Integer num = this.k;
            r.c(num);
            this.j = i + Math.abs(i2 - num.intValue());
            this.k = Integer.valueOf(signal.d().r);
            if (this.f7098h == 0 || System.currentTimeMillis() - this.f7098h > 1000) {
                this.f7098h = System.currentTimeMillis();
                try {
                    if (this.j > 30 && Math.abs(this.i) > 180) {
                        this.i = Integer.MAX_VALUE;
                        this.j = 0;
                        return true;
                    }
                } finally {
                    this.i = Integer.MAX_VALUE;
                    this.j = 0;
                }
            }
        }
        return false;
    }
}
