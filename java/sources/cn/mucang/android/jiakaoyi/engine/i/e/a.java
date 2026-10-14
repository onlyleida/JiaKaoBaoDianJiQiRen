package cn.mucang.android.jiakaoyi.engine.i.e;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3094a;
    private boolean b;
    private final b c;

    public a(b bVar) {
        this.c = bVar;
    }

    public int a() {
        return this.f3094a;
    }

    public void b() {
        this.f3094a = 0;
    }

    public boolean c(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        boolean zTrigger = this.c.trigger(eVar, examProcessor, bVar);
        if (!zTrigger || this.b) {
            this.b = zTrigger;
            return false;
        }
        this.f3094a++;
        this.b = true;
        return true;
    }
}
