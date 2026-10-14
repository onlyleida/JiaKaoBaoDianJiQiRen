package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class o extends k {
    private final a i;
    private final Paint j;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f3769a;
        public float b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Pos f3770d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f3771e;

        public a(String str, Pos pos, float f2) {
            this.f3769a = str;
            this.f3770d = pos;
            this.f3771e = f2;
        }

        public a a(int i) {
            this.c = i;
            return this;
        }

        public a b(float f2) {
            this.b = f2;
            return this;
        }
    }

    public o(MapView mapView, a aVar) {
        super(mapView);
        this.i = aVar;
        Paint paint = new Paint(1);
        this.j = paint;
        paint.setStyle(Paint.Style.FILL);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        if (this.c.getCurrentZoom() >= 0.06f) {
            canvas.save();
            Pos posH = h(this.i.f3770d, matrix);
            float fA = a(this.i.f3771e, matrix);
            canvas.drawCircle((float) posH.x, (float) posH.y, fA, this.j);
            Pos pos = new Pos(posH.x, posH.y - ((double) (fA * 2.5f)));
            this.j.setTextSize(this.i.b);
            this.j.setColor(this.i.c);
            Rect rect = new Rect();
            Paint paint = this.j;
            String str = this.i.f3769a;
            paint.getTextBounds(str, 0, str.length(), rect);
            canvas.drawText(this.i.f3769a, ((float) pos.x) - (rect.width() * 0.5f), ((float) pos.y) + (rect.height() * 0.5f), this.j);
            canvas.restore();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }
}
