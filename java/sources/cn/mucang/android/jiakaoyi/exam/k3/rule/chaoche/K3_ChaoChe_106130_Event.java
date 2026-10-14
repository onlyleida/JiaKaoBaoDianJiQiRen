package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106130_Event extends d<K3ChaoCheStepConfig> {
    private boolean isReachSpeed;
    private long reachSpeedStartTime;

    public K3_ChaoChe_106130_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((ChaoCheStateData) bVar.f()).isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().b > ((Integer) ((K3ChaoCheStepConfig) this.config).p206103.value).intValue()) {
            this.isReachSpeed = true;
            if (this.reachSpeedStartTime == 0) {
                this.reachSpeedStartTime = examProcessor.i;
            }
            if (examProcessor.i - this.reachSpeedStartTime > ((Integer) ((K3ChaoCheStepConfig) this.config).p206139.value).intValue() * 1000) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            this.reachSpeedStartTime = 0L;
        }
        if (!this.isReachSpeed || !bVar.j()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
