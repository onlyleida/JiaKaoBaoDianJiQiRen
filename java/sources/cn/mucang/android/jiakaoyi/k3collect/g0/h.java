package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.SparseArray;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.h> {
    private cn.mucang.android.jiakaoyi.k3collect.j0.b.h n;
    private Paint o;
    private Paint p;
    private Paint q;
    private Path r;
    private List<Pos> s;

    public h(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.h hVar) {
        super(mapView, hVar.b, hVar.c);
        o(hVar);
    }

    private void p(Canvas canvas, Matrix matrix) {
        double d2;
        double d3;
        if (this.n.a()) {
            canvas.save();
            canvas.setMatrix(matrix);
            canvas.clipPath(this.r);
            this.o.setStrokeWidth(n(this.n.j, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
            double dC = this.n.f3984d.c();
            double dE = this.n.f3984d.e();
            double dB = this.n.f3984d.b();
            double d4 = this.n.f3984d.d();
            double d5 = dB - d4;
            double d6 = dC - dE;
            if (d5 > d6) {
                d3 = dB;
                d2 = d5 + dE;
            } else {
                d2 = dC;
                d3 = d6 + d4;
            }
            ArrayList arrayList = new ArrayList();
            double d7 = d2;
            double d8 = d3;
            w(d7, dE, d8, d4, arrayList);
            v(d7, dE, d8, d4, arrayList);
            this.n.f3987g = arrayList;
            for (Line line : arrayList) {
                k(canvas, line.start, line.end, this.o);
            }
            canvas.restore();
        }
    }

    private void q(Canvas canvas, Matrix matrix) {
        if (this.n.a()) {
            canvas.save();
            canvas.setMatrix(matrix);
            this.o.setStrokeWidth(n(this.n.f3948a.lineWidth, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
            this.r.reset();
            Pos pos = this.n.f3985e.get(0);
            this.r.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y));
            for (int i = 1; i < this.n.f3985e.size(); i++) {
                Pos pos2 = this.n.f3985e.get(i);
                this.r.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y));
            }
            this.r.close();
            canvas.drawPath(this.r, this.o);
            canvas.restore();
        }
    }

    private void r(Canvas canvas, Matrix matrix) {
        canvas.save();
        canvas.setMatrix(matrix);
        int size = this.n.f3985e.size();
        for (int i = 0; i < size; i++) {
            l(canvas, this.n.f3985e.valueAt(i), this.p);
        }
        canvas.restore();
    }

    private void s(Canvas canvas, Matrix matrix) {
        if (this.n.a()) {
            canvas.save();
            canvas.setMatrix(matrix);
            int i = 0;
            while (i < this.n.f3988h.size()) {
                Pos pos = this.n.f3988h.get(i);
                i++;
                m(canvas, String.valueOf(i), pos, this.q);
            }
            canvas.restore();
        }
    }

    private double t(Pos pos, double d2, Pos pos2, SparseArray<Pos> sparseArray) {
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            Pos posValueAt = sparseArray.valueAt(i);
            double dDistanceTo = pos.distanceTo(posValueAt);
            if (dDistanceTo < d2) {
                pos2.setPos(posValueAt);
                return dDistanceTo;
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

    private void v(double d2, double d3, double d4, double d5, List<Line> list) {
        double d6 = d5;
        double dN = n(this.n.k, cn.mucang.android.jiakaoyi.k3collect.style.a.f4162d);
        int i = ((int) ((d4 - d6) / dN)) + 1;
        int i2 = 0;
        double d7 = d2;
        double d8 = d4;
        double d9 = d6;
        double d10 = d3;
        while (i2 < i) {
            int i3 = i;
            int i4 = i2;
            double d11 = d7;
            list.add(new Line(new Pos(d6, d7), new Pos(d8, d3)));
            if (d9 != d6) {
                list.add(new Line(new Pos(d9, d2), new Pos(d4, d10)));
            }
            d9 += dN;
            double d12 = d11 - dN;
            d8 -= dN;
            d10 += dN;
            d6 = d5;
            d7 = d12;
            i = i3;
            i2 = i4 + 1;
        }
    }

    private void w(double d2, double d3, double d4, double d5, List<Line> list) {
        double d6;
        double d7 = d4;
        double d8 = d5;
        double dN = n(this.n.k, cn.mucang.android.jiakaoyi.k3collect.style.a.f4162d);
        int i = ((int) ((d7 - d8) / dN)) + 1;
        int i2 = 0;
        double d9 = d2;
        double d10 = d3;
        double d11 = d8;
        double d12 = d7;
        while (i2 < i) {
            int i3 = i;
            double d13 = d12;
            list.add(new Line(new Pos(d11, d3), new Pos(d7, d9)));
            if (d11 != d8) {
                Pos pos = new Pos(d8, d10);
                d6 = d13;
                list.add(new Line(pos, new Pos(d6, d2)));
            } else {
                d6 = d13;
            }
            d11 += dN;
            d9 -= dN;
            d10 += dN;
            d12 = d6 - dN;
            i2++;
            d7 = d4;
            d8 = d5;
            i = i3;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        SparseArray<Pos> sparseArray = this.n.f3985e;
        if (sparseArray == null || sparseArray.size() <= 0) {
            return;
        }
        if (this.f3759d) {
            this.o.setColor(-11751600);
        } else {
            this.o.setColor(this.n.f3948a.color);
        }
        q(canvas, matrix);
        if (this.c.getCurrentZoom() > 0.02f) {
            p(canvas, matrix);
        }
        if (this.c.getMapMode() == MapView.Mode.Edit && this.c.getCurrentZoom() > 0.02f && this.k) {
            s(canvas, matrix);
            r(canvas, matrix);
            if (!MucangConfig.v() || this.j == null || this.n.f3985e.size() <= 0) {
                return;
            }
            j(canvas, this.j + "-" + LineLayoutType.BANMA_LINE.getLineName(), this.n.f3985e.get(0), this.l);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (this.n.a()) {
            return !cVar.f5822e.h(this.n.f3984d);
        }
        return u(cVar, this.n.f3985e);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        if (!this.n.a()) {
            return null;
        }
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        double dT = t(pos, d2, pos2, this.n.f3985e);
        if (dT == 1.0E11d) {
            SparseArray<Pos> sparseArray = this.n.f3985e;
            int size = sparseArray.size();
            int[] iArr = new int[size];
            for (int i = 0; i < size; i++) {
                iArr[i] = sparseArray.keyAt(i);
            }
            Arrays.sort(iArr);
            List<Pos> list = this.s;
            if (list == null) {
                this.s = new ArrayList();
            } else {
                list.clear();
            }
            for (int i2 = 0; i2 < size; i2++) {
                this.s.add(sparseArray.get(iArr[i2]));
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, this.s)) {
                dT = 0.0d;
                pos2.setPos(pos);
            }
        }
        if (dT > d2) {
            return null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(dT, (pos2.x == -1.0E11d && pos2.y == -1.0E11d) ? null : pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.h hVar) {
        this.n = hVar;
        this.o = cn.mucang.android.jiakaoyi.k3collect.style.a.a(hVar.f3948a);
        this.p = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.q = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        this.r = new Path();
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
    }
}
