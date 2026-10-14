package cn.mucang.android.jiakaoyi.teachingk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.j;
import cn.mucang.android.jiakaoyi.teachingk2.u0.a;

/* JADX INFO: loaded from: classes4.dex */
public class SuiDaoStep1 extends a<j> {
    public SuiDaoStep1(j jVar) {
        super(jVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.u0.a
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
    }

    public String stepName() {
        return Step.K2_SuiDao.getStepName();
    }
}
