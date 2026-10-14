package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_Starter extends K3BaseStarter<K3TingCheStepConfig> {
    public K3_TingChe_Starter(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct, Location location) {
        super(k3TingCheStepConfig, deduct, location, k3TingCheStepConfig.p216121, k3TingCheStepConfig.p216122, k3TingCheStepConfig.p216100, k3TingCheStepConfig.p216134, k3TingCheStepConfig.p216102, k3TingCheStepConfig.p216162, k3TingCheStepConfig.p216163);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.starter.K3BaseStarter, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected boolean canStart(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        boolean zCanStart = super.canStart(eVar, examProcessor, bVar, z);
        if (z || ((Integer) ((K3TingCheStepConfig) this.config).p216136.value).intValue() <= 0) {
            return zCanStart;
        }
        return zCanStart && eVar.d().C - examProcessor.j > ((float) ((Integer) ((K3TingCheStepConfig) this.config).p216136.value).intValue());
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.starter.K3BaseStarter, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        return super.isTrigger(eVar, examProcessor, bVar, z);
    }
}
