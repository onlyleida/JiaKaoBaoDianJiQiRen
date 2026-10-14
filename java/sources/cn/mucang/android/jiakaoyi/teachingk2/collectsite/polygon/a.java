package cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends k {
    private final float i;
    private Paint j;
    public final PolygonModel k;

    public a(MapView mapView, PolygonModel polygonModel) {
        super(mapView);
        this.k = polygonModel;
        float fB = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(15.0d);
        this.i = fB;
        Paint paint = new Paint(1);
        this.j = paint;
        paint.setStrokeWidth(fB);
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setColor(-1);
    }

    private void k(Canvas canvas, Matrix matrix, float f2) {
        synchronized (this.f3763h) {
            if (this.f3763h.size() <= 0) {
                return;
            }
            Path path = new Path();
            path.reset();
            Pos posH = h(this.f3763h.get(0), matrix);
            path.moveTo((float) posH.x, (float) posH.y);
            for (int i = 1; i < this.f3763h.size(); i++) {
                Pos posH2 = h(this.f3763h.get(i), matrix);
                path.lineTo((float) posH2.x, (float) posH2.y);
            }
            this.f3763h.size();
            this.j.setStrokeWidth(f2);
            canvas.drawPath(path, this.j);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        k(canvas, matrix, a(this.i, matrix));
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(c cVar) {
        synchronized (this.f3763h) {
            Iterator<Pos> it = this.f3763h.iterator();
            while (it.hasNext()) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(it.next(), this.f3761f))) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }

    public void i(Pos pos) {
        synchronized (this.f3763h) {
            this.f3763h.add(pos);
        }
        this.c.r();
    }

    public a j(List<Pos> list) {
        synchronized (this.f3763h) {
            this.f3763h.addAll(list);
        }
        this.c.r();
        return this;
    }
}
