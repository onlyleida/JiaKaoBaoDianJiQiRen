package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class BanMaXianStateData extends K3BaseStepData<K3BanMaXianStepConfig> {
    public boolean isCheckStopCar;

    public BanMaXianStateData(K3BanMaXianStepConfig k3BanMaXianStepConfig) {
        super(k3BanMaXianStepConfig);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
    }
}
