package cn.mucang.android.jiakaoyi.examk2.rule.zhailudiaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.k;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhaiLuDiaoTou_309801_Event extends TeachBaseDeduct<K2ZhaiLuDiaoTouConfig, k> {
    public K2_ZhaiLuDiaoTou_309801_Event(K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig, Deduct deduct) {
        super(k2ZhaiLuDiaoTouConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    protected int wheel() {
        return Wheel.RightFront.wheel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    public boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, b bVar, k kVar) {
        return kVar.z != Wheel.RightFront;
    }
}
