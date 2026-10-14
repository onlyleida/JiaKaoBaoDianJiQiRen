package cn.mucang.android.jiakaoyi.engine.processor.exam.h;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3128a;
    private final c b = new c(new cn.mucang.android.jiakaoyi.engine.i.e.b() { // from class: cn.mucang.android.jiakaoyi.engine.processor.exam.h.a
        @Override // cn.mucang.android.jiakaoyi.engine.i.e.b
        public final boolean trigger(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
            return b.a(eVar, examProcessor, bVar);
        }
    }, 1000);

    static /* synthetic */ boolean a(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        float f2 = eVar.d().b;
        float f3 = CarModel.Y;
        return f2 <= f3 * 2.0f && eVar.d().c <= f3 * 2.0f;
    }

    public void b(e eVar, ExamProcessor examProcessor) {
        this.f3128a = this.b.a(eVar, examProcessor, null);
    }
}
