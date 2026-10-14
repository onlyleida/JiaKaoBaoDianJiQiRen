package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.SeatBeltVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class SeatBeltHandler implements VariableHandler<SeatBeltVariable> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(SeatBeltVariable seatBeltVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        return seatBeltVariable.on == 1 ? eVar.d().f5266d : !eVar.d().f5266d;
    }
}
