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
public class Teach_ShangPoQiBu_12001_Event extends d<SimpleTeachingConfig> {
    public Teach_ShangPoQiBu_12001_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        h hVar = (h) bVar.f();
        C c = hVar.f8776a;
        if (((i) c).y && ((i) c).f3695f) {
            setDoNotExecute(true);
            if (!((i) hVar.f8776a).u) {
                return false;
            }
        }
        return !((i) hVar.f8776a).b;
    }
}
