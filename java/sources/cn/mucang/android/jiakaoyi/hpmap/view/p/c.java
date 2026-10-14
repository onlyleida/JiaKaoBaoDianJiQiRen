package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class c extends k {
    public final Pos i;
    protected final Paint j;
    protected final a k;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f3741a;
        public int b;
        public float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3742d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f3743e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Pos f3744f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f3746h;
        public float i;
        public float j = 30.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f3745g = 14.0f;

        public a(float f2, int i) {
            this.c = f2;
            this.f3742d = i;
        }

        public a a(float f2, float f3) {
            this.f3746h = true;
            this.i = f2;
            this.j = f3;
            return this;
        }

        public a b(float f2, int i) {
            this.f3741a = f2;
            this.b = i;
            return this;
        }
    }

    public c(MapView mapView, Pos pos, a aVar) {
        super(mapView);
        this.k = aVar;
        this.i = pos;
        this.j = new Paint(1);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        Pos posH = h(this.i, matrix);
        float fA = a(this.k.c, matrix);
        this.j.setStyle(Paint.Style.FILL_AND_STROKE);
        this.j.setColor(this.k.f3742d);
        a aVar = this.k;
        if (aVar.f3746h) {
            this.j.setPathEffect(new DashPathEffect(new float[]{matrix.mapRadius(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(aVar.i)), matrix.mapRadius(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.k.j))}, BitmapDescriptorFactory.HUE_RED));
        }
        canvas.drawCircle((float) posH.x, (float) posH.y, fA, this.j);
        float f2 = this.k.f3741a;
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            this.j.setStrokeWidth(a(f2, matrix));
            this.j.setStyle(Paint.Style.STROKE);
            this.j.setColor(this.k.b);
            canvas.drawCircle((float) posH.x, (float) posH.y, fA, this.j);
        }
        this.j.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.j.setColor(-1);
        if (n0.g(this.k.f3743e) && this.c.getCurrentZoom() >= 0.19999999f) {
            Pos pos = this.k.f3744f;
            Pos pos2 = pos == null ? new Pos(posH.x, posH.y - ((double) (fA * 2.5f))) : h(pos, matrix);
            this.j.setStyle(Paint.Style.FILL_AND_STROKE);
            this.j.setTextSize(this.k.f3745g);
            Rect rect = new Rect();
            Paint paint = this.j;
            String str = this.k.f3743e;
            paint.getTextBounds(str, 0, str.length(), rect);
            canvas.drawText(this.k.f3743e, ((float) pos2.x) - (rect.width() * 0.5f), ((float) pos2.y) + (rect.height() * 0.5f), this.j);
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
