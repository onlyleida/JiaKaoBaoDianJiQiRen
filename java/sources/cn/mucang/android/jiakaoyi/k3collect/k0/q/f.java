package cn.mucang.android.jiakaoyi.k3collect.k0.q;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CenterCircleSrcData;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class f implements p.b<CenterCircleSrcData, cn.mucang.android.jiakaoyi.k3collect.j0.b.e, cn.mucang.android.jiakaoyi.k3collect.collision.impl.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CenterCircleSrcData f4040a;
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.e b;
    private cn.mucang.android.jiakaoyi.k3collect.collision.impl.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f4041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pos f4042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Pos f4043f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Pos f4044g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.pos.c f4045h;
    private cn.mucang.android.jiakaoyi.signal.pos.a i;
    private Pos j;
    private double k;

    private void e(Line line, Line line2) {
        if (line == null || line2 == null) {
            return;
        }
        this.b.m = new ArrayList();
        this.b.m.add(line);
        Line lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(line.start, line.end, this.b.k);
        while (cn.mucang.android.jiakaoyi.hpmap.d.a.C(line2.start, line2.end, lineP.start, lineP.end)) {
            this.b.m.add(lineP);
            lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(lineP.start, lineP.end, this.b.k);
        }
        Line lineQ = cn.mucang.android.jiakaoyi.hpmap.d.a.q(line.start, line.end, this.b.k);
        while (cn.mucang.android.jiakaoyi.hpmap.d.a.C(line2.start, line2.end, lineQ.start, lineQ.end)) {
            this.b.m.add(lineQ);
            lineQ = cn.mucang.android.jiakaoyi.hpmap.d.a.q(lineQ.start, lineQ.end, this.b.k);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.g0.e a(MapView mapView) {
        c();
        return new cn.mucang.android.jiakaoyi.k3collect.g0.e(mapView, this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.collision.impl.e d() {
        if (this.c == null) {
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.e eVar = new cn.mucang.android.jiakaoyi.k3collect.collision.impl.e();
            this.c = eVar;
            eVar.b = this.f4040a.id.longValue();
            cn.mucang.android.jiakaoyi.k3collect.collision.impl.e eVar2 = this.c;
            eVar2.f3900d = this.f4040a.shape;
            eVar2.f3903g = this.f4045h;
            eVar2.f3901e = this.j;
            eVar2.f3902f = this.k;
            eVar2.c = this.i;
        }
        return this.c;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x01af  */
    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.e c() {
        Line line;
        if (this.b == null) {
            LineStyle lineStyle = new LineStyle();
            CenterCircleSrcData centerCircleSrcData = this.f4040a;
            int i = centerCircleSrcData.outLineWidth;
            lineStyle.lineWidth = i;
            lineStyle.color = -1;
            cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar = new cn.mucang.android.jiakaoyi.k3collect.j0.b.e(lineStyle, centerCircleSrcData.type, centerCircleSrcData.id);
            this.b = eVar;
            eVar.f3973h = centerCircleSrcData.shape;
            eVar.i = i;
            eVar.j = centerCircleSrcData.inLineWidth;
            eVar.k = centerCircleSrcData.inLineInterval;
            eVar.f3969d = new SparseArray<>();
            this.b.f3969d.put(0, this.f4041d);
            this.b.f3969d.put(1, this.f4042e);
            this.b.f3969d.put(2, this.f4043f);
            int i2 = this.b.f3973h;
            Line line2 = null;
            if (i2 == 1 || i2 == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()) {
                Pos pos = this.f4041d;
                if (pos == null || this.f4042e == null || this.f4043f == null) {
                    line = null;
                } else {
                    cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar2 = this.b;
                    Pos pos2 = this.j;
                    eVar2.f3970e = pos2;
                    double d2 = this.k;
                    eVar2.l = d2;
                    Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos, pos2, d2);
                    Line line3 = new Line(pos, posS);
                    Pos pos3 = new Pos(pos);
                    Pos pos4 = new Pos(posS);
                    double dSin = Math.sin(0.7853981633974483d);
                    double dCos = Math.cos(0.7853981633974483d);
                    pos3.rotate(this.b.f3970e, dCos, dSin);
                    pos4.rotate(this.b.f3970e, dCos, dSin);
                    line = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos4, pos3, this.b.l), cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos3, pos4, this.b.l));
                    line2 = line3;
                }
            } else {
                int i3 = this.b.f3973h;
                if (i3 == 2 || i3 == K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType()) {
                    Pos pos5 = this.f4044g;
                    if (pos5 != null) {
                        this.b.f3969d.put(3, pos5);
                    }
                    if (this.f4041d == null || this.f4042e == null || this.f4043f == null || this.f4044g == null) {
                        line = null;
                    } else {
                        cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar3 = this.b;
                        eVar3.n = this.f4045h;
                        double d3 = eVar3.i;
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(this.f4041d);
                        arrayList2.add(this.f4042e);
                        arrayList2.add(this.f4043f);
                        arrayList2.add(this.f4044g);
                        Pos posB = o.b(arrayList2);
                        ArrayList arrayList3 = new ArrayList();
                        int i4 = 0;
                        while (i4 < arrayList2.size()) {
                            int i5 = i4 == arrayList2.size() - 1 ? 0 : i4 + 1;
                            Pos pos6 = (Pos) arrayList2.get(i4);
                            Pos posA = o.a(pos6, (Pos) arrayList2.get(i5));
                            if (posB != null) {
                                arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posB, posA, -d3));
                                arrayList3.add(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posB, pos6, ((double) (-this.b.i)) * 0.5d));
                            }
                            i4++;
                        }
                        cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar4 = this.b;
                        eVar4.f3970e = posB;
                        eVar4.f3971f = arrayList;
                        eVar4.f3972g = arrayList3;
                        Pos pos7 = new Pos((Pos) arrayList3.get(0));
                        Pos pos8 = new Pos((Pos) arrayList3.get(2));
                        double dSin2 = Math.sin(2.1816615649929116d);
                        double dCos2 = Math.cos(2.1816615649929116d);
                        pos7.rotate(posB, dCos2, dSin2);
                        pos8.rotate(posB, dCos2, dSin2);
                        Line line4 = new Line(pos7, pos8);
                        line = new Line((Pos) arrayList3.get(0), (Pos) arrayList3.get(2));
                        line2 = line4;
                    }
                } else {
                    line = null;
                }
            }
            e(line2, line);
        }
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.b
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void b(CenterCircleSrcData centerCircleSrcData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        Pos pos;
        Pos pos2;
        Pos pos3;
        Pos pos4;
        this.f4040a = centerCircleSrcData;
        this.f4041d = cn.mucang.android.jiakaoyi.hpmap.c.b.j(centerCircleSrcData.p1, aVar);
        this.f4042e = cn.mucang.android.jiakaoyi.hpmap.c.b.j(centerCircleSrcData.p2, aVar);
        this.f4043f = cn.mucang.android.jiakaoyi.hpmap.c.b.j(centerCircleSrcData.p3, aVar);
        int i = centerCircleSrcData.shape;
        if (i == 1 || i == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()) {
            Pos pos5 = this.f4041d;
            if (pos5 == null || (pos = this.f4042e) == null || (pos2 = this.f4043f) == null) {
                return;
            }
            Pos posC = o.c(pos5, pos, pos2);
            this.j = posC;
            double dDistanceTo = posC.distanceTo(this.f4041d);
            this.k = dDistanceTo;
            double d2 = dDistanceTo + ((double) centerCircleSrcData.outLineWidth);
            Pos pos6 = this.j;
            double d3 = pos6.x;
            double d4 = pos6.y;
            this.i = new cn.mucang.android.jiakaoyi.signal.pos.a(d3 - d2, d4 - d2, d3 + d2, d2 + d4);
            return;
        }
        int i2 = centerCircleSrcData.shape;
        if (i2 == 2 || i2 == K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType()) {
            Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(centerCircleSrcData.p4, aVar);
            this.f4044g = posJ;
            Pos pos7 = this.f4041d;
            if (pos7 == null || (pos3 = this.f4042e) == null || (pos4 = this.f4043f) == null || posJ == null) {
                return;
            }
            cn.mucang.android.jiakaoyi.signal.pos.c cVar = new cn.mucang.android.jiakaoyi.signal.pos.c(pos7, pos3, pos4, posJ);
            this.f4045h = cVar;
            this.i = cVar.f5822e;
        }
    }
}
