package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.l;
import cn.mucang.android.jiakaoyi.examk2.collision.h;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.f;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_312111_Event extends d<K2SuiDaoConfig> {
    public K2_SuiDao_312111_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        C c = ((l) bVar.f()).f3279a;
        return ((h) c).h(((h) c).C.wheel, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return !f.a(eVar.getCurrentPosition().f5282h) || ((h) ((l) bVar.f()).f3279a).C == Wheel.None;
    }
}
