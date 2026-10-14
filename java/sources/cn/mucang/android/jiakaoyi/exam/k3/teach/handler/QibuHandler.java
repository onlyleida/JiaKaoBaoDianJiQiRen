package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.QiBuVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class QibuHandler implements VariableHandler<QiBuVariable> {
    public boolean isInit = false;
    public boolean lastHasSpeed = false;
    public float startDistance;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(QiBuVariable qiBuVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (!this.isInit) {
            this.isInit = true;
            this.lastHasSpeed = eVar.d().c();
            return false;
        }
        if (this.lastHasSpeed || !eVar.d().c()) {
            this.lastHasSpeed = eVar.d().c();
            return false;
        }
        this.lastHasSpeed = eVar.d().c();
        return true;
    }
}
