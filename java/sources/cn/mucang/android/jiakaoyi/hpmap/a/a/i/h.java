package cn.mucang.android.jiakaoyi.hpmap.a.a.i;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.moto.MotoShangPoRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class h extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
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
        MotoShangPoRenderModel motoShangPoRenderModel = new MotoShangPoRenderModel();
        motoShangPoRenderModel.key = this.f3655a;
        Line line = new Line(this.i);
        motoShangPoRenderModel.startLine = line;
        line.lineWidth = 4.0d;
        Line line2 = new Line(this.j);
        motoShangPoRenderModel.endLine = line2;
        line2.lineWidth = 4.0d;
        Line line3 = this.p;
        motoShangPoRenderModel.leftLine = A(line3.start, line3.end, 15.0d, true);
        Line line4 = this.q;
        Line lineA = A(line4.start, line4.end, 15.0d, false);
        motoShangPoRenderModel.rightLine = lineA;
        Line line5 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.k, lineA), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.k, motoShangPoRenderModel.leftLine));
        motoShangPoRenderModel.line34 = line5;
        line5.lineWidth = 4.0d;
        Line line6 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.l, motoShangPoRenderModel.leftLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.l, motoShangPoRenderModel.rightLine));
        motoShangPoRenderModel.line56 = line6;
        line6.lineWidth = 4.0d;
        Line line7 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.m, motoShangPoRenderModel.rightLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.m, motoShangPoRenderModel.leftLine));
        motoShangPoRenderModel.line78 = line7;
        line7.lineWidth = 4.0d;
        Line line8 = this.n;
        if (line8 != null) {
            Line line9 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(line8, motoShangPoRenderModel.leftLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.n, motoShangPoRenderModel.rightLine));
            motoShangPoRenderModel.line910 = line9;
            line9.lineWidth = 4.0d;
        }
        Line line10 = this.o;
        if (line10 != null) {
            Line line11 = new Line(cn.mucang.android.jiakaoyi.hpmap.d.a.i(line10, motoShangPoRenderModel.rightLine), cn.mucang.android.jiakaoyi.hpmap.d.a.i(this.o, motoShangPoRenderModel.leftLine));
            motoShangPoRenderModel.line1112 = line11;
            line11.lineWidth = 4.0d;
        }
        Line line12 = this.r;
        if (line12 != null) {
            motoShangPoRenderModel.report = new Line(new Pos(line12.start), new Pos(this.r.end), 15.0d);
        }
        motoShangPoRenderModel.reportRect = this.f3656d;
        motoShangPoRenderModel.mapName = this.b;
        return motoShangPoRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
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
        return Step.Moto_ShangPoQiBu;
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
        if (this.u == null) {
            Line line = this.o;
            if (line != null) {
                Line line2 = this.i;
                this.u = new cn.mucang.android.jiakaoyi.signal.pos.c(line2.start, line2.end, line.start, line.end);
            } else {
                Line line3 = this.i;
                Pos pos2 = line3.start;
                Pos pos3 = line3.end;
                Line line4 = this.n;
                this.u = new cn.mucang.android.jiakaoyi.signal.pos.c(pos2, pos3, line4.end, line4.start);
            }
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.u, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        Line line = this.o;
        return line != null ? line.end : this.n.start;
    }
}
