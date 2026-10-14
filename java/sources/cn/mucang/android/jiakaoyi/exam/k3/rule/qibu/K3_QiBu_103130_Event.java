package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103130_Event extends d<K3QiBuStepConfig> {
    private long startTime;

    public K3_QiBu_103130_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
        this.startTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().c()) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().j(Light.TurnLeftLight)) {
            if (this.startTime == 0) {
                this.startTime = eVar.d().L;
            }
            if (eVar.d().L - this.startTime >= ((Integer) ((K3QiBuStepConfig) this.config).p203136.value).intValue() * 1000) {
                return false;
            }
        } else {
            this.startTime = 0L;
        }
        return true;
    }
}
