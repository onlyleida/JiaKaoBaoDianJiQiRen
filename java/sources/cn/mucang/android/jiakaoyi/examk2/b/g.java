package cn.mucang.android.jiakaoyi.examk2.b;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b;

/* JADX INFO: loaded from: classes2.dex */
public class g<T extends BaseStepConfig, BC extends cn.mucang.android.jiakaoyi.hpmap.a.a.b, C extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<BC, T>> extends cn.mucang.android.jiakaoyi.engine.processor.exam.step.d<T> implements cn.mucang.android.jiakaoyi.engine.processor.exam.step.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C f3279a;

    public g(T t, C c) {
        super(t);
        this.f3279a = c;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.a
    public DeductExtraData a() {
        return this.f3279a.i();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (this.f3279a.n == null || !examProcessor.o().i().d(this.f3279a.n.f3684a.s())) {
            this.f3279a.a(eVar, bVar, examProcessor);
            return;
        }
        C c = this.f3279a;
        c.f3695f = c.m().a(eVar.d().F, eVar.d().L);
        this.f3279a.n.a(eVar, bVar, examProcessor);
    }
}
