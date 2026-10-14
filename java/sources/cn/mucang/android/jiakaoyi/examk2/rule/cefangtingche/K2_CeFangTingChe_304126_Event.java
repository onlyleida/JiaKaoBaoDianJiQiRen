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
public class K2_CeFangTingChe_304126_Event extends d<K2CeFangTingCheConfig> {
    private boolean hasDeduct;
    private final b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_CeFangTingChe_304126_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
        this.timeoutChecker = new b(((Integer) ((K2CeFangTingCheConfig) this.config).p406108.value).intValue() * 1000);
        this.hasDeduct = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return ((cn.mucang.android.jiakaoyi.examk2.collision.b) ((a) bVar.f()).f3279a).h(-1, eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        a aVar = (a) bVar.f();
        if (aVar.c) {
            return true;
        }
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step4) {
            setDoNotExecute(true);
            this.timeoutChecker.b();
            if (((Integer) ((K2CeFangTingCheConfig) this.config).p406156.value).intValue() == 1 && this.hasDeduct) {
                this.hasDeduct = false;
                C c = aVar.f3279a;
                ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).o).k;
                return false;
            }
        }
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).r == SubStep.Step3) {
            if (eVar.d().c()) {
                if (eVar.d().c() && eVar.d().m.isBack()) {
                    this.hasDeduct = false;
                    this.timeoutChecker.b();
                }
            } else if (((cn.mucang.android.jiakaoyi.examk2.collision.b) aVar.f3279a).v) {
                if (!this.timeoutChecker.e()) {
                    this.timeoutChecker.g();
                }
                if (this.timeoutChecker.d()) {
                    this.hasDeduct = true;
                    this.timeoutChecker.b();
                }
                if (((Integer) ((K2CeFangTingCheConfig) this.config).p406156.value).intValue() == 0 && this.hasDeduct) {
                    this.hasDeduct = false;
                    setDoNotExecute(true);
                    C c2 = aVar.f3279a;
                    ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).m = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) ((cn.mucang.android.jiakaoyi.examk2.collision.b) c2).o).k;
                    return false;
                }
            }
        }
        return true;
    }
}
