package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100201_Event extends d<K3GlobalStepConfig> {
    public long turnLightSumTime;
    private long turnLightTime;

    public K3_Global_100201_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.turnLightTime = 0L;
        this.turnLightSumTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.TurnLightLongTime)) {
            this.turnLightSumTime = 0L;
            this.turnLightTime = 0L;
            return true;
        }
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (!eVar.d().j(Light.TurnLeftLight) && !eVar.d().j(Light.TurnRightLight)) {
            this.turnLightSumTime = 0L;
            this.turnLightTime = 0L;
        } else if (((Boolean) ((K3GlobalStepConfig) this.config).p200217.value).booleanValue() && globalStateData.carStop) {
            long j = this.turnLightTime;
            if (j != 0) {
                this.turnLightSumTime += examProcessor.i - j;
            }
            this.turnLightTime = 0L;
        } else {
            if (this.turnLightTime == 0) {
                this.turnLightTime = examProcessor.i;
            }
            if (this.turnLightSumTime + (examProcessor.i - this.turnLightTime) > ((Integer) ((K3GlobalStepConfig) this.config).p200192.value).intValue() * 1000) {
                this.turnLightTime = 0L;
                this.turnLightSumTime = 0L;
                return false;
            }
        }
        return true;
    }
}
