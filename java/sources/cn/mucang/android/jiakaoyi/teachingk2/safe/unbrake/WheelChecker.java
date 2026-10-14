package cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u0003H\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/WheelChecker;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;", "wheel", "", "(I)V", "getWheel", "()I", "getIconRes", "getStatus", "", "getter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "getTextRes", "getWarningText", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class WheelChecker extends UnBrakeChecker {
    private final int b;

    public WheelChecker(int i) {
        this.b = i;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker
    public int a() {
        return R.drawable.selector_brake_handbrake;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker
    public boolean b(cn.mucang.android.jiakaoyi.signal.c.e getter) {
        r.e(getter, "getter");
        if (this.b < 0) {
            if (getter.d().r <= this.b) {
                return true;
            }
        } else if (getter.d().r >= this.b) {
            return true;
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker
    public int c() {
        return R.string.teachbase_turn_wheel;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.UnBrakeChecker
    public String d() {
        String str = this.b < 0 ? "左" : "右";
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_turn_wheel_action);
        r.d(strA, "getString(R.string.teachbase_turn_wheel_action)");
        String str2 = String.format(strA, Arrays.copyOf(new Object[]{str, Integer.valueOf(Math.abs(this.b))}, 2));
        r.d(str2, "java.lang.String.format(format, *args)");
        return str2;
    }
}
