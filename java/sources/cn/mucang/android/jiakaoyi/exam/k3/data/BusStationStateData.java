package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BusStationStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class BusStationStateData extends K3BaseStepData<K3BusStationStepConfig> {
    public boolean isCheckStopCar;

    public BusStationStateData(K3BusStationStepConfig k3BusStationStepConfig) {
        super(k3BusStationStepConfig);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
    }
}
