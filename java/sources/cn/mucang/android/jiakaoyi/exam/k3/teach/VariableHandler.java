package cn.mucang.android.jiakaoyi.exam.k3.teach;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;

/* JADX INFO: loaded from: classes2.dex */
public interface VariableHandler<T extends Variable> {
    boolean isTrigger(T t, cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar);
}
