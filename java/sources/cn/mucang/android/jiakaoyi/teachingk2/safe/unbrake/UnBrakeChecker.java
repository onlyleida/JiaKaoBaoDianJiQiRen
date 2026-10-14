package cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\nH&J\b\u0010\u000f\u001a\u00020\u0010H&J\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;", "", "()V", "selected", "", "getSelected", "()Z", "setSelected", "(Z)V", "getIconRes", "", "getStatus", "getter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "getTextRes", "getWarningText", "", "isSelected", "updateSelect", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class UnBrakeChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7896a;

    public abstract int a();

    public abstract boolean b(cn.mucang.android.jiakaoyi.signal.c.e eVar);

    public abstract int c();

    public abstract String d();

    /* JADX INFO: renamed from: e, reason: from getter */
    public final boolean getF7896a() {
        return this.f7896a;
    }

    public final boolean f(cn.mucang.android.jiakaoyi.signal.c.e getter) {
        r.e(getter, "getter");
        boolean zB = b(getter);
        boolean z = this.f7896a != zB;
        this.f7896a = zB;
        return z;
    }
}
