package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b;
import cn.mucang.android.jiakaoyi.exam.a.c;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BanMaXianStateData;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BanMaXian_Starter extends K3BaseStarter<K3BanMaXianStepConfig> {
    public K3_BanMaXian_Starter(K3BanMaXianStepConfig k3BanMaXianStepConfig, Deduct deduct, Location location) {
        super(k3BanMaXianStepConfig, deduct, location, k3BanMaXianStepConfig.p215108, k3BanMaXianStepConfig.p215109, k3BanMaXianStepConfig.p215100, k3BanMaXianStepConfig.p215113, k3BanMaXianStepConfig.p215102);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    public b.C0104b getStartVoiceTips(ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        if (z || !((Boolean) ((K3BanMaXianStepConfig) this.config).p215122.value).booleanValue() || !c.b().e(bVar.f3143f)) {
            return super.getStartVoiceTips(examProcessor, bVar, z);
        }
        ((BanMaXianStateData) bVar.f()).isCheckStopCar = true;
        T t = this.config;
        return new b.C0104b(((K3BanMaXianStepConfig) t).p215123.ruleId, l.d(((K3BanMaXianStepConfig) t).p215122.ruleId), (String) ((K3BanMaXianStepConfig) this.config).p215123.value);
    }
}
