package cn.mucang.android.jiakaoyi.exam.k3.rule.huandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuanDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuanDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineTurnLightChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuanDao_124102_Event extends d<K3HuanDaoStepConfig> {
    private boolean hasLightOn;

    public K3_HuanDao_124102_Event(K3HuanDaoStepConfig k3HuanDaoStepConfig, Deduct deduct) {
        super(k3HuanDaoStepConfig, deduct);
        this.hasLightOn = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Boolean) ((K3HuanDaoStepConfig) this.config).p224104.value).booleanValue()) {
            if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3HuanDaoStepConfig) this.config).p224116.value).booleanValue()) {
                HuanDaoStateData huanDaoStateData = (HuanDaoStateData) bVar.f();
                JudgeLineTurnLightChecker judgeLineTurnLightChecker = huanDaoStateData.turnLightChecker;
                return !judgeLineTurnLightChecker.isJudgeFrame || judgeLineTurnLightChecker.rightLightStartTime <= 0 || eVar.d().L - huanDaoStateData.turnLightChecker.rightLightStartTime > ((long) (((Integer) ((K3HuanDaoStepConfig) this.config).p224105.value).intValue() * 1000));
            }
            if (this.hasLightOn && bVar.j()) {
                return false;
            }
            CarModel carModelD = eVar.d();
            Light light = Light.TurnRightLight;
            if (carModelD.j(light)) {
                this.hasLightOn = true;
            }
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = eVar.b().c(light);
            if (cVarC != null && cVarC.f5252d >= ((Integer) ((K3HuanDaoStepConfig) this.config).p224105.value).intValue() * 1000) {
                setDoNotExecute(true);
            }
        }
        return true;
    }
}
