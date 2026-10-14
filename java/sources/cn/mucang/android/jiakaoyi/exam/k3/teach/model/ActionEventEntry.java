package cn.mucang.android.jiakaoyi.exam.k3.teach.model;

import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;

/* JADX INFO: loaded from: classes2.dex */
public class ActionEventEntry {
    public final Variable variable;
    public final VariableHandler<? extends Variable> variableHandler;

    public ActionEventEntry(Variable variable, VariableHandler<? extends Variable> variableHandler) {
        this.variable = variable;
        this.variableHandler = variableHandler;
    }
}
