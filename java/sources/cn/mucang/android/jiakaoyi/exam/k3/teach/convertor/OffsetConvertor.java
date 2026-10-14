package cn.mucang.android.jiakaoyi.exam.k3.teach.convertor;

import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZhiXianStateData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.OffsetResult;

/* JADX INFO: loaded from: classes2.dex */
public class OffsetConvertor implements IConvertor<OffsetResult, K3BaseStepData> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.IConvertor
    public OffsetResult convert(OffsetResult offsetResult, K3BaseStepData k3BaseStepData) {
        if (k3BaseStepData instanceof ZhiXianStateData) {
            offsetResult.offset = ((ZhiXianStateData) k3BaseStepData).offsetDistance;
        }
        return offsetResult;
    }
}
