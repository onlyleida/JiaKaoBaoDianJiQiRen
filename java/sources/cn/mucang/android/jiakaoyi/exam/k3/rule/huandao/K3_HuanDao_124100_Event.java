package cn.mucang.android.jiakaoyi.exam.k3.rule.huandao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuanDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuanDaoStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuanDao_124100_Event extends d<K3HuanDaoStepConfig> {
    public K3_HuanDao_124100_Event(K3HuanDaoStepConfig k3HuanDaoStepConfig, Deduct deduct) {
        super(k3HuanDaoStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((Boolean) ((K3HuanDaoStepConfig) this.config).p224104.value).booleanValue()) {
            if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3HuanDaoStepConfig) this.config).p224116.value).booleanValue()) {
                if (((HuanDaoStateData) bVar.f()).turnLightChecker.isJudgeFrame) {
                    return eVar.d().j(Light.TurnRightLight);
                }
                return true;
            }
            if (eVar.d().j(Light.TurnRightLight)) {
                setDoNotExecute(true);
                return true;
            }
            if (bVar.j()) {
                return false;
            }
        }
        return true;
    }
}
