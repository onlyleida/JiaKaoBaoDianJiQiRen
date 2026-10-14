package cn.mucang.android.jiakaoyi.teachingk2.videosplit.e;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.teachingk2.videosplit.Segment;

/* JADX INFO: loaded from: classes4.dex */
public class a implements cn.mucang.android.jiakaoyi.teachingk2.videosplit.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Line f8745a = null;
    private Segment b = null;
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b c = null;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.videosplit.b
    public Segment a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3;
        if (!eVar.d().h()) {
            return null;
        }
        if (this.f8745a == null && (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b)) {
            this.f8745a = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar).k;
        }
        if (this.f8745a != null) {
            if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), this.f8745a)) {
                if (this.b != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j = this.b.start;
                    if (jCurrentTimeMillis - j > 1000) {
                        Segment segment = new Segment(j, jCurrentTimeMillis);
                        this.b = null;
                        this.c = bVar;
                        return segment;
                    }
                }
                this.b = null;
            } else if (this.b == null) {
                this.b = Segment.create(1000);
            }
        }
        if (bVar2.b || ((bVar3 = this.c) != bVar && bVar3 != null)) {
            this.b = null;
        }
        this.c = bVar;
        return null;
    }
}
