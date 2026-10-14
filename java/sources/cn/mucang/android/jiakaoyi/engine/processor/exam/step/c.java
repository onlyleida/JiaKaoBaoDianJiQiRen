package cn.mucang.android.jiakaoyi.engine.processor.exam.step;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<f> f3148a;
    public int b;
    public final Step c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f3149d;

    public c(long j, Step step) {
        this.f3148a = new ArrayList();
        this.c = step;
        this.f3149d = j;
    }

    public void a(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        this.f3148a.add(new f(aVar));
        this.b += aVar.f3102a.deductScore;
    }

    public c b() {
        ArrayList arrayList = new ArrayList();
        Iterator<f> it = this.f3148a.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        return new c(this.f3149d, this.c, arrayList, this.b);
    }

    public void c(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        Iterator<f> it = this.f3148a.iterator();
        while (it.hasNext()) {
            if (it.next().b(aVar)) {
                int i = this.b - aVar.f3102a.deductScore;
                this.b = i;
                if (i <= 0) {
                    this.b = 0;
                    return;
                }
                return;
            }
        }
    }

    public c(Step step, f fVar) {
        ArrayList arrayList = new ArrayList();
        this.f3148a = arrayList;
        this.c = step;
        arrayList.add(fVar);
        this.b = fVar.f3155a;
    }

    public c(long j, Step step, List<f> list, int i) {
        ArrayList arrayList = new ArrayList();
        this.f3148a = arrayList;
        this.f3149d = j;
        this.c = step;
        this.b = i;
        arrayList.addAll(list);
    }
}
