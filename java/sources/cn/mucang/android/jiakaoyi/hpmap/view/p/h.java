package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class h extends k {
    private final Pos i;
    private final Paint j;

    public h(MapView mapView, Pos pos) {
        super(mapView);
        this.i = pos;
        Paint paint = new Paint(1);
        this.j = paint;
        paint.setColor(Color.parseColor("#4DFF0000"));
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        Pos posH = h(this.i, matrix);
        canvas.drawCircle((float) posH.x, (float) posH.y, 7.0f, this.j);
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(this.i, this.f3761f));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }
}
