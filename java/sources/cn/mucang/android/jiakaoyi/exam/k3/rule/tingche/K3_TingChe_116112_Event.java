package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.k3collect.collision.c.a;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116112_Event extends d<K3TingCheStepConfig> {
    private int count;

    public K3_TingChe_116112_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.count = 0;
    }

    private boolean handleFail(TingCheStepData tingCheStepData) {
        setDoNotExecute(true);
        tingCheStepData.hasDetectSide = true;
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
        if (!tingCheStepData.hasDetectSide && tingCheStepData.startJudgeDistance) {
            double d2 = tingCheStepData.distance;
            double d3 = K3CollisionManager.getInstance().hasHpCollision(eVar) ? 1.0d : 3.0d;
            if (d2 != -1000.0d && d2 != a.b) {
                if (d2 > d3 + 50.0d) {
                    this.count++;
                } else {
                    this.count = 0;
                }
                if (((Integer) ((K3TingCheStepConfig) this.config).p216123.value).intValue() == 3) {
                    if (this.count >= 1) {
                        return handleFail(tingCheStepData);
                    }
                } else if (this.count >= 2) {
                    return handleFail(tingCheStepData);
                }
            }
        }
        return true;
    }
}
