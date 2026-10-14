package cn.mucang.android.jiakaoyi.exam.k3.rule.biandaochaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDaoChaoChe_126113_Event extends d<K3BianDaoChaoCheStepConfig> {
    private long leftTime;
    private long rightTime;

    public K3_BianDaoChaoChe_126113_Event(K3BianDaoChaoCheStepConfig k3BianDaoChaoCheStepConfig, Deduct deduct) {
        super(k3BianDaoChaoCheStepConfig, deduct);
        this.leftTime = 0L;
        this.rightTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        BianDaoChaoCheStateData bianDaoChaoCheStateData = (BianDaoChaoCheStateData) bVar.f();
        if ((((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226103.value).intValue() == 2 || bianDaoChaoCheStateData.bianDaoChecker.state == BianDaoState.turnLeft) && eVar.d().j(Light.TurnRightLight)) {
            if (this.leftTime == 0) {
                this.leftTime = examProcessor.i;
            }
            if (examProcessor.i - this.leftTime >= ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226116.value).intValue() * 1000) {
                setDoNotExecute(true);
                return false;
            }
        } else {
            this.leftTime = 0L;
        }
        if ((((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226103.value).intValue() == 1 || bianDaoChaoCheStateData.bianDaoChecker.state == BianDaoState.turnRight) && eVar.d().j(Light.TurnLeftLight)) {
            if (this.rightTime == 0) {
                this.rightTime = examProcessor.i;
            }
            if (examProcessor.i - this.rightTime >= ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226116.value).intValue() * 1000) {
                setDoNotExecute(true);
                return false;
            }
        } else {
            this.rightTime = 0L;
        }
        return true;
    }
}
