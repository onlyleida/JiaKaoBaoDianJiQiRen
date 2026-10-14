package cn.mucang.android.jiakaoyi.teachingk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.j;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.i;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_SuiDao_17007_Event extends d<SimpleTeachingConfig> {
    public Teach_SuiDao_17007_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((j) ((i) bVar.f()).f8776a).u) {
            setDoNotExecute(true);
            return false;
        }
        if (eVar.d().f5269g) {
            setDoNotExecute(true);
        }
        return true;
    }
}
