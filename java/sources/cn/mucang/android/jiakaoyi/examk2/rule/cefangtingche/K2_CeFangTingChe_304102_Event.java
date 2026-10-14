package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304102_Event extends d<K2CeFangTingCheConfig> {
    private final b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_CeFangTingChe_304102_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2CeFangTingCheConfig) this.config).p406144.value).intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2CeFangTingCheConfig) this.config).p406123.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return ((cn.mucang.android.jiakaoyi.examk2.collision.b) ((a) bVar.f()).f3279a).h(-1, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        a aVar = (a) bVar.f();
        C c = aVar.f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).r == SubStep.Step4 && ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).z) {
            this.timeoutChecker.g();
            if (this.timeoutChecker.d()) {
                aVar.f3274e = true;
                C c2 = aVar.f3279a;
                ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).r;
                return false;
            }
        } else {
            this.timeoutChecker.b();
        }
        return true;
    }
}
