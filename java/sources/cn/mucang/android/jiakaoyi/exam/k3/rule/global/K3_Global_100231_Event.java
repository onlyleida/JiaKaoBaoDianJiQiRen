package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.Judge100231Checker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100231_Event extends d<K3GlobalStepConfig> {
    private final Judge100231Checker carIgnitionFailChecker;
    private long engineStartTime;
    private boolean lastEngineStartState;

    public K3_Global_100231_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.lastEngineStartState = false;
        this.engineStartTime = 0L;
        this.carIgnitionFailChecker = new Judge100231Checker(k3GlobalStepConfig);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return this.carIgnitionFailChecker.check(eVar);
    }
}
