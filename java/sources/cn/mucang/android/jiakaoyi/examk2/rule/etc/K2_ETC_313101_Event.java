package cn.mucang.android.jiakaoyi.examk2.rule.etc;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.c;
import cn.mucang.android.jiakaoyi.examk2.config.K2ETCConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ETC_313101_Event extends d<K2ETCConfig> {
    public K2_ETC_313101_Event(K2ETCConfig k2ETCConfig, Deduct deduct) {
        super(k2ETCConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        C c = ((c) bVar.f()).f3279a;
        return ((cn.mucang.android.jiakaoyi.examk2.collision.c) c).h(((cn.mucang.android.jiakaoyi.examk2.collision.c) c).s.wheel, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((cn.mucang.android.jiakaoyi.examk2.collision.c) ((c) bVar.f()).f3279a).s == Wheel.None;
    }
}
