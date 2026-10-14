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
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.HpBianDaoChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.TurnState;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100113_Event extends d<K3GlobalStepConfig> {
    private final HpBianDaoChecker hpBianDaoChecker;
    private TurnState lastTurnState;
    private StepRecordHelper stepRecord;

    public K3_Global_100113_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.lastTurnState = TurnState.before;
        this.stepRecord = new StepRecordHelper();
        this.hpBianDaoChecker = new HpBianDaoChecker();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC2;
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
        if (examProcessor.n.b(ConflictSignal.TurnLight) || examProcessor.n.b(ConflictSignal.GeneralChangeLane)) {
            return true;
        }
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            HpGlobalChecker hpGlobalChecker = globalStateData.hpGlobalChecker;
            if (!hpGlobalChecker.startTurningLeft) {
                return !hpGlobalChecker.startTurningRight || (cVarC2 = eVar.b().c(Light.TurnRightLight)) == null || !cVarC2.c || cVarC2.f5252d >= 3000;
            }
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC3 = eVar.b().c(Light.TurnLeftLight);
            return cVarC3 == null || !cVarC3.c || cVarC3.f5252d >= 3000;
        }
        GlobalStateData.State state = globalStateData.state;
        if (state != GlobalStateData.State.turnLeft) {
            return state != GlobalStateData.State.turnRight || (cVarC = eVar.b().c(Light.TurnRightLight)) == null || !cVarC.c || cVarC.f5252d >= 3000;
        }
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC4 = eVar.b().c(Light.TurnLeftLight);
        return cVarC4 == null || !cVarC4.c || cVarC4.f5252d >= 3000;
    }
}
