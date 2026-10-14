package cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.h;
import cn.mucang.android.jiakaoyi.mapcollect.c.i;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final cn.mucang.android.jiakaoyi.signal.pos.c f5166a;
    public final double b;
    public final Pos c;

    public c(k kVar) {
        if (kVar.p != null) {
            this.f5166a = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(new Pos(kVar.i.start), new Pos(kVar.i.end), new Pos(kVar.p.start), new Pos(kVar.p.end));
        } else {
            this.f5166a = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(new Pos(kVar.i.start), new Pos(kVar.i.end), new Pos(kVar.o.end), new Pos(kVar.o.start));
        }
        this.b = Math.max(i.b(kVar.l.middle(), kVar.o.middle()), 4.8d);
        this.c = this.f5166a.b();
    }

    public c(cn.mucang.android.jiakaoyi.hpmap.a.a.f.k kVar) {
        if (kVar.o != null) {
            this.f5166a = new cn.mucang.android.jiakaoyi.signal.pos.c(new Pos(kVar.i.start), new Pos(kVar.i.end), new Pos(kVar.o.start), new Pos(kVar.o.end));
        } else {
            this.f5166a = new cn.mucang.android.jiakaoyi.signal.pos.c(new Pos(kVar.i.start), new Pos(kVar.i.end), new Pos(kVar.n.end), new Pos(kVar.n.start));
        }
        this.b = Math.max(i.b(kVar.i.middle(), kVar.n.middle()), 4.8d);
        this.c = this.f5166a.b();
    }

    public c(h hVar) {
        if (hVar.o != null) {
            this.f5166a = new cn.mucang.android.jiakaoyi.signal.pos.c(new Pos(hVar.i.start), new Pos(hVar.i.end), new Pos(hVar.o.start), new Pos(hVar.o.end));
        } else {
            this.f5166a = new cn.mucang.android.jiakaoyi.signal.pos.c(new Pos(hVar.i.start), new Pos(hVar.i.end), new Pos(hVar.n.end), new Pos(hVar.n.start));
        }
        this.b = Math.max(i.b(hVar.i.middle(), hVar.n.middle()), 4.8d);
        this.c = this.f5166a.b();
    }
}
