package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;", "()V", "viewAngle", "", "getViewAngle", "()F", "setViewAngle", "(F)V", "viewPosition", "", "getViewPosition", "()I", "setViewPosition", "(I)V", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CameraModel extends BaseTriggerModel {
    private float viewAngle;
    private int viewPosition;

    public CameraModel() {
        setType("201");
    }

    public final float getViewAngle() {
        return this.viewAngle;
    }

    public final int getViewPosition() {
        return this.viewPosition;
    }

    public final void setViewAngle(float f2) {
        this.viewAngle = f2;
    }

    public final void setViewPosition(int i) {
        this.viewPosition = i;
    }
}
