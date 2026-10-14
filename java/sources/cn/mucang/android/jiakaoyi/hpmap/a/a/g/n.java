package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2ZhaiLuRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class n extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public Line i;
    public Line j;
    public Line k;
    public Line l;
    public Line m;
    public Line n;
    public Line o;
    public Line p;
    public Line q;
    public cn.mucang.android.jiakaoyi.signal.pos.a r;
    public cn.mucang.android.jiakaoyi.signal.pos.c s;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.r;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2ZhaiLuRenderModel c2ZhaiLuRenderModel = new C2ZhaiLuRenderModel();
        c2ZhaiLuRenderModel.key = this.f3655a;
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
        c2ZhaiLuRenderModel.startLine = new Line(posW, posW2, 15.0d);
        c2ZhaiLuRenderModel.line23 = new Line(posW2, posW3, 15.0d);
        c2ZhaiLuRenderModel.line34 = new Line(posW3, posW4, 15.0d);
        c2ZhaiLuRenderModel.line41 = new Line(posW4, posW, 15.0d);
        Line line3 = this.q;
        if (line3 != null) {
            c2ZhaiLuRenderModel.report = new Line(new Pos(line3.start), new Pos(this.q.end), 15.0d);
        }
        c2ZhaiLuRenderModel.mapName = this.b;
        return c2ZhaiLuRenderModel;
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
        sparseArray.put(4, this.l.start);
        Line line = this.q;
        if (line != null) {
            sparseArray.put(5, line.start);
            sparseArray.put(6, this.q.end);
        }
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.q;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (carPos.bound.h(this.r)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.s) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i)) {
            return true;
        }
        Line line = this.q;
        if (line != null) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line);
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.p == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.k.start)) > 0.0d) {
                this.p = lineO;
            } else {
                Line line2 = this.i;
                this.p = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public int q(Line line) {
        if (line == this.i) {
            return 1;
        }
        if (line == this.j) {
            return 2;
        }
        Line line2 = this.m;
        if (line2 != null && line == line2) {
            return 2;
        }
        if (line == this.k) {
            return 3;
        }
        Line line3 = this.n;
        if (line3 != null && line == line3) {
            return 3;
        }
        if (line == this.l) {
            return 4;
        }
        Line line4 = this.o;
        return (line4 == null || line != line4) ? -1 : 4;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_ZhaiLuDiaoTou;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.s, pos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.i.middle().meanWith(this.k.middle());
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        return this.l.start;
    }
}
