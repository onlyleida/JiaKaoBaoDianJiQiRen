package cn.mucang.android.jiakaoyi.engine.processor.exam.i;

import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.Tiger;

/* JADX INFO: loaded from: classes2.dex */
public class b implements cn.mucang.android.jiakaoyi.engine.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f3132a;
    private final int b;

    public b(cn.mucang.android.jiakaoyi.engine.f.a aVar, int i) {
        this.f3132a = aVar;
        this.b = i;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.f.a
    public void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        if (bVar.j()) {
            f.o("ExamEventCallback 项目结束 : " + bVar.f3142e.zhStepName);
        }
        if (bVar.l()) {
            f.o("ExamEventCallback 项目开始 : " + bVar.f3142e.zhStepName);
        }
        Tiger.h(new cn.mucang.android.jiakaoyi.engine.h.a(bVar.f3142e, bVar.l(), bVar.j(), cVar));
        if (this.b != 3) {
            if (bVar.l()) {
                w.R(bVar.f3142e, false);
                w.t.l(Integer.valueOf(bVar.f3142e.type));
            } else if (bVar.j()) {
                w.U(bVar.f3142e);
                w.t.l(0);
            }
        }
        this.f3132a.onStep(bVar, cVar);
    }
}
