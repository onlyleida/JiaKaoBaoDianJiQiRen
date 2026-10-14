package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_105101_Event extends d<K3BianDaoStepConfig> {
    private boolean eventTurnLeft;
    private boolean eventTurnRight;

    public K3_BianDao_105101_Event(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
        super(k3BianDaoStepConfig, deduct);
        this.eventTurnRight = false;
        this.eventTurnLeft = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        BianDaoStateData bianDaoStateData = (BianDaoStateData) bVar.f();
        if (bianDaoStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (((Integer) ((K3BianDaoStepConfig) this.config).p205103.value).intValue() == 2 && bVar.j()) {
            return bianDaoStateData.bianDaoChecker.hadTurnLeft;
        }
        return true;
    }
}
