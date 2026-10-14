package cn.mucang.android.jiakaoyi.exam.k3.rule.zhixian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZhiXianStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ZhiXian_104100_Event extends d<K3ZhiXianStepConfig> {
    public K3_ZhiXian_104100_Event(K3ZhiXianStepConfig k3ZhiXianStepConfig, Deduct deduct) {
        super(k3ZhiXianStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ZhiXianStateData zhiXianStateData = (ZhiXianStateData) bVar.f();
        if (!zhiXianStateData.hasStart || Math.abs(zhiXianStateData.diffAngle) <= ((Integer) ((K3ZhiXianStepConfig) this.config).p204103.value).intValue()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
