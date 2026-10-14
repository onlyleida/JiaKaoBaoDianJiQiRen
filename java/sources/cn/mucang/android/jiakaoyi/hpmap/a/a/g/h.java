package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2QiDianRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class h extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public Line m;
    public cn.mucang.android.jiakaoyi.signal.pos.a n;
    public cn.mucang.android.jiakaoyi.signal.pos.c o;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos C() {
        return this.i.start;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2QiDianRenderModel c2QiDianRenderModel = new C2QiDianRenderModel();
        c2QiDianRenderModel.key = this.f3655a;
        Line line = this.i;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = this.k;
        Pos pos3 = line2.start;
        Pos pos4 = line2.end;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos4, pos2, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos3, pos, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos3, 7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos4, 7.5d);
        SparseArray<Pos> sparseArray = new SparseArray<>();
        this.f3658f = sparseArray;
        sparseArray.put(1, posW);
        this.f3658f.put(2, posW2);
        this.f3658f.put(3, posW3);
        this.f3658f.put(4, posW4);
        c2QiDianRenderModel.line12 = new Line(posW, posW2, 15.0d);
        c2QiDianRenderModel.line23 = new Line(posW2, posW3, 15.0d);
        c2QiDianRenderModel.line34 = new Line(posW3, posW4, 15.0d);
        c2QiDianRenderModel.line41 = new Line(posW4, posW, 15.0d);
        Line line3 = this.m;
        if (line3 != null) {
            c2QiDianRenderModel.report = new Line(new Pos(line3.start), new Pos(this.m.end), 15.0d);
        }
        c2QiDianRenderModel.mapName = this.b;
        return c2QiDianRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        SparseArray<Pos> sparseArrayJ = j();
        Pos pos = sparseArrayJ.get(4);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos, sparseArrayJ.get(3), pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.start);
        sparseArray.put(2, this.j.start);
        sparseArray.put(3, this.k.start);
        sparseArray.put(4, this.l.start);
        Line line = this.m;
        if (line != null) {
            sparseArray.put(7, line.start);
            sparseArray.put(8, this.m.end);
        }
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.m;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        return !v(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public int q(Line line) {
        if (line == this.i) {
            return 1;
        }
        if (line == this.j) {
            return 2;
        }
        if (line == this.k) {
            return 3;
        }
        return line == this.l ? 4 : -1;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_QiDianQuYu;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        if (this.o == null) {
            Line line = this.i;
            Pos pos2 = line.start;
            Pos pos3 = line.end;
            Line line2 = this.k;
            this.o = new cn.mucang.android.jiakaoyi.signal.pos.c(pos2, pos3, line2.start, line2.end);
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.o, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.i.middle().meanWith(this.k.middle());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.l.start;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public double z() {
        Line line = this.i;
        return line.start.distanceTo(line.end);
    }
}
