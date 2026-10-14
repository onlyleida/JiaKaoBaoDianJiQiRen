package cn.mucang.android.jiakaoyi.exam.k3.rule.busstation;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BusStationStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BusStation_113103_Event extends d<K3BusStationStepConfig> {
    public K3_BusStation_113103_Event(K3BusStationStepConfig k3BusStationStepConfig, Deduct deduct) {
        super(k3BusStationStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Boolean) ((K3BusStationStepConfig) this.config).p213107.value).booleanValue()) {
            return !eVar.d().l;
        }
        return true;
    }
}
