package cn.mucang.android.jiakaoyi.exam.k3.rule.zhixian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZhiXianStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ZhiXian_104101_Event extends d<K3ZhiXianStepConfig> {
    private double initSideDis;
    private double invalid;
    private boolean isInit;

    public K3_ZhiXian_104101_Event(K3ZhiXianStepConfig k3ZhiXianStepConfig, Deduct deduct) {
        super(k3ZhiXianStepConfig, deduct);
        this.invalid = -9999.0d;
        this.isInit = false;
        this.initSideDis = 0.0d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (Math.abs(((ZhiXianStateData) bVar.f()).offsetDistance) <= ((Float) ((K3ZhiXianStepConfig) this.config).p204104.value).floatValue()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
