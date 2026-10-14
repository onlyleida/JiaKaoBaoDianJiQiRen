package cn.mucang.android.jiakaoyi.examk2.rule.zhijiaozhuanwan;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.c.a;
import cn.mucang.android.jiakaoyi.examk2.collision.j;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhiJiaoZhuanWanConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhiJiaoZhuanWan_Step1 extends a<K2ZhiJiaoZhuanWanConfig, o, j> {
    public K2_ZhiJiaoZhuanWan_Step1(j jVar, K2ZhiJiaoZhuanWanConfig k2ZhiJiaoZhuanWanConfig) {
        super(jVar, k2ZhiJiaoZhuanWanConfig.p405105, k2ZhiJiaoZhuanWanConfig.p405104);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.c.a
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.Backwards);
    }

    public String stepName() {
        return "直角转弯";
    }
}
