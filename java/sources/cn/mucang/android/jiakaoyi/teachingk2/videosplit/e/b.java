package cn.mucang.android.jiakaoyi.teachingk2.videosplit.e;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.teachingk2.videosplit.Segment;
import com.serenegiant.net.SocketChannelDataLink;

/* JADX INFO: loaded from: classes4.dex */
public class b implements cn.mucang.android.jiakaoyi.teachingk2.videosplit.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b f8746a = null;
    private long b = 0;
    private int c = 0;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.videosplit.b
    public Segment a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        if (this.c == 0) {
            if (bVar instanceof k) {
                this.c = SocketChannelDataLink.DEFAULT_SERVER_PORT;
            } else {
                this.c = 3000;
            }
        }
        if (bVar2 == null || !bVar2.s() || bVar2.p() || bVar2 == this.f8746a) {
            this.b = 0L;
            if (bVar2 == null || bVar2.p()) {
                this.f8746a = null;
            }
        } else {
            if (this.b == 0) {
                this.b = eVar.d().L;
            }
            long j = eVar.d().L - this.b;
            int i = this.c;
            if (j > i) {
                this.f8746a = bVar2;
                this.b = 0L;
                return Segment.create(i);
            }
        }
        return null;
    }
}
