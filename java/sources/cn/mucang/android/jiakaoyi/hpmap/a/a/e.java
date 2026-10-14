package cn.mucang.android.jiakaoyi.hpmap.a.a;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3655a;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.signal.pos.c f3656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3657e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SparseArray<Pos> f3658f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<Pos> f3659g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<Pos> f3660h;

    private double B(Line line, Line line2) {
        double d2 = -line.start.angleTo(line.end);
        double dSin = Math.sin(d2);
        double dCos = Math.cos(d2);
        Pos posRotate = new Pos(line.start).rotate(line.start, dCos, dSin);
        Pos posRotate2 = new Pos(line.end).rotate(line.start, dCos, dSin);
        Pos posRotate3 = new Pos(line2.start).rotate(line.start, dCos, dSin);
        Pos posRotate4 = new Pos(line2.end).rotate(line.start, dCos, dSin);
        double dMin = Math.min(posRotate.x, posRotate2.x);
        double dMax = Math.max(posRotate.x, posRotate2.x);
        double dMin2 = Math.min(posRotate3.x, posRotate4.x);
        double dMax2 = Math.max(posRotate3.x, posRotate4.x);
        return ((Math.max(dMax2, dMax) - Math.min(dMin, dMin2)) - (dMax - dMin)) - (dMax2 - dMin2);
    }

    protected Line A(Pos pos, Pos pos2, double d2, boolean z) {
        Line lineP = z ? cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, 0.5d * d2) : cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos, pos2, 0.5d * d2);
        lineP.lineWidth = d2;
        return lineP;
    }

    public Pos C() {
        if (f() != null) {
            return f().start;
        }
        return null;
    }

    public float D() {
        Pos posC = C();
        Pos posY = y();
        return (posC == null || posY == null) ? BitmapDescriptorFactory.HUE_RED : (float) posC.distanceTo(posY);
    }

    public boolean E() {
        return l() == null || l().middle().distanceTo(f().middle()) < 1350.0d;
    }

    protected double F(double d2) {
        if (d2 > 30.0d) {
            return 30.0d;
        }
        if (d2 < 10.0d) {
            return 10.0d;
        }
        return d2;
    }

    public cn.mucang.android.jiakaoyi.signal.pos.c a(Line line, Line line2, Line line3, Line line4) {
        Line line5 = line;
        if (line3 == null) {
            return null;
        }
        if ((this instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) && Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (Math.toDegrees(line3.start.angleTo(line3.end)) - Math.toDegrees(line5.end.angleTo(line5.start))))) - 90.0d))) < 20.0f && B(line3, line4) >= -50.0d) {
            if (((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) this).u) {
                line5 = new Line(line2);
            }
            Pos posVectorTo = line5.end.vectorTo(line3.start);
            Pos posVectorTo2 = line5.end.vectorTo(line3.end);
            double degrees = Math.toDegrees(line5.end.angleTo(line5.start));
            this.f3657e = 3;
            double d2 = -degrees;
            double dCos = Math.cos(Math.toRadians(d2));
            double dSin = Math.sin(Math.toRadians(d2));
            double dDistanceTo = line5.start.distanceTo(line5.end);
            posVectorTo.setPos(line3.start).rotate(line5.end, dCos, dSin);
            posVectorTo2.setPos(line3.end).rotate(line5.end, dCos, dSin);
            Pos pos = new Pos();
            pos.x = posVectorTo2.x + dDistanceTo;
            pos.y = posVectorTo2.y;
            Pos pos2 = new Pos();
            pos2.x = posVectorTo.x + dDistanceTo;
            pos2.y = posVectorTo.y;
            double d3 = -dSin;
            pos.rotate(line5.end, dCos, d3);
            pos2.rotate(line5.end, dCos, d3);
            posVectorTo.rotate(line5.end, dCos, d3);
            posVectorTo2.rotate(line5.end, dCos, d3);
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(posVectorTo2, posVectorTo, pos, pos2);
        }
        Pos posVectorTo3 = line2.start.vectorTo(line5.end);
        Pos posVectorTo4 = line5.end.vectorTo(line3.start);
        Pos posVectorTo5 = line5.end.vectorTo(line3.end);
        if (posVectorTo3.dot(posVectorTo4) > 0.0d && posVectorTo3.dot(posVectorTo5) > 0.0d) {
            Pos pos3 = new Pos(line2.start);
            Pos posI = cn.mucang.android.jiakaoyi.hpmap.d.a.i(line3, line4);
            if (posI != null && posI.distanceTo(pos3) < pos3.distanceTo(line3.start) * 2.0d) {
                Pos pos4 = posVectorTo4.cross(posVectorTo5) > 0.0d ? new Pos(line3.start) : new Pos(line3.end);
                Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos4, line2.start, line2.end);
                this.f3657e = 2;
                return new cn.mucang.android.jiakaoyi.signal.pos.c(pos3, posI, pos4, posN);
            }
        }
        Pos posVectorTo6 = line5.end.vectorTo(line2.start);
        Pos posVectorTo7 = line2.start.vectorTo(line3.start);
        Pos posVectorTo8 = line2.start.vectorTo(line3.end);
        if (posVectorTo6.dot(posVectorTo8) > 0.0d && posVectorTo6.dot(posVectorTo7) > 0.0d) {
            Pos pos5 = new Pos(line5.end);
            Pos posI2 = cn.mucang.android.jiakaoyi.hpmap.d.a.i(line3, line4);
            if (posI2 != null && posI2.distanceTo(pos5) < pos5.distanceTo(line3.start) * 2.0d) {
                Pos pos6 = posVectorTo7.cross(posVectorTo8) > 0.0d ? new Pos(line3.end) : new Pos(line3.start);
                Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(pos6, line2.start, line2.end);
                this.f3657e = 2;
                return new cn.mucang.android.jiakaoyi.signal.pos.c(pos5, posI2, pos6, posN2);
            }
        }
        this.f3657e = 1;
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.d(line4.start, line4.end, line3.start, line3.end);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public void c(List<Pos> list, List<Integer> list2) {
        Iterator<Integer> it = list2.iterator();
        while (it.hasNext()) {
            Pos pos = this.f3658f.get(it.next().intValue());
            if (pos != null) {
                list.add(pos);
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ cn.mucang.android.jiakaoyi.hpmap.c.a d() {
        return a.c(this);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ boolean e(CarPos carPos) {
        return a.g(this, carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ cn.mucang.android.jiakaoyi.signal.utils.b g() {
        return a.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public String getKey() {
        return this.f3655a;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ boolean h(CarPos carPos) {
        return a.e(this, carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ boolean i(CarPos carPos) {
        return a.h(this, carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ Pos n() {
        return a.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ boolean p(CarPos carPos) {
        return a.f(this, carPos);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ int q(Line line) {
        return a.j(this, line);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ boolean r() {
        return a.i(this);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public String t() {
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.b
    public /* synthetic */ Line u() {
        return a.d(this);
    }

    public Pos x() {
        return n();
    }

    public Pos y() {
        if (k() != null) {
            return k().start;
        }
        return null;
    }

    public double z() {
        Line lineF = f();
        if (lineF != null) {
            return (float) lineF.start.distanceTo(lineF.end);
        }
        return 0.0d;
    }
}
