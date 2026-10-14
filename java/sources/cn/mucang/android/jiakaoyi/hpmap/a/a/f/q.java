package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2ZhuangKaoRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class q extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Pos A;
    public Line B;
    public Line C;
    public boolean D;
    public cn.mucang.android.jiakaoyi.signal.pos.c E;
    public cn.mucang.android.jiakaoyi.signal.pos.c F;
    public cn.mucang.android.jiakaoyi.signal.pos.c G;
    public cn.mucang.android.jiakaoyi.signal.pos.c H;
    public cn.mucang.android.jiakaoyi.signal.pos.a I;
    public float J;
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
    public Pos v;
    public Pos w;
    public Pos x;
    public Pos y;
    public Pos z;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos C() {
        return !this.D ? this.u.end : this.u.start;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.I;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2ZhuangKaoRenderModel b2ZhuangKaoRenderModel = new B2ZhuangKaoRenderModel();
        b2ZhuangKaoRenderModel.key = this.f3655a;
        double dF = F((this.k.start.distanceTo(this.l.start) + this.k.end.distanceTo(this.l.end)) * 0.5d);
        Pos pos = this.i.start;
        Line line = this.q;
        Pos pos2 = line.start;
        Pos pos3 = line.end;
        Pos pos4 = this.r.end;
        Line line2 = this.n;
        Pos pos5 = line2.start;
        Pos pos6 = line2.end;
        Line line3 = this.s;
        Pos pos7 = line3.start;
        Pos pos8 = line3.end;
        Line line4 = this.j;
        Pos pos9 = line4.start;
        Pos pos10 = line4.end;
        b2ZhuangKaoRenderModel.b3 = this.v;
        b2ZhuangKaoRenderModel.b4 = this.w;
        b2ZhuangKaoRenderModel.b5 = this.x;
        b2ZhuangKaoRenderModel.b6 = this.y;
        b2ZhuangKaoRenderModel.b7 = this.z;
        b2ZhuangKaoRenderModel.b8 = this.A;
        double d2 = 0.5d * dF;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos10, pos, d2);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos3, pos, pos2, d2);
        double d3 = -d2;
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos4, pos2, pos3, d3);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, pos3, pos4, d2);
        Pos posW5 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos4, pos6, pos5, d2);
        Pos posW6 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(this.k.start, pos5, pos6, d2);
        Pos posW7 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos8, pos9, pos7, d3);
        Pos posW8 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, pos7, pos8, d2);
        Pos posW9 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos10, pos7, pos9, d2);
        Pos posW10 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos9, pos10, d2);
        b2ZhuangKaoRenderModel.startLine = new Line(posW, posW2, dF);
        b2ZhuangKaoRenderModel.line23 = new Line(posW2, posW3, dF);
        b2ZhuangKaoRenderModel.line34 = new Line(posW3, posW4, dF);
        b2ZhuangKaoRenderModel.line45 = new Line(posW4, posW5, dF);
        b2ZhuangKaoRenderModel.line56 = new Line(posW5, posW6, dF);
        b2ZhuangKaoRenderModel.line58 = new Line(posW5, posW8, dF);
        b2ZhuangKaoRenderModel.line67 = new Line(posW6, posW7, dF);
        b2ZhuangKaoRenderModel.line78 = new Line(posW7, posW8, dF);
        b2ZhuangKaoRenderModel.line79 = new Line(posW7, posW9, dF);
        b2ZhuangKaoRenderModel.endLine = new Line(posW9, posW10, dF);
        b2ZhuangKaoRenderModel.line101 = new Line(posW10, posW, dF);
        b2ZhuangKaoRenderModel.line36 = new Line(posW3, posW6, dF);
        b2ZhuangKaoRenderModel.poleRadius = this.J;
        Line line5 = this.B;
        if (line5 != null) {
            b2ZhuangKaoRenderModel.report = new Line(new Pos(line5.start), new Pos(this.B.end), dF);
        }
        b2ZhuangKaoRenderModel.reportRect = this.f3656d;
        b2ZhuangKaoRenderModel.mapName = this.b;
        return b2ZhuangKaoRenderModel;
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
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos, pos2, pos2, 1.0d, true);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.start);
        sparseArray.put(2, this.i.end);
        sparseArray.put(3, this.F.f5820a);
        sparseArray.put(4, this.F.b);
        sparseArray.put(5, this.F.c);
        sparseArray.put(6, this.F.f5821d);
        sparseArray.put(7, this.s.start);
        sparseArray.put(8, this.s.end);
        sparseArray.put(9, this.t.end);
        sparseArray.put(10, this.u.start);
        sparseArray.put(11, cn.mucang.android.jiakaoyi.hpmap.d.a.n(this.s.start, this.i.start, this.j.end));
        sparseArray.put(12, this.l.start);
        sparseArray.put(13, this.l.end);
        sparseArray.put(14, this.m.end);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.B;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (carPos.bound.h(this.I)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.F) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.G) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.E) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.j) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.q) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.r) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.o) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.p) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.s) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.t)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return true;
        }
        Line line = this.B;
        return line != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.C == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.r.start)) > 0.0d) {
                this.C = lineO;
            } else {
                Line line2 = this.i;
                this.C = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.C;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_ZhuangKao;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.H, pos) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.E, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.u.middle().meanWith(new Line(this.o.start, this.s.end).middle());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return !this.D ? this.u.start : this.u.end;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public double z() {
        return this.u.middle().distanceTo(new Line(this.o.start, this.s.end).middle());
    }
}
