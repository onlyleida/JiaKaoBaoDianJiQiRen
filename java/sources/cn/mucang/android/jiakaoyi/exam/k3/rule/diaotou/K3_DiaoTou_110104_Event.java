package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110104_Event extends d<K3DiaoTouStepConfig> {
    public K3_DiaoTou_110104_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        DiaoTouStateData diaoTouStateData = (DiaoTouStateData) bVar.f();
        if (((Integer) ((K3DiaoTouStepConfig) this.config).p210141.value).intValue() == 0) {
            if (diaoTouStateData.state == DiaoTouStateData.State.diaotou && eVar.d().b > ((Integer) ((K3DiaoTouStepConfig) this.config).p210110.value).intValue()) {
                return false;
            }
        } else if (((Integer) ((K3DiaoTouStepConfig) this.config).p210141.value).intValue() == 1 && eVar.d().b > ((Integer) ((K3DiaoTouStepConfig) this.config).p210110.value).intValue()) {
            return false;
        }
        return true;
    }
}
