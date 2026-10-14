package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineTurnLightChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.QiangZhiLing;
import cn.mucang.android.jiakaoyi.exam.k3.helper.RunOverBanMaLineChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.c;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_108100_Event extends d<K3LuKouZuoZhuanStepConfig> {
    private boolean hasOn;
    private boolean hasQiang;
    private boolean lightSuccessOnce;
    private RunOverBanMaLineChecker runOverBanMaLineChecker;

    public K3_LuKouZuoZhuan_108100_Event(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig, Deduct deduct) {
        super(k3LuKouZuoZhuanStepConfig, deduct);
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
        ZuoZhuanStateData zuoZhuanStateData = (ZuoZhuanStateData) bVar.f();
        c cVarB = eVar.b();
        Light light = Light.TurnLeftLight;
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = cVarB.c(light);
        if (!((Boolean) ((K3LuKouZuoZhuanStepConfig) this.config).p208106.value).booleanValue() && !this.hasQiang && cVarC != null) {
            long j = cVarC.f5251a;
            if (j > 0 && j < zuoZhuanStateData.startTime) {
                QiangZhiLing.isQiang = true;
                this.hasQiang = true;
            }
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3LuKouZuoZhuanStepConfig) this.config).p208131.value).booleanValue()) {
            JudgeLineTurnLightChecker judgeLineTurnLightChecker = zuoZhuanStateData.turnLightChecker;
            if (!judgeLineTurnLightChecker.isJudgeFrame) {
                return true;
            }
            if (this.lightSuccessOnce) {
                return judgeLineTurnLightChecker.leftLightMaxTime > 0;
            }
            return eVar.d().j(light);
        }
        boolean zJ = eVar.d().j(light);
        if (zJ) {
            this.hasOn = true;
        }
        int iIntValue = ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208107.value).intValue();
        if (iIntValue == 0) {
            if (zuoZhuanStateData.state == ZuoZhuanStateData.State.Turning) {
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
