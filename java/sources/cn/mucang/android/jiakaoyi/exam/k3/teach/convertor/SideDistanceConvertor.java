package cn.mucang.android.jiakaoyi.exam.k3.teach.convertor;

import cn.mucang.android.jiakaoyi.exam.k3.data.HuiCheStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.KeepSideResult;

/* JADX INFO: loaded from: classes2.dex */
public class SideDistanceConvertor implements IConvertor<KeepSideResult, K3BaseStepData> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.IConvertor
    public KeepSideResult convert(KeepSideResult keepSideResult, K3BaseStepData k3BaseStepData) {
        if (keepSideResult == null) {
            keepSideResult = new KeepSideResult();
        }
        if (k3BaseStepData instanceof TingCheStepData) {
            keepSideResult.distance = ((TingCheStepData) k3BaseStepData).distance;
        } else if (k3BaseStepData instanceof HuiCheStepData) {
            keepSideResult.distance = ((HuiCheStepData) k3BaseStepData).rightDis;
        } else if (k3BaseStepData instanceof LinTingStepData) {
            keepSideResult.distance = ((LinTingStepData) k3BaseStepData).distance;
        }
        return keepSideResult;
    }
}
