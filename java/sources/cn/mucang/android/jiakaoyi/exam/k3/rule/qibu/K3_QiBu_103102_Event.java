package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103102_Event extends d<K3QiBuStepConfig> {
    private long clutchStepOnStartTime;
    private long clutchStepOnSumTime;
    private BooleanValue p200205;

    public K3_QiBu_103102_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (eVar.d().b <= ((Integer) ((K3QiBuStepConfig) this.config).p203121.value).intValue() + CarModel.Y) {
            this.clutchStepOnStartTime = 0L;
            this.clutchStepOnSumTime = 0L;
            cn.mucang.android.jiakaoyi.signal.c.d.p();
            return true;
        }
        if (this.p200205 == null) {
            this.p200205 = ((K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global)).p200205;
        }
        if (!((Boolean) this.p200205.value).booleanValue()) {
            return eVar.b().b() <= ((long) (((Integer) ((K3QiBuStepConfig) this.config).p203108.value).intValue() * 1000));
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
        return this.clutchStepOnSumTime <= ((long) (((Integer) ((K3QiBuStepConfig) this.config).p203108.value).intValue() * 1000));
    }
}
