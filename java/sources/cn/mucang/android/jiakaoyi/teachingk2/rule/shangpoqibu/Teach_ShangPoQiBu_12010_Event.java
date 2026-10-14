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
public class Teach_ShangPoQiBu_12010_Event extends d<SimpleTeachingConfig> {
    private boolean hasStop;

    public Teach_ShangPoQiBu_12010_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
        this.hasStop = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((i) ((h) bVar.f()).f8776a).f3695f) {
            this.hasStop = true;
        }
        if (!this.hasStop || eVar.d().c < 1.0f || eVar.d().f5268f) {
            return true;
        }
        this.hasStop = false;
        return false;
    }
}
