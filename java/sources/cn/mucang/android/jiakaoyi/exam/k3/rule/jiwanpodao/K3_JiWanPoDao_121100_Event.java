package cn.mucang.android.jiakaoyi.exam.k3.rule.jiwanpodao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiWanPoDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.JiWanPoDaoStateData;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.h;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JiWanPoDao_121100_Event extends d<K3JiWanPoDaoStepConfig> {
    public boolean isPressEndLine;
    public h judgeLineCollisionModel;

    public K3_JiWanPoDao_121100_Event(K3JiWanPoDaoStepConfig k3JiWanPoDaoStepConfig, Deduct deduct) {
        super(k3JiWanPoDaoStepConfig, deduct);
        this.isPressEndLine = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3JiWanPoDaoStepConfig) this.config).p221103.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!((Boolean) ((K3JiWanPoDaoStepConfig) this.config).p221115.value).booleanValue() || !K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (!eVar.d().l) {
                return !bVar.j();
            }
            setDoNotExecute(true);
            return true;
        }
        JiWanPoDaoStateData jiWanPoDaoStateData = (JiWanPoDaoStateData) bVar.f();
        if (jiWanPoDaoStateData.labaChecker.isJudgeFrame || (bVar.j() && jiWanPoDaoStateData.labaChecker.isPressStartLine())) {
            return jiWanPoDaoStateData.labaChecker.isLaBa;
        }
        return true;
    }
}
