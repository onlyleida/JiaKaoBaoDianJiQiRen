package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.FootBrakeVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class FootBrakeHandler implements VariableHandler<FootBrakeVariable> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(FootBrakeVariable footBrakeVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        return footBrakeVariable.on == 1 ? eVar.d().f5269g : !eVar.d().f5269g;
    }
}
