package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116106_Event extends d<K3TingCheStepConfig> {
    private b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_TingChe_116106_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.timeoutChecker = new b(((long) ((Integer) ((K3TingCheStepConfig) this.config).p216113.value).intValue()) * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (((TingCheStepData) bVar.f()).state == TingCheStepData.State.OpenDoor) {
            this.timeoutChecker.g();
            if (this.timeoutChecker.d()) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
