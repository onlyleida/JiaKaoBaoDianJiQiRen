package cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.e;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends k {
    private final Paint i;
    private final boolean j;

    public a(MapView mapView, int i, int i2) {
        super(mapView);
        this.j = true;
        Paint paint = new Paint();
        this.i = paint;
        paint.setColor(i);
        paint.setStrokeWidth(i2);
    }

    private void i(Canvas canvas, Pos pos, Pos pos2) {
        canvas.drawLine((float) pos.x, (float) pos.y, (float) pos2.x, (float) pos2.y, this.i);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        canvas.setMatrix(matrix);
        synchronized (this.f3763h) {
            int i = 0;
            while (i < this.f3763h.size() - 1) {
                Pos pos = this.f3763h.get(i);
                i++;
                i(canvas, pos, this.f3763h.get(i));
            }
            if (this.j && this.f3763h.size() > 2) {
                Pos pos2 = this.f3763h.get(0);
                List<Pos> list = this.f3763h;
                i(canvas, pos2, list.get(list.size() - 1));
            }
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(c cVar) {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }

    public void j(List<Pos> list) {
        if (g.b(list)) {
            return;
        }
        synchronized (this.f3763h) {
            this.f3763h.clear();
            this.f3763h.addAll(list);
        }
    }

    public a(MapView mapView, int i, List<Pos> list, int i2, boolean z) {
        super(mapView);
        this.j = z;
        Paint paint = new Paint();
        this.i = paint;
        paint.setColor(i);
        paint.setStrokeWidth(i2);
        this.f3763h.clear();
        this.f3763h.addAll(list);
    }
}
