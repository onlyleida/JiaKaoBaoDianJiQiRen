package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.b.a;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T extends a> extends k {
    protected final Pos i;
    protected final Pos j;
    protected final Paint k;
    protected Pos l;
    protected final T m;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f3738a;
        public int b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Pos f3739d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f3740e = 14.0f;

        public a(float f2, int i) {
            this.f3738a = f2;
            this.b = i;
        }

        public a a(String str) {
            this.c = str;
            return this;
        }

        public a b(Pos pos) {
            this.f3739d = pos;
            return this;
        }
    }

    public b(MapView mapView, Pos pos, Pos pos2, T t) {
        super(mapView);
        this.l = null;
        this.m = t;
        this.i = pos;
        this.j = pos2;
        Paint paint = new Paint(1);
        this.k = paint;
        paint.setStrokeWidth(t.f3738a);
        paint.setStyle(Paint.Style.STROKE);
        this.f3763h.add(pos);
        this.f3763h.add(pos2);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        float[] fArr = {cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.i.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.i.y)};
        float[] fArr2 = {cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.j.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.j.y)};
        matrix.mapPoints(fArr);
        matrix.mapPoints(fArr2);
        this.k.setColor(this.m.b);
        this.k.setStrokeWidth(a(this.m.f3738a, matrix));
        this.k.setStyle(Paint.Style.STROKE);
        i(this.k, matrix);
        canvas.drawLine(fArr[0], fArr[1], fArr2[0], fArr2[1], this.k);
        if (n0.g(this.m.c)) {
            Pos pos = this.m.f3739d;
            Pos pos2 = pos == null ? new Pos(((double) (fArr[0] + fArr2[0])) * 0.5d, ((double) (fArr[1] + fArr2[1])) * 0.5d) : h(pos, matrix);
            this.k.setPathEffect(null);
            this.k.setStyle(Paint.Style.FILL_AND_STROKE);
            this.k.setTextSize(this.m.f3740e);
            this.k.setStrokeWidth(1.0f);
            Rect rect = new Rect();
            Paint paint = this.k;
            String str = this.m.c;
            paint.getTextBounds(str, 0, str.length(), rect);
            canvas.drawText(this.m.c, ((float) pos2.x) - (rect.width() * 0.5f), ((float) pos2.y) + (rect.height() * 0.5f), this.k);
        }
        if (this.f3759d) {
            this.k.setPathEffect(null);
            this.k.setStrokeWidth(2.0f);
            this.k.setStyle(Paint.Style.STROKE);
            canvas.drawCircle(fArr[0], fArr[1], this.m.f3738a * 2.0f, this.k);
            canvas.drawCircle(fArr2[0], fArr2[1], this.m.f3738a * 2.0f, this.k);
            if (c(this.l)) {
                this.k.setColor(-14033616);
                Pos posH = h(new Pos(this.l).scale(1.0d), matrix);
                canvas.drawCircle((float) posH.x, (float) posH.y, this.m.f3738a * 2.0f, this.k);
            }
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return this.c.u.f3736h.b(this.i, this.j, cVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        this.l = new Pos(-1.0E11d, -1.0E11d);
        double d3 = cn.mucang.android.jiakaoyi.hpmap.d.a.d(pos, new Pos(this.i).scale(1.0d), new Pos(this.j).scale(1.0d), this.l, d2);
        if (d3 > d2) {
            return null;
        }
        Pos pos2 = this.l;
        if (pos2.x == -1.0E11d && pos2.y == -1.0E11d) {
            this.l = null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(d3, this.l, this);
    }

    protected void i(Paint paint, Matrix matrix) {
    }
}
