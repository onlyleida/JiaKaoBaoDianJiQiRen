package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.AngleConvertor;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.AngleResult;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.AngleVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class AngleHandler implements VariableHandler<AngleVariable> {
    private AngleResult angleResult;
    private AngleConvertor convertor;
    private float startAngle = -9999.0f;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(AngleVariable angleVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.startAngle == -9999.0f) {
            this.startAngle = eVar.d().D;
        }
        if (this.convertor == null) {
            this.convertor = new AngleConvertor();
            this.angleResult = new AngleResult();
        }
        int i = angleVariable.turn;
        if (i == 0) {
            i = examProcessor.s().f3142e == Step.K3_ZhiXian ? 3 : 2;
        }
        AngleResult angleResultConvert = this.convertor.convert(this.angleResult, (K3BaseStepData) bVar.f());
        if (angleResultConvert == null) {
            if (i == 3) {
                return ((double) Math.abs(eVar.d().D - this.startAngle)) > angleVariable.value.doubleValue();
            }
            if (i == 1) {
                return ((double) (eVar.d().D - this.startAngle)) < (-angleVariable.value.doubleValue());
            }
            return ((double) (eVar.d().D - this.startAngle)) > angleVariable.value.doubleValue();
        }
        if (!angleResultConvert.isValid()) {
            return false;
        }
        if (i == 3) {
            return Math.abs(angleResultConvert.angle) > angleVariable.value.doubleValue();
        }
        if (i == 1) {
            return angleResultConvert.angle < (-angleVariable.value.doubleValue());
        }
        return angleResultConvert.angle > angleVariable.value.doubleValue();
    }
}
