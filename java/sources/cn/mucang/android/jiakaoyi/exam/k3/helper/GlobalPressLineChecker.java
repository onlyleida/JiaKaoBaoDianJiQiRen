package cn.mucang.android.jiakaoyi.exam.k3.helper;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalPressLineChecker {
    public long pressDashLineTime = 0;
    public long pressFullLineTime = 0;

    public static class PressLineInfo {
        public boolean pressDashedLine;
        public boolean pressFullLine;
        public long pressDashLineTime = 0;
        public long pressFullLineTime = 0;
    }

    public PressLineInfo check(e eVar, ExamProcessor examProcessor) {
        boolean z = true;
        boolean z2 = K3CollisionManager.getInstance().isPressLine(eVar, null, true, PressLineType.PressDashLine) || K3CollisionManager.getInstance().isPressLine(eVar, null, true, PressLineType.PressCenterDashLine) || K3CollisionManager.getInstance().isPressLine(eVar, null, true, PressLineType.PressNonMotorVehicleDashLine);
        if (!K3CollisionManager.getInstance().isPressLine(eVar, null, true, PressLineType.PressFullLine) && !K3CollisionManager.getInstance().isPressLine(eVar, null, true, PressLineType.PressNonMotorVehicleLine)) {
            z = false;
        }
        if (!z2) {
            this.pressDashLineTime = 0L;
        } else if (this.pressDashLineTime == 0) {
            this.pressDashLineTime = SystemClock.elapsedRealtime();
        }
        if (!z) {
            this.pressFullLineTime = 0L;
        } else if (this.pressFullLineTime == 0) {
            this.pressFullLineTime = SystemClock.elapsedRealtime();
        }
        PressLineInfo pressLineInfo = new PressLineInfo();
        pressLineInfo.pressDashedLine = z2;
        pressLineInfo.pressFullLine = z;
        pressLineInfo.pressDashLineTime = this.pressDashLineTime;
        pressLineInfo.pressFullLineTime = this.pressFullLineTime;
        return pressLineInfo;
    }
}
