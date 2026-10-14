package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouyouzhuan;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouYouZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineTurnLightChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.QiangZhiLing;
import cn.mucang.android.jiakaoyi.exam.k3.helper.RunOverBanMaLineChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouYouZhuan_109118_Event extends d<K3LuKouYouZhuanStepConfig> {
    private boolean hasOn;
    private boolean hasQiang;
    private long lightOnMaxTime;
    private boolean lightSuccessOnce;
    private final long minTime;
    private RunOverBanMaLineChecker runOverBanMaLineChecker;

    public K3_LuKouYouZhuan_109118_Event(K3LuKouYouZhuanStepConfig k3LuKouYouZhuanStepConfig, Deduct deduct) {
        super(k3LuKouYouZhuanStepConfig, deduct);
        this.minTime = 3000L;
        this.hasOn = false;
        this.hasQiang = false;
        this.runOverBanMaLineChecker = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!bVar.f3143f.f3086f) {
            setDoNotExecute(true);
            return true;
        }
        YouZhuanStateData youZhuanStateData = (YouZhuanStateData) bVar.f();
        c cVarB = eVar.b();
        Light light = Light.TurnRightLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        long j = cVarC != null ? cVarC.f5252d : 0L;
        if (!((Boolean) ((K3LuKouYouZhuanStepConfig) this.config).p209106.value).booleanValue() && !this.hasQiang && cVarC != null) {
            long j2 = cVarC.f5251a;
            if (j2 > 0 && j2 < youZhuanStateData.startTime) {
                QiangZhiLing.isQiang = true;
                this.hasQiang = true;
            }
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3LuKouYouZhuanStepConfig) this.config).p209131.value).booleanValue()) {
            JudgeLineTurnLightChecker judgeLineTurnLightChecker = youZhuanStateData.turnLightChecker;
            if (!judgeLineTurnLightChecker.isJudgeFrame) {
                return true;
            }
            if (this.lightSuccessOnce) {
                return judgeLineTurnLightChecker.rightLightMaxTime > 3000;
            }
            return judgeLineTurnLightChecker.rightLightStartTime <= 0 || eVar.d().L - youZhuanStateData.turnLightChecker.rightLightStartTime > 3000;
        }
        if (eVar.d().j(light)) {
            this.hasOn = true;
            if (cVarC != null) {
                this.lightOnMaxTime = Math.max(j, this.lightOnMaxTime);
            }
        }
        if (!this.hasOn) {
            return true;
        }
        int iIntValue = ((Integer) ((K3LuKouYouZhuanStepConfig) this.config).p209107.value).intValue();
        if (iIntValue == 0) {
            if (youZhuanStateData.state != YouZhuanStateData.State.Turning) {
                return true;
            }
            setDoNotExecute(true);
            if (this.lightSuccessOnce) {
                return this.lightOnMaxTime > 3000;
            }
            return j <= 0 || j > 3000;
        }
        if (iIntValue == 1) {
            if (!bVar.j()) {
                return true;
            }
            setDoNotExecute(true);
            return this.lightOnMaxTime > 3000;
        }
        if (iIntValue != 2) {
            return true;
        }
        if (this.runOverBanMaLineChecker == null) {
            this.runOverBanMaLineChecker = new RunOverBanMaLineChecker();
        }
        if (!this.runOverBanMaLineChecker.check(eVar, examProcessor)) {
            return true;
        }
        setDoNotExecute(true);
        return j <= 0 || j > 3000;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        BaseStepConfig baseStepConfigR = examProcessor.r(Step.K3_Global);
        Objects.requireNonNull(baseStepConfigR);
        this.lightSuccessOnce = ((Boolean) ((K3GlobalStepConfig) baseStepConfigR).p200151.value).booleanValue();
    }
}
