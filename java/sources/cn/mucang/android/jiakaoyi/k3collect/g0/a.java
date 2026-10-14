package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.d0;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.a> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.a n;
    private LineStyle o;
    private Paint p;
    private Paint q;
    private Paint r;
    private Path s;
    private int t;

    public a(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.a aVar) {
        super(mapView, aVar.b, aVar.c);
        o(aVar);
        this.s = new Path();
        this.t = Color.parseColor(aVar.f3951f);
    }

    private double p(Pos pos, double d2, Pos pos2, List<Pos> list) {
        for (Pos pos3 : list) {
            double dDistanceTo = pos.distanceTo(pos3);
            if (dDistanceTo < d2) {
                pos2.setPos(pos3);
                return dDistanceTo;
            }
        }
        return 1.0E11d;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        List<Pos> list;
        canvas.save();
        canvas.setMatrix(matrix);
        int i = this.t;
        if (this.f3759d) {
            this.p.setColor(-11751600);
            i = -11751600;
        } else {
            this.p.setColor(this.o.color);
        }
        List<Pos> list2 = this.n.f3949d;
        if (list2 != null) {
            if (list2.size() > 2) {
                this.s.reset();
                Pos pos = this.n.f3949d.get(0);
                this.s.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y));
                for (Pos pos2 : this.n.f3949d) {
                    this.s.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y));
                }
                this.s.close();
                this.p.setStyle(Paint.Style.FILL);
                this.p.setColor(i);
                canvas.drawPath(this.s, this.p);
            } else if (this.n.f3949d.size() == 2) {
                this.p.setStyle(Paint.Style.STROKE);
                k(canvas, this.n.f3949d.get(0), this.n.f3949d.get(1), this.p);
            }
            if (this.c.getMapMode() == MapView.Mode.Edit) {
                for (int i2 = 0; i2 < this.n.f3949d.size(); i2++) {
                    l(canvas, this.n.f3949d.get(i2), this.q);
                }
                if (this.k && (list = this.n.f3950e) != null && list.size() > 0) {
                    for (int i3 = 0; i3 < this.n.f3950e.size(); i3++) {
                        Pos pos3 = this.n.f3950e.get(i3);
                        if (i3 != 0) {
                            m(canvas, "点" + (i3 + 1), pos3, this.r);
                        } else if (!MucangConfig.v() || this.j == null) {
                            m(canvas, "点1", pos3, this.r);
                        } else {
                            j(canvas, this.j + "-" + d0.a(this.i, this.n.f3948a.isDashed).getLineName(), pos3, this.l);
                        }
                    }
                    if (this.n.f3949d.size() > 2 && this.j != null) {
                        cn.mucang.android.jiakaoyi.k3collect.j0.b.a aVar = this.n;
                        if (aVar.f3952g != null) {
                            m(canvas, d0.a(this.i, aVar.f3948a.isDashed).getLineName(), this.n.f3952g, this.q);
                        }
                    }
                }
            }
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        List<Pos> list = this.n.f3949d;
        if (list != null && list.size() != 0) {
            for (Pos pos : this.n.f3949d) {
                if (pos != null && cVar.f5822e.g(pos)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        double dP = p(pos, d2, pos2, this.n.f3949d);
        if (dP == 1.0E11d && cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, this.n.f3949d)) {
            dP = 0.0d;
            pos2.setPos(pos);
        }
        if (dP > d2) {
            return null;
        }
        if (pos2.x == -1.0E11d && pos2.y == -1.0E11d) {
            pos2 = null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(dP, pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.a aVar) {
        this.n = aVar;
        LineStyle lineStyle = aVar.f3948a;
        this.o = lineStyle;
        this.p = cn.mucang.android.jiakaoyi.k3collect.style.a.a(lineStyle);
        this.q = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.r = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
    }
}
