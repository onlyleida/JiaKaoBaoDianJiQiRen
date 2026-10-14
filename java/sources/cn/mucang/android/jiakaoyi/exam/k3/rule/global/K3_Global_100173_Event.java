package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100173_Event extends d<K3GlobalStepConfig> {
    private float startDistance;

    public K3_Global_100173_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startDistance = -1.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (((GlobalStateData) bVar.f()).gearSpeedDistance <= ((Integer) ((K3GlobalStepConfig) this.config).p200158.value).intValue()) {
            return !examProcessor.w();
        }
        setDoNotExecute(true);
        return true;
    }
}
