package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116129_Event extends d<K3TingCheStepConfig> {
    private boolean hasInit;
    private boolean lastIsStopped;
    private boolean needDeduct;
    private int stoppedCount;

    public K3_TingChe_116129_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.stoppedCount = 0;
        this.hasInit = false;
        this.needDeduct = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
        if (!this.hasInit) {
            this.hasInit = true;
            this.lastIsStopped = tingCheStepData.isStopped;
            return true;
        }
        if (eVar.d().f5268f && this.needDeduct) {
            if (!this.lastIsStopped && tingCheStepData.isStopped) {
                this.stoppedCount++;
            }
            this.lastIsStopped = tingCheStepData.isStopped;
            if (this.stoppedCount >= ((Integer) ((K3TingCheStepConfig) this.config).p216154.value).intValue() && !tingCheStepData.isStopped) {
                this.needDeduct = false;
                return false;
            }
        } else {
            this.needDeduct = true;
            this.stoppedCount = 0;
        }
        return true;
    }
}
