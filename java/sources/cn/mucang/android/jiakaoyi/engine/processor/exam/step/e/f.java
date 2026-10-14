package cn.mucang.android.jiakaoyi.engine.processor.exam.step.e;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3155a;
    public final List<cn.mucang.android.jiakaoyi.engine.model.a> b;
    public boolean c;

    public f() {
        this.b = new ArrayList();
        this.c = true;
        this.f3155a = 0;
    }

    public f a() {
        f fVar = new f();
        fVar.f3155a = this.f3155a;
        fVar.c = this.c;
        fVar.b.addAll(this.b);
        return fVar;
    }

    public boolean b(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        for (int size = this.b.size() - 1; size >= 0; size--) {
            cn.mucang.android.jiakaoyi.engine.model.a aVar2 = this.b.get(size);
            if (aVar2 == aVar || (aVar2.b == aVar.b && aVar2.f3102a == aVar.f3102a)) {
                this.b.remove(size);
                int i = this.f3155a - aVar2.f3102a.deductScore;
                this.f3155a = i;
                if (i <= 0) {
                    this.f3155a = 0;
                }
                return true;
            }
        }
        return false;
    }

    public f(Deduct deduct) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        this.c = true;
        this.f3155a = deduct.deductScore;
        arrayList.add(new cn.mucang.android.jiakaoyi.engine.model.a(deduct, System.currentTimeMillis()));
    }

    public f(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        this.c = true;
        this.f3155a = aVar.f3102a.deductScore;
        arrayList.add(aVar);
    }

    public f(boolean z, Deduct deduct, boolean z2, cn.mucang.android.jiakaoyi.engine.i.c.b bVar, DeductExtraData deductExtraData) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        this.c = z;
        this.f3155a = deduct.deductScore;
        arrayList.add(new cn.mucang.android.jiakaoyi.engine.model.a(deduct, System.currentTimeMillis(), z2, bVar, deductExtraData));
    }
}
