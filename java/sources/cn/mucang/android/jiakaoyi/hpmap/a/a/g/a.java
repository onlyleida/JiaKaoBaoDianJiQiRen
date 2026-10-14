package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2BianXianRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public List<Pos> i;
    public Line j;
    public Line k;
    public Line l;
    public Line m;
    public cn.mucang.android.jiakaoyi.signal.pos.a n;
    public Line o;
    public cn.mucang.android.jiakaoyi.signal.pos.c p;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2BianXianRenderModel c2BianXianRenderModel = new C2BianXianRenderModel();
        c2BianXianRenderModel.key = this.f3655a;
        Line line = new Line(this.j);
        c2BianXianRenderModel.startLine = line;
        line.lineWidth = 15.0d;
        Line line2 = new Line(this.k);
        c2BianXianRenderModel.endLine = line2;
        line2.lineWidth = 15.0d;
        c2BianXianRenderModel.points = new ArrayList();
        if (!cn.mucang.android.core.utils.g.b(this.i)) {
            int i = 0;
            while (i < this.i.size() - 1) {
                int i2 = i + 1;
                Line lineA = A(this.i.get(i), this.i.get(i2), 15.0d, true);
                if (i == 0) {
                    c2BianXianRenderModel.points.add(lineA.start);
                }
                c2BianXianRenderModel.points.add(lineA.end);
                i = i2;
            }
        }
        return c2BianXianRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(1, this.j.start);
        sparseArray.put(2, this.j.end);
        sparseArray.put(3, this.k.start);
        sparseArray.put(4, this.k.end);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return this.k;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return this.l;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean m(CarPos carPos) {
        return !v(carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line o() {
        if (this.m == null) {
            Line line = this.j;
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line.start, line.end, 100.0d, true);
            Pos posMiddle = this.j.middle();
            Pos posVectorTo = posMiddle.vectorTo(lineO.middle());
            List<Pos> list = this.i;
            if (posVectorTo.dot(posMiddle.vectorTo(list.get(list.size() / 2))) > 0.0d) {
                this.m = lineO;
            } else {
                Line line2 = this.j;
                this.m = cn.mucang.android.jiakaoyi.hpmap.d.a.o(line2.start, line2.end, 100.0d, false);
            }
        }
        return this.m;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public int q(Line line) {
        if (line == this.j) {
            return 1;
        }
        if (line == this.k) {
            return 2;
        }
        return line == this.o ? 3 : -1;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_BianXianShiBie;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.n.h(carPos.bound)) {
            return true;
        }
        return (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.k) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, this.j) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.h(carPos, this.i, 2)) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        return pos.x > this.n.d() && pos.x < this.n.b() && pos.y > this.n.e() && pos.y < this.n.c();
    }
}
