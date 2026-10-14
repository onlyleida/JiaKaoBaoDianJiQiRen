package cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/HandbrakeChecker;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;", "()V", "getIconRes", "", "getStatus", "", "getter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "getTextRes", "getWarningText", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HandbrakeChecker extends UnBrakeChecker {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker
    public int a() {
        return R.drawable.selector_brake_handbrake;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e getter) {
        r.e(getter, "getter");
        return !getter.d().f5268f;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker
    public int c() {
        return R.string.teachbase_pull_handbrake2;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker
    public String d() {
        String strA = k0.a(R.string.teachingk2_please_pull_handbrake);
        r.d(strA, "getString(R.string.teach…k2_please_pull_handbrake)");
        return strA;
    }
}
