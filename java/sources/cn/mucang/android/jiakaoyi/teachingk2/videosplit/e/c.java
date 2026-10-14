package cn.mucang.android.jiakaoyi.teachingk2.videosplit.e;

import cn.mucang.android.jiakaoyi.teachingk2.videosplit.Segment;

/* JADX INFO: loaded from: classes4.dex */
public class c implements cn.mucang.android.jiakaoyi.teachingk2.videosplit.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8747a = false;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.videosplit.b
    public Segment a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2) {
        if (bVar2 != null && bVar2.b && !this.f8747a) {
            this.f8747a = true;
            return Segment.create(3000);
        }
        if (bVar2 == null) {
            return null;
        }
        this.f8747a = bVar2.b;
        return null;
    }
}
