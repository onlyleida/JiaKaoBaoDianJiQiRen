package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.c;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301802_Event extends TeachBaseDeduct<K2DaoCheRuKuConfig, c> {
    public K2_DaoCheRuKu_301802_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    protected int wheel() {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    public boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, b bVar, c cVar) {
        return !cVar.x;
    }
}
