package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.LightVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class LightHandler implements VariableHandler<LightVariable> {
    Light light;

    public boolean allLightOff(e eVar) {
        for (Light light : Light.values()) {
            if (eVar.d().j(light)) {
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(LightVariable lightVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.light == null) {
            this.light = Light.findLightWithId(lightVariable.id);
        }
        if (this.light == Light.Off) {
            return allLightOff(eVar);
        }
        if (lightVariable.on) {
            return eVar.d().j(this.light);
        }
        return !eVar.d().j(this.light);
    }
}
