package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_105110_Event extends d<K3BianDaoStepConfig> {
    private float targetDistance;

    public K3_BianDao_105110_Event(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
        super(k3BianDaoStepConfig, deduct);
        this.targetDistance = -1.0f;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!bVar.j()) {
            return true;
        }
        BianDaoStateData bianDaoStateData = (BianDaoStateData) bVar.f();
        if (!bianDaoStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return bianDaoStateData.bianDaoChecker.state == BianDaoState.after;
        }
        if (bianDaoStateData.isFinishTurnLight) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
