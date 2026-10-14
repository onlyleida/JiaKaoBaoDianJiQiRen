package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.c.a;
import cn.mucang.android.jiakaoyi.examk2.collision.h;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.l;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_Step1 extends a<K2SuiDaoConfig, l, h> {
    public K2_SuiDao_Step1(h hVar, K2SuiDaoConfig k2SuiDaoConfig) {
        super(hVar, k2SuiDaoConfig.p412105, k2SuiDaoConfig.p412104);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.c.a
    protected void onFinish(e eVar, ExamProcessor examProcessor, b bVar) {
        super.onFinish(eVar, examProcessor, bVar);
        examProcessor.h(new cn.mucang.android.jiakaoyi.examk2.c.c.a(bVar));
    }

    public String stepName() {
        return "模拟隧道";
    }
}
