package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class QiBuStepData extends K3BaseStepData<K3QiBuStepConfig> {
    public boolean isCarOn;

    public QiBuStepData(K3QiBuStepConfig k3QiBuStepConfig) {
        super(k3QiBuStepConfig);
        this.isCarOn = false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (eVar.d().f()) {
            this.isCarOn = true;
        }
    }
}
