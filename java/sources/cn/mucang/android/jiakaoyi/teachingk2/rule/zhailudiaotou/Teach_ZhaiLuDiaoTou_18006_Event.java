package cn.mucang.android.jiakaoyi.teachingk2.rule.zhailudiaotou;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.k;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_ZhaiLuDiaoTou_18006_Event extends d<SimpleTeachingConfig> {
    public Teach_ZhaiLuDiaoTou_18006_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        k kVar = (k) bVar.f();
        if (!bVar.j() || ((cn.mucang.android.jiakaoyi.teachingk2.s0.k) kVar.f8776a).c) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
