package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2HuaLuRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public List<Pos> i;
    public List<Pos> j;
    public List<Pos> k;
    public Line l;
    public Line m;
    public Line n;
    public Line o;
    private cn.mucang.android.jiakaoyi.signal.pos.c p;
    public List<Pos> q;
    public cn.mucang.android.jiakaoyi.signal.pos.a r;
    public Line s;
    public Line t;
    public Line u;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public float D() {
        Line line = this.n;
        return line != null ? (float) line.start.distanceTo(this.m.start) : super.D();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.r;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public void c(List<Pos> list, List<Integer> list2) {
        if (list2.contains(-1)) {
            list.addAll(this.f3659g);
            return;
        }
        if (list2.contains(-2)) {
            List<Pos> list3 = this.f3659g;
            list.addAll(list3.subList(0, list3.size() / 2));
            return;
        }
        if (list2.contains(-3)) {
            List<Pos> list4 = this.f3659g;
            list.addAll(list4.subList(list4.size() / 2, this.f3659g.size()));
            return;
        }
        if (list2.contains(-11)) {
            list.addAll(this.f3660h);
            return;
        }
        if (list2.contains(-12)) {
            List<Pos> list5 = this.f3660h;
            list.addAll(list5.subList(0, list5.size() / 2));
        } else if (list2.contains(-13)) {
            List<Pos> list6 = this.f3660h;
            list.addAll(list6.subList(list6.size() / 2, this.f3660h.size()));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2HuaLuRenderModel c2HuaLuRenderModel = new C2HuaLuRenderModel();
        c2HuaLuRenderModel.key = this.f3655a;
        Line line = new Line(this.l);
        c2HuaLuRenderModel.startLine = line;
        line.lineWidth = 15.0d;
        Line line2 = new Line(this.m);
        c2HuaLuRenderModel.endLine = line2;
        line2.lineWidth = 15.0d;
        c2HuaLuRenderModel.leftPoints = new ArrayList();
        c2HuaLuRenderModel.rightPoints = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i2 < this.i.size() - 1) {
            int i3 = i2 + 1;
            Line lineA = A(this.i.get(i2), this.i.get(i3), 15.0d, true);
            if (i2 == 0) {
                c2HuaLuRenderModel.leftPoints.add(lineA.start);
            }
            c2HuaLuRenderModel.leftPoints.add(lineA.end);
            i2 = i3;
        }
        if (cn.mucang.android.core.utils.g.d(this.j)) {
            c2HuaLuRenderModel.middlePoints = new ArrayList();
            int i4 = 0;
            while (i4 < this.j.size() - 1) {
                int i5 = i4 + 1;
                Line lineA2 = A(this.j.get(i4), this.j.get(i5), 15.0d, false);
                if (i4 == 0) {
                    c2HuaLuRenderModel.middlePoints.add(lineA2.start);
                }
                c2HuaLuRenderModel.middlePoints.add(lineA2.end);
                i4 = i5;
            }
        }
        this.f3659g = c2HuaLuRenderModel.leftPoints;
        this.f3660h = c2HuaLuRenderModel.rightPoints;
        while (i < this.k.size() - 1) {
            int i6 = i + 1;
            Line lineA3 = A(this.k.get(i), this.k.get(i6), 15.0d, false);
            if (i == 0) {
                c2HuaLuRenderModel.rightPoints.add(lineA3.start);
            }
            c2HuaLuRenderModel.rightPoints.add(lineA3.end);
            i = i6;
        }
        Line line3 = this.n;
        if (line3 != null) {
            c2HuaLuRenderModel.report = new Line(new Pos(line3.start), new Pos(this.n.end), 15.0d);
        }
        c2HuaLuRenderModel.mapName = this.b;
        return c2HuaLuRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.l;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        Pos posMeanWith = new Pos(this.l.start).meanWith(this.l.end);
        return new cn.mucang.android.jiakaoyi.signal.utils.b(posMeanWith, new Pos(this.m.start).meanWith(this.m.end), posMeanWith);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.i.get(0));
        sparseArray.put(2, this.k.get(0));
        List<Pos> list = this.i;
        sparseArray.put(3, list.get(list.size() / 4));
        List<Pos> list2 = this.k;
        sparseArray.put(4, list2.get(list2.size() / 4));
        List<Pos> list3 = this.i;
        sparseArray.put(5, list3.get(list3.size() / 2));
        List<Pos> list4 = this.k;
        sparseArray.put(6, list4.get(list4.size() / 2));
        List<Pos> list5 = this.i;
        sparseArray.put(7, list5.get((list5.size() * 3) / 4));
        List<Pos> list6 = this.k;
        sparseArray.put(8, list6.get((list6.size() * 3) / 4));
        List<Pos> list7 = this.i;
        sparseArray.put(9, list7.get(list7.size() - 1));
        List<Pos> list8 = this.k;
        sparseArray.put(10, list8.get(list8.size() - 1));
        sparseArray.put(11, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.i));
        sparseArray.put(12, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.k));
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.m;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        return !v(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.o == null) {
            Line line = this.l;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.l.middle();
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.k.get(2))) > 0.0d) {
                this.o = lineO;
            } else {
                Line line2 = this.l;
                this.o = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.o;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public int q(Line line) {
        if (line == this.l) {
            return 1;
        }
        if (line == this.m) {
            return 2;
        }
        if (line == this.s) {
            return 3;
        }
        if (line == this.u) {
            return 4;
        }
        Line line2 = this.t;
        return (line2 == null || line != line2) ? -1 : 5;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_ShiHuaLuMian;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.r.h(carPos.bound)) {
            return true;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.m) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.l)) {
            return false;
        }
        Line line = this.n;
        if ((line != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line)) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.i, 2)) {
            return false;
        }
        List<Pos> list = this.j;
        if ((list != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, list, 2)) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.k, 2)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.f3656d;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return false;
        }
        Pos posMeanWith = new Pos(carPos.carRect.b).meanWith(carPos.carRect.c);
        Pos posMeanWith2 = new Pos(carPos.carRect.f5820a).meanWith(carPos.carRect.f5821d);
        List<Pos> list2 = this.q;
        return list2 == null || !(cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith, list2) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith2, this.q));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        if (this.p == null) {
            Line line = this.l;
            Pos pos2 = line.start;
            Pos pos3 = line.end;
            Line line2 = this.m;
            this.p = cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(pos2, pos3, line2.start, line2.end);
        }
        List<Pos> list = this.q;
        if (list == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, list)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.p, pos);
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        Line line = this.n;
        return line != null ? line.middle().meanWith(this.m.middle()) : this.l.middle().meanWith(this.m.middle());
    }
}
