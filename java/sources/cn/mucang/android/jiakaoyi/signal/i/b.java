package cn.mucang.android.jiakaoyi.signal.i;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f5753a;
    private final Pos b;
    private final Gps c;

    public b(Gps gps) {
        this.c = new Gps(gps);
        c cVarA = c.a(gps.longitude);
        this.f5753a = cVarA;
        this.b = cVarA.d(gps);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.i.a
    public Pos a(Gps gps) {
        Pos posD = this.f5753a.d(gps);
        Pos pos = this.b;
        return posD.translate(-pos.x, -pos.y);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.i.a
    public Gps b(Pos pos) {
        return this.f5753a.b(new Pos(pos).translate(this.b));
    }

    public Gps c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.i.a
    public Gps getZero() {
        return new Gps(this.c);
    }
}
