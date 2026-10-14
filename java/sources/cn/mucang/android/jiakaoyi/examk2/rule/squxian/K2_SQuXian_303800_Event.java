package cn.mucang.android.jiakaoyi.examk2.rule.squxian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.config.K2SQuXianStepConfig;
import cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.h;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SQuXian_303800_Event extends TeachBaseDeduct<K2SQuXianStepConfig, h> {
    public K2_SQuXian_303800_Event(K2SQuXianStepConfig k2SQuXianStepConfig, Deduct deduct) {
        super(k2SQuXianStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    protected int wheel() {
        return Wheel.LeftFront.wheel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    public boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, b bVar, h hVar) {
        return hVar.t != Wheel.LeftFront;
    }
}
