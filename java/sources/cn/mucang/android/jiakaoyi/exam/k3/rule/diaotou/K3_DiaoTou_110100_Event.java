package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineTurnLightChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.QiangZhiLing;
import cn.mucang.android.jiakaoyi.exam.k3.helper.RunOverBanMaLineChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110100_Event extends d<K3DiaoTouStepConfig> {
    private boolean hasOn;
    private boolean hasQiang;
    private boolean lightSuccessOnce;
    private RunOverBanMaLineChecker runOverBanMaLineChecker;

    public K3_DiaoTou_110100_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
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
        DiaoTouStateData diaoTouStateData = (DiaoTouStateData) bVar.f();
        Light light = Light.TurnLeftLight;
        Light light2 = !diaoTouStateData.isLeftDiaoTou ? Light.TurnRightLight : light;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(light2);
        if (!((Boolean) ((K3DiaoTouStepConfig) this.config).p210106.value).booleanValue() && !this.hasQiang && cVarC != null) {
            long j = cVarC.f5251a;
            if (j > 0 && j < diaoTouStateData.startTime) {
                QiangZhiLing.isQiang = true;
                this.hasQiang = true;
            }
        }
        if (((Boolean) ((K3DiaoTouStepConfig) this.config).p210132.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            JudgeLineTurnLightChecker judgeLineTurnLightChecker = diaoTouStateData.turnLightChecker;
            if (!judgeLineTurnLightChecker.isJudgeFrame) {
                return true;
            }
            if (!this.lightSuccessOnce) {
                return eVar.d().j(light2);
            }
            if (light2 == light) {
                return judgeLineTurnLightChecker.leftLightMaxTime > 0;
            }
            return judgeLineTurnLightChecker.rightLightMaxTime > 0;
        }
        boolean zJ = eVar.d().j(light2);
        if (zJ) {
            this.hasOn = true;
        }
        int iIntValue = ((Integer) ((K3DiaoTouStepConfig) this.config).p210107.value).intValue();
        if (iIntValue == 0) {
            if (diaoTouStateData.state == DiaoTouStateData.State.diaotou) {
                setDoNotExecute(true);
                return this.lightSuccessOnce ? this.hasOn : zJ;
            }
        } else if (iIntValue == 1) {
            if (bVar.j()) {
                setDoNotExecute(true);
                return this.hasOn;
            }
        } else if (iIntValue == 2) {
            if (this.runOverBanMaLineChecker == null) {
                this.runOverBanMaLineChecker = new RunOverBanMaLineChecker();
            }
            if (this.runOverBanMaLineChecker.check(eVar, examProcessor)) {
                setDoNotExecute(true);
                return this.hasOn;
            }
        }
        return true;
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
