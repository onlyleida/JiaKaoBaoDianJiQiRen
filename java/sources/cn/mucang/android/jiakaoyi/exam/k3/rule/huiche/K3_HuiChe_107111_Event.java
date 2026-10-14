package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuiCheStepData;
import cn.mucang.android.jiakaoyi.k3collect.collision.c.a;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_107111_Event extends d<K3HuiCheStepConfig> {
    public K3_HuiChe_107111_Event(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        HuiCheStepData huiCheStepData;
        TwoSideOffsetResult twoSideOffsetResult;
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar) || (twoSideOffsetResult = (huiCheStepData = (HuiCheStepData) bVar.f()).zhiXianOffset) == null) {
            return true;
        }
        if (twoSideOffsetResult.rightLine != null) {
            double d2 = huiCheStepData.rightDis;
            if (Math.abs(d2 - ((double) a.b)) > 0.001d && d2 < ((Integer) ((K3HuiCheStepConfig) this.config).p207128.value).intValue()) {
                return false;
            }
        }
        if (twoSideOffsetResult.leftLine == null) {
            return true;
        }
        double d3 = huiCheStepData.leftDis;
        return Math.abs(d3 - ((double) a.b)) <= 0.001d || d3 >= ((double) ((Integer) ((K3HuiCheStepConfig) this.config).p207129.value).intValue());
    }
}
