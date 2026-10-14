package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2DaoKuRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class c extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
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
    public boolean u;
    public cn.mucang.android.jiakaoyi.signal.pos.c v;
    public cn.mucang.android.jiakaoyi.signal.pos.c w;
    public cn.mucang.android.jiakaoyi.signal.pos.a x;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos C() {
        return !this.u ? this.r.end : this.r.start;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.x;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2DaoKuRenderModel c2DaoKuRenderModel = new C2DaoKuRenderModel();
        c2DaoKuRenderModel.key = this.f3655a;
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
        c2DaoKuRenderModel.startLine = new Line(posW, posW2, dF);
        c2DaoKuRenderModel.line23 = new Line(posW2, posW3, dF);
        c2DaoKuRenderModel.line34 = new Line(posW3, posW4, dF);
        c2DaoKuRenderModel.line45 = new Line(posW4, posW5, dF);
        c2DaoKuRenderModel.line56 = new Line(posW5, posW6, dF);
        c2DaoKuRenderModel.line67 = new Line(posW6, posW7, dF);
        c2DaoKuRenderModel.endLine = new Line(posW7, posW8, dF);
        c2DaoKuRenderModel.line81 = new Line(posW8, posW, dF);
        c2DaoKuRenderModel.line36 = new Line(posW3, posW6, dF);
        Line line3 = this.s;
        if (line3 != null) {
            c2DaoKuRenderModel.report = new Line(new Pos(line3.start), new Pos(this.s.end), dF);
        }
        c2DaoKuRenderModel.reportRect = this.f3656d;
        c2DaoKuRenderModel.mapName = this.b;
        if (this.u) {
            c2DaoKuRenderModel.stepDirection = 1;
        } else {
            c2DaoKuRenderModel.stepDirection = 2;
        }
        return c2DaoKuRenderModel;
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
        sparseArray.put(3, this.w.f5820a);
        sparseArray.put(4, this.w.b);
        sparseArray.put(5, this.w.c);
        sparseArray.put(6, this.w.f5821d);
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
        if (carPos.bound.h(this.x)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(this.w, carPos.carRect) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(this.v, carPos.carRect)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect);
        }
        return false;
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

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean r() {
        return this.u;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_DaoCheRuKu;
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
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.w, pos) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.v, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.r.middle().meanWith(this.m.middle());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return !this.u ? this.r.start : this.r.end;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public double z() {
        return this.r.middle().distanceTo(this.m.middle());
    }
}
