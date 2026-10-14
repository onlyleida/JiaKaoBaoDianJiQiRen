package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class RunOverBanMaLineChecker {
    private boolean isInit = false;
    private boolean lastPressLine = false;
    private boolean isRunOver = false;

    public boolean check(e eVar, ExamProcessor examProcessor) {
        boolean z = false;
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            return false;
        }
        if (eVar.d().h()) {
            boolean zIsPressLine = K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressBanMaLine);
            t.a("dsh", " pressLine " + zIsPressLine);
            if (!this.isInit) {
                this.isInit = true;
                this.lastPressLine = zIsPressLine;
                return false;
            }
            if (this.lastPressLine && !zIsPressLine) {
                z = true;
            }
            this.isRunOver = z;
            this.lastPressLine = zIsPressLine;
        }
        return this.isRunOver;
    }
}
