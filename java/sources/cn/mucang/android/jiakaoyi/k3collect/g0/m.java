package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class m extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.l> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.l n;
    private Paint o;
    private Paint p;
    private Paint q;
    private LineStyle r;

    public m(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.l lVar) {
        super(mapView, lVar.b, lVar.c);
        o(lVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        canvas.setMatrix(matrix);
        if (this.f3759d) {
            this.o.setColor(-11751600);
        } else {
            this.o.setColor(this.r.color);
        }
        this.o.setStrokeWidth(n(this.n.f3948a.lineWidth, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
        cn.mucang.android.jiakaoyi.k3collect.j0.b.l lVar = this.n;
        k(canvas, lVar.f4002d, lVar.f4003e, this.o);
        if (this.c.getMapMode() == MapView.Mode.Edit && this.c.getCurrentZoom() > 0.02f && this.k) {
            cn.mucang.android.jiakaoyi.k3collect.j0.b.l lVar2 = this.n;
            if (lVar2.f4002d != null && lVar2.f4003e != null) {
                m(canvas, "起点", lVar2.f4004f, this.q);
                m(canvas, "终点", this.n.f4005g, this.q);
            }
            l(canvas, this.n.f4002d, this.p);
            l(canvas, this.n.f4003e, this.p);
            if (MucangConfig.v() && this.j != null) {
                j(canvas, this.j + "-" + LineLayoutType.STOP_LINE.getLineName(), this.n.f4002d, this.l);
            }
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (this.n.a()) {
            cn.mucang.android.jiakaoyi.k3collect.j0.b.l lVar = this.n;
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, lVar.f4002d, lVar.f4003e);
        }
        Pos pos = this.n.f4002d;
        if (pos != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos)) {
            return true;
        }
        Pos pos2 = this.n.f4003e;
        return pos2 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos2);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        cn.mucang.android.jiakaoyi.k3collect.j0.b.l lVar = this.n;
        if (lVar.f4002d == null || lVar.f4003e == null) {
            return null;
        }
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        cn.mucang.android.jiakaoyi.k3collect.j0.b.l lVar2 = this.n;
        double d3 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, lVar2.f4002d, lVar2.f4003e, pos2, d2);
        if (d3 > d2) {
            return null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(d3, (pos2.x == -1.0E11d && pos2.y == -1.0E11d) ? null : pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.l lVar) {
        this.n = lVar;
        LineStyle lineStyle = lVar.f3948a;
        this.r = lineStyle;
        this.o = cn.mucang.android.jiakaoyi.k3collect.style.a.a(lineStyle);
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
