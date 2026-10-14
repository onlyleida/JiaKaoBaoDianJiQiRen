package cn.mucang.android.jiakaoyi.mapcollect.migrate;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class p extends cn.mucang.android.jiakaoyi.hpmap.view.p.k {
    private final Pos i;
    private final Paint j;

    public p(MapView mapView, int i) {
        super(mapView);
        this.i = new Pos();
        Paint paint = new Paint();
        this.j = paint;
        paint.setColor(i);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(8.0f);
        paint.setAntiAlias(true);
        this.f3758a = 10;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        canvas.setMatrix(matrix);
        Pos pos = this.i;
        canvas.drawCircle((float) pos.x, (float) pos.y, 40.0f, this.j);
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }

    public void i(Pos pos) {
        if (pos == null) {
            return;
        }
        this.i.setPos(pos);
        this.c.r();
    }
}
