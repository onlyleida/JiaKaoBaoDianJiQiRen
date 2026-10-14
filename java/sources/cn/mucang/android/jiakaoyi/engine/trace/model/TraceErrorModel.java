package cn.mucang.android.jiakaoyi.engine.trace.model;

import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;

/* JADX INFO: loaded from: classes2.dex */
public class TraceErrorModel extends TraceBaseModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3171d;
    public int s;

    public TraceErrorModel() {
        this.tp = DataType.Error.typeId;
    }

    public TraceErrorModel set(String str, int i, float f2) {
        this.f3171d = str;
        this.s = i;
        this.t = f2;
        return this;
    }
}
