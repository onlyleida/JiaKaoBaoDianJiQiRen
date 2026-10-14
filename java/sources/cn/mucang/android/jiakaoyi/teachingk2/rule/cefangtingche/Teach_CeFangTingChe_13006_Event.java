package cn.mucang.android.jiakaoyi.teachingk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.a;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_CeFangTingChe_13006_Event extends d<SimpleTeachingConfig> {
    public Teach_CeFangTingChe_13006_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((cn.mucang.android.jiakaoyi.teachingk2.s0.b) ((a) bVar.f()).f8776a).h(Wheel.LeftFront.wheel, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((cn.mucang.android.jiakaoyi.teachingk2.s0.b) ((a) bVar.f()).f8776a).s != Wheel.LeftFront;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
