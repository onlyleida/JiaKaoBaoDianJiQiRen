package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_107109_Event extends d<K3HuiCheStepConfig> {
    public K3_HuiChe_107109_Event(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        Boolean bool = (Boolean) ((K3HuiCheStepConfig) this.config).p207118.value;
        boolean z = eVar.d().l;
        if (bool.booleanValue()) {
            if (!z) {
                return !bVar.j();
            }
            setDoNotExecute(true);
            return true;
        }
        if (!z) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
