package cn.mucang.android.jiakaoyi.teachingk2.x0;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f<BC extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?>> implements cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BC f8774a;

    public f(BC bc) {
        this.f8774a = bc;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f handle(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (examProcessor.o().i().d(bVar.f3142e)) {
            return null;
        }
        this.f8774a.a(eVar, bVar, examProcessor);
        if (this.f8774a.s()) {
            return new cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f();
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        return true;
    }
}
