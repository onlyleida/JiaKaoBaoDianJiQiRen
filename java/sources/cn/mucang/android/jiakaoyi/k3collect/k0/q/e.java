package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e implements p.b<CommonSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.d, cn.mucang.android.jiakaoyi.k3collect.collision.impl.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CommonSrcData f4037a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.d b;
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f4038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pos f4039e;

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.g0.d a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.d(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.d d() {
        if (this.f4038d == null || this.f4039e == null) {
            return null;
        }
        if (this.c == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.d dVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.d();
            this.c = dVar;
            dVar.b = this.f4037a.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.d dVar2 = this.c;
            int i = this.f4037a.type;
            dVar2.f3882a = i;
            dVar2.f3899g = i;
            dVar2.f3898f = new Line(this.f4038d, this.f4039e);
            cn.mucang.android.jiakaoyi.signal.pos.c cVarV = cn.mucang.android.jiakaoyi.hpmap.d.a.v(this.f4038d, this.f4039e, this.f4037a.width);
            this.c.f3896d = new Line(cVarV.f5820a, cVarV.b);
            this.c.f3897e = new Line(cVarV.f5821d, cVarV.c);
            this.c.c = cVarV.f5822e;
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.d c() {
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            CommonSrcData commonSrcData = this.f4037a;
            lineStyle.lineWidth = commonSrcData.width;
            lineStyle.color = commonSrcData.color;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.d dVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.d(lineStyle, commonSrcData.type, commonSrcData.id);
            this.b = dVar;
            dVar.f3964d = commonSrcData.shape;
            Pos pos = this.f4038d;
            dVar.f3965e = pos;
            Pos pos2 = this.f4039e;
            dVar.f3966f = pos2;
            float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
            dVar.f3967g = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos2, pos, f2);
            this.b.f3968h = cn.mucang.android.jiakaoyi.hpmap.c.b.g(this.f4038d, this.f4039e, f2);
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void b(CommonSrcData commonSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4037a = commonSrcData;
        List<Pos> listF = o.f(aVar, commonSrcData.points);
        if (listF.size() > 0) {
            this.f4038d = listF.get(0);
        }
        if (listF.size() > 1) {
            this.f4039e = listF.get(1);
        }
    }
}
