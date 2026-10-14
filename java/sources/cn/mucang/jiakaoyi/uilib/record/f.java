package cn.mucang.jiakaoyi.uilib.record;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"convert", "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "uilib_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class f {
    public static final DeductRecordModel a(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        r.e(aVar, "<this>");
        DeductRecordModel deductRecordModel = new DeductRecordModel();
        deductRecordModel.setCreateTime(aVar.b);
        deductRecordModel.setDeductDesc(aVar.f3102a.desc);
        deductRecordModel.setStepId(aVar.f3102a.step.type);
        deductRecordModel.setDeductId(aVar.f3102a.code);
        deductRecordModel.setDeductScore(aVar.f3102a.deductScore);
        return deductRecordModel;
    }
}
