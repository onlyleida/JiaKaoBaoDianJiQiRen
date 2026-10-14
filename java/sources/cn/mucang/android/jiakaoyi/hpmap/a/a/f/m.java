package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2XianKuanRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class m extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public Line m;
    public Line n;
    public Line o;
    public Line p;
    public Line q;
    public cn.mucang.android.jiakaoyi.signal.pos.c r;
    public cn.mucang.android.jiakaoyi.signal.pos.a s;
    public float t;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.s;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2XianKuanRenderModel b2XianKuanRenderModel = new B2XianKuanRenderModel();
        b2XianKuanRenderModel.key = this.f3655a;
        Line line = this.n;
        Pos pos = line.start;
        Line line2 = this.o;
        Pos pos2 = line2.start;
        Pos pos3 = line2.end;
        Pos pos4 = line.end;
        b2XianKuanRenderModel.reportRect = this.f3656d;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos3, 7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos4, 7.5d);
        b2XianKuanRenderModel.startLine = new Line(posW, posW2, 15.0d);
        b2XianKuanRenderModel.line110 = new Line(posW, posW4, 15.0d);
        b2XianKuanRenderModel.line29 = new Line(posW2, posW3, 15.0d);
        Line line3 = this.k;
        b2XianKuanRenderModel.line34 = new Line(line3.start, line3.end, 15.0d);
        Line line4 = this.l;
        b2XianKuanRenderModel.line56 = new Line(line4.start, line4.end, 15.0d);
        Line line5 = this.m;
        b2XianKuanRenderModel.line78 = new Line(line5.start, line5.end, 15.0d);
        b2XianKuanRenderModel.endLine = new Line(posW3, posW4, 15.0d);
        b2XianKuanRenderModel.poleRadius = this.t;
        Line line6 = this.p;
        if (line6 != null) {
            b2XianKuanRenderModel.report = new Line(new Pos(line6.start), new Pos(this.p.end), 15.0d);
        }
        b2XianKuanRenderModel.mapName = this.b;
        return b2XianKuanRenderModel;
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
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos, pos2, new Pos(pos).meanWith(pos2), 1.0d, true);
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
        sparseArray.put(9, this.j.start);
        sparseArray.put(10, this.j.end);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (carPos.bound.h(this.s)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(carPos.carRect, this.r);
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.q == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.j.start)) > 0.0d) {
                this.q = lineO;
            } else {
                Line line2 = this.i;
                this.q = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.q;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_XianKuan;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.r, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.j.end;
    }
}
