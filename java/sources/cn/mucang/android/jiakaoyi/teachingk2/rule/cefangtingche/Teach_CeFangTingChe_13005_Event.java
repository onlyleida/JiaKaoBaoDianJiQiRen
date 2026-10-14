package cn.mucang.android.jiakaoyi.teachingk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.a;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_CeFangTingChe_13005_Event extends d<SimpleTeachingConfig> {
    public Teach_CeFangTingChe_13005_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        a aVar = (a) bVar.f();
        if (aVar.b) {
            setDoNotExecute(true);
            return true;
        }
        if (!((cn.mucang.android.jiakaoyi.teachingk2.s0.b) aVar.f8776a).v) {
            return true;
        }
        setDoNotExecute(true);
        return eVar.d().j(Light.TurnLeftLight);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
