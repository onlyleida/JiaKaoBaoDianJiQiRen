package cn.mucang.android.jiakaoyi.examk2.rule.quka;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.config.K2QuKaConfig;
import cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.g;

/* JADX INFO: loaded from: classes2.dex */
public class K2_QuKa_307801_Event extends TeachBaseDeduct<K2QuKaConfig, g> {
    public K2_QuKa_307801_Event(K2QuKaConfig k2QuKaConfig, Deduct deduct) {
        super(k2QuKaConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    protected int wheel() {
        return Wheel.RightFront.wheel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    public boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, b bVar, g gVar) {
        return gVar.t != Wheel.RightFront;
    }
}
