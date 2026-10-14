package cn.mucang.android.jiakaoyi.engine.processor.exam.h;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private final cn.mucang.android.jiakaoyi.engine.i.e.b b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f3130d;
    private boolean c = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f3129a = 0;

    public c(cn.mucang.android.jiakaoyi.engine.i.e.b bVar, long j) {
        this.b = bVar;
        this.f3130d = j;
    }

    public boolean a(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        boolean zTrigger = this.b.trigger(eVar, examProcessor, bVar);
        if (!zTrigger) {
            this.f3129a = 0L;
        } else if (this.f3129a == 0) {
            this.f3129a = eVar.d().L;
        }
        boolean z = this.f3129a > 0 && eVar.d().L - this.f3129a >= this.f3130d;
        if (z) {
            this.c = false;
        }
        return this.c ? zTrigger : z;
    }
}
