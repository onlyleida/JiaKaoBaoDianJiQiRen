package cn.mucang.android.jiakaoyi.engine.trace.model;

import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;

/* JADX INFO: loaded from: classes2.dex */
public class TraceExamShowModel extends TraceBaseModel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3172d;

    public TraceExamShowModel() {
        this.tp = DataType.Exam.typeId;
    }

    public TraceExamShowModel set(String str, float f2) {
        if (str.equals(this.f3172d)) {
            return null;
        }
        this.f3172d = str;
        this.t = f2;
        return this;
    }
}
