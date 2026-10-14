package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301114_Event extends d<K2DaoCheRuKuConfig> {
    public K2_DaoCheRuKu_301114_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2DaoCheRuKuConfig) this.config).p402141.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return !((DaoKuChecker) ((cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f()).f3279a).V;
    }
}
