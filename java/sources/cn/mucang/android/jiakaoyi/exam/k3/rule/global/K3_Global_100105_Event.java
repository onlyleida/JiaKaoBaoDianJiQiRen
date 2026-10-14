package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100105_Event extends d<K3GlobalStepConfig> {
    private long clutchStepOnStartTime;
    private long clutchStepOnSumTime;

    public K3_Global_100105_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (examProcessor.n.b(ConflictSignal.ClutchTime)) {
            this.clutchStepOnStartTime = 0L;
            this.clutchStepOnSumTime = 0L;
            return true;
        }
        if (eVar.d().b <= ((Integer) ((K3GlobalStepConfig) this.config).p200128.value).intValue() + CarModel.Y) {
            this.clutchStepOnStartTime = 0L;
            this.clutchStepOnSumTime = 0L;
            return true;
        }
        if (!((Boolean) ((K3GlobalStepConfig) this.config).p200205.value).booleanValue()) {
            if (eVar.d().f5267e) {
                if (this.clutchStepOnStartTime == 0) {
                    this.clutchStepOnStartTime = examProcessor.i;
                }
                if (examProcessor.i - this.clutchStepOnStartTime > ((Integer) ((K3GlobalStepConfig) this.config).p200126.value).intValue() * 1000) {
                    return false;
                }
            } else {
                this.clutchStepOnStartTime = 0L;
            }
            return true;
        }
        if (eVar.d().f5267e) {
            if (!eVar.d().f5269g) {
                long j = this.clutchStepOnStartTime;
                if (j > 0) {
                    this.clutchStepOnSumTime += examProcessor.i - j;
                }
            }
            this.clutchStepOnStartTime = examProcessor.i;
        } else {
            this.clutchStepOnStartTime = 0L;
            this.clutchStepOnSumTime = 0L;
        }
        return this.clutchStepOnSumTime <= ((long) (((Integer) ((K3GlobalStepConfig) this.config).p200126.value).intValue() * 1000));
    }
}
