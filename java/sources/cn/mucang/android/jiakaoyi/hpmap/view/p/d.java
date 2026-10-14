package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends k {
    private final float i;
    private final Paint j;

    public d(MapView mapView, List<Pos> list, float f2, int i) {
        super(mapView);
        this.f3763h.addAll(list);
        float fB = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(f2);
        this.i = fB;
        this.f3758a = 10;
        Paint paint = new Paint(1);
        this.j = paint;
        paint.setStrokeWidth(fB);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
    }

    private void k(Canvas canvas, Matrix matrix, float f2) {
        Path path = new Path();
        path.reset();
        Pos posH = h(this.f3763h.get(0), matrix);
        path.moveTo((float) posH.x, (float) posH.y);
        for (int i = 1; i < this.f3763h.size(); i++) {
            Pos posH2 = h(this.f3763h.get(i), matrix);
            path.lineTo((float) posH2.x, (float) posH2.y);
        }
        this.j.setStrokeWidth(f2);
        canvas.drawPath(path, this.j);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        if (this.f3763h.size() < 1) {
            return;
        }
        canvas.save();
        k(canvas, matrix, a(this.i, matrix));
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
        this.f3763h.add(pos);
    }

    public void j() {
        this.f3763h.clear();
    }

    public void l(int i) {
        this.j.setColor(i);
    }

    public void m(List<Pos> list) {
        if (cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        this.f3763h.clear();
        this.f3763h.addAll(list);
    }
}
