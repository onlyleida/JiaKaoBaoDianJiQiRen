package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301104_Event extends d<K2DaoCheRuKuConfig> {
    public K2_DaoCheRuKu_301104_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        C c = ((cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f()).f3279a;
        if (((DaoKuChecker) c).t0 != 0 && examProcessor.i - ((DaoKuChecker) c).t0 > ((Integer) ((K2DaoCheRuKuConfig) this.config).p402107.value).intValue() * 1000) {
            if (((Boolean) ((K2DaoCheRuKuConfig) this.config).p402142.value).booleanValue()) {
                setDoNotExecute(true);
                return false;
            }
            if (bVar.j()) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
