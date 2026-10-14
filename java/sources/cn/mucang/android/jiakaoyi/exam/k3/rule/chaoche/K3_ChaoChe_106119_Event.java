package cn.mucang.android.jiakaoyi.exam.k3.rule.chaoche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ChaoChe_106119_Event extends d<K3ChaoCheStepConfig> {
    private long leftTime;
    private long rightBackTime;
    private long rightTime;

    public K3_ChaoChe_106119_Event(K3ChaoCheStepConfig k3ChaoCheStepConfig, Deduct deduct) {
        super(k3ChaoCheStepConfig, deduct);
        this.leftTime = 0L;
        this.rightTime = 0L;
        this.rightBackTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        ChaoCheStateData chaoCheStateData = (ChaoCheStateData) bVar.f();
        if (chaoCheStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (chaoCheStateData.turningRight && eVar.d().j(Light.TurnLeftLight)) {
                if (this.rightTime <= 0) {
                    this.rightTime = examProcessor.i;
                }
                if (examProcessor.i - this.rightTime >= ((Integer) ((K3ChaoCheStepConfig) this.config).p206121.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            } else {
                this.rightTime = 0L;
            }
            if (chaoCheStateData.turningLeft && eVar.d().j(Light.TurnRightLight)) {
                if (this.leftTime <= 0) {
                    this.leftTime = examProcessor.i;
                }
                if (examProcessor.i - this.leftTime >= ((Integer) ((K3ChaoCheStepConfig) this.config).p206121.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            } else {
                this.leftTime = 0L;
            }
        } else {
            if (chaoCheStateData.state == ChaoCheStateData.State.turnRight && eVar.d().j(Light.TurnLeftLight)) {
                if (this.rightTime <= 0) {
                    this.rightTime = examProcessor.i;
                }
                if (examProcessor.i - this.rightTime >= ((Integer) ((K3ChaoCheStepConfig) this.config).p206121.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            } else {
                this.rightTime = 0L;
            }
            if (chaoCheStateData.state == ChaoCheStateData.State.turnLeft && eVar.d().j(Light.TurnRightLight)) {
                if (this.leftTime <= 0) {
                    this.leftTime = examProcessor.i;
                }
                if (examProcessor.i - this.leftTime >= ((Integer) ((K3ChaoCheStepConfig) this.config).p206121.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            } else {
                this.leftTime = 0L;
            }
            if (chaoCheStateData.state == ChaoCheStateData.State.turnRightToBack && eVar.d().j(Light.TurnLeftLight)) {
                if (this.rightBackTime <= 0) {
                    this.rightBackTime = examProcessor.i;
                }
                if (examProcessor.i - this.rightBackTime >= ((Integer) ((K3ChaoCheStepConfig) this.config).p206121.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            } else {
                this.rightBackTime = 0L;
            }
        }
        return true;
    }
}
