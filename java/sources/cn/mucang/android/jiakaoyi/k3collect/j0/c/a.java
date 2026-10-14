package cn.mucang.android.jiakaoyi.k3collect.j0.c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class a extends k {
    private final int i;
    private final Rect j;
    private final Matrix k;
    private Paint l;
    private final Bitmap m;
    private final C0111a n;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.j0.c.a$a, reason: collision with other inner class name */
    public static class C0111a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Pos f4006a;
        public String b;
        public float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4007d;

        public C0111a(Pos pos, String str, float f2, int i) {
            this.f4006a = pos;
            this.b = str;
            this.c = f2;
            this.f4007d = i;
        }
    }

    public a(MapView mapView, C0111a c0111a) {
        super(mapView);
        this.n = c0111a;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), c0111a.f4007d);
        this.m = bitmapDecodeResource;
        this.i = bitmapDecodeResource.getWidth();
        bitmapDecodeResource.getHeight();
        this.j = new Rect();
        this.l = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        this.k = new Matrix();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        Pos pos = this.n.f4006a;
        float f2 = (float) pos.x;
        float f3 = (float) pos.y;
        if (this.f3759d) {
            this.l.setColor(-11751600);
        } else {
            this.l.setColor(-1);
        }
        canvas.save();
        canvas.setMatrix(matrix);
        canvas.translate(f2, f3);
        canvas.rotate(this.n.c);
        this.k.setScale(4.0f, 4.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        this.k.preTranslate((-this.i) * 0.5f, BitmapDescriptorFactory.HUE_RED);
        canvas.drawBitmap(this.m, this.k, null);
        canvas.rotate(-this.n.c);
        float f4 = -f2;
        float f5 = -f3;
        canvas.translate(f4, f5);
        canvas.restore();
        canvas.save();
        canvas.setMatrix(matrix);
        canvas.translate(f2, f3);
        canvas.rotate(this.n.c);
        Paint paint = this.l;
        String str = this.n.b;
        paint.getTextBounds(str, 0, str.length(), this.j);
        this.l.setTextSize(40.0f);
        canvas.drawText(this.n.b, (-this.j.width()) / 2.0f, -this.j.height(), this.l);
        canvas.rotate(-this.n.c);
        canvas.translate(f4, f5);
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(c cVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, this.n.f4006a);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        double dDistanceTo = this.n.f4006a.distanceTo(pos);
        if (dDistanceTo > d2 * 5.0d) {
            return null;
        }
        if (pos2.x == -1.0E11d && pos2.y == -1.0E11d) {
            pos2 = null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(dDistanceTo, pos2, this);
    }

    public Pos i() {
        return this.n.f4006a;
    }

    public void j(Pos pos) {
        this.n.f4006a = pos;
    }
}
