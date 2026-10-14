package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100109_Event extends d<K3GlobalStepConfig> {
    private int count;

    public K3_Global_100109_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.count = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (cn.mucang.android.jiakaoyi.signal.utils.e.a()) {
            return true;
        }
        if (examProcessor.n.b(ConflictSignal.HighRpm)) {
            this.count = 0;
            return true;
        }
        if (eVar.d().f5265a > ((Integer) ((K3GlobalStepConfig) this.config).p200134.value).intValue()) {
            this.count++;
        } else {
            this.count = 0;
        }
        return this.count < 3;
    }
}
