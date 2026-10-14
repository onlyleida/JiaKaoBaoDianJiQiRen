package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122108_Event extends d<K3LinTingStepConfig> {
    private long startTime2;

    public K3_LinTing_122108_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.startTime2 = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x() || eVar.d().m == Gear.Invalid) {
            return true;
        }
        LinTingStepData linTingStepData = (LinTingStepData) bVar.f();
        if (linTingStepData.state == LinTingStepData.State.Start) {
            Gear gear = Gear.parse(((Integer) ((K3LinTingStepConfig) this.config).p222115.value).intValue() + 1);
            if (eVar.d().m == gear || cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(eVar.d().m, gear, linTingStepData.rpmRate)) {
                setDoNotExecute(true);
            } else {
                if (this.startTime2 == 0) {
                    this.startTime2 = SystemClock.elapsedRealtime();
                }
                if (SystemClock.elapsedRealtime() - this.startTime2 > 1000) {
                    return false;
                }
            }
        }
        return true;
    }
}
