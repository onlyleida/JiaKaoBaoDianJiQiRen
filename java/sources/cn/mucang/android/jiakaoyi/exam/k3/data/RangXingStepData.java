package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3RangXingStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class RangXingStepData extends K3BaseStepData<K3RangXingStepConfig> {
    public boolean hasStop;
    private long speed0AtTime;

    public RangXingStepData(K3RangXingStepConfig k3RangXingStepConfig) {
        super(k3RangXingStepConfig);
        this.hasStop = false;
        this.speed0AtTime = -99999999L;
    }

    private void checkStop(e eVar) {
        if (!this.hasStop && eVar.d().b < 1.0f) {
            long j = eVar.d().L;
            if (this.speed0AtTime == -99999999) {
                this.speed0AtTime = j;
            }
            if (j - this.speed0AtTime > 3000) {
                this.hasStop = true;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        checkStop(eVar);
    }
}
