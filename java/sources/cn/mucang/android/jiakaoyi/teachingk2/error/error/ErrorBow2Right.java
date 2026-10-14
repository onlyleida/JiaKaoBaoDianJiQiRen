package cn.mucang.android.jiakaoyi.teachingk2.error.error;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.e.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/error/ErrorBow2Right;", "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;", "()V", "lastGear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "isTriggered", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorBow2Right extends BaseCheck {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Gear f7084h;

    public ErrorBow2Right() {
        super(new Pair(k0.a(R.string.teachbase_error_dont_head_down), Integer.valueOf(RecordEvent.Bow2Right.getCode())), false, false, false, true, "KEY_ENABLE_FACE", 14, null);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck
    public boolean h(e signal) {
        r.e(signal, "signal");
        if (signal.a().k()) {
            if (this.f7084h == null) {
                this.f7084h = signal.d().m;
            }
            int i = signal.d().m.gear;
            Gear gear = this.f7084h;
            if (!(gear != null && i == gear.gear)) {
                this.f7084h = null;
                return true;
            }
        } else {
            this.f7084h = null;
        }
        return false;
    }
}
