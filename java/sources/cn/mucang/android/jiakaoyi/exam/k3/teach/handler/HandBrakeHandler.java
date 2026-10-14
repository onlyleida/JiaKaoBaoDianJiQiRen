package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.HandBrakeVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class HandBrakeHandler implements VariableHandler<HandBrakeVariable> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(HandBrakeVariable handBrakeVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        return handBrakeVariable.on == 0 ? !eVar.d().f5268f : eVar.d().f5268f;
    }
}
