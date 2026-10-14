package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106138_Event extends d<K3ChaoCheStepConfig> {
    private float chaoCheDaoMaxSpeed;
    private ChaoCheStateData.State lastState;
    private float turnLeftSpeed;

    public K3_ChaoChe_106138_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
        this.turnLeftSpeed = -1.0f;
        this.chaoCheDaoMaxSpeed = -1.0f;
        this.lastState = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        ChaoCheStateData.State state = this.lastState;
        ChaoCheStateData.State state2 = ChaoCheStateData.State.turnLeft;
        if (state != state2 && chaoCheStateData.state == state2) {
            this.turnLeftSpeed = eVar.d().b;
        }
        if (chaoCheStateData.state == ChaoCheStateData.State.chaoCheDao) {
            this.chaoCheDaoMaxSpeed = Math.max(this.chaoCheDaoMaxSpeed, eVar.d().b);
        }
        if (bVar.j()) {
            float f2 = this.chaoCheDaoMaxSpeed;
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                float f3 = this.turnLeftSpeed;
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    return f2 - f3 > ((float) ((Integer) ((K3ChaoCheStepConfig) this.config).p206159.value).intValue());
                }
            }
        }
        this.lastState = chaoCheStateData.state;
        return true;
    }
}
