package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106120_Event extends d<K3ChaoCheStepConfig> {
    private final cn.mucang.android.jiakaoyi.exam.a.d leftLightBuDaHelper;
    private final cn.mucang.android.jiakaoyi.exam.a.d rightLightBuDaHelper;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_ChaoChe_106120_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
        this.leftLightBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(Light.TurnLeftLight, ((Integer) k3ChaoCheStepConfig.p206122.value).intValue() * 1000);
        this.rightLightBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(Light.TurnRightLight, ((Integer) k3ChaoCheStepConfig.p206122.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.state == ChaoCheStateData.State.turnLeft) {
            return this.leftLightBuDaHelper.a(eVar);
        }
        this.leftLightBuDaHelper.b();
        ChaoCheStateData.State state = chaoCheStateData.state;
        if (state == ChaoCheStateData.State.turnRight || state == ChaoCheStateData.State.turnRightToBack) {
            return this.rightLightBuDaHelper.a(eVar);
        }
        this.rightLightBuDaHelper.b();
        return true;
    }
}
