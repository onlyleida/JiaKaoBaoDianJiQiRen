package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100210_Event extends d<K3GlobalStepConfig> {
    private final cn.mucang.android.jiakaoyi.exam.a.d turnLeftBuDaHelper;
    private final cn.mucang.android.jiakaoyi.exam.a.d turnRightBuDaHelper;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100210_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.turnLeftBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(Light.TurnLeftLight, ((Integer) k3GlobalStepConfig.p200210.value).intValue() * 1000);
        this.turnRightBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(Light.TurnRightLight, ((Integer) k3GlobalStepConfig.p200210.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (globalStateData.state == GlobalStateData.State.turnLeft) {
            return this.turnLeftBuDaHelper.a(eVar);
        }
        this.turnLeftBuDaHelper.b();
        if (globalStateData.state == GlobalStateData.State.turnRight) {
            return this.turnRightBuDaHelper.a(eVar);
        }
        this.turnRightBuDaHelper.b();
        return true;
    }
}
