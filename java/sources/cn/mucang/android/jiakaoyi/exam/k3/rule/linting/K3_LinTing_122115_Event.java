package cn.mucang.android.jiakaoyi.exam.k3.rule.linting;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.LinTingStepData;
import cn.mucang.android.jiakaoyi.k3collect.collision.c.a;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LinTing_122115_Event extends d<K3LinTingStepConfig> {
    private int count;

    public K3_LinTing_122115_Event(K3LinTingStepConfig k3LinTingStepConfig, Deduct deduct) {
        super(k3LinTingStepConfig, deduct);
        this.count = 0;
    }

    private boolean handleFail(LinTingStepData linTingStepData) {
        setDoNotExecute(true);
        linTingStepData.hasDetectSide = true;
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().f5268f) {
            return true;
        }
        LinTingStepData linTingStepData = (LinTingStepData) bVar.f();
        if (!linTingStepData.hasDetectSide && linTingStepData.state == LinTingStepData.State.Stopped) {
            double d2 = linTingStepData.distance;
            double d3 = K3CollisionManager.getInstance().hasHpCollision(eVar) ? 1.0d : 3.0d;
            if (d2 != -1000.0d && d2 != a.b) {
                if (d2 > d3 + 50.0d) {
                    this.count++;
                } else {
                    this.count = 0;
                }
                if (this.count >= 2) {
                    return handleFail(linTingStepData);
                }
            }
        }
        return true;
    }
}
