package cn.mucang.android.jiakaoyi.teachingk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_ShiHuaLuMian_16003_Event extends d<SimpleTeachingConfig> {
    public Teach_ShiHuaLuMian_16003_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((cn.mucang.android.jiakaoyi.teachingk2.s0.e) ((cn.mucang.android.jiakaoyi.teachingk2.y0.b.d) bVar.f()).f8776a).h(Wheel.RightFront.wheel, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((cn.mucang.android.jiakaoyi.teachingk2.s0.e) ((cn.mucang.android.jiakaoyi.teachingk2.y0.b.d) bVar.f()).f8776a).t != Wheel.RightFront;
    }
}
