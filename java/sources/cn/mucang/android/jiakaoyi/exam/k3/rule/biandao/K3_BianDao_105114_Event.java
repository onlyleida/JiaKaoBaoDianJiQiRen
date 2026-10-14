package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_105114_Event extends d<K3BianDaoStepConfig> {
    private final cn.mucang.android.jiakaoyi.exam.a.d turnLeftBuDaHelper;
    private final cn.mucang.android.jiakaoyi.exam.a.d turnRightBuDaHelper;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_BianDao_105114_Event(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
        super(k3BianDaoStepConfig, deduct);
        this.turnLeftBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(Light.TurnLeftLight, ((Integer) k3BianDaoStepConfig.p205118.value).intValue() * 1000);
        this.turnRightBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(Light.TurnRightLight, ((Integer) k3BianDaoStepConfig.p205118.value).intValue() * 1000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        BianDaoStateData bianDaoStateData = (BianDaoStateData) bVar.f();
        OptionsValue optionsValue = ((K3BianDaoStepConfig) this.config).p205103;
        if (((Integer) optionsValue.value).intValue() == 0 || ((Integer) optionsValue.value).intValue() == 2) {
            if (bianDaoStateData.bianDaoChecker.state == BianDaoState.turnLeft) {
                return this.turnLeftBuDaHelper.a(eVar);
            }
            this.turnLeftBuDaHelper.b();
        }
        if (((Integer) optionsValue.value).intValue() == 0 || ((Integer) optionsValue.value).intValue() == 1) {
            if (bianDaoStateData.bianDaoChecker.state == BianDaoState.turnRight) {
                return this.turnRightBuDaHelper.a(eVar);
            }
            this.turnRightBuDaHelper.b();
        }
        return true;
    }
}
