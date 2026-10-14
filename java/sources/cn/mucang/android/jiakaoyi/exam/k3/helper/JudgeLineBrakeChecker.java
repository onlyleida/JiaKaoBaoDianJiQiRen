package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.h;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class JudgeLineBrakeChecker {
    private FootBrakeValidChecker brakeValidChecker;
    private boolean isOverSpeed;
    private h judgeLineCollisionModel;
    private final float judgeSpeed;
    private boolean isBrakeDown = false;
    private boolean isJudgeFrame = false;
    private boolean isValidBrakeOn = false;

    public JudgeLineBrakeChecker(float f2) {
        this.judgeSpeed = f2;
        reset();
    }

    public void check(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (!this.isOverSpeed && eVar.d().b > this.judgeSpeed) {
            this.isOverSpeed = true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            K3CollisionModel k3CollisionModelCheckPressLine = K3CollisionManager.getInstance().checkPressLine(eVar, examProcessor, true, PressLineType.PressJudgeLine);
            if (k3CollisionModelCheckPressLine instanceof h) {
                h hVar = (h) k3CollisionModelCheckPressLine;
                if (cn.mucang.android.jiakaoyi.k3collect.collision.b.a(hVar.f3912f, 11) && this.judgeLineCollisionModel == null) {
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
                if (this.brakeValidChecker == null) {
                    this.brakeValidChecker = new FootBrakeValidChecker((K3GlobalStepConfig) examProcessor.r(Step.K3_Global));
                }
                boolean zCheck = this.brakeValidChecker.check(eVar);
                this.isValidBrakeOn = zCheck;
                if (this.isBrakeDown || !zCheck) {
                    return;
                }
                this.isBrakeDown = true;
                this.brakeValidChecker = null;
            }
        }
    }

    public boolean isPressStartLine() {
        return this.judgeLineCollisionModel != null;
    }

    public boolean judgeDeduct(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (!this.isOverSpeed) {
            return true;
        }
        if (this.isJudgeFrame || (bVar.j() && isPressStartLine())) {
            return this.isBrakeDown;
        }
        return true;
    }

    public void reset() {
        this.isBrakeDown = false;
        this.isOverSpeed = false;
    }
}
