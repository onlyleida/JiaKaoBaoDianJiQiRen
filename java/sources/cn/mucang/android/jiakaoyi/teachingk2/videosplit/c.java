package cn.mucang.android.jiakaoyi.teachingk2.videosplit;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.videosplit.e.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f8741a;
    private final List<d> b;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f8742a = new c();
    }

    public static c b() {
        return b.f8742a;
    }

    private List<Segment> e(List<Segment> list) {
        if (g.b(list)) {
            return list;
        }
        Collections.sort(list, new Comparator() { // from class: cn.mucang.android.jiakaoyi.teachingk2.videosplit.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((Segment) obj).start, ((Segment) obj2).start);
            }
        });
        ArrayList arrayList = new ArrayList();
        Segment segmentRemove = list.remove(0);
        arrayList.add(segmentRemove);
        while (list.size() > 0) {
            Segment segmentRemove2 = list.remove(0);
            long j = segmentRemove2.start;
            long j2 = segmentRemove.end;
            if (j < 500 + j2) {
                long j3 = segmentRemove2.end;
                if (j3 > j2) {
                    segmentRemove.end = j3;
                }
            } else {
                arrayList.add(segmentRemove2);
                segmentRemove = segmentRemove2;
            }
        }
        return arrayList;
    }

    public void a(e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        if (this.f8741a) {
            Iterator<d> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().b(eVar, bVar, bVar2);
            }
        }
    }

    public List<Segment> c() {
        ArrayList arrayList = new ArrayList();
        Iterator<d> it = this.b.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().c());
        }
        return e(arrayList);
    }

    public void f(boolean z) {
        this.f8741a = z;
        if (z) {
            Iterator<d> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    private c() {
        this.f8741a = false;
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add(new d(new f()));
        arrayList.add(new d(new cn.mucang.android.jiakaoyi.teachingk2.videosplit.e.d()));
        arrayList.add(new d(new cn.mucang.android.jiakaoyi.teachingk2.videosplit.e.c()));
        arrayList.add(new d(new cn.mucang.android.jiakaoyi.teachingk2.videosplit.e.a()));
        arrayList.add(new d(new cn.mucang.android.jiakaoyi.teachingk2.videosplit.e.b()));
        arrayList.add(new d(new cn.mucang.android.jiakaoyi.teachingk2.videosplit.e.e()));
    }
}
