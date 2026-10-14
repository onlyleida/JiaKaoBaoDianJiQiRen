package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b;
import cn.mucang.android.jiakaoyi.exam.a.c;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SchoolStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.SchoolStateData;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;

/* JADX INFO: loaded from: classes2.dex */
public class K3_School_Starter extends K3BaseStarter<K3SchoolStepConfig> {
    public K3_School_Starter(K3SchoolStepConfig k3SchoolStepConfig, Deduct deduct, Location location) {
        super(k3SchoolStepConfig, deduct, location, k3SchoolStepConfig.p214108, k3SchoolStepConfig.p214109, k3SchoolStepConfig.p214100, k3SchoolStepConfig.p214113, k3SchoolStepConfig.p214102);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    public b.C0104b getStartVoiceTips(ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        if (z || !((Boolean) ((K3SchoolStepConfig) this.config).p214122.value).booleanValue() || !c.b().e(bVar.f3143f)) {
            return super.getStartVoiceTips(examProcessor, bVar, z);
        }
        ((SchoolStateData) bVar.f()).isCheckStopCar = true;
        T t = this.config;
        return new b.C0104b(((K3SchoolStepConfig) t).p214123.ruleId, l.d(((K3SchoolStepConfig) t).p214123.ruleId), (String) ((K3SchoolStepConfig) this.config).p214123.value);
    }
}
