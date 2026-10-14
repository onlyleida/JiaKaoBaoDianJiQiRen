package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2ShanLuRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class j extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public List<Pos> i;
    public List<Pos> j;
    public List<Pos> k;
    public List<Pos> l;
    public List<Pos> m;
    public Line n;
    public Line o;
    public Line p;
    public Line q;
    public Line r;
    public Line s;
    public Line t;
    public Line u;
    public cn.mucang.android.jiakaoyi.signal.pos.a v;
    public List<Pos> w;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos C() {
        return this.n.end;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public float D() {
        return super.D() / 2.0f;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public boolean E() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.v;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        this.l = new ArrayList();
        this.m = new ArrayList();
        B2ShanLuRenderModel b2ShanLuRenderModel = new B2ShanLuRenderModel();
        b2ShanLuRenderModel.key = this.f3655a;
        Line line = new Line(this.n);
        b2ShanLuRenderModel.startLine = line;
        line.lineWidth = 15.0d;
        b2ShanLuRenderModel.endLine = new Line(this.o);
        b2ShanLuRenderModel.firstHonkReportLine = this.q;
        b2ShanLuRenderModel.firstHonkCheckLine = this.r;
        b2ShanLuRenderModel.secondHonkReportLine = this.s;
        b2ShanLuRenderModel.secondHonkCheckLine = this.t;
        b2ShanLuRenderModel.leftPoints = new ArrayList();
        b2ShanLuRenderModel.middlePoints = new ArrayList();
        b2ShanLuRenderModel.rightPoints = new ArrayList();
        boolean zD = cn.mucang.android.core.utils.g.d(this.i);
        Double dValueOf = Double.valueOf(1.5d);
        if (zD) {
            List<Pos> listD = cn.mucang.android.jiakaoyi.signal.utils.j.a.d(this.i, dValueOf);
            int i = 0;
            while (i < listD.size() - 1) {
                int i2 = i + 1;
                Line lineA = A(listD.get(i), listD.get(i2), 15.0d, true);
                if (i == 0) {
                    b2ShanLuRenderModel.leftPoints.add(lineA.start);
                }
                b2ShanLuRenderModel.leftPoints.add(lineA.end);
                i = i2;
            }
            List<Pos> list = b2ShanLuRenderModel.leftPoints;
            List<Pos> list2 = this.i;
            list.add(list2.get(list2.size() - 1));
        }
        if (cn.mucang.android.core.utils.g.d(this.k)) {
            List<Pos> listD2 = cn.mucang.android.jiakaoyi.signal.utils.j.a.d(this.k, dValueOf);
            int i3 = 0;
            while (i3 < listD2.size() - 1) {
                int i4 = i3 + 1;
                Line line2 = new Line(listD2.get(i3), listD2.get(i4));
                Line lineA2 = A(listD2.get(i3), listD2.get(i4), 15.0d, true);
                Line lineA3 = A(listD2.get(i3), listD2.get(i4), 15.0d, false);
                line2.lineWidth = 15.0d;
                if (i3 == 0) {
                    b2ShanLuRenderModel.middlePoints.add(line2.start);
                    this.l.add(lineA2.start);
                    this.m.add(lineA3.start);
                }
                b2ShanLuRenderModel.middlePoints.add(line2.end);
                this.l.add(lineA2.end);
                this.m.add(lineA3.end);
                i3 = i4;
            }
            List<Pos> list3 = b2ShanLuRenderModel.middlePoints;
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
            List<Pos> listD3 = cn.mucang.android.jiakaoyi.signal.utils.j.a.d(this.j, dValueOf);
            int i5 = 0;
            while (i5 < listD3.size() - 1) {
                int i6 = i5 + 1;
                Line lineA4 = A(listD3.get(i5), listD3.get(i6), 15.0d, false);
                if (i5 == 0) {
                    b2ShanLuRenderModel.rightPoints.add(lineA4.start);
                }
                b2ShanLuRenderModel.rightPoints.add(lineA4.end);
                i5 = i6;
            }
            List<Pos> list9 = b2ShanLuRenderModel.rightPoints;
            List<Pos> list10 = this.j;
            list9.add(list10.get(list10.size() - 1));
        }
        Line line3 = this.p;
        if (line3 != null) {
            b2ShanLuRenderModel.report = new Line(new Pos(line3.start), new Pos(this.p.end), 15.0d);
        }
        b2ShanLuRenderModel.mapName = this.b;
        return b2ShanLuRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        Pos posMeanWith = new Pos(this.n.start).meanWith(this.n.end);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(posMeanWith, new Pos(this.o.start).meanWith(this.o.end), posMeanWith);
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
        sparseArray.put(17, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.j));
        sparseArray.put(18, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.k));
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.o;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        return !v(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.u == null) {
            Line line = this.n;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.n.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.j.get(4))) > 0.0d) {
                this.u = lineO;
            } else {
                Line line2 = this.n;
                this.u = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.u;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_ShanLu;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.v.h(carPos.bound)) {
            return true;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.o) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.n) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.i, 2) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.j, 2)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return false;
        }
        Pos posMeanWith = new Pos(carPos.carRect.b).meanWith(carPos.carRect.c);
        Pos posMeanWith2 = new Pos(carPos.carRect.f5820a).meanWith(carPos.carRect.f5821d);
        List<Pos> list = this.w;
        return list == null || !(cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith, list) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith2, this.w));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        List<Pos> list = this.w;
        return list != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, list);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        Line line = this.p;
        return line != null ? line.middle().meanWith(this.o.middle()) : this.n.middle().meanWith(this.o.middle());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.o.end;
    }
}
