package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2YuanHuanRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class m extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public List<Pos> i;
    public List<Pos> j;
    public cn.mucang.android.jiakaoyi.signal.pos.a k;
    public Pos l;
    public Pos m;
    public double n;
    public double o;
    public double p;
    public int q;
    public int r;
    public Line s;
    public Line t;
    public cn.mucang.android.jiakaoyi.signal.pos.b u;
    public cn.mucang.android.jiakaoyi.signal.pos.b v;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos C() {
        Pos pos = this.l;
        return new Pos(pos.x + this.o, pos.y);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public float D() {
        return (float) (this.o * 2.0d);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.k;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2YuanHuanRenderModel c2YuanHuanRenderModel = new C2YuanHuanRenderModel();
        c2YuanHuanRenderModel.key = this.f3655a;
        c2YuanHuanRenderModel.innerLineType = this.q;
        c2YuanHuanRenderModel.outLineType = this.r;
        c2YuanHuanRenderModel.outCenter = this.l;
        c2YuanHuanRenderModel.innerCenter = this.m;
        c2YuanHuanRenderModel.defaultLineWidth = (float) this.p;
        c2YuanHuanRenderModel.innerRadius = (float) this.n;
        c2YuanHuanRenderModel.outRadius = (float) this.o;
        c2YuanHuanRenderModel.mapName = this.b;
        return c2YuanHuanRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        Pos pos = this.l;
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos, new Pos(pos.x + 100.0d, pos.y), new Pos(this.l), 1.0d, true);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(0, this.l);
        sparseArray.put(1, this.m);
        return sparseArray;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line k() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line l() {
        return null;
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
        if (line == this.s) {
            return 1;
        }
        return line == this.t ? 2 : -1;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean r() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_YuanHuanLianXi;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.k.h(carPos.bound)) {
            return true;
        }
        Iterator<Pos> it = carPos.carPoints.iterator();
        while (it.hasNext()) {
            if (w(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        double dDistanceSquare = pos.distanceSquare(this.l);
        double d2 = this.n;
        if (dDistanceSquare >= d2 * d2) {
            double d3 = this.o;
            if (dDistanceSquare <= d3 * d3) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.l;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        Pos pos = this.l;
        return new Pos(pos.x - this.o, pos.y);
    }
}
