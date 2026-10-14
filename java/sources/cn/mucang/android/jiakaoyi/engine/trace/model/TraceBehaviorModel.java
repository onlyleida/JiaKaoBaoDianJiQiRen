package cn.mucang.android.jiakaoyi.engine.trace.model;

import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;

/* JADX INFO: loaded from: classes2.dex */
public class TraceBehaviorModel extends TraceBaseModel {
    public int c;

    public TraceBehaviorModel() {
        this.tp = DataType.Behavior.typeId;
    }

    public TraceBehaviorModel set(int i, float f2) {
        this.c = i;
        this.t = f2;
        return this;
    }
}
