package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103100_Event extends d<K3QiBuStepConfig> {
    public K3_QiBu_103100_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (cn.mucang.android.jiakaoyi.signal.utils.e.a()) {
            return true;
        }
        if (eVar.d().f5265a <= ((Integer) ((K3QiBuStepConfig) this.config).p203106.value).intValue()) {
            return !bVar.j();
        }
        setDoNotExecute(true);
        return true;
    }
}
