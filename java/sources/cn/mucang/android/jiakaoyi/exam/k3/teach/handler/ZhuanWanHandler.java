package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.ZhuanWanStateConvertor;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.ZhuanWanState;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.ZhuanWanVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class ZhuanWanHandler implements VariableHandler<ZhuanWanVariable> {
    private ZhuanWanStateConvertor convertor;
    private int lastState;
    private ZhuanWanState result;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(ZhuanWanVariable zhuanWanVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.convertor == null) {
            this.convertor = new ZhuanWanStateConvertor();
            this.result = new ZhuanWanState();
        }
        ZhuanWanState zhuanWanStateConvert = this.convertor.convert(this.result, (K3BaseStepData) bVar.f());
        return zhuanWanStateConvert != null && zhuanWanStateConvert.state == 1;
    }
}
