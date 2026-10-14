package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b;
import cn.mucang.android.jiakaoyi.exam.a.c;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BusStationStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BusStationStateData;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BusStation_Starter extends K3BaseStarter<K3BusStationStepConfig> {
    public K3_BusStation_Starter(K3BusStationStepConfig k3BusStationStepConfig, Deduct deduct, Location location) {
        super(k3BusStationStepConfig, deduct, location, k3BusStationStepConfig.p213108, k3BusStationStepConfig.p213109, k3BusStationStepConfig.p213100, k3BusStationStepConfig.p213113, k3BusStationStepConfig.p213102);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    public b.C0104b getStartVoiceTips(ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        if (z || !((Boolean) ((K3BusStationStepConfig) this.config).p213122.value).booleanValue() || !c.b().e(bVar.f3143f)) {
            return super.getStartVoiceTips(examProcessor, bVar, z);
        }
        ((BusStationStateData) bVar.f()).isCheckStopCar = true;
        T t = this.config;
        return new b.C0104b(((K3BusStationStepConfig) t).p213123.ruleId, l.d(((K3BusStationStepConfig) t).p213123.ruleId), (String) ((K3BusStationStepConfig) this.config).p213123.value);
    }
}
