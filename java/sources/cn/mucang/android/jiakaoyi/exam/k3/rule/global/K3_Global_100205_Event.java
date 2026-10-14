package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.utils.c;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100205_Event extends d<K3GlobalStepConfig> {
    private final cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d houLiuChecker;
    private boolean isStoped;
    private final c stopFilter;

    public K3_Global_100205_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.houLiuChecker = new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d();
        this.isStoped = false;
        this.stopFilter = new c(3);
    }

    private void reset() {
        this.houLiuChecker.b();
        this.stopFilter.b();
        this.isStoped = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.HouLiu)) {
            reset();
            return true;
        }
        if (examProcessor.y(Step.K3_QiBu)) {
            reset();
            return true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (this.stopFilter.a(eVar.d().F == CarModel.Direction.Stop)) {
                this.isStoped = true;
            }
            if (this.isStoped) {
                double dA = this.houLiuChecker.a(eVar);
                if (dA > ((Integer) ((K3GlobalStepConfig) this.config).p200200.value).intValue() && dA <= ((Integer) ((K3GlobalStepConfig) this.config).p200201.value).intValue()) {
                    return false;
                }
            }
            if (eVar.d().c() && eVar.d().F.isForward()) {
                reset();
            }
        }
        return true;
    }
}
