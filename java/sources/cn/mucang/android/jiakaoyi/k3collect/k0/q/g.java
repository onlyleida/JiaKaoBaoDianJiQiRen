package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CrossRoadMarkSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class g implements p.b<CrossRoadMarkSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.f, cn.mucang.android.jiakaoyi.k3collect.collision.impl.f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CrossRoadMarkSrcData f4046a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.f b;
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f4047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pos f4048e;

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    public cn.mucang.android.jiakaoyi.k3collect.g0.j a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.f(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.f d() {
        if (this.f4047d == null || this.f4048e == null) {
            return null;
        }
        if (this.c == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.f fVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.f();
            this.c = fVar;
            fVar.b = this.f4046a.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.f fVar2 = this.c;
            CrossRoadMarkSrcData crossRoadMarkSrcData = this.f4046a;
            fVar2.f3882a = crossRoadMarkSrcData.type;
            fVar2.f3907g = crossRoadMarkSrcData.enterType;
            fVar2.f3906f = new Line(this.f4047d, this.f4048e);
            cn.mucang.android.jiakaoyi.signal.pos.c cVarV = cn.mucang.android.jiakaoyi.hpmap.d.a.v(this.f4047d, this.f4048e, this.f4046a.lineWidth);
            this.c.f3904d = new Line(cVarV.f5820a, cVarV.b);
            this.c.f3905e = new Line(cVarV.f5821d, cVarV.c);
            this.c.c = cVarV.f5822e;
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.f c() {
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            CrossRoadMarkSrcData crossRoadMarkSrcData = this.f4046a;
            lineStyle.lineWidth = crossRoadMarkSrcData.lineWidth;
            lineStyle.color = crossRoadMarkSrcData.lineColor;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.f fVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.f(lineStyle, crossRoadMarkSrcData.type, crossRoadMarkSrcData.id);
            this.b = fVar;
            fVar.f3974d = crossRoadMarkSrcData.enterType;
            Pos pos = this.f4047d;
            fVar.f3975e = pos;
            Pos pos2 = this.f4048e;
            fVar.f3976f = pos2;
            float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
            fVar.f3977g = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos2, pos, f2);
            this.b.f3978h = cn.mucang.android.jiakaoyi.hpmap.c.b.g(this.f4047d, this.f4048e, f2);
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void b(CrossRoadMarkSrcData crossRoadMarkSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4046a = crossRoadMarkSrcData;
        this.f4047d = cn.mucang.android.jiakaoyi.hpmap.c.b.j(crossRoadMarkSrcData.gps1, aVar);
        this.f4048e = cn.mucang.android.jiakaoyi.hpmap.c.b.j(crossRoadMarkSrcData.gps2, aVar);
    }
}
