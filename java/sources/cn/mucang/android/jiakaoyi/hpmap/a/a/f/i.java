package cn.mucang.android.jiakaoyi.hpmap.a.a.f;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2QuXianRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public List<Pos> i;
    public List<Pos> j;
    public Line k;
    public Line l;
    public Line m;
    public Line n;
    public cn.mucang.android.jiakaoyi.signal.pos.a o;
    public Pos p;
    public Pos q;
    public List<Pos> r;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos C() {
        return this.k.end;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.o;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        B2QuXianRenderModel b2QuXianRenderModel = new B2QuXianRenderModel();
        b2QuXianRenderModel.key = this.f3655a;
        Line line = new Line(this.k);
        b2QuXianRenderModel.startLine = line;
        line.lineWidth = 15.0d;
        Line line2 = new Line(this.l);
        b2QuXianRenderModel.endLine = line2;
        line2.lineWidth = 15.0d;
        b2QuXianRenderModel.leftPoints = new ArrayList();
        b2QuXianRenderModel.rightPoints = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i2 < this.i.size() - 1) {
            int i3 = i2 + 1;
            Line lineA = A(this.i.get(i2), this.i.get(i3), 15.0d, true);
            if (i2 == 0) {
                b2QuXianRenderModel.leftPoints.add(lineA.start);
            }
            b2QuXianRenderModel.leftPoints.add(lineA.end);
            i2 = i3;
        }
        while (i < this.j.size() - 1) {
            int i4 = i + 1;
            Line lineA2 = A(this.j.get(i), this.j.get(i4), 15.0d, false);
            if (i == 0) {
                b2QuXianRenderModel.rightPoints.add(lineA2.start);
            }
            b2QuXianRenderModel.rightPoints.add(lineA2.end);
            i = i4;
        }
        Line line3 = this.m;
        if (line3 != null) {
            b2QuXianRenderModel.report = new Line(new Pos(line3.start), new Pos(this.m.end), 15.0d);
        }
        b2QuXianRenderModel.mapName = this.b;
        return b2QuXianRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.k;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        Pos pos;
        Pos pos2 = this.p;
        if (pos2 != null && (pos = this.q) != null) {
            return new cn.mucang.android.jiakaoyi.signal.utils.b(pos2, pos, new Pos(pos2).meanWith(this.q), 1.0d, true);
        }
        if (cn.mucang.android.core.utils.g.b(this.i) || cn.mucang.android.core.utils.g.b(this.j)) {
            return null;
        }
        Pos posMeanWith = new Pos(this.i.get(0)).meanWith(this.j.get(0));
        List<Pos> list = this.i;
        Pos pos3 = new Pos(list.get(list.size() - 1));
        List<Pos> list2 = this.j;
        return new cn.mucang.android.jiakaoyi.signal.utils.b(posMeanWith, pos3.meanWith(list2.get(list2.size() - 1)), posMeanWith);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.get(0));
        sparseArray.put(2, this.j.get(0));
        List<Pos> list = this.i;
        sparseArray.put(3, list.get(list.size() / 4));
        List<Pos> list2 = this.j;
        sparseArray.put(4, list2.get(list2.size() / 4));
        List<Pos> list3 = this.i;
        sparseArray.put(5, list3.get(list3.size() / 2));
        List<Pos> list4 = this.j;
        sparseArray.put(6, list4.get(list4.size() / 2));
        List<Pos> list5 = this.i;
        sparseArray.put(7, list5.get((list5.size() * 3) / 4));
        List<Pos> list6 = this.j;
        sparseArray.put(8, list6.get((list6.size() * 3) / 4));
        List<Pos> list7 = this.i;
        sparseArray.put(9, list7.get(list7.size() - 1));
        List<Pos> list8 = this.j;
        sparseArray.put(10, list8.get(list8.size() - 1));
        sparseArray.put(11, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.i));
        sparseArray.put(12, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.j));
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.l;
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
        if (this.n == null) {
            Line line = this.k;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.k.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.j.get(4))) > 0.0d) {
                this.n = lineO;
            } else {
                Line line2 = this.k;
                this.n = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.B2_SQuXian;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.o.h(carPos.bound)) {
            return true;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.l) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.k) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.i, 2) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.j, 2)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return false;
        }
        Pos posMeanWith = new Pos(carPos.carRect.b).meanWith(carPos.carRect.c);
        Pos posMeanWith2 = new Pos(carPos.carRect.f5820a).meanWith(carPos.carRect.f5821d);
        List<Pos> list = this.r;
        return list == null || !(cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith, list) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith2, this.r));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        List<Pos> list = this.r;
        return list != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, list);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.k.middle().meanWith(this.l.middle());
    }
}
