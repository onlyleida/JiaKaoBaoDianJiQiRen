package cn.mucang.android.jiakaoyi.exam.k3.rule.gongqiao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GongQiaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GongQiaoStateData;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.h;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_GongQiao_120100_Event extends d<K3GongQiaoStepConfig> {
    public boolean isPressEndLine;
    public h judgeLineCollisionModel;

    public K3_GongQiao_120100_Event(K3GongQiaoStepConfig k3GongQiaoStepConfig, Deduct deduct) {
        super(k3GongQiaoStepConfig, deduct);
        this.isPressEndLine = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!((Boolean) ((K3GongQiaoStepConfig) this.config).p220103.value).booleanValue()) {
            return true;
        }
        if (!((Boolean) ((K3GongQiaoStepConfig) this.config).p220116.value).booleanValue() || !K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (!eVar.d().l) {
                return !bVar.j();
            }
            setDoNotExecute(true);
            return true;
        }
        GongQiaoStateData gongQiaoStateData = (GongQiaoStateData) bVar.f();
        if (gongQiaoStateData.labaChecker.isJudgeFrame || (bVar.j() && gongQiaoStateData.labaChecker.isPressStartLine())) {
            return gongQiaoStateData.labaChecker.isLaBa;
        }
        return true;
    }
}
