package cn.mucang.android.jiakaoyi.examk2.rule.squxian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.j;
import cn.mucang.android.jiakaoyi.examk2.collision.g;
import cn.mucang.android.jiakaoyi.examk2.config.K2SQuXianStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SQuXian_303109_Event extends d<K2SQuXianStepConfig> {
    private long startTime;

    public K2_SQuXian_303109_Event(K2SQuXianStepConfig k2SQuXianStepConfig, Deduct deduct) {
        super(k2SQuXianStepConfig, deduct);
        this.startTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((g) ((j) bVar.f()).f3279a).f3695f) {
            if (this.startTime != 0) {
                return true;
            }
            this.startTime = examProcessor.i;
            return true;
        }
        long j = this.startTime;
        if (j == 0 || examProcessor.i - j >= ((Integer) ((K2SQuXianStepConfig) this.config).p403106.value).intValue()) {
            this.startTime = 0L;
            return true;
        }
        this.startTime = 0L;
        return false;
    }
}
