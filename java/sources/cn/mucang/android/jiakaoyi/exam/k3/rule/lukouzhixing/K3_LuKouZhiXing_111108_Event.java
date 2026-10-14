package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzhixing;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZhiXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LuKouZhiXingStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class K3_LuKouZhiXing_111108_Event extends d<K3LuKouZhiXingStepConfig> {
    public K3_LuKouZhiXing_111108_Event(K3LuKouZhiXingStepConfig k3LuKouZhiXingStepConfig, Deduct deduct) {
        super(k3LuKouZhiXingStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return examProcessor.i - ((LuKouZhiXingStepData) bVar.f()).startTime <= ((long) (((Integer) ((K3LuKouZhiXingStepConfig) this.config).p211107.value).intValue() * 1000));
    }
}
