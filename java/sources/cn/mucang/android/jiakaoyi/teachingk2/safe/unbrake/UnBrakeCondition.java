package cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;", "Ljava/io/Serializable;", "()V", "condition", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;", "getCondition", "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;", "setCondition", "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V", "extra", "", "getExtra", "()Ljava/lang/Object;", "setExtra", "(Ljava/lang/Object;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UnBrakeCondition implements Serializable {
    private UnBrakeEnum condition = UnBrakeEnum.None;
    private Object extra;

    public final UnBrakeEnum getCondition() {
        return this.condition;
    }

    public final Object getExtra() {
        return this.extra;
    }

    public final void setCondition(UnBrakeEnum unBrakeEnum) {
        r.e(unBrakeEnum, "<set-?>");
        this.condition = unBrakeEnum;
    }

    public final void setExtra(Object obj) {
        this.extra = obj;
    }
}
