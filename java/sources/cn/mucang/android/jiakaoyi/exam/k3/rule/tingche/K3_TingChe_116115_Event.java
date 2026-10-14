package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116115_Event extends d<K3TingCheStepConfig> {
    private boolean hasDeducted;
    private boolean hasStopped;
    private Boolean lastHandbrake;
    private final i timeFilter;

    public K3_TingChe_116115_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.lastHandbrake = null;
        this.hasStopped = false;
        this.hasDeducted = false;
        this.timeFilter = new i(500L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3TingCheStepConfig) this.config).p216132.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        K3GlobalStepConfig k3GlobalStepConfig = (K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global);
        if (k3GlobalStepConfig != null) {
            boolean z = eVar.d().f5265a <= ((Integer) k3GlobalStepConfig.p200153.value).intValue();
            CarModel carModelD = eVar.d();
            if (z) {
                return true;
            }
            Boolean bool = this.lastHandbrake;
            if (bool != null && bool.booleanValue() && !carModelD.f5268f && !carModelD.f5269g) {
                this.lastHandbrake = Boolean.FALSE;
                return false;
            }
            this.lastHandbrake = Boolean.valueOf(carModelD.f5268f);
            if (((Integer) ((K3TingCheStepConfig) this.config).p216154.value).intValue() <= 50 || this.hasDeducted) {
                return true;
            }
            if (this.timeFilter.b(((TingCheStepData) bVar.f()).carStop, eVar.d().L)) {
                this.hasStopped = true;
            }
            if (this.hasStopped && eVar.d().b >= 1.0f && !eVar.d().f5269g) {
                this.hasDeducted = true;
                return false;
            }
        }
        return true;
    }
}
