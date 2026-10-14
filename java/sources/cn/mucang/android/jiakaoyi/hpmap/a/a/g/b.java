package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2CeFangRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class b extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
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
    public cn.mucang.android.jiakaoyi.signal.pos.c u;
    public cn.mucang.android.jiakaoyi.signal.pos.c v;
    public cn.mucang.android.jiakaoyi.signal.pos.a w;
    public boolean x;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.w;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2CeFangRenderModel c2CeFangRenderModel = new C2CeFangRenderModel();
        c2CeFangRenderModel.key = this.f3655a;
        double dF = F((this.k.start.distanceTo(this.l.start) + this.k.end.distanceTo(this.l.end)) * 0.5d);
        Pos pos = this.i.start;
        Line line = this.n;
        Pos pos2 = line.start;
        Pos pos3 = line.end;
        Pos pos4 = this.o.end;
        Line line2 = this.p;
        Pos pos5 = line2.start;
        Pos pos6 = line2.end;
        Pos pos7 = this.q.end;
        Pos pos8 = this.j.end;
        double d2 = 0.5d * dF;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos8, pos, d2);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos3, pos, pos2, d2);
        double d3 = -d2;
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos4, pos2, pos3, d3);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, pos3, pos4, d2);
        Pos posW5 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos4, pos6, pos5, d2);
        Pos posW6 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, pos7, pos6, d3);
        Pos posW7 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos6, pos8, pos7, d2);
        Pos posW8 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos7, pos8, d2);
        SparseArray<Pos> sparseArray = new SparseArray<>();
        this.f3658f = sparseArray;
        sparseArray.put(1, posW);
        this.f3658f.put(2, posW2);
        this.f3658f.put(3, posW3);
        this.f3658f.put(4, posW4);
        this.f3658f.put(5, posW5);
        this.f3658f.put(6, posW6);
        this.f3658f.put(7, posW7);
        this.f3658f.put(8, posW8);
        c2CeFangRenderModel.startLine = new Line(posW, posW2, dF);
        c2CeFangRenderModel.line23 = new Line(posW2, posW3, dF);
        c2CeFangRenderModel.line34 = new Line(posW3, posW4, dF);
        c2CeFangRenderModel.line45 = new Line(posW4, posW5, dF);
        c2CeFangRenderModel.line56 = new Line(posW5, posW6, dF);
        c2CeFangRenderModel.line67 = new Line(posW6, posW7, dF);
        c2CeFangRenderModel.endLine = new Line(posW7, posW8, dF);
        c2CeFangRenderModel.line81 = new Line(posW8, posW, dF);
        c2CeFangRenderModel.line36 = new Line(posW3, posW6, dF);
        Line line3 = this.s;
        if (line3 != null) {
            c2CeFangRenderModel.report = new Line(new Pos(line3.start), new Pos(this.s.end), dF);
        }
        c2CeFangRenderModel.mapName = this.b;
        return c2CeFangRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        SparseArray<Pos> sparseArrayJ = j();
        Pos pos = sparseArrayJ.get(3);
        Pos pos2 = sparseArrayJ.get(4);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos2, pos, pos, 1.0d, pos2.vectorTo(pos).cross(pos.vectorTo(sparseArrayJ.get(6))) > 0.0d);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.start);
        sparseArray.put(2, this.i.end);
        sparseArray.put(3, this.v.f5820a);
        sparseArray.put(4, this.v.b);
        sparseArray.put(5, this.v.c);
        sparseArray.put(6, this.v.f5821d);
        sparseArray.put(7, this.q.end);
        sparseArray.put(8, this.r.start);
        sparseArray.put(9, cn.mucang.android.jiakaoyi.hpmap.d.a.n(this.p.end, this.i.start, this.r.start));
        sparseArray.put(10, this.l.start);
        sparseArray.put(11, this.l.end);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.s;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (carPos.bound.h(this.w)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.v) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.u) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.r) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.j) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.n) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.o) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.m) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.p)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.q);
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.t == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.o.start)) > 0.0d) {
                this.t = lineO;
            } else {
                Line line2 = this.i;
                this.t = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.t;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public int q(Line line) {
        if (line == this.i) {
            return 1;
        }
        if (line == this.n) {
            return 2;
        }
        if (line == this.o) {
            return 3;
        }
        if (line == this.m) {
            return 4;
        }
        if (line == this.p) {
            return 5;
        }
        if (line == this.q) {
            return 6;
        }
        if (line == this.j) {
            return 7;
        }
        if (line == this.r) {
            return 8;
        }
        if (line == this.k) {
            return 9;
        }
        return line == this.l ? 10 : -1;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_CeFangTingChe;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line u() {
        return this.r;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.v, pos) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.u, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.r.middle().meanWith(this.m.middle());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.r.start;
    }
}
