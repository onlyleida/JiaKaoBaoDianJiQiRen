package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.h;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class JudgeLineTurnLightChecker {
    public h judgeLineCollisionModel;
    public long leftLightMaxTime = 0;
    public long rightLightMaxTime = 0;
    public long leftLightSumTime = 0;
    public long rightLightSumTime = 0;
    public long leftLightStartTime = 0;
    public long rightLightStartTime = 0;
    public boolean isJudgeFrame = false;

    public JudgeLineTurnLightChecker() {
        reset();
    }

    public void check(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            K3CollisionModel k3CollisionModelCheckPressLine = K3CollisionManager.getInstance().checkPressLine(eVar, examProcessor, true, PressLineType.PressJudgeLine);
            if (k3CollisionModelCheckPressLine instanceof h) {
                h hVar = (h) k3CollisionModelCheckPressLine;
                if (cn.mucang.android.jiakaoyi.k3collect.collision.b.a(hVar.f3912f, 10) && this.judgeLineCollisionModel != k3CollisionModelCheckPressLine) {
                    this.judgeLineCollisionModel = hVar;
                    reset();
                }
            }
            if (this.isJudgeFrame) {
                this.isJudgeFrame = false;
                this.judgeLineCollisionModel = null;
                reset();
            }
            h hVar2 = this.judgeLineCollisionModel;
            if (hVar2 != null) {
                if (hVar2.c(eVar, K3CollisionModel.TriggerType.BodyPressDottedLine)) {
                    this.isJudgeFrame = true;
                }
                CarModel carModelD = eVar.d();
                Light light = Light.TurnLeftLight;
                if (carModelD.j(light)) {
                    if (this.leftLightStartTime == 0) {
                        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(light);
                        if (cVarC != null) {
                            this.leftLightStartTime = cVarC.f5251a;
                        } else {
                            this.leftLightStartTime = eVar.d().L;
                        }
                    }
                    this.leftLightMaxTime = Math.max(eVar.d().L - this.leftLightStartTime, this.leftLightMaxTime);
                } else {
                    if (this.leftLightStartTime != 0) {
                        this.leftLightSumTime += eVar.d().L - this.leftLightStartTime;
                    }
                    this.leftLightStartTime = 0L;
                }
                if (!eVar.d().j(Light.TurnRightLight)) {
                    if (this.rightLightStartTime != 0) {
                        this.rightLightSumTime += eVar.d().L - this.rightLightStartTime;
                    }
                    this.rightLightStartTime = 0L;
                } else {
                    if (this.rightLightStartTime == 0) {
                        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC2 = eVar.b().c(light);
                        if (cVarC2 != null) {
                            this.rightLightStartTime = cVarC2.f5251a;
                        } else {
                            this.rightLightStartTime = eVar.d().L;
                        }
                    }
                    this.rightLightMaxTime = Math.max(eVar.d().L - this.rightLightStartTime, this.rightLightMaxTime);
                }
            }
        }
    }

    public long getLeftLightSumTime(e eVar) {
        return this.rightLightStartTime != 0 ? this.leftLightSumTime + (eVar.d().L - this.leftLightStartTime) : this.leftLightSumTime;
    }

    public long getRightLightSumTime(e eVar) {
        long j = this.rightLightSumTime;
        return j != 0 ? j + (eVar.d().L - this.rightLightStartTime) : j;
    }

    public boolean isPressStartLine() {
        return this.judgeLineCollisionModel != null;
    }

    public void reset() {
        this.leftLightMaxTime = 0L;
        this.rightLightMaxTime = 0L;
        this.leftLightStartTime = 0L;
        this.rightLightStartTime = 0L;
    }
}
