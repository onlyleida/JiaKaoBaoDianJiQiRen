package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301101_Event extends d<K2DaoCheRuKuConfig> {
    private boolean hasLeaveLine;
    private boolean leaveSideLine;
    private b yaxianChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_DaoCheRuKu_301101_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.hasLeaveLine = false;
        this.leaveSideLine = true;
        this.yaxianChecker = new b(((Integer) ((K2DaoCheRuKuConfig) this.config).p402143.value).intValue());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return ((DaoKuChecker) ((cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f()).f3279a).h(-1, eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        if (!this.hasLeaveLine) {
            C c = bVar2.f3279a;
            if (((DaoKuChecker) c).r == SubStep.Step1 && ((DaoKuChecker) c).u0 == DaoKuChecker.StartByLine.Line18) {
                if (((DaoKuChecker) c).w0) {
                    this.hasLeaveLine = true;
                }
                return true;
            }
        }
        if (((DaoKuChecker) bVar2.f3279a).r == SubStep.Step7 && !((Boolean) ((K2DaoCheRuKuConfig) this.config).p402123.value).booleanValue() && ((DaoKuChecker) bVar2.f3279a).t) {
            return true;
        }
        if (((DaoKuChecker) bVar2.f3279a).s) {
            if (this.leaveSideLine && !this.yaxianChecker.e()) {
                this.yaxianChecker.g();
            }
            if (this.yaxianChecker.d()) {
                this.yaxianChecker.b();
                this.leaveSideLine = false;
                return false;
            }
        } else {
            this.leaveSideLine = true;
            this.yaxianChecker.b();
        }
        return true;
    }
}
