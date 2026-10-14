package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class n extends k {
    private final Paint i;
    private final Paint j;
    private Path k;
    private Path l;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<Integer> f3767a;
        public float b = 80.0f;
        public float c = 80.0f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f3768d;

        public a(List<Integer> list, float f2) {
            this.f3767a = list;
            this.f3768d = f2;
        }
    }

    public n(MapView mapView, List<Pos> list, a aVar) {
        super(mapView);
        this.f3758a = -1;
        this.f3763h.addAll(list);
        Paint paint = new Paint(1);
        this.i = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(aVar.f3767a.get(0).intValue());
        Paint paint2 = new Paint(1);
        this.j = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(aVar.f3767a.get(1).intValue());
        this.k = new Path();
        this.l = new Path();
        float fB = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(aVar.b);
        paint.setPathEffect(new DashPathEffect(new float[]{fB, cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(aVar.c)}, fB));
        paint.setStrokeWidth(aVar.f3768d);
        paint2.setStrokeWidth(aVar.f3768d);
        if (list.size() > 1) {
            this.k.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(0).x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(0).y));
            this.l.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(0).x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(0).y));
            for (int i = 1; i < list.size(); i++) {
                this.k.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(i).x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(i).y));
                this.l.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(i).x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(i).y));
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        canvas.setMatrix(matrix);
        canvas.drawPath(this.l, this.j);
        canvas.drawPath(this.k, this.i);
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (this.c.getCurrentZoom() < 0.16f) {
            return false;
        }
        return this.c.u.f3736h.d(this.f3763h, cVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }
}
