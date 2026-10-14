package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.d0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.k> {
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.k n;
    private Paint o;
    private Paint p;
    private Paint q;
    private Paint r;

    public l(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar) {
        super(mapView, kVar.b, kVar.c);
        o(kVar);
        Paint paint = new Paint(1);
        this.r = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.r.setColor(-65536);
        this.r.setStrokeWidth(5.0f);
    }

    private double p(Pos pos, double d2, Pos pos2, double d3, List<Pos> list) {
        double d4 = d3;
        for (int i = 1; i < list.size(); i++) {
            Pos pos3 = list.get(i - 1);
            Pos pos4 = list.get(i);
            if (i == 1) {
                double dDistanceTo = pos.distanceTo(pos3);
                if (dDistanceTo < d4 && dDistanceTo < d2) {
                    pos2.setPos(pos3);
                    return dDistanceTo;
                }
            }
            double dDistanceTo2 = pos.distanceTo(pos4);
            if (dDistanceTo2 < d4 && dDistanceTo2 < d2) {
                pos2.setPos(pos4);
                return dDistanceTo2;
            }
            if (pos3.distanceTo(pos4) > 3.0d * d2) {
                d4 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos3, pos4, pos2, d2);
                if (d4 < d2) {
                    return d4;
                }
            }
        }
        return d4;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        if (this.f3759d) {
            this.o.setColor(-11751600);
        } else {
            this.o.setColor(this.n.f3948a.color);
        }
        canvas.save();
        canvas.setMatrix(matrix);
        this.o.setStrokeWidth(n(this.n.f3948a.lineWidth, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
        cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar = this.n;
        Path path = kVar.j;
        if (path != null) {
            canvas.drawPath(path, this.o);
        } else {
            k(canvas, kVar.f3997d, kVar.f3998e, this.o);
        }
        if ((this.c.getMapMode() == MapView.Mode.Edit || MucangConfig.v()) && this.c.getCurrentZoom() > 0.02f) {
            l(canvas, this.n.f3997d, this.p);
            l(canvas, this.n.f3998e, this.p);
            cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar2 = this.n;
            List<Pos> list = kVar2.i;
            if (list == null) {
                l(canvas, kVar2.f3997d, this.p);
                l(canvas, this.n.f3998e, this.p);
            } else if (!this.f3759d || this.f3760e == null) {
                Iterator<Pos> it = list.iterator();
                while (it.hasNext()) {
                    l(canvas, it.next(), this.p);
                }
            } else {
                Pos posI = i();
                for (Pos pos : this.n.i) {
                    if (posI == pos) {
                        this.p.setColor(-65536);
                    } else {
                        this.p.setColor(-16741633);
                    }
                    l(canvas, pos, this.p);
                }
            }
            if (this.j == null || !MucangConfig.v()) {
                m(canvas, "起点", this.n.f3999f, this.q);
            } else {
                j(canvas, this.j + "-" + d0.a(this.i, this.n.f3948a.isDashed).getLineName(), this.n.f3999f, this.l);
            }
            m(canvas, "终点", this.n.f4000g, this.q);
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        Pos pos;
        Pos pos2;
        cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar = this.n;
        if (!kVar.k) {
            Pos pos3 = kVar.f3997d;
            if (pos3 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos3)) {
                return true;
            }
            Pos pos4 = this.n.f3998e;
            if (pos4 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos4)) {
                return true;
            }
            cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar2 = this.n;
            Pos pos5 = kVar2.f3997d;
            return (pos5 == null || (pos = kVar2.f3998e) == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, pos5, pos)) ? false : true;
        }
        Pos pos6 = kVar.f3997d;
        if (pos6 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos6)) {
            return true;
        }
        Pos pos7 = this.n.f3998e;
        if (pos7 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos7)) {
            return true;
        }
        List<Pos> list = this.n.i;
        if (list != null && list.size() > 0) {
            return !cVar.f5822e.h(this.n.f4001h);
        }
        cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar3 = this.n;
        Pos pos8 = kVar3.f3997d;
        return (pos8 == null || (pos2 = kVar3.f3998e) == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, pos8, pos2)) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        Pos pos2;
        double d3;
        List<Pos> list;
        Pos pos3 = new Pos(-1.0E11d, -1.0E11d);
        cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar = this.n;
        if (!kVar.k) {
            Pos pos4 = kVar.f3997d;
            if (pos4 == null || (pos2 = kVar.f3998e) == null) {
                return null;
            }
            d3 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos2, pos3, d2);
        } else if (kVar.f3997d == null || kVar.f3998e == null || ((list = kVar.i) != null && list.size() > 0)) {
            cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar2 = this.n;
            List<Pos> list2 = kVar2.i;
            if (list2 == null || kVar2.f3997d == null || kVar2.f3998e == null) {
                return null;
            }
            d3 = p(pos, d2, pos3, 1.0E11d, list2);
        } else {
            cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar3 = this.n;
            d3 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, kVar3.f3997d, kVar3.f3998e, pos3, d2);
        }
        if (d3 > d2) {
            return null;
        }
        if (pos3.x == -1.0E11d && pos3.y == -1.0E11d) {
            pos3 = null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(d3, pos3, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    public Pos i() {
        List<Pos> list = this.n.i;
        if (list != null && this.f3760e != null) {
            double d2 = Double.MAX_VALUE;
            Pos pos = null;
            for (Pos pos2 : list) {
                double dDistanceTo = pos2.distanceTo(this.f3760e);
                if (dDistanceTo < j.m) {
                    pos = pos2;
                    d2 = dDistanceTo;
                }
            }
            if (d2 < j.m) {
                return pos;
            }
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.k kVar) {
        this.n = kVar;
        this.o = cn.mucang.android.jiakaoyi.k3collect.style.a.a(kVar.f3948a);
        this.p = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.q = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
    }
}
