package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class g extends k {
    public final Pos i;
    protected final Paint j;
    protected final a k;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f3752a;
        public int b;
        public float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3753d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3754e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f3755f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Pos f3756g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f3757h = 14.0f;
        public boolean i;

        public a(float f2, int i, int i2) {
            this.c = f2;
            this.f3753d = i;
            this.f3754e = i2;
        }

        public a a(String str) {
            this.f3755f = str;
            return this;
        }

        public a b(Pos pos) {
            this.f3756g = pos;
            return this;
        }

        public a c(boolean z) {
            this.i = z;
            return this;
        }

        public a d(float f2, int i) {
            this.f3752a = f2;
            this.b = i;
            return this;
        }
    }

    public g(MapView mapView, Pos pos, a aVar) {
        super(mapView);
        this.f3758a = 10;
        this.k = aVar;
        this.i = pos;
        this.j = new Paint(1);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        Pos posH = h(this.i, matrix);
        a aVar = this.k;
        float fA = a(aVar.c - (aVar.f3752a / 2.0f), matrix);
        if (this.k.i || this.c.getCurrentZoom() >= 0.5f) {
            this.j.setStyle(Paint.Style.FILL_AND_STROKE);
            this.j.setStrokeWidth(this.k.f3752a);
            this.j.setColor(this.k.f3753d);
            canvas.drawCircle((float) posH.x, (float) posH.y, fA, this.j);
            if (this.k.f3752a > BitmapDescriptorFactory.HUE_RED) {
                this.j.setStyle(Paint.Style.STROKE);
                this.j.setColor(this.k.b);
                canvas.drawCircle((float) posH.x, (float) posH.y, fA, this.j);
            }
            this.j.setStyle(Paint.Style.FILL_AND_STROKE);
            this.j.setColor(this.k.f3754e);
            canvas.drawCircle((float) posH.x, (float) posH.y, fA / 3.0f, this.j);
        }
        this.j.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.j.setColor(-1);
        if (n0.g(this.k.f3755f) && this.c.getCurrentZoom() >= 0.19999999f) {
            Pos pos = this.k.f3756g;
            Pos pos2 = pos == null ? new Pos(posH.x, posH.y - ((double) (fA * 2.5f))) : h(pos, matrix);
            this.j.setStyle(Paint.Style.FILL_AND_STROKE);
            this.j.setTextSize(this.k.f3757h);
            Rect rect = new Rect();
            Paint paint = this.j;
            String str = this.k.f3755f;
            paint.getTextBounds(str, 0, str.length(), rect);
            canvas.drawText(this.k.f3755f, ((float) pos2.x) - (rect.width() * 0.5f), ((float) pos2.y) + (rect.height() * 0.5f), this.j);
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
