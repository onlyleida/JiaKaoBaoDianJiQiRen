package cn.mucang.android.jiakaoyi.exam.k3.teach.convertor;

import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.ZhuanWanState;

/* JADX INFO: loaded from: classes2.dex */
public class ZhuanWanStateConvertor implements IConvertor<ZhuanWanState, K3BaseStepData> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.IConvertor
    public ZhuanWanState convert(ZhuanWanState zhuanWanState, K3BaseStepData k3BaseStepData) {
        if (zhuanWanState == null) {
            zhuanWanState = new ZhuanWanState();
        }
        if (k3BaseStepData instanceof ZuoZhuanStateData) {
            ZuoZhuanStateData.State state = ((ZuoZhuanStateData) k3BaseStepData).state;
            if (state == ZuoZhuanStateData.State.Start) {
                zhuanWanState.state = 0;
            } else if (state == ZuoZhuanStateData.State.Turning) {
                zhuanWanState.state = 1;
            } else if (state == ZuoZhuanStateData.State.TurningEND) {
                zhuanWanState.state = 2;
            }
        } else if (k3BaseStepData instanceof YouZhuanStateData) {
            YouZhuanStateData.State state2 = ((YouZhuanStateData) k3BaseStepData).state;
            if (state2 == YouZhuanStateData.State.Start) {
                zhuanWanState.state = 0;
            } else if (state2 == YouZhuanStateData.State.Turning) {
                zhuanWanState.state = 1;
            } else if (state2 == YouZhuanStateData.State.TurningEND) {
                zhuanWanState.state = 2;
            }
        }
        return zhuanWanState;
    }
}
