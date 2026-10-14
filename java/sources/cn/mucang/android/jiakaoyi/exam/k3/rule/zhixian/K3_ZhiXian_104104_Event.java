package cn.mucang.android.jiakaoyi.exam.k3.rule.zhixian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZhiXianStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class K3_ZhiXian_104104_Event extends d<K3ZhiXianStepConfig> {
    public K3_ZhiXian_104104_Event(K3ZhiXianStepConfig k3ZhiXianStepConfig, Deduct deduct) {
        super(k3ZhiXianStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return eVar.d().C - ((ZhiXianStateData) bVar.f()).startEstimateDistance <= ((float) ((Integer) ((K3ZhiXianStepConfig) this.config).p204110.value).intValue());
    }
}
