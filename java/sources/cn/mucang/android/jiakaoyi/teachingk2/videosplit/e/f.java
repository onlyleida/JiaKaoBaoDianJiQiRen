package cn.mucang.android.jiakaoyi.teachingk2.videosplit.e;

import cn.mucang.android.jiakaoyi.teachingk2.videosplit.Segment;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes4.dex */
public class f implements cn.mucang.android.jiakaoyi.teachingk2.videosplit.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedList<Integer> f8750a = new LinkedList<>();
    private final LinkedList<Long> b = new LinkedList<>();

    @Override // cn.mucang.android.jiakaoyi.teachingk2.videosplit.b
    public Segment a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        if (!eVar.d().k()) {
            return null;
        }
        this.f8750a.addFirst(Integer.valueOf(eVar.d().r));
        this.b.addFirst(Long.valueOf(System.currentTimeMillis()));
        while (this.b.getFirst().longValue() - this.b.getLast().longValue() > 3000) {
            this.b.removeLast();
            this.f8750a.removeLast();
        }
        if (Math.abs(this.f8750a.getFirst().intValue() - this.f8750a.getLast().intValue()) <= 450.0d) {
            return null;
        }
        Segment segment = new Segment(this.b.getLast().longValue() - 3000, this.b.getFirst().longValue() + 3000);
        this.b.clear();
        this.f8750a.clear();
        return segment;
    }
}
