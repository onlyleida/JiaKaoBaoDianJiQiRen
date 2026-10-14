package cn.mucang.android.jiakaoyi.teachingk2.error.remind;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.f.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/remind/RemindStart;", "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;", "()V", "hasLeftHead", "", "hasRightHead", "stop", "isTriggered", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "reset", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RemindStart extends BaseCheck {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f7094h;
    private boolean i;
    private boolean j;

    public RemindStart() {
        super(new Pair(k0.a(R.string.teachbase_remind_start), Integer.valueOf(RecordEvent.Start.getCode())), true, false, true, true, "KEY_ENABLE_START", 4, null);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck
    public boolean h(e signal) {
        r.e(signal, "signal");
        boolean z = this.f7094h && g(signal) && !(this.i && this.j);
        if (signal.d().c()) {
            this.f7094h = false;
            this.i = false;
            this.j = false;
        } else {
            this.f7094h = true;
        }
        if (this.f7094h) {
            if (signal.a().t()) {
                this.i = true;
            }
            if (signal.a().u()) {
                this.j = true;
            }
        }
        return z;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.error.BaseCheck
    public void i() {
        this.f7094h = false;
        this.i = false;
        this.j = false;
    }
}
