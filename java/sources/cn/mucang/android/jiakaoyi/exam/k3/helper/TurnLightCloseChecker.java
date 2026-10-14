package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class TurnLightCloseChecker {
    private final long checkTime;
    private long startTime = -1;
    private CheckLight checkLight = CheckLight.None;

    public enum CheckLight {
        LeftLight,
        RightLight,
        None
    }

    public TurnLightCloseChecker(long j) {
        this.checkTime = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean check(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, GlobalStateData.State state) {
        boolean z;
        if (this.checkTime <= 0) {
            return true;
        }
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVarT = examProcessor.t(Step.K3_LuKouYouZhuan);
        if (bVarT != null) {
            YouZhuanStateData.State state2 = ((YouZhuanStateData) bVarT.f()).state;
            if (state2 == YouZhuanStateData.State.Turning) {
                this.startTime = -1L;
                this.checkLight = CheckLight.RightLight;
            } else if (state2 == YouZhuanStateData.State.TurningEND && this.startTime == -1) {
                this.startTime = eVar.d().L;
            }
            z = false;
        } else {
            z = true;
        }
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVarT2 = examProcessor.t(Step.K3_LuKouZuoZhuan);
        if (bVarT2 != null) {
            ZuoZhuanStateData.State state3 = ((ZuoZhuanStateData) bVarT2.f()).state;
            if (state3 == ZuoZhuanStateData.State.Turning) {
                this.startTime = -1L;
                this.checkLight = CheckLight.LeftLight;
            } else if (state3 == ZuoZhuanStateData.State.TurningEND && this.startTime == -1) {
                this.startTime = eVar.d().L;
            }
            z = false;
        }
        Step step = Step.K3_DiaoTou;
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVarT3 = examProcessor.t(step);
        if (bVarT3 != null) {
            DiaoTouStateData.State state4 = ((DiaoTouStateData) bVarT3.f()).state;
            if (state4 == DiaoTouStateData.State.diaotou) {
                if (((Integer) ((K3DiaoTouStepConfig) examProcessor.f3104a.m.getConfig(step)).p210135.value).intValue() == 0) {
                    this.startTime = -1L;
                    this.checkLight = CheckLight.LeftLight;
                } else {
                    this.startTime = -1L;
                    this.checkLight = CheckLight.RightLight;
                }
            } else if (state4 == DiaoTouStateData.State.after && this.startTime == -1) {
                this.startTime = eVar.d().L;
            }
            z = false;
        }
        if (z) {
            if (state == GlobalStateData.State.turnLeft) {
                this.startTime = -1L;
                this.checkLight = CheckLight.LeftLight;
            } else if (state == GlobalStateData.State.turnRight) {
                this.startTime = -1L;
                this.checkLight = CheckLight.RightLight;
            } else if (state == GlobalStateData.State.after && this.startTime == -1) {
                this.startTime = eVar.d().L;
            }
        }
        if (this.startTime != -1) {
            if (this.checkLight == CheckLight.LeftLight && !eVar.d().j(Light.TurnLeftLight)) {
                this.startTime = -1L;
                this.checkLight = CheckLight.None;
            } else if (this.checkLight != CheckLight.RightLight || eVar.d().j(Light.TurnRightLight)) {
                CheckLight checkLight = this.checkLight;
                CheckLight checkLight2 = CheckLight.None;
                if (checkLight != checkLight2 && eVar.d().L - this.startTime > this.checkTime) {
                    this.startTime = -1L;
                    this.checkLight = checkLight2;
                    return false;
                }
            } else {
                this.startTime = -1L;
                this.checkLight = CheckLight.None;
            }
        }
        return true;
    }
}
