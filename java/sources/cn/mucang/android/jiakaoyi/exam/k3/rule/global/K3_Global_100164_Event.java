package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100164_Event extends d<K3GlobalStepConfig> {
    public K3_Global_100164_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        T t = this.config;
        IntegerValue integerValue = ((K3GlobalStepConfig) t).p200114;
        IntegerValue integerValue2 = ((K3GlobalStepConfig) t).p200131;
        CarModel carModelD = eVar.d();
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        for (int iIntValue = ((Integer) integerValue.value).intValue(); iIntValue <= 6; iIntValue++) {
            if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(iIntValue), globalStateData.rpmRate) && carModelD.b >= ((Integer) integerValue2.value).intValue()) {
                setDoNotExecute(true);
                return true;
            }
        }
        if (carModelD.m.gear < ((Integer) integerValue.value).intValue() || carModelD.b < ((Integer) integerValue2.value).intValue()) {
            return !examProcessor.w();
        }
        setDoNotExecute(true);
        return true;
    }
}
