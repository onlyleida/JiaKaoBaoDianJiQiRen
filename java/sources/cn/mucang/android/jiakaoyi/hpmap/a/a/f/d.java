package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2GaoSuRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line A;
    public Line B;
    public Line C;
    public Line D;
    public cn.mucang.android.jiakaoyi.signal.pos.a E;
    public cn.mucang.android.jiakaoyi.signal.pos.c F;
    public cn.mucang.android.jiakaoyi.signal.pos.c G;
    public List<Pos> H;
    public Line I;
    public Line J;
    public List<Pos> i;
    public List<Pos> j;
    public List<Pos> k;
    public List<Pos> l;
    public List<Pos> m;
    public Pos n;
    public Pos o;
    public Pos p;
    public Pos q;
    public Pos r;
    public Pos s;
    public Line t;
    public Line u;
    public Line v;
    public Line w;
    public Line x;
    public Line y;
    public Line z;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos C() {
        return this.v.end;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public float D() {
        return super.D() / 5.0f;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public boolean E() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.E;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        double d2;
        this.l = new ArrayList();
        this.m = new ArrayList();
        B2GaoSuRenderModel b2GaoSuRenderModel = new B2GaoSuRenderModel();
        b2GaoSuRenderModel.key = this.f3655a;
        Line line = this.v;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = this.w;
        Pos pos3 = line2.end;
        Pos pos4 = line2.start;
        Line line3 = this.t;
        Pos pos5 = line3.start;
        Pos pos6 = line3.end;
        Pos pos7 = this.r;
        Pos pos8 = this.n;
        Pos pos9 = this.o;
        Pos pos10 = this.p;
        Pos pos11 = this.q;
        Pos pos12 = this.s;
        Line line4 = this.u;
        Pos pos13 = line4.start;
        Pos pos14 = line4.end;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, pos2, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos6, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos13, pos3, pos4, 7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos14, pos4, pos3, 7.5d);
        double d3 = 15.0d;
        b2GaoSuRenderModel.startLine = new Line(posW, posW2, 15.0d);
        b2GaoSuRenderModel.endLine = new Line(posW4, posW3, 15.0d);
        Pos posW5 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos6, this.v.start, pos5, 7.5d);
        Pos posW6 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, this.v.end, pos6, 7.5d);
        if (this.G != null) {
            Pos posW7 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos8, pos12, pos7, 7.5d);
            Pos posW8 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos6, pos9, pos8, -7.5d);
            Pos posW9 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos8, pos10, pos9, 7.5d);
            Pos posW10 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos9, pos11, pos10, 7.5d);
            Pos posW11 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos10, pos14, pos11, -7.5d);
            Pos posW12 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos7, pos11, pos12, 7.5d);
            d3 = 15.0d;
            b2GaoSuRenderModel.line34 = new Line(posW7, posW8, 15.0d);
            b2GaoSuRenderModel.line45 = new Line(posW8, posW9, 15.0d);
            b2GaoSuRenderModel.line56 = new Line(posW9, posW10, 15.0d);
            b2GaoSuRenderModel.line67 = new Line(posW10, posW11, 15.0d);
            b2GaoSuRenderModel.line78 = new Line(posW11, posW12, 15.0d);
            d2 = 7.5d;
        } else {
            d2 = 7.5d;
        }
        Pos posW13 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, pos14, pos13, d2);
        Pos posW14 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos6, pos13, pos14, d2);
        b2GaoSuRenderModel.areaStartLine = new Line(posW5, posW6, d3);
        b2GaoSuRenderModel.areaEndLine = new Line(posW13, posW14, d3);
        b2GaoSuRenderModel.hasUrgentRect = this.G != null;
        b2GaoSuRenderModel.line0 = this.z;
        b2GaoSuRenderModel.line50 = this.A;
        b2GaoSuRenderModel.line100 = this.B;
        b2GaoSuRenderModel.line150 = this.C;
        b2GaoSuRenderModel.line200 = this.D;
        b2GaoSuRenderModel.leftPoints = new ArrayList();
        b2GaoSuRenderModel.middlePoints = new ArrayList();
        b2GaoSuRenderModel.rightPoints = new ArrayList();
        if (cn.mucang.android.core.utils.g.d(this.i)) {
            List<Pos> listD = cn.mucang.android.jiakaoyi.signal.utils.j.a.d(this.i, Double.valueOf(1.5d));
            int i = 0;
            while (i < listD.size() - 1) {
                int i2 = i + 1;
                Line lineA = A(listD.get(i), listD.get(i2), 15.0d, true);
                if (i == 0) {
                    b2GaoSuRenderModel.leftPoints.add(lineA.start);
                }
                b2GaoSuRenderModel.leftPoints.add(lineA.end);
                i = i2;
            }
            List<Pos> list = b2GaoSuRenderModel.leftPoints;
            List<Pos> list2 = this.i;
            list.add(list2.get(list2.size() - 1));
        }
        if (cn.mucang.android.core.utils.g.d(this.k)) {
            List<Pos> listD2 = cn.mucang.android.jiakaoyi.signal.utils.j.a.d(this.k, Double.valueOf(1.5d));
            int i3 = 0;
            while (i3 < listD2.size() - 1) {
                int i4 = i3 + 1;
                Line line5 = new Line(listD2.get(i3), listD2.get(i4));
                Line lineA2 = A(listD2.get(i3), listD2.get(i4), 15.0d, true);
                Line lineA3 = A(listD2.get(i3), listD2.get(i4), 15.0d, false);
                if (i3 == 0) {
                    b2GaoSuRenderModel.middlePoints.add(line5.start);
                    this.l.add(lineA2.start);
                    this.m.add(lineA3.start);
                }
                b2GaoSuRenderModel.middlePoints.add(line5.end);
                this.l.add(lineA2.end);
                this.m.add(lineA3.end);
                i3 = i4;
            }
            List<Pos> list3 = b2GaoSuRenderModel.middlePoints;
            List<Pos> list4 = this.k;
            list3.add(list4.get(list4.size() - 1));
            List<Pos> list5 = this.l;
            List<Pos> list6 = this.k;
            list5.add(list6.get(list6.size() - 1));
            List<Pos> list7 = this.m;
            List<Pos> list8 = this.k;
            list7.add(list8.get(list8.size() - 1));
        }
        if (cn.mucang.android.core.utils.g.d(this.j)) {
            List<Pos> listD3 = cn.mucang.android.jiakaoyi.signal.utils.j.a.d(this.j, Double.valueOf(1.5d));
            int i5 = 0;
            while (i5 < listD3.size() - 1) {
                int i6 = i5 + 1;
                Line lineA4 = A(listD3.get(i5), listD3.get(i6), 15.0d, true);
                if (i5 == 0) {
                    b2GaoSuRenderModel.rightPoints.add(lineA4.start);
                }
                b2GaoSuRenderModel.rightPoints.add(lineA4.end);
                i5 = i6;
            }
            List<Pos> list9 = b2GaoSuRenderModel.rightPoints;
            List<Pos> list10 = this.j;
            list9.add(list10.get(list10.size() - 1));
        }
        Line line6 = this.x;
        if (line6 != null) {
            b2GaoSuRenderModel.report = new Line(new Pos(line6.start), new Pos(this.x.end), 15.0d);
        }
        b2GaoSuRenderModel.mapName = this.b;
        return b2GaoSuRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.v;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        Pos posMeanWith = new Pos(this.v.start).meanWith(this.v.end);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(posMeanWith, new Pos(this.w.start).meanWith(this.w.end), posMeanWith);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.get(0));
        sparseArray.put(2, this.k.get(0));
        sparseArray.put(3, this.j.get(0));
        List<Pos> list = this.i;
        sparseArray.put(4, list.get(list.size() / 4));
        List<Pos> list2 = this.k;
        sparseArray.put(5, list2.get(list2.size() / 4));
        List<Pos> list3 = this.j;
        sparseArray.put(6, list3.get(list3.size() / 4));
        List<Pos> list4 = this.i;
        sparseArray.put(7, list4.get(list4.size() / 2));
        List<Pos> list5 = this.k;
        sparseArray.put(8, list5.get(list5.size() / 2));
        List<Pos> list6 = this.j;
        sparseArray.put(9, list6.get(list6.size() / 2));
        List<Pos> list7 = this.i;
        sparseArray.put(10, list7.get((list7.size() * 3) / 4));
        List<Pos> list8 = this.k;
        sparseArray.put(11, list8.get((list8.size() * 3) / 4));
        List<Pos> list9 = this.j;
        sparseArray.put(12, list9.get((list9.size() * 3) / 4));
        List<Pos> list10 = this.i;
        sparseArray.put(13, list10.get(list10.size() - 1));
        List<Pos> list11 = this.k;
        sparseArray.put(14, list11.get(list11.size() - 1));
        List<Pos> list12 = this.j;
        sparseArray.put(15, list12.get(list12.size() - 1));
        sparseArray.put(16, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.i));
        sparseArray.put(17, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.k));
        sparseArray.put(18, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.j));
        sparseArray.put(19, this.t.start);
        sparseArray.put(20, this.t.end);
        sparseArray.put(21, this.r);
        sparseArray.put(22, this.n);
        sparseArray.put(23, this.o);
        sparseArray.put(24, this.p);
        sparseArray.put(25, this.q);
        sparseArray.put(26, this.s);
        sparseArray.put(27, this.u.start);
        sparseArray.put(28, this.u.end);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.w;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.x;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        return !v(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.y == null) {
            Line line = this.v;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.v.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.j.get(4))) > 0.0d) {
                this.y = lineO;
            } else {
                Line line2 = this.v;
                this.y = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.y;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_GaoSu;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.E.h(carPos.bound)) {
            return true;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.w) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.v) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.i, 2) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.k, 2) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.j, 2) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.F)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.G;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, cVar)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = this.f3656d;
        if (cVar2 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar2, carPos.carRect)) {
            return false;
        }
        Pos posMeanWith = new Pos(carPos.carRect.b).meanWith(carPos.carRect.c);
        Pos posMeanWith2 = new Pos(carPos.carRect.f5820a).meanWith(carPos.carRect.f5821d);
        List<Pos> list = this.H;
        return list == null || !(cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith, list) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith2, this.H));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        List<Pos> list = this.H;
        if (list != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, list)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.G;
        if (cVar != null) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos);
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.v.middle().meanWith(this.w.middle());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.w.end;
    }
}
