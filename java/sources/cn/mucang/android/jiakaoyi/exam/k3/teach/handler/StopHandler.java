package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.StopVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class StopHandler implements VariableHandler<StopVariable> {
    public boolean lastCarStop = true;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(StopVariable stopVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        return ((K3BaseStepData) bVar.f()).carStop;
    }
}
