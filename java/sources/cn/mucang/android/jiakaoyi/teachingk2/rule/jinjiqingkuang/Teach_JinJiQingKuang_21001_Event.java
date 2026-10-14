package cn.mucang.android.jiakaoyi.teachingk2.rule.jinjiqingkuang;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.s0.f;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_JinJiQingKuang_21001_Event extends d<SimpleTeachingConfig> {
    private boolean isOpenWarningLight;
    private final b timeoutCheck;

    public Teach_JinJiQingKuang_21001_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
        this.isOpenWarningLight = false;
        this.timeoutCheck = new b(3000L);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (((f) ((cn.mucang.android.jiakaoyi.teachingk2.y0.b.e) bVar.f()).f8776a).f3695f) {
            this.timeoutCheck.g();
        }
        if (this.timeoutCheck.d() && !this.isOpenWarningLight) {
            setDoNotExecute(true);
            return false;
        }
        if (eVar.d().j(Light.WarningLight)) {
            this.isOpenWarningLight = true;
            setDoNotExecute(true);
            this.timeoutCheck.b();
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
