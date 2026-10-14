package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class l extends k {
    private final float i;
    private Paint j;
    private Paint k;
    private boolean l;
    private float m;
    private float n;
    protected Pos o;

    public l(MapView mapView, List<Pos> list, float f2, int i) {
        super(mapView);
        this.n = 30.0f;
        this.o = null;
        this.f3763h.addAll(list);
        float fB = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(f2);
        this.i = fB;
        Paint paint = new Paint(1);
        this.j = paint;
        paint.setStrokeWidth(fB);
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setColor(i);
        Paint paint2 = new Paint(1);
        this.k = paint2;
        paint2.setStrokeWidth(fB);
        this.k.setStyle(Paint.Style.STROKE);
        this.k.setColor(i);
    }

    private void i(Canvas canvas, Matrix matrix, float f2) {
        Path path = new Path();
        path.reset();
        Pos posH = h(this.f3763h.get(0), matrix);
        path.moveTo((float) posH.x, (float) posH.y);
        if (this.f3759d) {
            this.k.setStrokeWidth(2.0f);
            canvas.drawCircle((float) posH.x, (float) posH.y, this.i * 2.0f, this.k);
        }
        for (int i = 1; i < this.f3763h.size(); i++) {
            Pos posH2 = h(this.f3763h.get(i), matrix);
            path.lineTo((float) posH2.x, (float) posH2.y);
            if (this.f3759d) {
                canvas.drawCircle((float) posH2.x, (float) posH2.y, this.i * 2.0f, this.k);
            }
        }
        this.j.setStrokeWidth(f2);
        canvas.drawPath(path, this.j);
        if (this.f3759d && c(this.o)) {
            this.k.setStrokeWidth(2.0f);
            this.k.setColor(-14033616);
            Pos posH3 = h(new Pos(this.o).scale(1.0d), matrix);
            canvas.drawCircle((float) posH3.x, (float) posH3.y, this.i * 2.0f, this.k);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        float fA = a(this.i, matrix);
        if (this.l) {
            this.j.setPathEffect(new DashPathEffect(new float[]{matrix.mapRadius(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.m)), matrix.mapRadius(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.n))}, BitmapDescriptorFactory.HUE_RED));
        }
        i(canvas, matrix, fA);
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        int size = this.f3763h.size();
        if (size <= 0) {
            return false;
        }
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(this.f3763h.get(0), this.f3761f))) {
            return true;
        }
        List<Pos> list = this.f3763h;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(list.get(list.size() - 1), this.f3761f))) {
            return true;
        }
        Pos posC = cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(this.f3763h.get(0), this.f3761f);
        List<Pos> list2 = this.f3763h;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, posC, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(list2.get(list2.size() - 1), this.f3762g))) {
            return true;
        }
        if (size >= 3) {
            Pos posC2 = cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(this.f3763h.get(0), this.f3761f);
            List<Pos> list3 = this.f3763h;
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, posC2, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(list3.get(list3.size() / 2), this.f3762g))) {
                return true;
            }
            List<Pos> list4 = this.f3763h;
            Pos posC3 = cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(list4.get(list4.size() / 2), this.f3761f);
            List<Pos> list5 = this.f3763h;
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, posC3, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(list5.get(list5.size() - 1), this.f3762g))) {
                return true;
            }
        }
        int i = size - 1;
        int[] iArr = {0, i / 4, i / 2, (i * 3) / 4, i};
        int i2 = 0;
        while (i2 < 4) {
            int i3 = i2 + 1;
            if (iArr[i2] != iArr[i3] && i3 < this.f3763h.size() && cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(this.f3763h.get(iArr[i2]), this.f3761f), cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(this.f3763h.get(iArr[i3]), this.f3762g))) {
                return true;
            }
            i2 = i3;
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        Pos pos2 = new Pos();
        Pos pos3 = new Pos();
        int i = 0;
        while (i < this.f3763h.size() - 1) {
            this.o = new Pos(-1.0E11d, -1.0E11d);
            Pos pos4 = this.f3763h.get(i);
            i++;
            double d3 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, pos2.setPos(pos4).scale(1.0d), pos3.setPos(this.f3763h.get(i)).scale(1.0d), this.o, d2);
            if (d3 <= d2) {
                Pos pos5 = this.o;
                if (pos5.x == -1.0E11d && pos5.y == -1.0E11d) {
                    this.o = null;
                }
                return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(d3, this.o, this);
            }
        }
        return null;
    }

    public l j(float f2, float f3) {
        this.l = true;
        this.m = f2;
        this.n = f3;
        return this;
    }
}
