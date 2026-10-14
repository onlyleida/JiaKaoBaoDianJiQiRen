package cn.mucang.android.jiakaoyi.teachingk2.videosplit;

import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    private final b b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Segment f8743a = null;
    private final List<Segment> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f8744d = new Object();

    public d(b bVar) {
        this.b = bVar;
    }

    public void a() {
        this.f8743a = null;
        synchronized (this.f8744d) {
            this.c.clear();
        }
    }

    public void b(e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        Segment segmentA = this.b.a(eVar, bVar, bVar2);
        if (segmentA != null && segmentA != this.f8743a) {
            synchronized (this.f8744d) {
                this.c.add(segmentA);
            }
        }
        this.f8743a = segmentA;
    }

    public List<Segment> c() {
        ArrayList arrayList;
        synchronized (this.f8744d) {
            arrayList = new ArrayList(this.c);
        }
        return arrayList;
    }
}
