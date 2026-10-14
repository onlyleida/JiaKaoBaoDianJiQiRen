package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100166_Event extends d<K3GlobalStepConfig> {
    public K3_Global_100166_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.c.g.b.C0119b c0119bD = eVar.b().d(Gear.parse(((Integer) ((K3GlobalStepConfig) this.config).p200114.value).intValue()));
        IntegerValue integerValue = ((K3GlobalStepConfig) this.config).p200115;
        if (c0119bD == null || c0119bD.f5246d < ((Integer) integerValue.value).intValue()) {
            return !examProcessor.w();
        }
        setDoNotExecute(true);
        return true;
    }
}
