package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2ShangPoRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class k extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public Line m;
    public Line n;
    public Line o;
    public Line p;
    public Line q;
    public Line r;
    public Line s;
    public cn.mucang.android.jiakaoyi.signal.pos.a t;
    public cn.mucang.android.jiakaoyi.signal.pos.c u;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.t;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2ShangPoRenderModel b2ShangPoRenderModel = new B2ShangPoRenderModel();
        b2ShangPoRenderModel.key = this.f3655a;
        Line line = new Line(this.i);
        b2ShangPoRenderModel.startLine = line;
        line.lineWidth = 4.0d;
        Line line2 = new Line(this.j);
        b2ShangPoRenderModel.endLine = line2;
        line2.lineWidth = 4.0d;
        Line line3 = this.p;
        b2ShangPoRenderModel.leftLine = A(line3.start, line3.end, 15.0d, true);
        Line line4 = this.q;
        Line lineA = A(line4.start, line4.end, 15.0d, false);
        b2ShangPoRenderModel.rightLine = lineA;
        Line line5 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.k, lineA), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.k, b2ShangPoRenderModel.leftLine));
        b2ShangPoRenderModel.line34 = line5;
        line5.lineWidth = 4.0d;
        Line line6 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.l, b2ShangPoRenderModel.leftLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.l, b2ShangPoRenderModel.rightLine));
        b2ShangPoRenderModel.line56 = line6;
        line6.lineWidth = 4.0d;
        Line line7 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.m, b2ShangPoRenderModel.rightLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.m, b2ShangPoRenderModel.leftLine));
        b2ShangPoRenderModel.line78 = line7;
        line7.lineWidth = 4.0d;
        Line line8 = this.n;
        if (line8 != null) {
            Line line9 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(line8, b2ShangPoRenderModel.leftLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.n, b2ShangPoRenderModel.rightLine));
            b2ShangPoRenderModel.line910 = line9;
            line9.lineWidth = 4.0d;
        }
        Line line10 = this.o;
        if (line10 != null) {
            Line line11 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(line10, b2ShangPoRenderModel.rightLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.o, b2ShangPoRenderModel.leftLine));
            b2ShangPoRenderModel.line1112 = line11;
            line11.lineWidth = 4.0d;
        }
        Line line12 = this.r;
        if (line12 != null) {
            b2ShangPoRenderModel.report = new Line(new Pos(line12.start), new Pos(this.r.end), 15.0d);
        }
        b2ShangPoRenderModel.reportRect = this.f3656d;
        b2ShangPoRenderModel.mapName = this.b;
        return b2ShangPoRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        SparseArray<Pos> sparseArrayJ = j();
        Pos pos = sparseArrayJ.get(5);
        Pos pos2 = sparseArrayJ.get(6);
        Pos pos3 = sparseArrayJ.get(7);
        Pos pos4 = sparseArrayJ.get(8);
        Pos posMeanWith = new Pos(pos2).meanWith(pos3);
        Pos posMeanWith2 = new Pos(pos).meanWith(pos4);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(posMeanWith, posMeanWith2, new Pos(posMeanWith).meanWith(posMeanWith2), 1.0d, true);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.start);
        sparseArray.put(2, this.i.end);
        sparseArray.put(3, this.k.start);
        sparseArray.put(4, this.k.end);
        sparseArray.put(5, this.l.start);
        sparseArray.put(6, this.l.end);
        sparseArray.put(7, this.m.start);
        sparseArray.put(8, this.m.end);
        sparseArray.put(9, this.n.start);
        sparseArray.put(10, this.n.end);
        Line line = this.o;
        if (line != null) {
            sparseArray.put(11, line.start);
            sparseArray.put(12, this.o.end);
        }
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.r;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        return !v(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.s == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.k.start)) > 0.0d) {
                this.s = lineO;
            } else {
                Line line2 = this.i;
                this.s = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.s;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_ShangPoQiBu;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.t.h(carPos.bound)) {
            return true;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.q) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.p) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.j) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return false;
        }
        Line line = this.p;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = this.q;
        return !cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, line2.end, line2.start));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.u, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        Line line = this.o;
        return line != null ? line.end : this.n.start;
    }
}
