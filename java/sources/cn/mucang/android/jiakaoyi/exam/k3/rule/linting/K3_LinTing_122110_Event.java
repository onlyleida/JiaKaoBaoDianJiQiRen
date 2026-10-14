package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122110_Event extends d<K3LinTingStepConfig> {
    public K3_LinTing_122110_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return !bVar.j() || ((LinTingStepData) bVar.f()).state == LinTingStepData.State.Start;
    }
}
