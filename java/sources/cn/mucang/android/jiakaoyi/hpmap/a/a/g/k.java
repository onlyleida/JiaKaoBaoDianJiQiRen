package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2ShangPoRenderModel;
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
    public Line t;
    public Line u;
    public cn.mucang.android.jiakaoyi.signal.pos.a v;
    public cn.mucang.android.jiakaoyi.signal.pos.c w;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.v;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2ShangPoRenderModel c2ShangPoRenderModel = new C2ShangPoRenderModel();
        c2ShangPoRenderModel.key = this.f3655a;
        Line line = new Line(this.i);
        c2ShangPoRenderModel.startLine = line;
        line.lineWidth = 4.0d;
        Line line2 = new Line(this.j);
        c2ShangPoRenderModel.endLine = line2;
        line2.lineWidth = 4.0d;
        Line line3 = this.r;
        c2ShangPoRenderModel.leftLine = A(line3.start, line3.end, 15.0d, true);
        Line line4 = this.s;
        Line lineA = A(line4.start, line4.end, 15.0d, false);
        c2ShangPoRenderModel.rightLine = lineA;
        Line line5 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.l, lineA), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.l, c2ShangPoRenderModel.leftLine));
        c2ShangPoRenderModel.line34 = line5;
        line5.lineWidth = 4.0d;
        Line line6 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.m, c2ShangPoRenderModel.leftLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.m, c2ShangPoRenderModel.rightLine));
        c2ShangPoRenderModel.line56 = line6;
        line6.lineWidth = 4.0d;
        Line line7 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.n, c2ShangPoRenderModel.rightLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.n, c2ShangPoRenderModel.leftLine));
        c2ShangPoRenderModel.line78 = line7;
        line7.lineWidth = 4.0d;
        SparseArray<Pos> sparseArray = new SparseArray<>();
        this.f3658f = sparseArray;
        sparseArray.put(1, c2ShangPoRenderModel.leftLine.start);
        this.f3658f.put(2, c2ShangPoRenderModel.rightLine.start);
        this.f3658f.put(3, c2ShangPoRenderModel.line34.start);
        this.f3658f.put(4, c2ShangPoRenderModel.line34.end);
        this.f3658f.put(5, c2ShangPoRenderModel.line56.start);
        this.f3658f.put(6, c2ShangPoRenderModel.line56.end);
        this.f3658f.put(7, c2ShangPoRenderModel.line78.start);
        this.f3658f.put(8, c2ShangPoRenderModel.line78.end);
        Line line8 = this.o;
        if (line8 != null) {
            Line line9 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(line8, c2ShangPoRenderModel.leftLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.o, c2ShangPoRenderModel.rightLine));
            c2ShangPoRenderModel.line910 = line9;
            line9.lineWidth = 4.0d;
            this.f3658f.put(9, line9.start);
            this.f3658f.put(10, c2ShangPoRenderModel.line910.end);
        }
        Line line10 = this.p;
        if (line10 != null) {
            Line line11 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(line10, c2ShangPoRenderModel.rightLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.p, c2ShangPoRenderModel.leftLine));
            c2ShangPoRenderModel.line1112 = line11;
            line11.lineWidth = 4.0d;
            this.f3658f.put(11, line11.start);
            this.f3658f.put(12, c2ShangPoRenderModel.line1112.end);
        }
        Line line12 = this.t;
        if (line12 != null) {
            c2ShangPoRenderModel.report = new Line(new Pos(line12.start), new Pos(this.t.end), 15.0d);
        }
        c2ShangPoRenderModel.reportRect = this.f3656d;
        c2ShangPoRenderModel.mapName = this.b;
        return c2ShangPoRenderModel;
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
        return new cn.mucang.android.jiakaoyi.signal.utils.b(posMeanWith, new Pos(pos).meanWith(pos4), posMeanWith);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.start);
        sparseArray.put(2, this.i.end);
        sparseArray.put(3, this.l.start);
        sparseArray.put(4, this.l.end);
        sparseArray.put(5, this.m.start);
        sparseArray.put(6, this.m.end);
        sparseArray.put(7, this.n.start);
        sparseArray.put(8, this.n.end);
        sparseArray.put(9, this.o.start);
        sparseArray.put(10, this.o.end);
        Line line = this.p;
        if (line != null) {
            sparseArray.put(11, line.start);
            sparseArray.put(12, this.p.end);
        }
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.t;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        return !v(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.u == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.l.start)) > 0.0d) {
                this.u = lineO;
            } else {
                Line line2 = this.i;
                this.u = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.u;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public int q(Line line) {
        if (line == this.i) {
            return 1;
        }
        if (line == this.l) {
            return 2;
        }
        if (line == this.m) {
            return 3;
        }
        if (line == this.n) {
            return 4;
        }
        if (line == this.o) {
            return 5;
        }
        if (line == this.p) {
            return 6;
        }
        if (line == this.r) {
            return 7;
        }
        return line == this.s ? 8 : -1;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_ShangPoQiBu;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line u() {
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.v.h(carPos.bound)) {
            return true;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.s) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.r) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.j) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return false;
        }
        Line line = this.r;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = this.s;
        return !cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, line2.end, line2.start));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        if (this.w == null) {
            Line line = this.p;
            if (line != null) {
                Line line2 = this.i;
                this.w = new cn.mucang.android.jiakaoyi.signal.pos.c(line2.start, line2.end, line.start, line.end);
            } else {
                Line line3 = this.i;
                Pos pos2 = line3.start;
                Pos pos3 = line3.end;
                Line line4 = this.o;
                this.w = new cn.mucang.android.jiakaoyi.signal.pos.c(pos2, pos3, line4.end, line4.start);
            }
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.w, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        Line line = this.p;
        return line != null ? line.end : this.o.start;
    }
}
