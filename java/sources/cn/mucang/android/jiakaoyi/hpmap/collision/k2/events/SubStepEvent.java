package cn.mucang.android.jiakaoyi.hpmap.collision.k2.events;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "Ljava/io/Serializable;", "subStep", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "subStepName", "", "(ILcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)V", "getStep", "()Lcn/mucang/android/jiakaoyi/engine/model/Step;", "getSubStep", "()I", "getSubStepName", "()Ljava/lang/String;", "hpmap_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SubStepEvent implements Serializable {
    private final Step step;
    private final int subStep;
    private final String subStepName;

    public SubStepEvent(int i, Step step, String subStepName) {
        r.e(step, "step");
        r.e(subStepName, "subStepName");
        this.subStep = i;
        this.step = step;
        this.subStepName = subStepName;
    }

    public final Step getStep() {
        return this.step;
    }

    public final int getSubStep() {
        return this.subStep;
    }

    public final String getSubStepName() {
        return this.subStepName;
    }
}
