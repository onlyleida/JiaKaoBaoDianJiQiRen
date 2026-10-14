package cn.mucang.android.jiakaoyi.exam.k3.rule.busstation;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BusStationStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BusStationStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BusStation_113105_Event extends d<K3BusStationStepConfig> {
    private long carStopStartTime;

    public K3_BusStation_113105_Event(K3BusStationStepConfig k3BusStationStepConfig, Deduct deduct) {
        super(k3BusStationStepConfig, deduct);
        this.carStopStartTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        BusStationStateData busStationStateData = (BusStationStateData) bVar.f();
        if (!busStationStateData.isCheckStopCar) {
            setDoNotExecute(true);
            return true;
        }
        boolean z = busStationStateData.carStop;
        if (bVar.j()) {
            setDoNotExecute(true);
            return false;
        }
        if (z) {
            if (this.carStopStartTime == 0) {
                this.carStopStartTime = examProcessor.i;
            }
            if (examProcessor.i >= this.carStopStartTime + ((long) (((Integer) ((K3BusStationStepConfig) this.config).p213125.value).intValue() * 1000))) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            if (this.carStopStartTime > 0) {
                setDoNotExecute(true);
                return false;
            }
            if (examProcessor.i > busStationStateData.startTime + ((long) (((Integer) ((K3BusStationStepConfig) this.config).p213124.value).intValue() * 1000))) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
