package cn.mucang.android.jiakaoyi.exam.k3.rule.school;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SchoolStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_School_114106_Event extends d<K3SchoolStepConfig> {
    public K3_School_114106_Event(K3SchoolStepConfig k3SchoolStepConfig, Deduct deduct) {
        super(k3SchoolStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Boolean) ((K3SchoolStepConfig) this.config).p214114.value).booleanValue() && eVar.d().f5269g) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().b >= ((Integer) ((K3SchoolStepConfig) this.config).p214112.value).intValue()) {
            return !bVar.j();
        }
        setDoNotExecute(true);
        return true;
    }
}
