package cn.mucang.android.jiakaoyi.teachingk2.videosplit.e;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.videosplit.Segment;

/* JADX INFO: loaded from: classes4.dex */
public class e implements cn.mucang.android.jiakaoyi.teachingk2.videosplit.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f8749a = 0;
    private cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> b = null;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.videosplit.b
    public Segment a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        if (!eVar.d().k() || !(bVar instanceof k)) {
            return null;
        }
        if (eVar.d().c()) {
            this.f8749a = 0L;
        } else {
            if (this.f8749a == 0) {
                this.f8749a = eVar.d().L;
            }
            if (eVar.d().L - this.f8749a >= 1000) {
                k kVar = (k) bVar;
                if (bVar2 != this.b) {
                    Pos pos = eVar.c().headerPoint;
                    Line line = kVar.q;
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, line.start, line.end) < 50.0d) {
                        this.b = bVar2;
                        return Segment.create(2000);
                    }
                }
                this.f8749a = 0L;
            }
        }
        return null;
    }
}
