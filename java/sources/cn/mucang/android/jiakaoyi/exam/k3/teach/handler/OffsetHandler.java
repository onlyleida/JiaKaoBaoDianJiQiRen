package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.OffsetConvertor;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.OffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.OffsetVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class OffsetHandler implements VariableHandler<OffsetVariable> {
    private OffsetConvertor convertor;
    private OffsetResult offsetResult;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(OffsetVariable offsetVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.convertor == null) {
            this.convertor = new OffsetConvertor();
            this.offsetResult = new OffsetResult();
        }
        OffsetResult offsetResultConvert = this.convertor.convert(this.offsetResult, (K3BaseStepData) bVar.f());
        return offsetResultConvert.isValid() && offsetResultConvert.offset > offsetVariable.value.doubleValue();
    }
}
