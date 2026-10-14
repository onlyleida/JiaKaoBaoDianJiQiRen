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
public class K2_DaoCheRuKu_301115_Event extends d<K2DaoCheRuKuConfig> {
    private long startTime;
    private int stopCount;

    public K2_DaoCheRuKu_301115_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.startTime = 0L;
        this.stopCount = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f();
        C c = bVar2.f3279a;
        if (!((DaoKuChecker) c).y || ((DaoKuChecker) c).H) {
            this.startTime = 0L;
            this.stopCount = 0;
        } else {
            if (!((DaoKuChecker) c).X && !((Boolean) ((K2DaoCheRuKuConfig) this.config).p402128.value).booleanValue() && ((DaoKuChecker) bVar2.f3279a).r == SubStep.Step1) {
                return true;
            }
            if (eVar.d().F.isStop()) {
                int i = this.stopCount + 1;
                this.stopCount = i;
                if (i > 2 && this.startTime == 0) {
                    this.startTime = examProcessor.i;
                }
            } else {
                long j = this.startTime;
                if (j != 0 && examProcessor.i - j < ((Integer) ((K2DaoCheRuKuConfig) this.config).p402120.value).intValue()) {
                    this.startTime = 0L;
                    this.stopCount = 0;
                    return false;
                }
                this.startTime = 0L;
                this.stopCount = 0;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
