package cn.mucang.android.jiakaoyi.exam.k3.teach.convertor;

import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZhiXianStateData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.AngleResult;

/* JADX INFO: loaded from: classes2.dex */
public class AngleConvertor implements IConvertor<AngleResult, K3BaseStepData> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.IConvertor
    public AngleResult convert(AngleResult angleResult, K3BaseStepData k3BaseStepData) {
        if (!(k3BaseStepData instanceof ZhiXianStateData)) {
            return null;
        }
        angleResult.angle = ((ZhiXianStateData) k3BaseStepData).diffAngle;
        return angleResult;
    }
}
