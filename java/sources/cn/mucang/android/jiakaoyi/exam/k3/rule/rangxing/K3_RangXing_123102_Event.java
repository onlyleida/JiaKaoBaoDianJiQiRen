package cn.mucang.android.jiakaoyi.exam.k3.rule.rangxing;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3RangXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.RangXingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_RangXing_123102_Event extends d<K3RangXingStepConfig> {
    private long startTime1;
    private long startTime2;

    public K3_RangXing_123102_Event(K3RangXingStepConfig k3RangXingStepConfig, Deduct deduct) {
        super(k3RangXingStepConfig, deduct);
        this.startTime1 = 0L;
        this.startTime2 = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.x() && eVar.d().m != Gear.Invalid && eVar.d().m != Gear.GearN) {
            RangXingStepData rangXingStepData = (RangXingStepData) bVar.f();
            if (rangXingStepData.hasStop && eVar.d().b > 1.0f) {
                for (int i = Gear.Gear1.gear; i <= ((Integer) ((K3RangXingStepConfig) this.config).p223106.value).intValue() + 1; i++) {
                    if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(i), rangXingStepData.rpmRate)) {
                        setDoNotExecute(true);
                        return true;
                    }
                }
                if (cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, Gear.parse(((Integer) ((K3RangXingStepConfig) this.config).p223106.value).intValue() + 1), rangXingStepData.rpmRate)) {
                    this.startTime2 = 0L;
                    if (this.startTime1 == 0) {
                        this.startTime1 = SystemClock.elapsedRealtime();
                    }
                    if (SystemClock.elapsedRealtime() - this.startTime1 > 1000) {
                        setDoNotExecute(true);
                        return true;
                    }
                } else {
                    this.startTime1 = 0L;
                    if (this.startTime2 == 0) {
                        this.startTime2 = SystemClock.elapsedRealtime();
                    }
                    if (SystemClock.elapsedRealtime() - this.startTime2 > 1000) {
                        setDoNotExecute(true);
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
