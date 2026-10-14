package cn.mucang.android.jiakaoyi.teachingk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.teachingk2.s0.e;
import cn.mucang.android.jiakaoyi.teachingk2.u0.a;

/* JADX INFO: loaded from: classes4.dex */
public class HuaLuStep1 extends a<e> {
    public HuaLuStep1(e eVar) {
        super(eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.u0.a
    protected void doFixed(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
    }

    public String stepName() {
        return Step.K2_ShiHuaLuMian.getStepName();
    }
}
