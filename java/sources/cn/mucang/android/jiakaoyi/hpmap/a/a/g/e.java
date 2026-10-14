package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2ETCRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class e extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public Line m;
    public Line n;
    public Line o;
    public cn.mucang.android.jiakaoyi.signal.pos.a p;
    public cn.mucang.android.jiakaoyi.signal.pos.c q;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2ETCRenderModel c2ETCRenderModel = new C2ETCRenderModel();
        c2ETCRenderModel.key = this.f3655a;
        Line line = this.i;
        Pos pos = line.start;
        Pos pos2 = line.end;
        Line line2 = this.k;
        Pos pos3 = line2.start;
        Pos pos4 = line2.end;
        Line line3 = this.j;
        Pos pos5 = line3.start;
        Pos pos6 = line3.end;
        Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos5, pos2, pos, 7.5d);
        Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos6, pos, pos2, 7.5d);
        Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos4, pos3, 7.5d);
        Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos, pos3, pos4, 7.5d);
        Pos posW5 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos6, pos, pos5, 7.5d);
        Pos posW6 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(pos2, pos5, pos6, 7.5d);
        SparseArray<Pos> sparseArray = new SparseArray<>();
        this.f3658f = sparseArray;
        sparseArray.put(1, posW);
        this.f3658f.put(2, posW2);
        this.f3658f.put(3, posW3);
        this.f3658f.put(4, posW4);
        this.f3658f.put(5, posW5);
        this.f3658f.put(6, posW6);
        c2ETCRenderModel.startLine = new Line(posW, posW2, 15.0d);
        c2ETCRenderModel.line26 = new Line(posW2, posW6, 15.0d);
        c2ETCRenderModel.endLine = new Line(posW5, posW6, 15.0d);
        c2ETCRenderModel.line51 = new Line(posW5, posW, 15.0d);
        c2ETCRenderModel.line34 = new Line(posW3, posW4, 15.0d);
        Line line4 = this.n;
        if (line4 != null) {
            c2ETCRenderModel.report = new Line(new Pos(line4.start), new Pos(this.n.end), 15.0d);
        }
        c2ETCRenderModel.mapName = this.b;
        return c2ETCRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
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
        sparseArray.put(2, this.i.end);
        sparseArray.put(3, this.k.start);
        sparseArray.put(4, this.k.end);
        sparseArray.put(5, this.j.start);
        sparseArray.put(6, this.j.end);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (this.p.h(carPos.bound)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.l) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.m) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.j)) {
            return true;
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.q);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.o == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.k.start)) > 0.0d) {
                this.o = lineO;
            } else {
                Line line2 = this.i;
                this.o = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.o;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public int q(Line line) {
        if (line == this.i) {
            return 1;
        }
        if (line == this.j) {
            return 2;
        }
        if (line == this.l) {
            return 3;
        }
        return line == this.m ? 4 : -1;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_ETC;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line u() {
        return this.l;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        if (this.q == null) {
            Line line = this.i;
            Pos pos2 = line.start;
            Pos pos3 = line.end;
            Line line2 = this.j;
            this.q = new cn.mucang.android.jiakaoyi.signal.pos.c(pos2, pos3, line2.end, line2.start);
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.q, pos);
    }
}
