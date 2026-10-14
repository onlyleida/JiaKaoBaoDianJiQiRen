package cn.mucang.android.jiakaoyi.teachingk2.videosplit.e;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.teachingk2.videosplit.Segment;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes4.dex */
public class d implements cn.mucang.android.jiakaoyi.teachingk2.videosplit.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8748a = true;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.videosplit.b
    public Segment a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        if (!eVar.d().k()) {
            return null;
        }
        if (!eVar.d().k() || !(bVar instanceof k) || eVar.d().f5268f || eVar.d().f5268f == this.f8748a) {
            this.f8748a = eVar.d().f5268f;
            return null;
        }
        this.f8748a = eVar.d().f5268f;
        long jCurrentTimeMillis = System.currentTimeMillis();
        return new Segment(jCurrentTimeMillis - SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, jCurrentTimeMillis + 1000);
    }
}
