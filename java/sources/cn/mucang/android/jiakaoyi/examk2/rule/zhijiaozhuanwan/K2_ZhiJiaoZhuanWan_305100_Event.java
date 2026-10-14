package cn.mucang.android.jiakaoyi.examk2.rule.zhijiaozhuanwan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.o;
import cn.mucang.android.jiakaoyi.examk2.collision.j;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhiJiaoZhuanWan_305100_Event extends d<K2ZhiJiaoZhuanWanConfig> {
    public K2_ZhiJiaoZhuanWan_305100_Event(K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig, Deduct deduct) {
        super(k2ZhiJiaoZhuanWanConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        o oVar = (o) bVar.f();
        setDoNotExecute(true);
        if (((j) oVar.f3279a).u && eVar.d().j(Light.TurnLeftLight)) {
            return false;
        }
        return ((j) oVar.f3279a).u || !eVar.d().j(Light.TurnRightLight);
    }
}
