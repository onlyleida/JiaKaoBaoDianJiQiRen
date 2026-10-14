package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2DanBianRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class c extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
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
    public cn.mucang.android.jiakaoyi.signal.pos.c x;
    public cn.mucang.android.jiakaoyi.signal.pos.c y;
    public cn.mucang.android.jiakaoyi.signal.pos.a z;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.z;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2DanBianRenderModel b2DanBianRenderModel = new B2DanBianRenderModel();
        b2DanBianRenderModel.key = this.f3655a;
        Line line = this.l;
        Pos pos = line.start;
        Line line2 = this.k;
        Pos pos2 = line2.start;
        Pos pos3 = line2.end;
        Pos pos4 = line.end;
        b2DanBianRenderModel.reportRect = this.f3656d;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos3, 7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos4, 7.5d);
        b2DanBianRenderModel.startLine = new Line(posW, posW2, 15.0d);
        b2DanBianRenderModel.line112 = new Line(posW, posW4, 15.0d);
        b2DanBianRenderModel.line211 = new Line(posW2, posW3, 15.0d);
        b2DanBianRenderModel.endLine = new Line(posW3, posW4, 15.0d);
        b2DanBianRenderModel.pos3 = this.m;
        b2DanBianRenderModel.pos4 = this.n;
        b2DanBianRenderModel.pos5 = this.o;
        b2DanBianRenderModel.pos6 = this.p;
        b2DanBianRenderModel.pos7 = this.q;
        b2DanBianRenderModel.pos8 = this.r;
        b2DanBianRenderModel.pos9 = this.s;
        b2DanBianRenderModel.pos10 = this.t;
        Line line3 = this.u;
        if (line3 != null) {
            b2DanBianRenderModel.report = new Line(new Pos(line3.start), new Pos(this.u.end), 15.0d);
        }
        b2DanBianRenderModel.mapName = this.b;
        return b2DanBianRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.m);
        arrayList.add(this.n);
        arrayList.add(this.o);
        arrayList.add(this.p);
        Pos posC = cn.mucang.android.jiakaoyi.hpmap.d.a.c(arrayList);
        arrayList.clear();
        arrayList.add(this.q);
        arrayList.add(this.r);
        arrayList.add(this.s);
        arrayList.add(this.t);
        Pos posC2 = cn.mucang.android.jiakaoyi.hpmap.d.a.c(arrayList);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(posC, posC2, new Pos(posC).meanWith(posC2), 1.0d, true);
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
        if (carPos.bound.h(this.z)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(carPos.carRect, this.y);
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
        return Step.B2_DanBian;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.y, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.j.end;
    }
}
