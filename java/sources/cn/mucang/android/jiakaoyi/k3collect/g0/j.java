package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Paint;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.j0.a;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public abstract class j<T extends cn.mucang.android.jiakaoyi.k3collect.j0.a> extends cn.mucang.android.jiakaoyi.hpmap.view.p.k {
    public static double m = 150.0d;
    public int i;
    public Long j;
    public boolean k;
    protected Paint l;

    public j(MapView mapView, int i, Long l) {
        super(mapView);
        this.k = true;
        this.i = i;
        this.j = l;
    }

    public Pos i() {
        return null;
    }

    protected void j(Canvas canvas, String str, Pos pos, Paint paint) {
        if (pos != null) {
            paint.setTextSize(n(28.0f, 16.0f));
            canvas.drawText(str, cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x - (((double) paint.measureText(str)) * 0.5d)), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y), paint);
        }
    }

    protected void k(Canvas canvas, Pos pos, Pos pos2, Paint paint) {
        if (pos == null || pos2 == null) {
            return;
        }
        canvas.drawLine(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y), paint);
    }

    protected void l(Canvas canvas, Pos pos, Paint paint) {
        if (pos != null) {
            canvas.drawCircle(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y), n(cn.mucang.android.jiakaoyi.k3collect.style.a.f4161a, cn.mucang.android.jiakaoyi.k3collect.style.a.b), paint);
        }
    }

    protected void m(Canvas canvas, String str, Pos pos, Paint paint) {
        if (pos != null) {
            paint.setTextSize(n(14.0f, 8.0f));
            canvas.drawText(str, cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x - (((double) paint.measureText(str)) * 0.5d)), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y), paint);
        }
    }

    protected float n(float f2, float f3) {
        float currentZoom = 1.0f / this.c.getCurrentZoom();
        return f2 / currentZoom < f3 ? f3 * currentZoom : f2;
    }

    public abstract void o(T t);
}
