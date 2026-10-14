package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301102_Event extends d<K2DaoCheRuKuConfig> {
    private boolean is135Deduct;
    private boolean is144Deduct;
    private boolean is145Deduct;

    public K2_DaoCheRuKu_301102_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.is135Deduct = false;
        this.is144Deduct = false;
        this.is145Deduct = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        C c = bVar2.f3279a;
        if (!((DaoKuChecker) c).e0) {
            return false;
        }
        if (((DaoKuChecker) c).p0) {
            ((DaoKuChecker) c).p0 = false;
            return false;
        }
        if (!((DaoKuChecker) c).f0) {
            return false;
        }
        if (((DaoKuChecker) c).r == SubStep.Step7 && !((Boolean) ((K2DaoCheRuKuConfig) this.config).p402123.value).booleanValue()) {
            return true;
        }
        if (((Boolean) ((K2DaoCheRuKuConfig) this.config).p402123.value).booleanValue() && bVar.j() && !((DaoKuChecker) bVar2.f3279a).c) {
            return false;
        }
        if (!this.is135Deduct && ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402135.value).booleanValue() && ((DaoKuChecker) bVar2.f3279a).K) {
            this.is135Deduct = true;
            return false;
        }
        if (!this.is144Deduct && ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402144.value).booleanValue()) {
            C c2 = bVar2.f3279a;
            if (((DaoKuChecker) c2).L != null && ((DaoKuChecker) c2).L.booleanValue()) {
                this.is144Deduct = true;
                return false;
            }
        }
        if (this.is145Deduct || !((Boolean) ((K2DaoCheRuKuConfig) this.config).p402145.value).booleanValue() || !((DaoKuChecker) bVar2.f3279a).g0) {
            return true;
        }
        this.is145Deduct = true;
        return false;
    }
}
