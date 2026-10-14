package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.HpGlobalChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.StepRecordHelper;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100129_Event extends d<K3GlobalStepConfig> {
    private GlobalStateData.State lastState;
    private long lastTime;
    private StepRecordHelper stepRecord;

    public K3_Global_100129_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.lastTime = 0L;
        this.stepRecord = new StepRecordHelper();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (examProcessor.n.b(ConflictSignal.TurnLightError)) {
            this.lastState = GlobalStateData.State.before;
            this.lastTime = 0L;
            return true;
        }
        if (examProcessor.n.b(ConflictSignal.TurnLight)) {
            this.lastState = GlobalStateData.State.before;
            this.lastTime = 0L;
            return true;
        }
        if (examProcessor.n.b(ConflictSignal.GeneralChangeLane)) {
            this.lastState = GlobalStateData.State.before;
            this.lastTime = 0L;
            return true;
        }
        if (this.lastTime == 0) {
            this.lastTime = examProcessor.i;
            return true;
        }
        if (!((Boolean) ((K3GlobalStepConfig) this.config).p200136.value).booleanValue()) {
            setDoNotExecute(true);
            return true;
        }
        if (((Integer) ((K3GlobalStepConfig) this.config).p200139.value).intValue() > 0) {
            this.stepRecord.check(eVar, examProcessor);
            if (this.stepRecord.lastStepEndDistance != -1.0f && eVar.d().C - this.stepRecord.lastStepEndDistance < ((Integer) ((K3GlobalStepConfig) this.config).p200139.value).intValue()) {
                return true;
            }
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            HpGlobalChecker hpGlobalChecker = globalStateData.hpGlobalChecker;
            if (hpGlobalChecker.startTurningLeft) {
                if (((Boolean) ((K3GlobalStepConfig) this.config).p200258.value).booleanValue()) {
                    return !eVar.d().j(Light.TurnRightLight);
                }
                return eVar.d().j(Light.TurnLeftLight);
            }
            if (hpGlobalChecker.startTurningRight) {
                if (((Boolean) ((K3GlobalStepConfig) this.config).p200258.value).booleanValue()) {
                    return !eVar.d().j(Light.TurnLeftLight);
                }
                return eVar.d().j(Light.TurnRightLight);
            }
        } else {
            GlobalStateData.State state = globalStateData.state;
            if (state == GlobalStateData.State.turnLeft && this.lastState != state) {
                long j = examProcessor.i;
                if (j - this.lastTime < 8000) {
                    return true;
                }
                this.lastState = state;
                this.lastTime = j;
                if (((Boolean) ((K3GlobalStepConfig) this.config).p200258.value).booleanValue()) {
                    return !eVar.d().j(Light.TurnRightLight);
                }
                return eVar.d().j(Light.TurnLeftLight);
            }
            if (state == GlobalStateData.State.turnRight && this.lastState != state) {
                long j2 = examProcessor.i;
                if (j2 - this.lastTime < 8000) {
                    return true;
                }
                this.lastState = state;
                this.lastTime = j2;
                if (((Boolean) ((K3GlobalStepConfig) this.config).p200258.value).booleanValue()) {
                    return !eVar.d().j(Light.TurnLeftLight);
                }
                return eVar.d().j(Light.TurnRightLight);
            }
            this.lastState = state;
        }
        return true;
    }
}
