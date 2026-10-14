package cn.mucang.android.jiakaoyi.examk2.rule.etc;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.config.K2ETCConfig;
import cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.d;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ETC_313800_Event extends TeachBaseDeduct<K2ETCConfig, d> {
    public K2_ETC_313800_Event(K2ETCConfig k2ETCConfig, Deduct deduct) {
        super(k2ETCConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    protected int wheel() {
        return Wheel.LeftFront.wheel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    public boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, b bVar, d dVar) {
        return dVar.s != Wheel.LeftFront;
    }
}
