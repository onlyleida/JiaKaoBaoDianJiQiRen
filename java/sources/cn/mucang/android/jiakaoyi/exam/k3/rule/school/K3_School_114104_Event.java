package cn.mucang.android.jiakaoyi.exam.k3.rule.school;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SchoolStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_School_114104_Event extends d<K3SchoolStepConfig> {
    public K3_School_114104_Event(K3SchoolStepConfig k3SchoolStepConfig, Deduct deduct) {
        super(k3SchoolStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3SchoolStepConfig) this.config).p214106.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return (eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight)) ? false : true;
    }
}
