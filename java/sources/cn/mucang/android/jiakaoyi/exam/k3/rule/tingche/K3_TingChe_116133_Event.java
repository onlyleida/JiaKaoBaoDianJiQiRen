package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116133_Event extends d<K3TingCheStepConfig> {
    public K3_TingChe_116133_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().b() || eVar.d().j || eVar.d().f5266d) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
