package cn.mucang.android.jiakaoyi.exam.k3.rule.qibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K3_QiBu_103111_Event extends d<K3QiBuStepConfig> {
    private boolean hasHonk;

    public K3_QiBu_103111_Event(K3QiBuStepConfig k3QiBuStepConfig, Deduct deduct) {
        super(k3QiBuStepConfig, deduct);
        this.hasHonk = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3QiBuStepConfig) this.config).p203110.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean zC;
        if (eVar.d().l) {
            this.hasHonk = true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            zC = eVar.d().F == CarModel.Direction.Forward;
        } else {
            zC = eVar.d().c();
        }
        byte b = eVar.d().M;
        if (!zC) {
            return true;
        }
        setDoNotExecute(true);
        return this.hasHonk;
    }
}
