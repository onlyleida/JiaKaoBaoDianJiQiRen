package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2ZhangAiRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class o extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Pos k;
    public Pos l;
    public Pos m;
    public Pos n;
    public Pos o;
    public Pos p;
    public Line q;
    public Line r;
    public Line s;
    public Line t;
    public cn.mucang.android.jiakaoyi.signal.pos.c u;
    public cn.mucang.android.jiakaoyi.signal.pos.a v;
    public float w;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.v;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2ZhangAiRenderModel b2ZhangAiRenderModel = new B2ZhangAiRenderModel();
        b2ZhangAiRenderModel.key = this.f3655a;
        Line line = this.q;
        Pos pos = line.start;
        Line line2 = this.r;
        Pos pos2 = line2.start;
        Pos pos3 = line2.end;
        Pos pos4 = line.end;
        b2ZhangAiRenderModel.reportRect = this.f3656d;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos3, 7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos4, 7.5d);
        b2ZhangAiRenderModel.startLine = new Line(posW, posW2, 15.0d);
        b2ZhangAiRenderModel.line110 = new Line(posW, posW4, 15.0d);
        b2ZhangAiRenderModel.line29 = new Line(posW2, posW3, 15.0d);
        b2ZhangAiRenderModel.endLine = new Line(posW3, posW4, 15.0d);
        b2ZhangAiRenderModel.pos3 = this.k;
        b2ZhangAiRenderModel.pos4 = this.l;
        b2ZhangAiRenderModel.pos5 = this.m;
        b2ZhangAiRenderModel.pos6 = this.n;
        b2ZhangAiRenderModel.pos7 = this.o;
        b2ZhangAiRenderModel.pos8 = this.p;
        b2ZhangAiRenderModel.discusRadius = this.w;
        Line line3 = this.s;
        if (line3 != null) {
            b2ZhangAiRenderModel.report = new Line(new Pos(line3.start), new Pos(this.s.end), 15.0d);
        }
        b2ZhangAiRenderModel.mapName = this.b;
        return b2ZhangAiRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        Pos pos = this.k;
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos, this.l, new Pos(pos).meanWith(this.l), 1.0d, true);
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
        return this.s;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (carPos.bound.h(this.v)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(carPos.carRect, this.u);
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
        return Step.B2_ZhangAi;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.u, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.j.end;
    }
}
