package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DoorVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class DoorHandler implements VariableHandler<DoorVariable> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(DoorVariable doorVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (doorVariable.on == 0) {
            return !eVar.d().j;
        }
        return eVar.d().j;
    }
}
