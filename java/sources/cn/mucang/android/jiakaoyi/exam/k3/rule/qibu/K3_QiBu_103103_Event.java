package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.QiBuStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class K3_QiBu_103103_Event extends d<K3QiBuStepConfig> {
    public K3_QiBu_103103_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Integer) ((K3QiBuStepConfig) this.config).p203109.value).intValue() != 2) {
            return true;
        }
        QiBuStepData qiBuStepData = (QiBuStepData) bVar.f();
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(Light.TurnLeftLight);
        if (!qiBuStepData.isCarOn || !eVar.d().c()) {
            return true;
        }
        setDoNotExecute(true);
        return cVarC != null && cVarC.c && cVarC.f5252d > 3000;
    }
}
