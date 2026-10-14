package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100169_Event extends d<K3GlobalStepConfig> {
    private final Gear checkGear;
    private boolean isStop;
    private long lastStartTime;
    private long startTime;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100169_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.isStop = false;
        this.startTime = 0L;
        this.lastStartTime = 0L;
        this.checkGear = Gear.parse(((Integer) k3GlobalStepConfig.p200120.value).intValue());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (examProcessor.n.b(ConflictSignal.QiBuDangWei)) {
            this.isStop = false;
            this.lastStartTime = 0L;
            return true;
        }
        CarModel carModelD = eVar.d();
        float f2 = carModelD.b;
        if (f2 < 0.15d) {
            if (this.startTime <= 0) {
                this.startTime = examProcessor.i;
            }
            if (examProcessor.i - this.startTime >= 1000) {
                this.isStop = true;
            }
        }
        Gear gear = carModelD.m;
        if (gear != Gear.Invalid && gear != Gear.GearN && !carModelD.k && f2 >= 2.0f) {
            this.startTime = 0L;
            if (this.isStop) {
                if (eVar.d().m == this.checkGear) {
                    this.isStop = false;
                    this.lastStartTime = 0L;
                } else {
                    if (this.lastStartTime == 0) {
                        this.lastStartTime = examProcessor.i;
                    }
                    if (examProcessor.i - this.lastStartTime > 1000) {
                        this.isStop = false;
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
