package cn.mucang.android.jiakaoyi.examk2.rule.zhailudiaotou;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.examk2.c.a;
import cn.mucang.android.jiakaoyi.examk2.collision.i;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.n;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhaiLuDiaoTou_Step1 extends a<K2ZhaiLuDiaoTouConfig, n, i> {
    public K2_ZhaiLuDiaoTou_Step1(i iVar, K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig) {
        super(iVar, k2ZhaiLuDiaoTouConfig.p409105, k2ZhaiLuDiaoTouConfig.p409104);
    }

    @Override // cn.mucang.android.jiakaoyi.examk2.c.a
    protected void doFixed(e eVar, ExamProcessor examProcessor, b bVar) {
        super.doFixed(eVar, examProcessor, bVar);
        examProcessor.n.c(ConflictSignal.Backwards);
    }

    public String stepName() {
        return "窄路掉头";
    }
}
