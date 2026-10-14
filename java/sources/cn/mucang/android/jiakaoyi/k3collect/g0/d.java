package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class d extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.d> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.d n;
    private Paint o;
    private Paint p;
    private Paint q;

    public d(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.d dVar) {
        super(mapView, dVar.b, dVar.c);
        o(dVar);
    }

    private String p(LineLayoutType lineLayoutType) {
        for (K3ShapeType k3ShapeType : lineLayoutType.getShapeTypes()) {
            if (this.n.f3964d == k3ShapeType.getType()) {
                return k3ShapeType.getShapeName();
            }
        }
        return "未知";
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
        cn.mucang.android.jiakaoyi.k3collect.j0.b.d dVar = this.n;
        k(canvas, dVar.f3965e, dVar.f3966f, this.o);
        MapView.Mode mapMode = this.c.getMapMode();
        MapView.Mode mode = MapView.Mode.Edit;
        if (mapMode == mode && this.c.getCurrentZoom() > 0.02f && this.k) {
            l(canvas, this.n.f3965e, this.p);
            l(canvas, this.n.f3966f, this.p);
            if (!MucangConfig.v() || this.j == null) {
                m(canvas, "起点", this.n.f3967g, this.q);
            } else {
                j(canvas, this.j + "-" + LineLayoutType.BUILDINGS.getLineName(), this.n.f3967g, this.l);
            }
            m(canvas, "终点", this.n.f3968h, this.q);
        }
        canvas.restore();
        if (this.c.getMapMode() == mode && this.k) {
            cn.mucang.android.jiakaoyi.k3collect.j0.b.d dVar2 = this.n;
            Pos pos = dVar2.f3965e;
            Pos pos2 = dVar2.f3966f;
            if (pos == null || pos2 == null) {
                return;
            }
            canvas.save();
            canvas.setMatrix(matrix);
            float degrees = (float) Math.toDegrees(pos.angleTo(pos2));
            float f2 = (float) ((pos.x + pos2.x) * 0.5d);
            float f3 = (float) ((pos.y + pos2.y) * 0.5d);
            double d2 = f2;
            double d3 = f3;
            canvas.translate(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(d2), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(d3));
            canvas.rotate(degrees);
            String strP = p(LineLayoutType.BUILDINGS);
            this.q.setTextSize(n(14.0f, 8.0f));
            Paint.FontMetrics fontMetrics = this.q.getFontMetrics();
            canvas.drawText(strP, (float) (((double) (-this.q.measureText(strP))) * 0.5d), -(fontMetrics.bottom - fontMetrics.top), this.q);
            canvas.rotate(-degrees);
            canvas.translate(-cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(d2), -cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(d3));
            canvas.restore();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        Pos pos;
        Pos pos2 = this.n.f3965e;
        if (pos2 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos2)) {
            return true;
        }
        Pos pos3 = this.n.f3966f;
        if (pos3 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos3)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.k3collect.j0.b.d dVar = this.n;
        Pos pos4 = dVar.f3965e;
        return (pos4 == null || (pos = dVar.f3966f) == null || !cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, pos4, pos)) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        Pos pos2;
        Pos pos3 = new Pos(-1.0E11d, -1.0E11d);
        cn.mucang.android.jiakaoyi.k3collect.j0.b.d dVar = this.n;
        Pos pos4 = dVar.f3965e;
        if (pos4 == null || (pos2 = dVar.f3966f) == null) {
            return null;
        }
        double d3 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos4, pos2, pos3, d2);
        if (d3 > d2) {
            return null;
        }
        if (pos3.x == -1.0E11d && pos3.y == -1.0E11d) {
            pos3 = null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(d3, pos3, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.d dVar) {
        this.n = dVar;
        this.o = cn.mucang.android.jiakaoyi.k3collect.style.a.a(dVar.f3948a);
        this.p = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.q = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        this.o.setStyle(Paint.Style.FILL);
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
    }
}
