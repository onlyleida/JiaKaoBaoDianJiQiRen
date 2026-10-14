package cn.mucang.android.jiakaoyi.teachingk2.u0;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a<BC extends b<?, ?>> implements e {
    protected final BC checker;

    public a(BC bc) {
        this.checker = bc;
    }

    protected void doFixed(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public f handle(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        doFixed(eVar, examProcessor, bVar);
        if (this.checker.b) {
            return new f();
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, boolean z) {
        return true;
    }
}
