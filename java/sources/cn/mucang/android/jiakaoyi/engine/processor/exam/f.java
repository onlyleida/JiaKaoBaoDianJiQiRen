package cn.mucang.android.jiakaoyi.engine.processor.exam;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3124a;
    public boolean b = true;
    public final Map<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.engine.model.a> f3125d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final KeMu f3126e;

    public f(KeMu keMu) {
        this.f3126e = keMu;
    }

    public void a(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar = this.c.get(aVar.f3102a.step);
        if (cVar != null) {
            cVar.a(aVar);
            return;
        }
        Map<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c> map = this.c;
        Step step = aVar.f3102a.step;
        map.put(step, new cn.mucang.android.jiakaoyi.engine.processor.exam.step.c(step, new cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f(aVar)));
    }

    public f b() {
        f fVar = new f(this.f3126e);
        fVar.f3125d.addAll(this.f3125d);
        fVar.f3124a = this.f3124a;
        fVar.b = this.b;
        for (Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c> entry : this.c.entrySet()) {
            fVar.c.put(entry.getKey(), entry.getValue().b());
        }
        return fVar;
    }

    public int c() {
        Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.c> it = this.c.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().b;
        }
        return i;
    }

    public void d(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        this.f3125d.add(aVar);
        Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.c> it = this.c.values().iterator();
        while (it.hasNext()) {
            it.next().c(aVar);
        }
    }

    public void e(Step step, long j) {
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar = this.c.get(step);
        if (cVar != null) {
            cVar.f3149d = j;
        }
    }
}
