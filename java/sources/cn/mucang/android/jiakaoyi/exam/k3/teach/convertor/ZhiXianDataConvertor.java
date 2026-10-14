package cn.mucang.android.jiakaoyi.exam.k3.teach.convertor;

import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZhiXianStateData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.ZhiXianData;

/* JADX INFO: loaded from: classes2.dex */
public class ZhiXianDataConvertor implements IConvertor<ZhiXianData, K3BaseStepData> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.IConvertor
    public ZhiXianData convert(ZhiXianData zhiXianData, K3BaseStepData k3BaseStepData) {
        if (zhiXianData == null) {
            zhiXianData = new ZhiXianData();
        }
        if (k3BaseStepData instanceof ZhiXianStateData) {
            ZhiXianStateData zhiXianStateData = (ZhiXianStateData) k3BaseStepData;
            zhiXianData.offset = zhiXianStateData.offsetDistance;
            zhiXianData.angle = zhiXianStateData.diffAngle;
        }
        return zhiXianData;
    }
}
