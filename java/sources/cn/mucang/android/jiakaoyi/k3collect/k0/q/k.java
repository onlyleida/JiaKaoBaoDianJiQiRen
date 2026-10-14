package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import android.graphics.Path;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k implements p.b<ShuangHuangSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.j, cn.mucang.android.jiakaoyi.k3collect.collision.impl.i> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ShuangHuangSrcData f4060a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.j b;
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Pos f4061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Pos f4062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Pos f4063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Pos f4064g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<Pos> f4065h;
    public List<Pos> i;

    private void e(double d2) {
        ArrayList<Line> arrayList = new ArrayList();
        arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.p(this.f4061d, this.f4062e, d2));
        arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.q(this.f4061d, this.f4062e, d2));
        arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.p(this.f4063f, this.f4064g, d2));
        arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.q(this.f4063f, this.f4064g, d2));
        double d3 = -this.f4061d.angleTo(this.f4062e);
        double dSin = Math.sin(d3);
        double dCos = Math.cos(d3);
        for (Line line : arrayList) {
            line.start.rotate(this.f4061d, dCos, dSin);
            line.end.rotate(this.f4061d, dCos, dSin);
        }
        Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.q.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Double.compare(((Line) obj).start.y, ((Line) obj2).start.y);
            }
        });
        double d4 = -dSin;
        for (Line line2 : arrayList) {
            line2.start.rotate(this.f4061d, dCos, d4);
            line2.end.rotate(this.f4061d, dCos, d4);
        }
        this.c.f3915f = (Line) arrayList.get(0);
        this.c.f3916g = (Line) arrayList.get(arrayList.size() - 1);
    }

    private Path g(List<Pos> list) {
        Path path = new Path();
        Pos pos = list.get(0);
        path.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y));
        for (int i = 1; i < list.size(); i++) {
            Pos pos2 = list.get(i);
            path.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y));
        }
        return path;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    public cn.mucang.android.jiakaoyi.k3collect.g0.j a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.k(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.i d() {
        Pos pos;
        List<Pos> list;
        List<Pos> list2;
        List<Pos> list3 = null;
        if (this.f4060a.isCurve) {
            List<Pos> list4 = this.f4065h;
            if (list4 == null || list4.size() < 2 || (list2 = this.i) == null || list2.size() < 2) {
                return null;
            }
        } else if (this.f4061d == null || this.f4062e == null || this.f4063f == null || this.f4064g == null) {
            return null;
        }
        if (this.c == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.i iVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.i();
            this.c = iVar;
            iVar.b = this.f4060a.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.i iVar2 = this.c;
            ShuangHuangSrcData shuangHuangSrcData = this.f4060a;
            iVar2.f3882a = shuangHuangSrcData.type;
            boolean z = shuangHuangSrcData.isCurve;
            iVar2.f3917h = z;
            int i = shuangHuangSrcData.lineWidth;
            iVar2.i = i;
            double d2 = ((double) i) * 0.5d;
            if (z) {
                Pos pos2 = this.f4061d;
                if (pos2 != null && (pos = this.f4062e) != null && this.f4063f != null && this.f4064g != null) {
                    double dCross = pos2.vectorTo(pos).cross(this.f4061d.vectorTo(this.f4064g));
                    if (dCross < 0.0d) {
                        list3 = this.i;
                        list = this.f4065h;
                    } else if (dCross >= 0.0d) {
                        list3 = this.f4065h;
                        list = this.i;
                    } else {
                        list = null;
                    }
                    if (list3 != null && list != null) {
                        this.c.f3913d = o.d(list3, d2, true);
                        this.c.f3914e = o.d(list, d2, false);
                    }
                }
                cn.mucang.android.jiakaoyi.signal.pos.a aVarB = cn.mucang.android.jiakaoyi.hpmap.d.a.b(this.c.f3913d);
                cn.mucang.android.jiakaoyi.signal.pos.a aVarB2 = cn.mucang.android.jiakaoyi.hpmap.d.a.b(this.c.f3914e);
                cn.mucang.android.jiakaoyi.k3collect.collision.impl.i iVar3 = this.c;
                cn.mucang.android.jiakaoyi.signal.pos.a aVar = new cn.mucang.android.jiakaoyi.signal.pos.a(aVarB);
                aVar.i(aVarB2);
                iVar3.c = aVar;
            } else {
                e(d2);
                cn.mucang.android.jiakaoyi.signal.pos.a aVarA = cn.mucang.android.jiakaoyi.hpmap.d.a.a(this.c.f3915f);
                cn.mucang.android.jiakaoyi.signal.pos.a aVarA2 = cn.mucang.android.jiakaoyi.hpmap.d.a.a(this.c.f3916g);
                cn.mucang.android.jiakaoyi.k3collect.collision.impl.i iVar4 = this.c;
                cn.mucang.android.jiakaoyi.signal.pos.a aVar2 = new cn.mucang.android.jiakaoyi.signal.pos.a(aVarA);
                aVar2.i(aVarA2);
                iVar4.c = aVar2;
            }
        }
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.j c() {
        Pos pos;
        Pos pos2;
        List<Pos> list;
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            ShuangHuangSrcData shuangHuangSrcData = this.f4060a;
            lineStyle.lineWidth = shuangHuangSrcData.lineWidth;
            lineStyle.dashLength = 300;
            lineStyle.dashInterval = 150.0f;
            lineStyle.isDashed = shuangHuangSrcData.isDashed;
            lineStyle.color = shuangHuangSrcData.lineColor;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.j(lineStyle, shuangHuangSrcData.type, shuangHuangSrcData.id);
            this.b = jVar;
            jVar.r = shuangHuangSrcData.isCurve;
            Pos pos3 = this.f4061d;
            jVar.f3996h = pos3;
            jVar.i = this.f4062e;
            jVar.j = this.f4063f;
            Pos pos4 = this.f4064g;
            jVar.k = pos4;
            if (pos3 != null && pos4 != null) {
                float f2 = cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e;
                jVar.l = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos4, pos3, f2);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar2 = this.b;
                jVar2.o = cn.mucang.android.jiakaoyi.hpmap.c.b.g(jVar2.f3996h, jVar2.k, f2);
            }
            if (this.f4062e != null && this.f4063f != null) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar3 = this.b;
                Pos pos5 = jVar3.j;
                Pos pos6 = jVar3.i;
                float f3 = cn.mucang.android.jiakaoyi.k3collect.style.a.f4163e;
                jVar3.m = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos5, pos6, f3);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar4 = this.b;
                jVar4.n = cn.mucang.android.jiakaoyi.hpmap.c.b.g(jVar4.i, jVar4.j, f3);
            }
            List<Pos> list2 = this.f4065h;
            if (list2 != null && list2.size() > 1) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar5 = this.b;
                List<Pos> list3 = this.f4065h;
                jVar5.p = list3;
                jVar5.f3992d = g(list3);
            } else if (this.f4061d != null && this.f4062e != null) {
                Path path = new Path();
                path.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4061d.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4061d.y));
                path.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4062e.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4062e.y));
                this.b.f3992d = path;
            }
            List<Pos> list4 = this.i;
            if (list4 != null && list4.size() > 1) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.j jVar6 = this.b;
                List<Pos> list5 = this.i;
                jVar6.q = list5;
                jVar6.f3993e = g(list5);
            } else if (this.f4063f != null && this.f4064g != null) {
                Path path2 = new Path();
                path2.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4063f.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4063f.y));
                path2.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4064g.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.f4064g.y));
                this.b.f3993e = path2;
            }
            if (n.a() && (pos = this.f4061d) != null && (pos2 = this.f4062e) != null && this.f4063f != null && this.f4064g != null) {
                double dCross = pos.vectorTo(pos2).cross(this.f4061d.vectorTo(this.f4064g));
                List<Pos> list6 = null;
                if (dCross < 0.0d) {
                    list6 = this.i;
                    list = this.f4065h;
                } else if (dCross > 0.0d) {
                    list6 = this.f4065h;
                    list = this.i;
                } else {
                    list = null;
                }
                double d2 = ((double) this.f4060a.lineWidth) * 0.5d;
                if (list6 != null && list != null) {
                    this.b.f3994f = g(o.d(list6, d2, true));
                    this.b.f3995g = g(o.d(list, d2, false));
                }
            }
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void b(ShuangHuangSrcData shuangHuangSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f4060a = shuangHuangSrcData;
        if (shuangHuangSrcData.isComplete() && shuangHuangSrcData.line1Start.distanceTo(shuangHuangSrcData.line2Start) > shuangHuangSrcData.line1Start.distanceTo(shuangHuangSrcData.line2End)) {
            Gps gps = shuangHuangSrcData.line2Start;
            shuangHuangSrcData.line2Start = shuangHuangSrcData.line2End;
            shuangHuangSrcData.line2End = gps;
            if (shuangHuangSrcData.isCurve) {
                Collections.reverse(shuangHuangSrcData.curveList2);
            }
        }
        List<Gps> list = shuangHuangSrcData.curveList1;
        if (list != null && list.size() > 1) {
            shuangHuangSrcData.line1Start = shuangHuangSrcData.curveList1.get(0);
            if (shuangHuangSrcData.line1End != null) {
                List<Gps> list2 = shuangHuangSrcData.curveList1;
                shuangHuangSrcData.line1End = list2.get(list2.size() - 1);
            }
            this.f4065h = o.f(aVar, shuangHuangSrcData.curveList1);
        }
        List<Gps> list3 = shuangHuangSrcData.curveList2;
        if (list3 != null && list3.size() > 1) {
            shuangHuangSrcData.line2Start = shuangHuangSrcData.curveList2.get(0);
            if (shuangHuangSrcData.line2End != null) {
                List<Gps> list4 = shuangHuangSrcData.curveList2;
                shuangHuangSrcData.line2End = list4.get(list4.size() - 1);
            }
            this.i = o.f(aVar, shuangHuangSrcData.curveList2);
        }
        this.f4061d = cn.mucang.android.jiakaoyi.hpmap.c.b.j(shuangHuangSrcData.line1Start, aVar);
        this.f4062e = cn.mucang.android.jiakaoyi.hpmap.c.b.j(shuangHuangSrcData.line1End, aVar);
        this.f4063f = cn.mucang.android.jiakaoyi.hpmap.c.b.j(shuangHuangSrcData.line2End, aVar);
        this.f4064g = cn.mucang.android.jiakaoyi.hpmap.c.b.j(shuangHuangSrcData.line2Start, aVar);
    }
}
