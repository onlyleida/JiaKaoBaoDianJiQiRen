package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.c> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.c n;
    private LineStyle o;
    private Paint p;
    private Paint q;
    private Paint r;

    public c(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar) {
        super(mapView, cVar.b, cVar.c);
        o(cVar);
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
        canvas.save();
        canvas.setMatrix(matrix);
        if (this.f3759d) {
            this.p.setColor(-11751600);
        } else {
            this.p.setColor(this.o.color);
        }
        float fN = n(this.n.f3948a.lineWidth, cn.mucang.android.jiakaoyi.k3collect.style.a.c);
        if (this.o.isDashed) {
            this.p.setPathEffect(new DashPathEffect(new float[]{n(this.n.f3948a.dashLength, cn.mucang.android.jiakaoyi.k3collect.style.a.c), n(this.n.f3948a.dashInterval, cn.mucang.android.jiakaoyi.k3collect.style.a.c * 2.0f)}, BitmapDescriptorFactory.HUE_RED));
        }
        this.p.setStrokeWidth(fN);
        cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar = this.n;
        k(canvas, cVar.f3963h, cVar.i, this.p);
        if (this.c.getMapMode() == MapView.Mode.Edit && this.c.getCurrentZoom() > 0.02f && this.k) {
            l(canvas, this.n.f3959d, this.q);
            l(canvas, this.n.f3960e, this.q);
            l(canvas, this.n.f3961f, this.q);
            l(canvas, this.n.f3962g, this.q);
            if (!MucangConfig.v() || this.j == null) {
                m(canvas, "点1", this.n.j, this.r);
            } else {
                j(canvas, this.j + "-" + LineLayoutType.BANMA_LINE.getLineName(), this.n.j, this.l);
            }
            m(canvas, "点4", this.n.m, this.r);
            m(canvas, "点2", this.n.k, this.r);
            m(canvas, "点3", this.n.l, this.r);
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (this.n.a()) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = this.n.n;
            if (cVar2 != null) {
                return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, cVar2);
            }
            return false;
        }
        Pos pos = this.n.f3959d;
        if (pos != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos)) {
            return true;
        }
        Pos pos2 = this.n.f3960e;
        if (pos2 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos2)) {
            return true;
        }
        Pos pos3 = this.n.f3961f;
        if (pos3 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos3)) {
            return true;
        }
        Pos pos4 = this.n.f3962g;
        return pos4 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos4);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        if (this.n.n == null) {
            return null;
        }
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        double dP = p(pos, d2, pos2, this.f3763h);
        if (dP == 1.0E11d && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.n.n, pos)) {
            dP = 0.0d;
            pos2.setPos(pos);
        }
        if (dP > d2) {
            return null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(dP, (pos2.x == -1.0E11d && pos2.y == -1.0E11d) ? null : pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar) {
        this.n = cVar;
        LineStyle lineStyle = cVar.f3948a;
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
