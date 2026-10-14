package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class m extends k {
    public final Pos i;
    protected final Paint j;
    protected final a k;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f3764a;
        public int b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Pos f3765d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f3766e = 14.0f;

        public a(float f2, int i) {
            this.f3764a = f2;
            this.b = i;
        }

        public a a(String str) {
            this.c = str;
            return this;
        }

        public a b(Pos pos) {
            this.f3765d = pos;
            return this;
        }
    }

    public m(MapView mapView, Pos pos, a aVar) {
        super(mapView);
        this.f3758a = 10;
        this.k = aVar;
        this.i = pos;
        Paint paint = new Paint(1);
        this.j = paint;
        paint.setColor(aVar.b);
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        Pos posH = h(this.i, matrix);
        float fA = a(this.k.f3764a, matrix);
        if (this.c.getCurrentZoom() >= 0.19999999f) {
            canvas.drawCircle((float) posH.x, (float) posH.y, fA, this.j);
        }
        if (n0.g(this.k.c) && this.c.getCurrentZoom() >= 0.19999999f) {
            Pos pos = this.k.f3765d;
            Pos pos2 = pos == null ? new Pos(posH.x, posH.y - ((double) (fA * 2.5f))) : h(pos, matrix);
            this.j.setStyle(Paint.Style.FILL_AND_STROKE);
            this.j.setTextSize(this.k.f3766e);
            Rect rect = new Rect();
            Paint paint = this.j;
            String str = this.k.c;
            paint.getTextBounds(str, 0, str.length(), rect);
            canvas.drawText(this.k.c, ((float) pos2.x) - (rect.width() * 0.5f), ((float) pos2.y) + (rect.height() * 0.5f), this.j);
        }
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
