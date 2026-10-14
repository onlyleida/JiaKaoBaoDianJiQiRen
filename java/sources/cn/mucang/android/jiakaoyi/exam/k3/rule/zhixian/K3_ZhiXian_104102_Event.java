package cn.mucang.android.jiakaoyi.exam.k3.rule.zhixian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.f;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ZhiXian_104102_Event extends d<K3ZhiXianStepConfig> {
    private boolean moreThanMinSpeed;

    public K3_ZhiXian_104102_Event(K3ZhiXianStepConfig k3ZhiXianStepConfig, Deduct deduct) {
        super(k3ZhiXianStepConfig, deduct);
        this.moreThanMinSpeed = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (f.b() && ((Boolean) ((K3ZhiXianStepConfig) this.config).p204123.value).booleanValue()) {
            setDoNotExecute(true);
            return true;
        }
        if (!this.moreThanMinSpeed || eVar.d().b >= ((Integer) ((K3ZhiXianStepConfig) this.config).p204114.value).intValue()) {
            if (eVar.d().b >= ((Integer) ((K3ZhiXianStepConfig) this.config).p204114.value).intValue()) {
                this.moreThanMinSpeed = true;
            }
            return true;
        }
        this.moreThanMinSpeed = false;
        setDoNotExecute(true);
        return false;
    }
}
