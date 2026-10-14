package cn.mucang.android.jiakaoyi.engine.processor.exam.i;

import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class c implements cn.mucang.android.jiakaoyi.engine.f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.b f3133a;
    private final int b;

    public c(cn.mucang.android.jiakaoyi.engine.f.b bVar, int i) {
        this.f3133a = bVar;
        this.b = i;
    }

    static /* synthetic */ int a(cn.mucang.android.jiakaoyi.engine.model.a aVar, cn.mucang.android.jiakaoyi.engine.model.a aVar2) {
        long j = aVar.b;
        long j2 = aVar2.b;
        if (j - j2 > 0) {
            return -1;
        }
        return j2 - j > 0 ? 1 : 0;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.f.b
    public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        this.f3133a.onOneError(aVar);
        if (this.b == 3) {
            return;
        }
        w.e(aVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.f.b
    public void onResult(f fVar) {
        this.f3133a.onResult(fVar);
        if (fVar.f3125d.size() > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.c> it = fVar.c.values().iterator();
            while (it.hasNext()) {
                Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f> it2 = it.next().f3148a.iterator();
                while (it2.hasNext()) {
                    arrayList.addAll(it2.next().b);
                }
            }
            Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.engine.processor.exam.i.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return c.a((cn.mucang.android.jiakaoyi.engine.model.a) obj, (cn.mucang.android.jiakaoyi.engine.model.a) obj2);
                }
            });
            w.k(arrayList);
        }
        if (this.b == 3) {
            return;
        }
        w.T(true, true);
    }
}
