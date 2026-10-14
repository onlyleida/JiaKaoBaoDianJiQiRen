package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2QiFuRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class h extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Pos k;
    public Pos l;
    public Pos m;
    public Pos n;
    public Pos o;
    public Pos p;
    public Pos q;
    public Pos r;
    public Line s;
    public Line t;
    public Line u;
    public Line v;
    public cn.mucang.android.jiakaoyi.signal.pos.c w;
    public cn.mucang.android.jiakaoyi.signal.pos.a x;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.x;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2QiFuRenderModel b2QiFuRenderModel = new B2QiFuRenderModel();
        b2QiFuRenderModel.key = this.f3655a;
        Line line = this.i;
        Pos pos = line.start;
        Pos pos2 = line.end;
        b2QiFuRenderModel.p3 = this.k;
        b2QiFuRenderModel.p4 = this.l;
        b2QiFuRenderModel.p5 = this.m;
        b2QiFuRenderModel.p6 = this.n;
        b2QiFuRenderModel.p7 = this.o;
        b2QiFuRenderModel.p8 = this.p;
        b2QiFuRenderModel.p9 = this.q;
        b2QiFuRenderModel.p10 = this.r;
        Line line2 = this.j;
        Pos pos3 = line2.start;
        Pos pos4 = line2.end;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos4, pos2, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos3, pos, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos3, 7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos4, 7.5d);
        b2QiFuRenderModel.startLine = new Line(posW, posW2, 15.0d);
        b2QiFuRenderModel.line112 = new Line(posW, posW4, 15.0d);
        b2QiFuRenderModel.endLine = new Line(posW3, posW4, 15.0d);
        b2QiFuRenderModel.line211 = new Line(posW2, posW3, 15.0d);
        Line line3 = this.s;
        if (line3 != null) {
            b2QiFuRenderModel.report = new Line(new Pos(line3.start), new Pos(this.s.end), 15.0d);
        }
        b2QiFuRenderModel.mapName = this.b;
        return b2QiFuRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        SparseArray<Pos> sparseArrayJ = j();
        Pos pos = sparseArrayJ.get(1);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos, sparseArrayJ.get(2), pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.start);
        sparseArray.put(2, this.i.end);
        sparseArray.put(3, this.k);
        sparseArray.put(4, this.l);
        sparseArray.put(5, this.m);
        sparseArray.put(6, this.n);
        sparseArray.put(7, this.o);
        sparseArray.put(8, this.p);
        sparseArray.put(9, this.q);
        sparseArray.put(10, this.r);
        sparseArray.put(11, this.j.start);
        sparseArray.put(12, this.j.end);
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
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(carPos.carRect, this.w);
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.t == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.j.start)) > 0.0d) {
                this.t = lineO;
            } else {
                Line line2 = this.i;
                this.t = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.t;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_QiFu;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.w, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.j.end;
    }
}
