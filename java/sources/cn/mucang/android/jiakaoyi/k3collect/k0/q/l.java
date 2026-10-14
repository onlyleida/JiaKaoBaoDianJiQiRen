package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import android.graphics.Path;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l implements p.b<SingleLineSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.k, cn.mucang.android.jiakaoyi.k3collect.collision.impl.j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SingleLineSrcData f4066a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.k b;
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.j c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Pos f4067d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Pos f4068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<Pos> f4069f;

    private Path f(List<Pos> list) {
        Path path = new Path();
        Pos pos = list.get(0);
        if (pos == null) {
            return path;
        }
        path.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y));
        for (int i = 1; i < list.size(); i++) {
            Pos pos2 = list.get(i);
            if (pos2 != null) {
                path.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y));
            }
        }
        return path;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    public cn.mucang.android.jiakaoyi.k3collect.g0.j a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.l(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.j d() {
        List<Pos> list;
        if (this.f4066a.isCurve) {
            if (this.f4067d == null || this.f4068e == null || (list = this.f4069f) == null || list.size() < 2) {
                return null;
            }
        } else if (this.f4067d == null || this.f4068e == null) {
            return null;
        }
        if (this.c == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.j jVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.j();
            this.c = jVar;
            jVar.b = this.f4066a.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.j jVar2 = this.c;
            SingleLineSrcData singleLineSrcData = this.f4066a;
            jVar2.f3882a = singleLineSrcData.type;
            boolean z = singleLineSrcData.isCurve;
            jVar2.j = z;
            jVar2.k = singleLineSrcData.isDashed;
            int i = singleLineSrcData.lineWidth;
            jVar2.l = i;
            if (z) {
                double d2 = ((double) i) * 0.5d;
                List<Pos> list2 = this.f4069f;
                jVar2.f3919e = list2;
                jVar2.f3918d = o.d(list2, d2, false);
                this.c.f3920f = o.d(this.f4069f, d2, true);
                cn.mucang.android.jiakaoyi.k3collect.collision.impl.j jVar3 = this.c;
                jVar3.c = cn.mucang.android.jiakaoyi.hpmap.d.a.b(jVar3.f3919e);
            } else {
                jVar2.f3922h = new Line(this.f4067d, this.f4068e);
                cn.mucang.android.jiakaoyi.signal.pos.c cVarV = cn.mucang.android.jiakaoyi.hpmap.d.a.v(this.f4067d, this.f4068e, this.f4066a.lineWidth);
                this.c.f3921g = new Line(cVarV.f5820a, cVarV.b);
                this.c.i = new Line(cVarV.f5821d, cVarV.c);
                this.c.c = cVarV.f5822e;
            }
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.k c() {
        Pos pos;
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            SingleLineSrcData singleLineSrcData = this.f4066a;
            lineStyle.lineWidth = singleLineSrcData.lineWidth;
            lineStyle.dashLength = 300;
            lineStyle.dashInterval = 150.0f;
            lineStyle.isDashed = singleLineSrcData.isDashed;
            lineStyle.color = singleLineSrcData.lineColor;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.k(lineStyle, singleLineSrcData.type, singleLineSrcData.id);
            this.b = kVar;
            kVar.k = singleLineSrcData.isCurve;
            kVar.f3997d = this.f4067d;
            kVar.f3998e = this.f4068e;
            List<Pos> list = this.f4069f;
            if (list != null && list.size() > 1) {
                this.b.j = f(this.f4069f);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar2 = this.b;
                List<Pos> list2 = this.f4069f;
                kVar2.i = list2;
                kVar2.f4001h = cn.mucang.android.jiakaoyi.hpmap.d.a.b(list2);
            } else if (this.f4067d != null && this.f4068e != null) {
                Path path = new Path();
                path.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4067d.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4067d.y));
                path.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4068e.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4068e.y));
                this.b.j = path;
            }
            Pos pos2 = this.f4067d;
            if (pos2 != null && (pos = this.f4068e) != null) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar3 = this.b;
                float f2 = cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e;
                kVar3.f3999f = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos, pos2, f2);
                this.b.f4000g = cn.mucang.android.jiakaoyi.hpmap.d.a.s(this.f4067d, this.f4068e, f2);
            }
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void b(SingleLineSrcData singleLineSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4066a = singleLineSrcData;
        this.f4067d = cn.mucang.android.jiakaoyi.hpmap.c.b.j(singleLineSrcData.start, aVar);
        this.f4068e = cn.mucang.android.jiakaoyi.hpmap.c.b.j(singleLineSrcData.end, aVar);
        List<Gps> list = singleLineSrcData.lineList;
        if (list == null || list.size() <= 1) {
            return;
        }
        if (singleLineSrcData.isCurve) {
            singleLineSrcData.start = singleLineSrcData.lineList.get(0);
            if (singleLineSrcData.end != null) {
                List<Gps> list2 = singleLineSrcData.lineList;
                singleLineSrcData.end = list2.get(list2.size() - 1);
            }
        }
        this.f4069f = o.f(aVar, singleLineSrcData.lineList);
    }
}
