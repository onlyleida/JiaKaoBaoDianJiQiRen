package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.d;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DiaoTouVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class DiaoTouHandler implements VariableHandler<DiaoTouVariable> {
    private DiaoTouStateData.State lastState;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(DiaoTouVariable diaoTouVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        DiaoTouStateData.State state;
        d dVarF = bVar.f();
        if (!(dVarF instanceof DiaoTouStateData)) {
            return false;
        }
        DiaoTouStateData diaoTouStateData = (DiaoTouStateData) dVarF;
        if (this.lastState == DiaoTouStateData.State.diaotou && (state = diaoTouStateData.state) == DiaoTouStateData.State.after) {
            this.lastState = state;
            return true;
        }
        this.lastState = diaoTouStateData.state;
        return false;
    }
}
