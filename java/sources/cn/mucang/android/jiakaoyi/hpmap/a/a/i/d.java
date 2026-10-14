package cn.mucang.android.jiakaoyi.hpmap.a.a.i;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.moto.MotoDanBianRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class d extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public Pos m;
    public Pos n;
    public Pos o;
    public Pos p;
    public Pos q;
    public Pos r;
    public Pos s;
    public Pos t;
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
        MotoDanBianRenderModel motoDanBianRenderModel = new MotoDanBianRenderModel();
        motoDanBianRenderModel.key = this.f3655a;
        Line line = this.l;
        Pos pos = line.start;
        Line line2 = this.k;
        Pos pos2 = line2.start;
        Pos pos3 = line2.end;
        Pos pos4 = line.end;
        motoDanBianRenderModel.reportRect = this.f3656d;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos3, 7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos4, 7.5d);
        motoDanBianRenderModel.startLine = new Line(posW, posW2, 15.0d);
        motoDanBianRenderModel.line112 = new Line(posW, posW4, 15.0d);
        motoDanBianRenderModel.line211 = new Line(posW2, posW3, 15.0d);
        motoDanBianRenderModel.endLine = new Line(posW3, posW4, 15.0d);
        motoDanBianRenderModel.pos3 = this.m;
        motoDanBianRenderModel.pos4 = this.n;
        motoDanBianRenderModel.pos5 = this.o;
        motoDanBianRenderModel.pos6 = this.p;
        motoDanBianRenderModel.pos7 = this.q;
        motoDanBianRenderModel.pos8 = this.r;
        motoDanBianRenderModel.pos9 = this.s;
        motoDanBianRenderModel.pos10 = this.t;
        Line line3 = this.u;
        if (line3 != null) {
            motoDanBianRenderModel.report = new Line(new Pos(line3.start), new Pos(this.u.end), 15.0d);
        }
        motoDanBianRenderModel.mapName = this.b;
        return motoDanBianRenderModel;
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
        sparseArray.put(3, this.m);
        sparseArray.put(4, this.n);
        sparseArray.put(5, this.o);
        sparseArray.put(6, this.p);
        sparseArray.put(7, this.q);
        sparseArray.put(8, this.r);
        sparseArray.put(9, this.s);
        sparseArray.put(10, this.t);
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
        return this.u;
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
        if (this.v == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.j.start)) > 0.0d) {
                this.v = lineO;
            } else {
                Line line2 = this.i;
                this.v = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.v;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.Moto_DanBian;
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
