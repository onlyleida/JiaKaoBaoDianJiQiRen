package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2ZhiJiaoRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class p extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public Line m;
    public Line n;
    public Line o;
    public Line p;
    public boolean q;
    public cn.mucang.android.jiakaoyi.signal.pos.a r;
    private cn.mucang.android.jiakaoyi.signal.pos.c s;
    private cn.mucang.android.jiakaoyi.signal.pos.c t;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.r;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2ZhiJiaoRenderModel b2ZhiJiaoRenderModel = new B2ZhiJiaoRenderModel();
        b2ZhiJiaoRenderModel.key = this.f3655a;
        b2ZhiJiaoRenderModel.turnLeft = this.q;
        Pos pos = this.n.end;
        Line line = this.k;
        Pos pos2 = line.start;
        Pos pos3 = line.end;
        Pos pos4 = this.l.end;
        Line line2 = this.m;
        Pos pos5 = line2.start;
        Pos pos6 = line2.end;
        b2ZhiJiaoRenderModel.reportRect = this.f3656d;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos6, pos2, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos3, pos, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos3, -7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, pos3, pos4, 7.5d);
        Pos posW5 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos4, pos6, pos5, 7.5d);
        Pos posW6 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos5, pos6, 7.5d);
        b2ZhiJiaoRenderModel.startLine = new Line(posW, posW2, 15.0d);
        b2ZhiJiaoRenderModel.line23 = new Line(posW2, posW3, 15.0d);
        b2ZhiJiaoRenderModel.line34 = new Line(posW3, posW4, 15.0d);
        b2ZhiJiaoRenderModel.endLine = new Line(posW4, posW5, 15.0d);
        b2ZhiJiaoRenderModel.line56 = new Line(posW5, posW6, 15.0d);
        b2ZhiJiaoRenderModel.line61 = new Line(posW6, posW, 15.0d);
        Line line3 = this.o;
        if (line3 != null) {
            b2ZhiJiaoRenderModel.report = new Line(new Pos(line3.start), new Pos(this.o.end), 15.0d);
        }
        b2ZhiJiaoRenderModel.mapName = this.b;
        return b2ZhiJiaoRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        SparseArray<Pos> sparseArrayJ = j();
        Pos pos = sparseArrayJ.get(2);
        Pos pos2 = sparseArrayJ.get(3);
        Pos pos3 = sparseArrayJ.get(4);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos3, pos2, pos2, 1.0d, pos3.vectorTo(pos2).cross(pos2.vectorTo(pos)) > 0.0d);
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
        Line line = this.o;
        if (line != null) {
            sparseArray.put(7, line.start);
            sparseArray.put(8, this.o.end);
        }
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.o;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (this.r.h(carPos.bound)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.f(carPos, this.n.end, this.k.end) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.f(carPos, this.k.start, this.n.start) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.f(carPos, this.k.end, this.n.start) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.f(carPos, this.l.end, this.n.start) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.f(carPos, this.l.start, this.m.start) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.j) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.k) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.l) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.m) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.n)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect);
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Pos n() {
        return new Pos(this.l.start).meanWith(this.m.end);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.p == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.l.start)) > 0.0d) {
                this.p = lineO;
            } else {
                Line line2 = this.i;
                this.p = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_ZhiJiaoZhuanWan;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        if (this.s == null || this.t == null || this.f3656d == null) {
            Pos pos2 = this.l.start;
            Line line = this.m;
            Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos2, line.start, line.end);
            Line line2 = this.n;
            this.s = new cn.mucang.android.jiakaoyi.signal.pos.c(line2.end, this.k.start, posN, line2.start);
            this.t = new cn.mucang.android.jiakaoyi.signal.pos.c(this.k.end, this.l.end, this.m.start, posN);
            Line line3 = this.o;
            if (line3 != null && this.f3656d == null) {
                this.f3656d = a(this.n, this.k, line3, this.i);
            }
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.s, pos) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.t, pos)) {
            return true;
        }
        return this.o != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.f3656d, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.n.middle().meanWith(this.l.end);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.n.start;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public double z() {
        Line line = this.m;
        return line.start.distanceTo(line.end);
    }
}
