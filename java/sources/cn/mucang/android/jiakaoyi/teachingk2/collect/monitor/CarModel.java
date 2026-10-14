package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;", "()V", "pointType", "", "getPointType", "()I", "setPointType", "(I)V", "time", "getTime", "setTime", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarModel extends BaseTriggerModel {
    private int pointType;
    private int time;

    public CarModel() {
        setType("202");
    }

    public final int getPointType() {
        return this.pointType;
    }

    public final int getTime() {
        return this.time;
    }

    public final void setPointType(int i) {
        this.pointType = i;
    }

    public final void setTime(int i) {
        this.time = i;
    }
}
