package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuiCheStepData;
import cn.mucang.android.jiakaoyi.k3collect.collision.c.a;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_107108_Event extends d<K3HuiCheStepConfig> {
    private double initDis;
    private long startTime;

    public K3_HuiChe_107108_Event(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
        this.initDis = a.b;
        this.startTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3HuiCheStepConfig) this.config).p207105.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        HuiCheStepData huiCheStepData = (HuiCheStepData) bVar.f();
        if (huiCheStepData.reachRightOffset) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().C - huiCheStepData.startEstimateDistance <= ((Integer) ((K3HuiCheStepConfig) this.config).p207106.value).intValue() && !bVar.j()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
