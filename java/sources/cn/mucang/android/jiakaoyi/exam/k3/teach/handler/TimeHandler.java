package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.TimeVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class TimeHandler implements VariableHandler<TimeVariable> {
    public long time = 0;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(TimeVariable timeVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.time == 0) {
            this.time = eVar.d().L;
        }
        return ((double) (eVar.d().L - this.time)) >= timeVariable.value.doubleValue() * 1000.0d;
    }
}
