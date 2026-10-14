package cn.mucang.android.jiakaoyi.teachingk2.error.error;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.e.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/error/ErrorSpeed;", "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;", SpeechConstant.SPEED, "", "(I)V", "getSpeed", "()I", "setSpeed", "isTriggered", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorSpeed extends BaseCheck {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7088h;

    public ErrorSpeed(int i) {
        super(new Pair(k0.a(R.string.teachbase_error_fast_speed), Integer.valueOf(RecordEvent.Speed.getCode())), false, false, false, false, "keyPlayGlobalError", 22, null);
        this.f7088h = i;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck
    public boolean h(e signal) {
        r.e(signal, "signal");
        return signal.d().b > ((float) this.f7088h);
    }
}
