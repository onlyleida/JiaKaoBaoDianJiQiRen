package cn.mucang.android.jiakaoyi.exam.k3.rule.zhixian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.f;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ZhiXian_104105_Event extends d<K3ZhiXianStepConfig> {
    private long startTime;

    public K3_ZhiXian_104105_Event(K3ZhiXianStepConfig k3ZhiXianStepConfig, Deduct deduct) {
        super(k3ZhiXianStepConfig, deduct);
        this.startTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (f.b() && ((Boolean) ((K3ZhiXianStepConfig) this.config).p204123.value).booleanValue()) {
            setDoNotExecute(true);
            return true;
        }
        if (((Integer) ((K3ZhiXianStepConfig) this.config).p204107.value).intValue() > 0) {
            if (eVar.d().b >= ((Integer) ((K3ZhiXianStepConfig) this.config).p204106.value).intValue()) {
                if (this.startTime == 0) {
                    this.startTime = examProcessor.i;
                }
                if (examProcessor.i - this.startTime > ((Integer) ((K3ZhiXianStepConfig) this.config).p204107.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return true;
                }
            } else {
                this.startTime = 0L;
            }
        } else if (eVar.d().b >= ((Integer) ((K3ZhiXianStepConfig) this.config).p204106.value).intValue()) {
            setDoNotExecute(true);
            return true;
        }
        return !bVar.j();
    }
}
