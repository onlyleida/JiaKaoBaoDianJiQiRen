package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.AroundCarVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.d.j.a;

/* JADX INFO: loaded from: classes2.dex */
public class AroundCarHandler implements VariableHandler<AroundCarVariable> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(AroundCarVariable aroundCarVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        return a.d(eVar.d().y, aroundCarVariable.id);
    }
}
