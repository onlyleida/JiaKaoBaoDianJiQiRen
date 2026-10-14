package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_105112_Event extends d<K3BianDaoStepConfig> {
    private boolean hasOn;

    public K3_BianDao_105112_Event(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
        super(k3BianDaoStepConfig, deduct);
        this.hasOn = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((BianDaoStateData) bVar.f()).isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        boolean z = this.hasOn || eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight);
        this.hasOn = z;
        if (z) {
            setDoNotExecute(true);
            return true;
        }
        if (examProcessor.i - bVar.p() >= ((Integer) ((K3BianDaoStepConfig) this.config).p205116.value).intValue() * 1000) {
            return this.hasOn;
        }
        return true;
    }
}
