package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.i;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302804_Event extends TeachBaseDeduct<K2ShangPoQiBuConfig, i> {
    public K2_ShangPoQiBu_302804_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    protected int wheel() {
        return Wheel.LeftBack.wheel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.jiakaoyi.examk2.rule.TeachBaseDeduct
    public boolean handleTeachSuccess(e eVar, ExamProcessor examProcessor, b bVar, i iVar) {
        return iVar.w != Wheel.LeftBack;
    }
}
