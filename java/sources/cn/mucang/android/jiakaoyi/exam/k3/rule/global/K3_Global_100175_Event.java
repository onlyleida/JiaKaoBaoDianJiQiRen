package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100175_Event extends d<K3GlobalStepConfig> {
    private Boolean lastHandbrake;

    public K3_Global_100175_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.lastHandbrake = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3GlobalStepConfig) this.config).p200146.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        CarModel carModelD = eVar.d();
        if (examProcessor.n.b(ConflictSignal.LaShouShaNoJiaoSha)) {
            this.lastHandbrake = Boolean.valueOf(carModelD.f5268f);
            return true;
        }
        if (eVar.d().p != KeyState.ON) {
            this.lastHandbrake = Boolean.valueOf(carModelD.f5268f);
            return true;
        }
        Boolean bool = this.lastHandbrake;
        if (bool == null || !bool.booleanValue() || carModelD.f5268f || carModelD.f5269g) {
            this.lastHandbrake = Boolean.valueOf(carModelD.f5268f);
            return true;
        }
        this.lastHandbrake = Boolean.FALSE;
        return false;
    }
}
