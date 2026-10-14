package cn.mucang.android.jiakaoyi.teachingk2.autoteach.test;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;

/* JADX INFO: loaded from: classes4.dex */
public class a extends k {
    private final Paint i;

    public a(MapView mapView, int i) {
        super(mapView);
        Paint paint = new Paint();
        this.i = paint;
        paint.setColor(i);
    }

    private void j(Canvas canvas, Pos pos, Pos pos2) {
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
                j(canvas, pos, this.f3763h.get(i));
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

    public void i(Pos pos) {
        synchronized (this.f3763h) {
            this.f3763h.add(pos);
            while (this.f3763h.size() > 100) {
                this.f3763h.remove(0);
            }
        }
    }
}
