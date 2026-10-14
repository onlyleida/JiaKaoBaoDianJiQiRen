package cn.mucang.android.jiakaoyi.exam.k3.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SuiDaoStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_SuiDao_119103_Event extends d<K3SuiDaoStepConfig> {
    private long conditionTriggerTime;

    public K3_SuiDao_119103_Event(K3SuiDaoStepConfig k3SuiDaoStepConfig, Deduct deduct) {
        super(k3SuiDaoStepConfig, deduct);
        this.conditionTriggerTime = -999999L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        long j = examProcessor.i;
        if (eVar.d().b >= ((Integer) ((K3SuiDaoStepConfig) this.config).p219106.value).intValue()) {
            this.conditionTriggerTime = -999999L;
            return true;
        }
        long j2 = this.conditionTriggerTime;
        if (j2 != -999999) {
            return j - j2 <= ((long) (((Integer) ((K3SuiDaoStepConfig) this.config).p219107.value).intValue() * 1000));
        }
        this.conditionTriggerTime = examProcessor.i;
        return true;
    }
}
