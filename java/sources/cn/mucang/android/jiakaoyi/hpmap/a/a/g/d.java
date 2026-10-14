package cn.mucang.android.jiakaoyi.hpmap.a.a.g;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.C2DoubleYuanHuanRenderModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends cn.mucang.android.jiakaoyi.hpmap.a.a.e implements cn.mucang.android.jiakaoyi.hpmap.a.a.b {
    public cn.mucang.android.jiakaoyi.signal.pos.b A;
    public cn.mucang.android.jiakaoyi.signal.pos.b B;
    public Pos C;
    public Pos D;
    public List<Pos> i;
    public List<Pos> j;
    public List<Pos> k;
    public List<Pos> l;
    public cn.mucang.android.jiakaoyi.signal.pos.a m;
    public Pos n;
    public Pos o;
    public Pos p;
    public Pos q;
    public double r;
    public double s;
    public double t;
    public double u;
    public double v;
    public int w;
    public int x;
    public cn.mucang.android.jiakaoyi.signal.pos.b y;
    public cn.mucang.android.jiakaoyi.signal.pos.b z;

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos C() {
        Pos pos = this.n;
        return new Pos(pos.x + this.s, pos.y);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public float D() {
        return (float) (this.s * 2.0d);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.pos.a b() {
        return this.m;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        C2DoubleYuanHuanRenderModel c2DoubleYuanHuanRenderModel = new C2DoubleYuanHuanRenderModel();
        c2DoubleYuanHuanRenderModel.key = this.f3655a;
        c2DoubleYuanHuanRenderModel.center = new Pos(this.n).meanWith(this.p);
        c2DoubleYuanHuanRenderModel.innerLineType = this.w;
        c2DoubleYuanHuanRenderModel.outLineType = this.x;
        c2DoubleYuanHuanRenderModel.leftInnerCenter = this.o;
        Pos pos = this.n;
        c2DoubleYuanHuanRenderModel.leftOutCenter = pos;
        c2DoubleYuanHuanRenderModel.rightInnerCenter = this.q;
        Pos pos2 = this.p;
        c2DoubleYuanHuanRenderModel.rightOutCenter = pos2;
        c2DoubleYuanHuanRenderModel.defaultLineWidth = (float) this.v;
        c2DoubleYuanHuanRenderModel.leftInnerRadius = (float) this.r;
        c2DoubleYuanHuanRenderModel.leftOutRadius = (float) this.s;
        c2DoubleYuanHuanRenderModel.rightInnerRadius = (float) this.t;
        c2DoubleYuanHuanRenderModel.rightOutRadius = (float) this.u;
        double degrees = Math.toDegrees(pos.angleTo(pos2));
        Pos pos3 = new Pos(this.C);
        Pos pos4 = new Pos(this.D);
        if (degrees < 0.0d) {
            pos4 = pos3;
            pos3 = pos4;
        }
        double d2 = -degrees;
        double dCos = Math.cos(Math.toRadians(d2));
        double dSin = Math.sin(Math.toRadians(d2));
        Pos posRotate = new Pos(this.n).rotate(this.p, dCos, dSin);
        Pos posRotate2 = new Pos(pos3).rotate(this.p, dCos, dSin);
        Pos posRotate3 = new Pos(pos4).rotate(this.p, dCos, dSin);
        float fD = cn.mucang.android.jiakaoyi.signal.utils.d.d((float) Math.toDegrees(posRotate.angleTo(posRotate2)));
        float fD2 = cn.mucang.android.jiakaoyi.signal.utils.d.d((float) Math.toDegrees(posRotate.angleTo(posRotate3)));
        float fD3 = cn.mucang.android.jiakaoyi.signal.utils.d.d((float) Math.toDegrees(this.p.angleTo(pos3)));
        float fD4 = cn.mucang.android.jiakaoyi.signal.utils.d.d((float) Math.toDegrees(this.p.angleTo(pos4)));
        c2DoubleYuanHuanRenderModel.leftStartAngle = (float) (((double) fD2) + degrees);
        c2DoubleYuanHuanRenderModel.leftSweepAngle = cn.mucang.android.jiakaoyi.signal.utils.d.d(fD - fD2);
        c2DoubleYuanHuanRenderModel.rightStartAngle = fD3;
        c2DoubleYuanHuanRenderModel.rightSweepAngle = cn.mucang.android.jiakaoyi.signal.utils.d.d(360.0f - (fD3 - fD4));
        c2DoubleYuanHuanRenderModel.cross1 = this.C;
        c2DoubleYuanHuanRenderModel.cross2 = this.D;
        c2DoubleYuanHuanRenderModel.mapName = this.b;
        return c2DoubleYuanHuanRenderModel;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Line f() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public cn.mucang.android.jiakaoyi.signal.utils.b g() {
        Pos pos = this.n;
        return new cn.mucang.android.jiakaoyi.signal.utils.b(pos, new Pos(pos.x + 100.0d, pos.y), new Pos(this.n), 1.0d, true);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public SparseArray<Pos> j() {
        SparseArray<Pos> sparseArray = new SparseArray<>();
        sparseArray.put(0, this.n);
        sparseArray.put(1, this.o);
        sparseArray.put(2, this.p);
        sparseArray.put(3, this.q);
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
        return -1;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e, cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean r() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public Step s() {
        return Step.K2_DoubleYuanHuan;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean v(CarPos carPos) {
        if (this.m.h(carPos.bound)) {
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

    /* JADX WARN: Code duplicated, block: B:6:0x001c  */
    /* JADX WARN: Code duplicated, block: B:8:0x0024  */
    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public boolean w(Pos pos) {
        double d2;
        double d3;
        double dDistanceSquare = pos.distanceSquare(this.n);
        double dDistanceSquare2 = pos.distanceSquare(this.p);
        double d4 = this.r;
        if (dDistanceSquare < d4 * d4) {
            d2 = this.t;
            if (dDistanceSquare2 >= d2 * d2) {
                d3 = this.u;
                if (dDistanceSquare2 <= d3 * d3) {
                }
            }
            return false;
        }
        double d5 = this.s;
        if (dDistanceSquare > d5 * d5) {
            d2 = this.t;
            if (dDistanceSquare2 >= d2 * d2) {
                d3 = this.u;
                if (dDistanceSquare2 <= d3 * d3) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos x() {
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.e
    public Pos y() {
        Pos pos = this.n;
        return new Pos(pos.x - this.s, pos.y);
    }
}
