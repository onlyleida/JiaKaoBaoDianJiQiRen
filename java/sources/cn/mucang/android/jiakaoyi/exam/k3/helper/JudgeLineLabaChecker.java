package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.h;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class JudgeLineLabaChecker {
    public h judgeLineCollisionModel;
    public boolean isLaBa = false;
    public boolean isJudgeFrame = false;

    public JudgeLineLabaChecker() {
        reset();
    }

    public void check(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            K3CollisionModel k3CollisionModelCheckPressLine = K3CollisionManager.getInstance().checkPressLine(eVar, examProcessor, true, PressLineType.PressJudgeLine);
            if (k3CollisionModelCheckPressLine instanceof h) {
                h hVar = (h) k3CollisionModelCheckPressLine;
                if (cn.mucang.android.jiakaoyi.k3collect.collision.b.a(hVar.f3912f, 12) && this.judgeLineCollisionModel != k3CollisionModelCheckPressLine) {
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
                if (this.isLaBa) {
                    return;
                }
                this.isLaBa = eVar.d().l;
            }
        }
    }

    public boolean isPressStartLine() {
        return this.judgeLineCollisionModel != null;
    }

    public void reset() {
        this.isLaBa = false;
    }
}
