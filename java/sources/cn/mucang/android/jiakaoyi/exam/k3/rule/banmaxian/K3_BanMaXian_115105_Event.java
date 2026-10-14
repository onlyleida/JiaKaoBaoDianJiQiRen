package cn.mucang.android.jiakaoyi.exam.k3.rule.banmaxian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BanMaXian_115105_Event extends d<K3BanMaXianStepConfig> {
    public K3_BanMaXian_115105_Event(K3BanMaXianStepConfig k3BanMaXianStepConfig, Deduct deduct) {
        super(k3BanMaXianStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Boolean) ((K3BanMaXianStepConfig) this.config).p215107.value).booleanValue()) {
            return !eVar.d().l;
        }
        return true;
    }
}
