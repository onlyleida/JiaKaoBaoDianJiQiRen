package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.LeftRightLineCalHelper;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116130_Event extends d<K3TingCheStepConfig> {
    private final LeftRightLineCalHelper leftRightLineCalHelper;
    private long startTime;

    public K3_TingChe_116130_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.leftRightLineCalHelper = new LeftRightLineCalHelper();
        this.startTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3TingCheStepConfig) this.config).p216157.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().M == 3) {
            this.leftRightLineCalHelper.check(eVar, false, true);
            K3CollisionModel k3CollisionModel = this.leftRightLineCalHelper.rightLine;
            if (k3CollisionModel != null) {
                this.startTime = 0L;
                if (!(k3CollisionModel instanceof j)) {
                    setDoNotExecute(true);
                    return false;
                }
                j jVar = (j) k3CollisionModel;
                if (jVar.k || jVar.f3882a != 3) {
                    setDoNotExecute(true);
                    return false;
                }
            } else {
                if (this.startTime == 0) {
                    this.startTime = eVar.d().L;
                }
                if (eVar.d().L - this.startTime > 1000) {
                    setDoNotExecute(true);
                    return false;
                }
            }
        }
        return true;
    }
}
