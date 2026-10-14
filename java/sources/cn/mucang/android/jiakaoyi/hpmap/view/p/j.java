package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class j extends k {
    private final Pos i;
    private final Paint j;
    private int k;

    public j(MapView mapView) {
        super(mapView);
        this.i = new Pos();
        this.f3758a = 10000;
        Paint paint = new Paint();
        this.j = paint;
        this.k = -16711936;
        paint.setColor(-16711936);
        paint.setStrokeWidth(2.0f);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        canvas.setMatrix(matrix);
        this.j.setColor(this.k);
        this.j.setStyle(Paint.Style.FILL);
        float fI = i(20.0f, 2.0f);
        Pos pos = this.i;
        canvas.drawCircle((float) pos.x, (float) pos.y, fI, this.j);
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, this.i);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }

    protected float i(float f2, float f3) {
        float currentZoom = 1.0f / this.c.getCurrentZoom();
        return f2 / currentZoom < f3 ? f3 * currentZoom : f2;
    }

    public void j(Pos pos) {
        this.i.setPos(pos);
        this.c.r();
    }
}
