package cn.mucang.android.jiakaoyi.exam.k3.rule.jiajiandang;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.JiaJianDangStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JiaJianDang_112108_Event extends d<K3JiaJianDangStepConfig> {
    public K3_JiaJianDang_112108_Event(K3JiaJianDangStepConfig k3JiaJianDangStepConfig, Deduct deduct) {
        super(k3JiaJianDangStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        JiaJianDangStateData jiaJianDangStateData = (JiaJianDangStateData) bVar.f();
        if (jiaJianDangStateData.startGear == null) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().C - jiaJianDangStateData.startEstimateDistance > ((Integer) ((K3JiaJianDangStepConfig) this.config).p212117.value).intValue()) {
            setDoNotExecute(true);
            return false;
        }
        if (eVar.d().m != jiaJianDangStateData.startGear && !cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, jiaJianDangStateData.startGear, jiaJianDangStateData.rpmRate)) {
            return true;
        }
        setDoNotExecute(true);
        return true;
    }
}
