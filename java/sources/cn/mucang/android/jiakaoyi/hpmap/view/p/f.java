package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class f extends k {
    public final Pos i;
    public final Pos j;
    public final Pos k;
    public final float l;
    public final float m;
    public final float n;
    public final float o;
    public final float p;
    public final float q;
    protected final Paint r;
    protected final a s;

    public static class a {
        public int b;
        public boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f3750d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f3749a = 15.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f3751e = 30.0f;

        public a a(float f2, float f3) {
            this.c = true;
            this.f3750d = f2;
            this.f3751e = f3;
            return this;
        }

        public a b(float f2, int i) {
            this.f3749a = f2;
            this.b = i;
            return this;
        }
    }

    public f(MapView mapView, Pos pos, float f2, float f3, float f4, float f5, float f6, float f7, Pos pos2, Pos pos3, a aVar) {
        super(mapView);
        this.s = aVar;
        this.i = pos;
        this.l = f2;
        this.m = f3;
        this.n = f4;
        this.o = f5;
        this.p = f6;
        this.q = f7;
        this.j = pos2;
        this.k = pos3;
        this.r = new Paint(1);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        float fA = a(this.l, matrix);
        float fA2 = a(this.m, matrix);
        Pos posH = h(this.j, matrix);
        Pos posH2 = h(this.k, matrix);
        this.r.setStyle(Paint.Style.STROKE);
        this.r.setColor(this.s.b);
        this.r.setAntiAlias(true);
        a aVar = this.s;
        if (aVar.c) {
            this.r.setPathEffect(new DashPathEffect(new float[]{matrix.mapRadius(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(aVar.f3750d)), matrix.mapRadius(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(this.s.f3751e))}, BitmapDescriptorFactory.HUE_RED));
        }
        float fA3 = a(this.s.f3749a, matrix);
        this.r.setStrokeWidth(fA3);
        double d2 = fA;
        double d3 = fA3 / 2.0f;
        float f2 = (float) ((posH.x - d2) - d3);
        float f3 = (float) ((posH.y - d2) - d3);
        float f4 = fA * 2.0f;
        canvas.drawArc(new RectF(f2, f3, f2 + f4 + fA3, f4 + f3 + fA3), this.n + ((float) this.c.getCurrentRotateDegrees()), this.o, false, this.r);
        double d4 = fA2;
        float f5 = (float) ((posH2.x - d4) - d3);
        float f6 = (float) ((posH2.y - d4) - d3);
        float f7 = fA2 * 2.0f;
        canvas.drawArc(new RectF(f5, f6, f5 + f7 + fA3, f7 + f6 + fA3), this.p + ((float) this.c.getCurrentRotateDegrees()), this.q, false, this.r);
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
