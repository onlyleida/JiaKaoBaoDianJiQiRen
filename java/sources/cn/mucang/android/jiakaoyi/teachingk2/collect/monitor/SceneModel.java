package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/BaseTriggerModel;", "()V", "displayType", "", "getDisplayType", "()I", "setDisplayType", "(I)V", "scenePointId", "", "getScenePointId", "()J", "setScenePointId", "(J)V", "time", "getTime", "setTime", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SceneModel extends BaseTriggerModel {
    private int displayType;
    private long scenePointId;
    private int time;

    public SceneModel() {
        setType("203");
    }

    public final int getDisplayType() {
        return this.displayType;
    }

    public final long getScenePointId() {
        return this.scenePointId;
    }

    public final int getTime() {
        return this.time;
    }

    public final void setDisplayType(int i) {
        this.displayType = i;
    }

    public final void setScenePointId(long j) {
        this.scenePointId = j;
    }

    public final void setTime(int i) {
        this.time = i;
    }
}
