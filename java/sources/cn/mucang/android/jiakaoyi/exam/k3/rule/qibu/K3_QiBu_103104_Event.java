package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103104_Event extends d<K3QiBuStepConfig> {
    private b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_QiBu_103104_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
        this.timeoutCheck = new b(((Integer) ((K3QiBuStepConfig) this.config).p203118.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        boolean z = eVar.d().f5268f;
        if (eVar.d().c() && !z) {
            this.timeoutCheck.g();
        }
        if (z) {
            this.timeoutCheck.f();
            this.timeoutCheck.a();
        }
        return z || !this.timeoutCheck.d();
    }
}
