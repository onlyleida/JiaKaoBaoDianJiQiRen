package cn.mucang.android.jiakaoyi.teachingk2.error.error;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.e.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/error/ErrorHandCross;", "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;", "()V", "isTriggered", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorHandCross extends BaseCheck {
    public ErrorHandCross() {
        super(new Pair(k0.a(R.string.teachbase_error_hand_crossing), Integer.valueOf(RecordEvent.HandCross.getCode())), false, false, false, true, "KEY_ENABLE_HAND_CROSS", 14, null);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck
    public boolean h(e signal) {
        r.e(signal, "signal");
        return (g(signal) || GlobalChecker.f7068a.c()) && signal.a().o() && Math.abs(d.a((float) signal.d().r)) > 45.0f;
    }
}
