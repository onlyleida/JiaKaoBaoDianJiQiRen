package cn.mucang.android.jiakaoyi.exam.k3.childstep;

import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BaseStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ChildStepChecker<T extends K3BaseStepConfig> {
    public ChildStepData childStepData;
    public T config;
    public c.b stepInfo;

    public ChildStepChecker(T t, ChildStepData childStepData, c.b bVar) {
        this.config = t;
        this.childStepData = childStepData;
        this.stepInfo = bVar;
    }

    public abstract void onChange(e eVar, b bVar, ExamProcessor examProcessor);
}
