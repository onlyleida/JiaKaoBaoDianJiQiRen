package cn.mucang.android.jiakaoyi.teachingk2.error.error;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import com.google.android.exoplayer2.SimpleExoPlayer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.e.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/error/ErrorWheelNone;", "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;", "()V", "noHandTime", "", "isTriggered", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorWheelNone extends BaseCheck {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f7089h;

    public ErrorWheelNone() {
        super(new Pair(k0.a(R.string.teachbase_error_hands_leave_steering), Integer.valueOf(RecordEvent.OffHand.getCode())), false, false, false, true, "KEY_ENABLE_WHEEL_NONE", 14, null);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck
    public boolean h(e signal) {
        r.e(signal, "signal");
        if ((!g(signal) && !GlobalChecker.f7068a.c()) || !signal.a().r()) {
            this.f7089h = 0L;
            return false;
        }
        if (this.f7089h == 0) {
            this.f7089h = signal.d().L;
        }
        return signal.d().L - this.f7089h > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
    }
}
