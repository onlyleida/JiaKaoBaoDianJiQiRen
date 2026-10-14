package cn.mucang.android.jiakaoyi.teachingk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.i;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.h;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_ShangPoQiBu_12005_Event extends d<SimpleTeachingConfig> {
    public Teach_ShangPoQiBu_12005_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        h hVar = (h) bVar.f();
        if (!((i) hVar.f8776a).y) {
            return true;
        }
        double d2 = hVar.c;
        return d2 <= 10.0d || d2 > 30.0d;
    }
}
