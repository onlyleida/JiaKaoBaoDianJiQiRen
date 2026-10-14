package cn.mucang.android.jiakaoyi.exam.k3.rule.jinting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarStoppedChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JinTing_125100_Event extends d<K3JinTingStepConfig> {
    private CarStoppedChecker stoppedChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_JinTing_125100_Event(K3JinTingStepConfig k3JinTingStepConfig, Deduct deduct) {
        super(k3JinTingStepConfig, deduct);
        this.stoppedChecker = new CarStoppedChecker(((Integer) ((K3JinTingStepConfig) this.config).p225103.value).intValue(), ((Integer) ((K3JinTingStepConfig) this.config).p225104.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return !this.stoppedChecker.onCheck(eVar);
    }
}
