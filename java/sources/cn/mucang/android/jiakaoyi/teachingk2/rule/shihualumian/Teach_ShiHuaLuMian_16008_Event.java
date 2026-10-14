package cn.mucang.android.jiakaoyi.teachingk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_ShiHuaLuMian_16008_Event extends d<SimpleTeachingConfig> {
    public Teach_ShiHuaLuMian_16008_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.teachingk2.y0.b.d dVar = (cn.mucang.android.jiakaoyi.teachingk2.y0.b.d) bVar.f();
        if (((cn.mucang.android.jiakaoyi.teachingk2.s0.e) dVar.f8776a).v) {
            setDoNotExecute(true);
            if (!((cn.mucang.android.jiakaoyi.teachingk2.s0.e) dVar.f8776a).u || eVar.d().c >= 10.0f) {
                return false;
            }
        }
        return true;
    }
}
