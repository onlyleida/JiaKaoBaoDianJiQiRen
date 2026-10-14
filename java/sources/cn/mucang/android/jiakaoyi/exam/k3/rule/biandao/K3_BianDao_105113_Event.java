package cn.mucang.android.jiakaoyi.exam.k3.rule.biandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BianDao_105113_Event extends d<K3BianDaoStepConfig> {
    boolean leftHasFullLine;
    private long leftTime;
    boolean rightHasFullLine;
    private long rightTime;

    public K3_BianDao_105113_Event(K3BianDaoStepConfig k3BianDaoStepConfig, Deduct deduct) {
        super(k3BianDaoStepConfig, deduct);
        this.leftTime = 0L;
        this.rightTime = 0L;
        this.leftHasFullLine = false;
        this.rightHasFullLine = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC2;
        K3CollisionModel k3CollisionModel;
        K3CollisionModel k3CollisionModel2;
        BianDaoStateData bianDaoStateData = (BianDaoStateData) bVar.f();
        if (bianDaoStateData.isOnlyCheckTurnLight) {
            setDoNotExecute(true);
            return true;
        }
        if (((Boolean) ((K3BianDaoStepConfig) this.config).p205132.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (eVar.d().h()) {
                TwoSideOffsetResult twoSideOffset = K3CollisionManager.getInstance().getTwoSideOffset(eVar);
                if (twoSideOffset != null && (k3CollisionModel2 = twoSideOffset.leftLine) != null) {
                    if (k3CollisionModel2 instanceof j) {
                        this.leftHasFullLine = !((j) k3CollisionModel2).k;
                    } else if (k3CollisionModel2 instanceof i) {
                        this.leftHasFullLine = true;
                    }
                }
                if (twoSideOffset != null && (k3CollisionModel = twoSideOffset.rightLine) != null) {
                    if (k3CollisionModel instanceof j) {
                        this.rightHasFullLine = !((j) k3CollisionModel).k;
                    } else if (k3CollisionModel instanceof i) {
                        this.rightHasFullLine = true;
                    }
                }
            }
            if (this.leftHasFullLine) {
                CarModel carModelD = eVar.d();
                Light light = Light.TurnLeftLight;
                if (carModelD.j(light) && (cVarC2 = eVar.b().c(light)) != null && cVarC2.f5252d >= ((Integer) ((K3BianDaoStepConfig) this.config).p205117.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            }
            if (this.rightHasFullLine) {
                CarModel carModelD2 = eVar.d();
                Light light2 = Light.TurnRightLight;
                if (carModelD2.j(light2) && (cVarC = eVar.b().c(light2)) != null && cVarC.f5252d >= ((Integer) ((K3BianDaoStepConfig) this.config).p205117.value).intValue() * 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            }
        }
        if ((((Integer) ((K3BianDaoStepConfig) this.config).p205103.value).intValue() == 2 || bianDaoStateData.bianDaoChecker.state == BianDaoState.turnLeft) && eVar.d().j(Light.TurnRightLight)) {
            if (this.leftTime == 0) {
                this.leftTime = eVar.d().L;
            }
            if (eVar.d().L - this.leftTime >= ((Integer) ((K3BianDaoStepConfig) this.config).p205117.value).intValue() * 1000) {
                setDoNotExecute(true);
                return false;
            }
        } else {
            this.leftTime = 0L;
        }
        if ((((Integer) ((K3BianDaoStepConfig) this.config).p205103.value).intValue() == 1 || bianDaoStateData.bianDaoChecker.state == BianDaoState.turnRight) && eVar.d().j(Light.TurnLeftLight)) {
            if (this.rightTime == 0) {
                this.rightTime = eVar.d().L;
            }
            if (eVar.d().L - this.rightTime >= ((Integer) ((K3BianDaoStepConfig) this.config).p205117.value).intValue() * 1000) {
                setDoNotExecute(true);
                return false;
            }
        } else {
            this.rightTime = 0L;
        }
        return true;
    }
}
