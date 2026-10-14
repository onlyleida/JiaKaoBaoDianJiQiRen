package cn.mucang.android.jiakaoyi.teachingk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_ShiHuaLuMian_16014_Event extends d<SimpleTeachingConfig> {
    private boolean isNearEndLine;

    public Teach_ShiHuaLuMian_16014_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
        this.isNearEndLine = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.teachingk2.y0.b.d dVar = (cn.mucang.android.jiakaoyi.teachingk2.y0.b.d) bVar.f();
        if (!this.isNearEndLine && ((cn.mucang.android.jiakaoyi.teachingk2.s0.e) dVar.f8776a).w <= dVar.b * 100) {
            this.isNearEndLine = true;
        }
        if (!this.isNearEndLine || !((cn.mucang.android.jiakaoyi.teachingk2.s0.e) dVar.f8776a).p() || !dVar.c || !eVar.d().n) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
