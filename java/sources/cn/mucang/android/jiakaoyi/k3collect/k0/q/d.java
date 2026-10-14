package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.BanMaLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class d implements p.b<BanMaLineSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.c, cn.mucang.android.jiakaoyi.k3collect.collision.impl.c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pos f4032a;
    private Pos b;
    private Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f4033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BanMaLineSrcData f4034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.c f4035f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.c f4036g;

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    public cn.mucang.android.jiakaoyi.k3collect.g0.j a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.c(mapView, this.f4035f);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.c d() {
        if (this.f4036g == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.c cVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.c();
            this.f4036g = cVar;
            cVar.b = this.f4034e.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.c cVar2 = this.f4036g;
            Pos pos = this.f4032a;
            cVar2.f3891d = pos;
            Pos pos2 = this.b;
            cVar2.f3892e = pos2;
            Pos pos3 = this.c;
            cVar2.f3893f = pos3;
            Pos pos4 = this.f4033d;
            cVar2.f3894g = pos4;
            cVar2.f3895h = new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, pos3, pos4);
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.c cVar3 = this.f4036g;
            cVar3.c = cVar3.f3895h.f5822e;
        }
        return this.f4036g;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.c c() {
        Pos pos;
        if (this.f4035f == null) {
            LineStyle lineStyle = new LineStyle();
            BanMaLineSrcData banMaLineSrcData = this.f4034e;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.c(lineStyle, banMaLineSrcData.type, banMaLineSrcData.id);
            this.f4035f = cVar;
            Pos pos2 = this.f4032a;
            cVar.f3959d = pos2;
            Pos pos3 = this.b;
            cVar.f3960e = pos3;
            cVar.f3961f = this.c;
            cVar.f3962g = this.f4033d;
            Pos pos4 = null;
            Pos pos5 = (pos2 == null || pos3 == null) ? null : new Pos((pos2.x + pos3.x) * 0.5d, (pos2.y + pos3.y) * 0.5d);
            Pos pos6 = this.c;
            if (pos6 != null && (pos = this.f4033d) != null) {
                pos4 = new Pos((pos6.x + pos.x) * 0.5d, (pos6.y + pos.y) * 0.5d);
            }
            if (this.f4032a != null && this.f4033d != null) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar2 = this.f4035f;
                Pos pos7 = cVar2.f3962g;
                Pos pos8 = cVar2.f3959d;
                float f2 = cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e;
                cVar2.j = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos7, pos8, f2);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar3 = this.f4035f;
                cVar3.m = cn.mucang.android.jiakaoyi.hpmap.c.b.g(cVar3.f3959d, cVar3.f3962g, f2);
            }
            if (this.b != null && this.c != null) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar4 = this.f4035f;
                Pos pos9 = cVar4.f3961f;
                Pos pos10 = cVar4.f3960e;
                float f3 = cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e;
                cVar4.k = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos9, pos10, f3);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar5 = this.f4035f;
                cVar5.l = cn.mucang.android.jiakaoyi.hpmap.c.b.g(cVar5.f3960e, cVar5.f3961f, f3);
            }
            if (pos5 != null && pos4 != null) {
                this.f4035f.n = new cn.mucang.android.jiakaoyi.signal.pos.c(this.f4032a, this.b, this.c, this.f4033d);
                BanMaLineSrcData banMaLineSrcData2 = this.f4034e;
                int i = banMaLineSrcData2.lineWidth;
                double d2 = banMaLineSrcData2.interval;
                double d3 = i / 2;
                this.f4035f.f3963h = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos4, pos5, d3);
                this.f4035f.i = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos5, pos4, d3);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar6 = this.f4035f;
                double d4 = i;
                double dDistanceTo = cVar6.f3963h.distanceTo(cVar6.i) - d4;
                long jRound = Math.round(dDistanceTo / (d4 + d2));
                LineStyle lineStyle2 = this.f4035f.f3948a;
                lineStyle2.dashLength = i;
                lineStyle2.dashInterval = (float) ((dDistanceTo - (((long) i) * jRound)) / jRound);
                lineStyle2.lineWidth = (int) this.f4032a.distanceTo(this.b);
                this.f4035f.f3948a.isDashed = true;
            }
        }
        return this.f4035f;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void b(BanMaLineSrcData banMaLineSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4032a = cn.mucang.android.jiakaoyi.hpmap.c.b.j(banMaLineSrcData.p1, aVar);
        this.b = cn.mucang.android.jiakaoyi.hpmap.c.b.j(banMaLineSrcData.p2, aVar);
        this.c = cn.mucang.android.jiakaoyi.hpmap.c.b.j(banMaLineSrcData.p3, aVar);
        this.f4033d = cn.mucang.android.jiakaoyi.hpmap.c.b.j(banMaLineSrcData.p4, aVar);
        this.f4034e = banMaLineSrcData;
    }
}
