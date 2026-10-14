package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100110_Event extends d<K3GlobalStepConfig> {
    private long firstTime;
    private boolean isFlameOut;
    private boolean isInit;
    private boolean lastEngineStart;
    private long startTime;
    private boolean tingcheLaHandbrake;

    public K3_Global_100110_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.firstTime = -1L;
        this.lastEngineStart = false;
        this.isFlameOut = false;
        this.isInit = false;
        this.startTime = 0L;
        this.tingcheLaHandbrake = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (cn.mucang.android.jiakaoyi.signal.utils.e.a() || examProcessor.w()) {
            return true;
        }
        if (!this.isInit) {
            this.lastEngineStart = eVar.d().f();
            this.isInit = true;
            this.startTime = 0L;
            return true;
        }
        boolean z = false;
        if (examProcessor.n.b(ConflictSignal.EngineOff)) {
            if (this.lastEngineStart && !eVar.d().f()) {
                z = true;
            }
            this.isFlameOut = z;
            this.lastEngineStart = eVar.d().f();
            this.startTime = 0L;
            return true;
        }
        if (!examProcessor.y(Step.K3_TingChe)) {
            this.tingcheLaHandbrake = false;
        } else {
            if (((Boolean) ((K3GlobalStepConfig) this.config).p200220.value).booleanValue() || this.tingcheLaHandbrake) {
                if (this.lastEngineStart && !eVar.d().f()) {
                    z = true;
                }
                this.isFlameOut = z;
                this.lastEngineStart = eVar.d().f();
                this.startTime = 0L;
                return true;
            }
            if (!eVar.d().f5268f) {
                this.tingcheLaHandbrake = true;
                if (this.lastEngineStart && !eVar.d().f()) {
                    z = true;
                }
                this.isFlameOut = z;
                this.lastEngineStart = eVar.d().f();
                this.startTime = 0L;
                return true;
            }
        }
        if (eVar.d().f()) {
            this.isFlameOut = false;
        } else {
            if (this.lastEngineStart) {
                this.isFlameOut = true;
            }
            if (this.isFlameOut) {
                if (eVar.d().f5265a <= ((Integer) ((K3GlobalStepConfig) this.config).p200153.value).intValue()) {
                    if (this.startTime <= 0) {
                        this.startTime = examProcessor.i;
                    }
                    this.lastEngineStart = eVar.d().f();
                    return examProcessor.i - this.startTime <= ((long) (((Integer) ((K3GlobalStepConfig) this.config).p200154.value).intValue() * 1000));
                }
                this.startTime = 0L;
            }
        }
        this.lastEngineStart = eVar.d().f();
        return true;
    }
}
