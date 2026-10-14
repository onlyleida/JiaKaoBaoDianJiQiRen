package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301103_Event extends d<K2DaoCheRuKuConfig> {
    private boolean hasDeduct;
    private final b timeoutChecker;

    public K2_DaoCheRuKu_301103_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.timeoutChecker = new b(1000L);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return ((DaoKuChecker) ((cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f()).f3279a).h(-1, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        C c = ((cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f()).f3279a;
        boolean z = !((DaoKuChecker) c).f3695f;
        if (!((DaoKuChecker) c).u) {
            this.hasDeduct = false;
            this.timeoutChecker.b();
        } else if (this.timeoutChecker.e()) {
            if (this.timeoutChecker.d()) {
                this.timeoutChecker.b();
                this.hasDeduct = true;
                return false;
            }
        } else if (z && !this.hasDeduct) {
            this.timeoutChecker.g();
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
