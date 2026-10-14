package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100104_Event extends d<K3GlobalStepConfig> {
    private final Gear checkGear;
    private long startTime;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100104_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startTime = 0L;
        this.checkGear = Gear.parse(((Integer) k3GlobalStepConfig.p200114.value).intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (eVar.d().m == this.checkGear) {
            if (this.startTime == 0) {
                this.startTime = examProcessor.i;
            }
            if (examProcessor.i - this.startTime >= ((Integer) ((K3GlobalStepConfig) this.config).p200116.value).intValue() * 1000) {
                setDoNotExecute(true);
                return true;
            }
        } else {
            this.startTime = 0L;
        }
        return !examProcessor.w();
    }
}
