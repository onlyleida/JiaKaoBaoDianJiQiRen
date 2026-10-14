package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.SparseArray;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.d0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.e> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.e n;
    private Paint o;
    private Paint p;
    private Path q;

    public e(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar) {
        super(mapView, eVar.b, eVar.c);
        o(eVar);
    }

    private void p(Canvas canvas, Matrix matrix) {
        List<Line> list = this.n.m;
        if (list == null || list.size() <= 0) {
            return;
        }
        canvas.save();
        canvas.setMatrix(matrix);
        canvas.clipPath(this.q);
        this.o.setStrokeWidth(n(this.n.j, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
        for (Line line : this.n.m) {
            k(canvas, line.start, line.end, this.o);
        }
        canvas.restore();
    }

    private void q(Canvas canvas, Matrix matrix) {
        if (this.n.f3970e != null) {
            canvas.save();
            canvas.setMatrix(matrix);
            this.o.setStrokeWidth(n(this.n.i, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
            float fB = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.n.f3970e.x);
            float fB2 = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.n.f3970e.y);
            cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar = this.n;
            canvas.drawCircle(fB, fB2, cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(eVar.l + (((double) eVar.i) * 0.5d)), this.o);
            canvas.restore();
            this.q.reset();
            Path path = this.q;
            float fB3 = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.n.f3970e.x);
            float fB4 = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.n.f3970e.y);
            cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar2 = this.n;
            path.addCircle(fB3, fB4, cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(eVar2.l + (((double) eVar2.i) * 0.5d)), Path.Direction.CW);
            p(canvas, matrix);
        }
        if (this.c.getMapMode() == MapView.Mode.Edit && this.c.getCurrentZoom() > 0.02f && this.k) {
            r(canvas, matrix, this.n.f3969d);
            if (!MucangConfig.v() || this.j == null || this.n.f3969d.size() <= 0) {
                return;
            }
            j(canvas, this.j + "-" + d0.a(this.i, this.n.f3948a.isDashed).getLineName(), this.n.f3969d.get(0), this.l);
        }
    }

    private void r(Canvas canvas, Matrix matrix, SparseArray<Pos> sparseArray) {
        if (sparseArray == null || sparseArray.size() <= 0) {
            return;
        }
        canvas.save();
        canvas.setMatrix(matrix);
        for (int i = 0; i < sparseArray.size(); i++) {
            Pos pos = sparseArray.get(i);
            if (pos != null) {
                l(canvas, pos, this.p);
            }
        }
        canvas.restore();
    }

    private void s(Canvas canvas, Matrix matrix) {
        cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar = this.n;
        List<Pos> list = eVar.f3971f;
        SparseArray<Pos> sparseArray = eVar.f3969d;
        if (list != null && list.size() == 4) {
            canvas.save();
            canvas.setMatrix(matrix);
            List<Pos> list2 = this.n.f3972g;
            this.q.reset();
            this.q.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list2.get(0).x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list2.get(0).y));
            int i = 0;
            while (i < list.size()) {
                Pos pos = list.get(i);
                Pos pos2 = list2.get(i == list2.size() + (-1) ? 0 : i + 1);
                this.q.quadTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y));
                i++;
            }
            this.q.close();
            this.o.setStrokeWidth(n(this.n.i, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
            canvas.drawPath(this.q, this.o);
            canvas.restore();
            p(canvas, matrix);
        }
        if (this.k) {
            r(canvas, matrix, sparseArray);
            if (!MucangConfig.v() || this.j == null || sparseArray.size() <= 0) {
                return;
            }
            j(canvas, this.j + "-" + d0.a(this.i, this.n.f3948a.isDashed).getLineName(), sparseArray.get(0), this.l);
        }
    }

    private double t(Pos pos, double d2, Pos pos2, SparseArray<Pos> sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            Pos posValueAt = sparseArray.valueAt(i);
            if (posValueAt != null) {
                double dDistanceTo = pos.distanceTo(posValueAt);
                if (dDistanceTo < d2) {
                    pos2.setPos(posValueAt);
                    return dDistanceTo;
                }
            }
        }
        return 1.0E11d;
    }

    private boolean u(cn.mucang.android.jiakaoyi.signal.pos.c cVar, SparseArray<Pos> sparseArray) {
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                Pos posValueAt = sparseArray.valueAt(i);
                if (posValueAt != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, posValueAt)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        if (this.f3759d) {
            this.o.setColor(-11751600);
        } else {
            this.o.setColor(this.n.f3948a.color);
        }
        int i = this.n.f3973h;
        if (i == 1 || i == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()) {
            q(canvas, matrix);
            return;
        }
        int i2 = this.n.f3973h;
        if (i2 == 2 || i2 == K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType()) {
            s(canvas, matrix);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (!this.n.a()) {
            return u(cVar, this.n.f3969d);
        }
        int i = this.n.f3973h;
        if (i == 1 || i == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.e(cVar, this.n.f3970e) < this.n.l;
        }
        int i2 = this.n.f3973h;
        if (i2 == 2 || i2 == K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType()) {
            for (Line line : this.n.m) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, line.start, line.end)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        SparseArray<Pos> sparseArray = this.n.f3969d;
        if (sparseArray == null || sparseArray.size() == 0) {
            return null;
        }
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        double dT = t(pos, d2, pos2, this.n.f3969d);
        if (dT == 1.0E11d) {
            int i = this.n.f3973h;
            if (i == 1 || i == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()) {
                Pos pos3 = this.n.f3970e;
                if (pos3 == null) {
                    return null;
                }
                dT = pos.distanceTo(pos3);
                cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar = this.n;
                if (dT < eVar.l + ((double) eVar.i)) {
                    pos2.setPos(pos);
                    dT = 0.0d;
                }
            } else {
                int i2 = this.n.f3973h;
                if (i2 == 2 || i2 == K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType()) {
                    cn.mucang.android.jiakaoyi.signal.pos.c cVar = this.n.n;
                    if (cVar == null) {
                        return null;
                    }
                    if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos)) {
                        pos2.setPos(pos);
                        dT = 0.0d;
                    }
                }
            }
        }
        if (dT > d2) {
            return null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(dT, (pos2.x == -1.0E11d && pos2.y == -1.0E11d) ? null : pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar) {
        this.n = eVar;
        this.o = cn.mucang.android.jiakaoyi.k3collect.style.a.a(eVar.f3948a);
        this.p = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.q = new Path();
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
    }
}
