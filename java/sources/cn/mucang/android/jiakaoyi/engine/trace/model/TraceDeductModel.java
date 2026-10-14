package cn.mucang.android.jiakaoyi.engine.trace.model;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;

/* JADX INFO: loaded from: classes2.dex */
public class TraceDeductModel extends TraceBaseModel {
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3170d;
    public int ln;
    public transient boolean reverse;
    public int s;
    public int sc;
    public int ss;
    public String tips;
    public int wn;
    public int x;
    public int y;

    public TraceDeductModel() {
        this.tp = DataType.Deduct.typeId;
    }

    public static TraceDeductModel from(Deduct deduct, DeductExtraData deductExtraData, float f2, TraceDeductModel traceDeductModel) {
        traceDeductModel.c = deduct.code;
        traceDeductModel.sc = deduct.deductScore;
        traceDeductModel.f3170d = deduct.name;
        traceDeductModel.t = f2;
        traceDeductModel.s = deduct.step.type;
        if (deductExtraData != null) {
            traceDeductModel.wn = deductExtraData.wheel;
            traceDeductModel.ln = deductExtraData.lineNum;
            traceDeductModel.ss = deductExtraData.subStep;
            traceDeductModel.x = deductExtraData.x;
            traceDeductModel.y = deductExtraData.y;
        } else {
            traceDeductModel.wn = 0;
            traceDeductModel.ln = 0;
            traceDeductModel.ss = 0;
            traceDeductModel.x = 0;
            traceDeductModel.y = 0;
        }
        return traceDeductModel;
    }
}
