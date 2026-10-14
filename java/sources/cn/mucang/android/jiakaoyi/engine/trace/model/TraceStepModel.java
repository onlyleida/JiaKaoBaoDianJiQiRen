package cn.mucang.android.jiakaoyi.engine.trace.model;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;

/* JADX INFO: loaded from: classes2.dex */
public class TraceStepModel extends TraceBaseModel {
    public static final byte StatusEnd = 2;
    public static final byte StatusStart = 1;
    public String n;
    public boolean r;
    public int s;
    public int ss;
    public byte st;

    public TraceStepModel() {
        this.tp = DataType.Step.typeId;
    }

    public static TraceStepModel createStep(Step step, float f2, boolean z, boolean z2, TraceStepModel traceStepModel) {
        traceStepModel.n = step.zhStepName;
        traceStepModel.st = z ? (byte) 1 : (byte) 2;
        traceStepModel.s = step.type;
        traceStepModel.t = f2;
        traceStepModel.ss = 0;
        traceStepModel.r = z2;
        return traceStepModel;
    }

    public static TraceStepModel createSubStep(Step step, float f2, int i, boolean z, TraceStepModel traceStepModel) {
        traceStepModel.n = step.zhStepName;
        traceStepModel.st = (byte) 0;
        traceStepModel.s = step.type;
        traceStepModel.t = f2;
        traceStepModel.ss = i;
        traceStepModel.r = z;
        return traceStepModel;
    }

    public TraceStepModel copy() {
        TraceStepModel traceStepModel = new TraceStepModel();
        traceStepModel.n = this.n;
        traceStepModel.st = this.st;
        traceStepModel.s = this.s;
        traceStepModel.t = this.t;
        traceStepModel.ss = this.ss;
        traceStepModel.r = this.r;
        return traceStepModel;
    }
}
