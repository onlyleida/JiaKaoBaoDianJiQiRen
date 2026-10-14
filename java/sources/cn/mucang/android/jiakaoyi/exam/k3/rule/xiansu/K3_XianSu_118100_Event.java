package cn.mucang.android.jiakaoyi.exam.k3.rule.xiansu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3XianSuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_XianSu_118100_Event extends d<K3XianSuStepConfig> {
    public K3_XianSu_118100_Event(K3XianSuStepConfig k3XianSuStepConfig, Deduct deduct) {
        super(k3XianSuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return eVar.d().b <= ((float) ((Integer) ((K3XianSuStepConfig) this.config).p218103.value).intValue());
    }
}
