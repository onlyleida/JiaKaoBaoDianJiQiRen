package cn.mucang.android.jiakaoyi.teachingk2.rule.quka;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.g;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.f;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_QuKa_20001_Event extends d<SimpleTeachingConfig> {
    public Teach_QuKa_20001_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((g) ((f) bVar.f()).f8776a).h(-1, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return !((g) ((f) bVar.f()).f8776a).s;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
