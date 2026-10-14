package cn.mucang.android.jiakaoyi.examk2.rule.squxian;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.j;
import cn.mucang.android.jiakaoyi.examk2.collision.g;
import cn.mucang.android.jiakaoyi.examk2.config.K2SQuXianStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SQuXian_303102_Event extends d<K2SQuXianStepConfig> {
    private final b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_SQuXian_303102_Event(K2SQuXianStepConfig k2SQuXianStepConfig, Deduct deduct) {
        super(k2SQuXianStepConfig, deduct);
        this.timeoutCheck = new b(((Integer) ((K2SQuXianStepConfig) this.config).p403106.value).intValue());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (((g) ((j) bVar.f()).f3279a).f3695f) {
            this.timeoutCheck.g();
            return !this.timeoutCheck.d();
        }
        this.timeoutCheck.f();
        this.timeoutCheck.a();
        return true;
    }
}
