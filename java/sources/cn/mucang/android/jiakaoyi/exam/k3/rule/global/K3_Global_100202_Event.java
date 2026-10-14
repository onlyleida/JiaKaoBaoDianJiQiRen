package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.f;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100202_Event extends d<K3GlobalStepConfig> {
    private boolean isInit;
    private boolean lastIsEngineStart;

    public K3_Global_100202_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.lastIsEngineStart = false;
        this.isInit = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3GlobalStepConfig) this.config).p200195.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (f.b()) {
            setDoNotExecute(true);
            return true;
        }
        if (!this.isInit) {
            this.lastIsEngineStart = eVar.d().f();
            this.isInit = true;
            return true;
        }
        if (this.lastIsEngineStart || !eVar.d().f()) {
            this.lastIsEngineStart = eVar.d().f();
            return true;
        }
        this.lastIsEngineStart = eVar.d().f();
        return eVar.d().f5267e;
    }
}
