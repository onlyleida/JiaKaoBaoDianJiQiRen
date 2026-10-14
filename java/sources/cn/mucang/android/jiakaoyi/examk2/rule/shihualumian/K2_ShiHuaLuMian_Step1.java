package cn.mucang.android.jiakaoyi.examk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.c.a;
import cn.mucang.android.jiakaoyi.examk2.collision.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.f;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShiHuaLuMian_Step1 extends a<K2ShiHuaLuMianConfig, f, d> {
    public K2_ShiHuaLuMian_Step1(d dVar, K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig) {
        super(dVar, k2ShiHuaLuMianConfig.p411105, k2ShiHuaLuMianConfig.p411104);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.c.a
    protected void onFinish(e eVar, ExamProcessor examProcessor, b bVar) {
        super.onFinish(eVar, examProcessor, bVar);
        examProcessor.h(new cn.mucang.android.jiakaoyi.examk2.c.b.a(bVar));
        examProcessor.h(new cn.mucang.android.jiakaoyi.examk2.c.b.b());
    }

    public String stepName() {
        return "湿滑路面";
    }
}
