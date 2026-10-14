package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.b;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304803_Event extends TeachBaseDeduct<K2CeFangTingCheConfig, b> {
    public K2_CeFangTingChe_304803_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    protected int wheel() {
        return Wheel.RightFront.wheel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    public boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, b bVar2) {
        return bVar2.s != Wheel.RightFront;
    }
}
