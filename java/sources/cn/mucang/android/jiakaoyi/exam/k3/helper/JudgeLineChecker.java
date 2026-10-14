package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.h;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class JudgeLineChecker {
    public h judgeLineCollisionModel;
    public boolean isBrakeDown = false;
    public boolean isLaBa = false;
    public long leftLightMaxTime = 0;
    public long rightLightMaxTime = 0;
    public long leftLightSumTime = 0;
    public long rightLightSumTime = 0;
    public long leftLightStartTime = 0;
    public long rightLightStartTime = 0;
    public boolean isJudgeFrame = false;

    public JudgeLineChecker() {
        reset();
    }

    public void check(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            K3CollisionModel k3CollisionModelCheckPressLine = K3CollisionManager.getInstance().checkPressLine(eVar, examProcessor, true, PressLineType.PressJudgeLine);
            if ((k3CollisionModelCheckPressLine instanceof h) && this.judgeLineCollisionModel != k3CollisionModelCheckPressLine) {
                this.judgeLineCollisionModel = (h) k3CollisionModelCheckPressLine;
                reset();
            }
            if (this.isJudgeFrame) {
                this.isJudgeFrame = false;
                this.judgeLineCollisionModel = null;
                reset();
            }
            h hVar = this.judgeLineCollisionModel;
            if (hVar != null) {
                if (hVar.c(eVar, K3CollisionModel.TriggerType.BodyPressDottedLine)) {
                    this.isJudgeFrame = true;
                }
                if (!this.isBrakeDown) {
                    this.isBrakeDown = eVar.d().f5269g;
                }
                if (!this.isLaBa) {
                    this.isLaBa = eVar.d().l;
                }
                if (eVar.d().j(Light.TurnLeftLight)) {
                    if (this.leftLightStartTime == 0) {
                        this.leftLightStartTime = examProcessor.i;
                    }
                    this.leftLightMaxTime = Math.max(examProcessor.i - this.leftLightStartTime, this.leftLightMaxTime);
                } else {
                    long j = this.leftLightStartTime;
                    if (j != 0) {
                        this.leftLightSumTime += examProcessor.i - j;
                    }
                    this.leftLightStartTime = 0L;
                }
                if (eVar.d().j(Light.TurnRightLight)) {
                    if (this.rightLightStartTime == 0) {
                        this.rightLightStartTime = examProcessor.i;
                    }
                    this.rightLightMaxTime = Math.max(examProcessor.i - this.rightLightStartTime, this.rightLightMaxTime);
                } else {
                    long j2 = this.rightLightStartTime;
                    if (j2 != 0) {
                        this.rightLightSumTime += examProcessor.i - j2;
                    }
                    this.rightLightStartTime = 0L;
                }
            }
        }
    }

    public void reset() {
        this.isBrakeDown = false;
        this.isLaBa = false;
        this.leftLightMaxTime = 0L;
        this.rightLightMaxTime = 0L;
        this.leftLightStartTime = 0L;
        this.rightLightStartTime = 0L;
    }
}
