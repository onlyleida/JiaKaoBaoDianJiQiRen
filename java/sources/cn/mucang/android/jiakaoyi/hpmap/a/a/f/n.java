package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2ZhaiLuRenderModel;
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
    public cn.mucang.android.jiakaoyi.signal.pos.a o;
    public cn.mucang.android.jiakaoyi.signal.pos.c p;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.o;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2ZhaiLuRenderModel b2ZhaiLuRenderModel = new B2ZhaiLuRenderModel();
        b2ZhaiLuRenderModel.key = this.f3655a;
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
        b2ZhaiLuRenderModel.startLine = new Line(posW, posW2, 15.0d);
        b2ZhaiLuRenderModel.line23 = new Line(posW2, posW3, 15.0d);
        b2ZhaiLuRenderModel.line34 = new Line(posW3, posW4, 15.0d);
        b2ZhaiLuRenderModel.line41 = new Line(posW4, posW, 15.0d);
        Line line3 = this.n;
        if (line3 != null) {
            b2ZhaiLuRenderModel.report = new Line(new Pos(line3.start), new Pos(this.n.end), 15.0d);
        }
        b2ZhaiLuRenderModel.mapName = this.b;
        return b2ZhaiLuRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        SparseArray<Pos> sparseArrayJ = j();
        Pos pos = sparseArrayJ.get(4);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos, sparseArrayJ.get(3), pos, 1.0d, true);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.start);
        sparseArray.put(2, this.i.end);
        sparseArray.put(3, this.k.start);
        sparseArray.put(4, this.l.start);
        Line line = this.n;
        if (line != null) {
            sparseArray.put(5, line.start);
            sparseArray.put(6, this.n.end);
        }
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        if (carPos.bound.h(this.o)) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.d(carPos, this.p) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.i)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        return cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.m == null) {
            Line line = this.i;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.i.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.k.start)) > 0.0d) {
                this.m = lineO;
            } else {
                Line line2 = this.i;
                this.m = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.m;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_ZhaiLuDiaoTou;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        return !m(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.p, pos);
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
