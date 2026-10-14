package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.TurnStateConvertor;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.CarTurnState;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.BianDaoVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class BianDaoHandler implements VariableHandler<BianDaoVariable> {
    public TurnStateConvertor bianDaoConvertor;
    public CarTurnState carTurnState;
    public int lastState = 0;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(BianDaoVariable bianDaoVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        if (this.bianDaoConvertor == null) {
            this.bianDaoConvertor = new TurnStateConvertor();
            this.carTurnState = new CarTurnState();
        }
        CarTurnState carTurnStateConvert = this.bianDaoConvertor.convert(this.carTurnState, (K3BaseStepData) bVar.f());
        int i5 = bianDaoVariable.turn;
        if (i5 == 0 && this.lastState == 2 && (i4 = carTurnStateConvert.state) == 4) {
            this.lastState = i4;
            return true;
        }
        if (i5 == 1 && this.lastState == 3 && (i3 = carTurnStateConvert.state) == 4) {
            this.lastState = i3;
            return true;
        }
        if (i5 == 2 && (((i = this.lastState) == 3 || i == 2) && (i2 = carTurnStateConvert.state) == 4)) {
            this.lastState = i2;
            return true;
        }
        this.lastState = carTurnStateConvert.state;
        return false;
    }
}
