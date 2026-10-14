package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.BianDaoResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.HpGlobalChecker;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100227_Event extends d<K3GlobalStepConfig> {
    private boolean hasDeduct;
    private boolean hasLightOn;
    private boolean isCrossLine;

    public K3_Global_100227_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.isCrossLine = true;
        this.hasLightOn = false;
        this.hasDeduct = false;
    }

    private void checkCrossLine(e eVar, K3CollisionModel k3CollisionModel, Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        if (isStraightLine(k3CollisionModel)) {
            if (a.C(pos3, pos4, pos, pos2)) {
                this.isCrossLine = true;
                return;
            }
            return;
        }
        if (k3CollisionModel instanceof j) {
            j jVar = (j) k3CollisionModel;
            if (jVar.f3919e != null) {
                for (int i = 1; i < jVar.f3919e.size(); i++) {
                    if (a.C(pos3, pos4, jVar.f3919e.get(i), jVar.f3919e.get(i - 1))) {
                        this.isCrossLine = true;
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (k3CollisionModel instanceof i) {
            i iVar = (i) k3CollisionModel;
            if (iVar.f3913d != null) {
                for (int i2 = 1; i2 < iVar.f3913d.size(); i2++) {
                    if (a.C(pos3, pos4, iVar.f3913d.get(i2), iVar.f3913d.get(i2 - 1))) {
                        this.isCrossLine = true;
                        break;
                    }
                }
            }
            if (this.isCrossLine || iVar.f3914e == null) {
                return;
            }
            for (int i3 = 1; i3 < iVar.f3914e.size(); i3++) {
                if (a.C(pos3, pos4, iVar.f3914e.get(i3), iVar.f3914e.get(i3 - 1))) {
                    this.isCrossLine = true;
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        Pos pos;
        Pos pos2;
        Pos pos3;
        Pos pos4;
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        CarPos carPosC = eVar.c();
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().h()) {
            HpGlobalChecker hpGlobalChecker = globalStateData.hpGlobalChecker;
            if (hpGlobalChecker.turningLeft) {
                CarModel carModelD = eVar.d();
                Light light = Light.TurnLeftLight;
                if (carModelD.j(light)) {
                    this.hasLightOn = true;
                }
                if (this.hasLightOn && !this.hasDeduct && !this.isCrossLine) {
                    BianDaoResult bianDaoResult = globalStateData.hpGlobalChecker.hpBianDaoChecker.bianDaoResult;
                    if (bianDaoResult != null && bianDaoResult.leftLine != null) {
                        if (((Integer) ((K3GlobalStepConfig) this.config).p200251.value).intValue() == 0) {
                            pos3 = carPosC.center;
                            pos4 = carPosC.lastCenter;
                        } else {
                            pos3 = carPosC.wheelRightFront;
                            pos4 = carPosC.wheelRightFrontLast;
                        }
                        K3CollisionModel k3CollisionModel = bianDaoResult.leftLine;
                        Pos pos5 = bianDaoResult.leftStart;
                        Pos pos6 = bianDaoResult.leftEnd;
                        checkCrossLine(eVar, k3CollisionModel, pos5, pos6, pos3, pos4);
                    }
                    if (!this.isCrossLine && !eVar.d().j(light)) {
                        this.hasDeduct = true;
                        return false;
                    }
                }
            } else if (hpGlobalChecker.turningRight) {
                CarModel carModelD2 = eVar.d();
                Light light2 = Light.TurnRightLight;
                if (carModelD2.j(light2)) {
                    this.hasLightOn = true;
                }
                if (this.hasLightOn && !this.hasDeduct && !this.isCrossLine) {
                    BianDaoResult bianDaoResult2 = globalStateData.hpGlobalChecker.hpBianDaoChecker.bianDaoResult;
                    if (bianDaoResult2 != null && bianDaoResult2.rightLine != null) {
                        if (((Integer) ((K3GlobalStepConfig) this.config).p200251.value).intValue() == 0) {
                            pos = carPosC.center;
                            pos2 = carPosC.lastCenter;
                        } else {
                            pos = carPosC.wheelLeftFront;
                            pos2 = carPosC.wheelLeftFrontLast;
                        }
                        K3CollisionModel k3CollisionModel2 = bianDaoResult2.rightLine;
                        Pos pos7 = bianDaoResult2.rightStart;
                        Pos pos8 = bianDaoResult2.rightEnd;
                        checkCrossLine(eVar, k3CollisionModel2, pos7, pos8, pos, pos2);
                    }
                    if (!this.isCrossLine && !eVar.d().j(light2)) {
                        this.hasDeduct = true;
                        return false;
                    }
                }
            } else {
                this.hasDeduct = false;
                this.hasLightOn = false;
                this.isCrossLine = false;
            }
        }
        return true;
    }

    public boolean isStraightLine(K3CollisionModel k3CollisionModel) {
        if (k3CollisionModel instanceof j) {
            return !((j) k3CollisionModel).j;
        }
        if (k3CollisionModel instanceof i) {
            return !((i) k3CollisionModel).f3917h;
        }
        return false;
    }
}
