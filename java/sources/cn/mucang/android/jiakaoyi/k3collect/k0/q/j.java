package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class j implements p.b<CommonSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.i, cn.mucang.android.jiakaoyi.k3collect.collision.impl.h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CommonSrcData f4058a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.i b;
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<Pos> f4059d;

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.g0.i a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.i(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.h d() {
        List<Pos> list = this.b.f3989d;
        if (list == null || list.size() < 4 || this.b.f3989d.get(0) == null || this.b.f3989d.get(1) == null || this.b.f3989d.get(2) == null || this.b.f3989d.get(3) == null) {
            return null;
        }
        if (this.c == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.h hVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.h();
            this.c = hVar;
            hVar.b = this.f4058a.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.h hVar2 = this.c;
            CommonSrcData commonSrcData = this.f4058a;
            hVar2.f3882a = commonSrcData.type;
            hVar2.f3912f = commonSrcData.shape;
            hVar2.f3910d = new Line(this.b.f3989d.get(0), this.b.f3989d.get(1));
            this.c.f3911e = new Line(this.b.f3989d.get(2), this.b.f3989d.get(3));
            this.c.c = cn.mucang.android.jiakaoyi.hpmap.d.a.b(this.b.f3989d);
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.i c() {
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            lineStyle.lineWidth = 15;
            CommonSrcData commonSrcData = this.f4058a;
            lineStyle.color = commonSrcData.color;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.i iVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.i(lineStyle, commonSrcData.type, commonSrcData.id);
            this.b = iVar;
            List<Pos> list = this.f4059d;
            iVar.f3989d = list;
            if (list != null && list.size() >= 4) {
                Pos pos = this.b.f3989d.get(0);
                Pos pos2 = this.b.f3989d.get(1);
                Pos pos3 = this.b.f3989d.get(2);
                Pos pos4 = this.b.f3989d.get(3);
                float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
                Pos posG = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos2, pos, f2);
                Pos posG2 = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos, pos2, f2);
                Pos posG3 = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos4, pos3, f2);
                Pos posG4 = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos3, pos4, f2);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.i iVar2 = this.b;
                if (iVar2.f3990e == null) {
                    iVar2.f3990e = new ArrayList();
                }
                this.b.f3990e.add(posG);
                this.b.f3990e.add(posG2);
                this.b.f3990e.add(posG3);
                this.b.f3990e.add(posG4);
                this.b.f3991f = new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, pos3, pos4);
            }
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void b(CommonSrcData commonSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4058a = commonSrcData;
        this.f4059d = o.f(aVar, commonSrcData.points);
    }
}
