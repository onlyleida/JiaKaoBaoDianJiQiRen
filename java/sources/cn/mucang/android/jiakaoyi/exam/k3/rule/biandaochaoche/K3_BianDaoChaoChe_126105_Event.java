package cn.mucang.android.jiakaoyi.exam.k3.rule.biandaochaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDaoChaoChe_126105_Event extends d<K3BianDaoChaoCheStepConfig> {
    public K3_BianDaoChaoChe_126105_Event(K3BianDaoChaoCheStepConfig k3BianDaoChaoCheStepConfig, Deduct deduct) {
        super(k3BianDaoChaoCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().b <= ((Integer) ((K3BianDaoChaoCheStepConfig) this.config).p226108.value).intValue()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
