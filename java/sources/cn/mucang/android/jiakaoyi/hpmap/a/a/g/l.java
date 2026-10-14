package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2SuiDaoRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class l extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public List<Pos> i;
    public List<Pos> j;
    public List<Pos> k;
    public Line l;
    public Line m;
    public Line n;
    public Line o;
    public cn.mucang.android.jiakaoyi.signal.pos.c p;
    public cn.mucang.android.jiakaoyi.signal.pos.a q;
    public double r;
    public List<Pos> s;
    public cn.mucang.android.jiakaoyi.signal.pos.c t;
    public cn.mucang.android.jiakaoyi.signal.pos.c u;
    private boolean v;
    public Line w;
    public Line x;
    public Line y;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public float D() {
        Line line = this.n;
        return line != null ? (float) line.start.distanceTo(this.m.start) : super.D();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.q;
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
        C2SuiDaoRenderModel c2SuiDaoRenderModel = new C2SuiDaoRenderModel();
        c2SuiDaoRenderModel.key = this.f3655a;
        Line line = new Line(this.l);
        c2SuiDaoRenderModel.startLine = line;
        line.lineWidth = 15.0d;
        Line line2 = new Line(this.m);
        c2SuiDaoRenderModel.endLine = line2;
        line2.lineWidth = 15.0d;
        c2SuiDaoRenderModel.leftPoints = new ArrayList();
        c2SuiDaoRenderModel.rightPoints = new ArrayList();
        int i = 0;
        if (!cn.mucang.android.core.utils.g.b(this.i)) {
            int i2 = 0;
            while (i2 < this.i.size() - 1) {
                int i3 = i2 + 1;
                Line lineA = A(this.i.get(i2), this.i.get(i3), 15.0d, true);
                if (i2 == 0) {
                    c2SuiDaoRenderModel.leftPoints.add(lineA.start);
                }
                c2SuiDaoRenderModel.leftPoints.add(lineA.end);
                i2 = i3;
            }
        }
        if (!cn.mucang.android.core.utils.g.b(this.j)) {
            c2SuiDaoRenderModel.centerPoints = new ArrayList();
            int i4 = 0;
            while (i4 < this.j.size() - 1) {
                int i5 = i4 + 1;
                Line line3 = new Line(this.j.get(i4), this.j.get(i5));
                line3.lineWidth = 15.0d;
                if (i4 == 0) {
                    c2SuiDaoRenderModel.centerPoints.add(line3.start);
                }
                c2SuiDaoRenderModel.centerPoints.add(line3.end);
                i4 = i5;
            }
        }
        if (!cn.mucang.android.core.utils.g.b(this.k)) {
            while (i < this.k.size() - 1) {
                int i6 = i + 1;
                Line lineA2 = A(this.k.get(i), this.k.get(i6), 15.0d, false);
                if (i == 0) {
                    c2SuiDaoRenderModel.rightPoints.add(lineA2.start);
                }
                c2SuiDaoRenderModel.rightPoints.add(lineA2.end);
                i = i6;
            }
        }
        this.f3659g = c2SuiDaoRenderModel.leftPoints;
        this.f3660h = c2SuiDaoRenderModel.rightPoints;
        Line line4 = this.n;
        if (line4 != null) {
            c2SuiDaoRenderModel.report = new Line(new Pos(line4.start), new Pos(this.n.end), 15.0d);
        }
        c2SuiDaoRenderModel.mapName = this.b;
        return c2SuiDaoRenderModel;
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
        sparseArray.put(1, this.l.start);
        sparseArray.put(2, this.l.end);
        sparseArray.put(3, this.m.start);
        sparseArray.put(4, this.m.end);
        Line line = this.n;
        int i = 5;
        if (line != null) {
            sparseArray.put(5, line.start);
            sparseArray.put(6, this.n.end);
            i = 7;
        }
        if (!cn.mucang.android.core.utils.g.b(this.i)) {
            sparseArray.put(i, this.i.get(0));
            int i2 = i + 1;
            List<Pos> list = this.i;
            sparseArray.put(i2, list.get(list.size() / 4));
            int i3 = i2 + 1;
            List<Pos> list2 = this.i;
            sparseArray.put(i3, list2.get(list2.size() / 2));
            int i4 = i3 + 1;
            List<Pos> list3 = this.i;
            sparseArray.put(i4, list3.get((list3.size() * 3) / 4));
            int i5 = i4 + 1;
            List<Pos> list4 = this.i;
            sparseArray.put(i5, list4.get(list4.size() - 1));
            int i6 = i5 + 1;
            sparseArray.put(i6, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.i));
            i = i6 + 1;
        }
        if (!cn.mucang.android.core.utils.g.b(this.j)) {
            sparseArray.put(i, this.j.get(0));
            int i7 = i + 1;
            List<Pos> list5 = this.j;
            sparseArray.put(i7, list5.get(list5.size() / 4));
            int i8 = i7 + 1;
            List<Pos> list6 = this.j;
            sparseArray.put(i8, list6.get(list6.size() / 2));
            int i9 = i8 + 1;
            List<Pos> list7 = this.j;
            sparseArray.put(i9, list7.get((list7.size() * 3) / 4));
            int i10 = i9 + 1;
            List<Pos> list8 = this.j;
            sparseArray.put(i10, list8.get(list8.size() - 1));
            int i11 = i10 + 1;
            sparseArray.put(i11, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.j));
            i = i11 + 1;
        }
        if (!cn.mucang.android.core.utils.g.b(this.k)) {
            sparseArray.put(i, this.k.get(0));
            int i12 = i + 1;
            List<Pos> list9 = this.k;
            sparseArray.put(i12, list9.get(list9.size() / 4));
            int i13 = i12 + 1;
            List<Pos> list10 = this.k;
            sparseArray.put(i13, list10.get(list10.size() / 2));
            int i14 = i13 + 1;
            List<Pos> list11 = this.k;
            sparseArray.put(i14, list11.get((list11.size() * 3) / 4));
            int i15 = i14 + 1;
            List<Pos> list12 = this.k;
            sparseArray.put(i15, list12.get(list12.size() - 1));
            sparseArray.put(i15 + 1, cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.k));
        }
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
            if (posMiddle.vectorTo(lineO.middle()).dot(posMiddle.vectorTo(this.m.end)) > 0.0d) {
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
        if (line == this.w) {
            return 3;
        }
        if (line == this.y) {
            return 4;
        }
        Line line2 = this.x;
        return (line2 == null || line != line2) ? -1 : 5;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_SuiDao;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.q.h(carPos.bound)) {
            return true;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.m)) {
            this.v = false;
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.l)) {
            this.v = true;
            return false;
        }
        Line line = this.n;
        if ((line != null && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, line)) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(this.p, carPos.carRect)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.t;
        if (cVar != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, carPos.carRect)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = this.u;
        if (cVar2 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar2, carPos.carRect)) {
            return false;
        }
        if (!cn.mucang.android.core.utils.g.b(this.i) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.i, 2)) {
            return false;
        }
        if (!cn.mucang.android.core.utils.g.b(this.j) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.j, 2)) {
            return false;
        }
        if (!cn.mucang.android.core.utils.g.b(this.k) && cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.k, 2)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = this.f3656d;
        if (cVar3 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar3, carPos.carRect)) {
            return false;
        }
        if (cn.mucang.android.core.utils.g.d(this.i) && cn.mucang.android.core.utils.g.d(this.k)) {
            Pos posMeanWith = new Pos(carPos.carRect.b).meanWith(carPos.carRect.c);
            Pos posMeanWith2 = new Pos(carPos.carRect.f5820a).meanWith(carPos.carRect.f5821d);
            List<Pos> list = this.s;
            if (list != null && (cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith, list) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(posMeanWith2, this.s))) {
                return false;
            }
        } else if (this.v) {
            return false;
        }
        this.v = false;
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        List<Pos> list = this.s;
        if (list == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, list)) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.p, pos);
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        Line line = this.n;
        return line != null ? line.middle().meanWith(this.m.middle()) : super.x();
    }
}
