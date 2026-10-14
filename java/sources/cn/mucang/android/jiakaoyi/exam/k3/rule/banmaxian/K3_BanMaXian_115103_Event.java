package cn.mucang.android.jiakaoyi.exam.k3.rule.banmaxian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BanMaXianStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BanMaXian_115103_Event extends d<K3BanMaXianStepConfig> {
    private long carStopStartTime;
    private boolean lastCarStop;

    public K3_BanMaXian_115103_Event(K3BanMaXianStepConfig k3BanMaXianStepConfig, Deduct deduct) {
        super(k3BanMaXianStepConfig, deduct);
        this.carStopStartTime = 0L;
        this.lastCarStop = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        BanMaXianStateData banMaXianStateData = (BanMaXianStateData) bVar.f();
        if (!banMaXianStateData.isCheckStopCar) {
            setDoNotExecute(true);
            return true;
        }
        boolean z = banMaXianStateData.carStop;
        if (bVar.j()) {
            setDoNotExecute(true);
            return false;
        }
        if (z) {
            if (this.carStopStartTime == 0) {
                this.carStopStartTime = examProcessor.i;
            }
            if (examProcessor.i >= this.carStopStartTime + ((long) (((Integer) ((K3BanMaXianStepConfig) this.config).p215125.value).intValue() * 1000))) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            if (this.carStopStartTime > 0) {
                setDoNotExecute(true);
                return false;
            }
            if (examProcessor.i > banMaXianStateData.startTime + ((long) (((Integer) ((K3BanMaXianStepConfig) this.config).p215124.value).intValue() * 1000))) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
