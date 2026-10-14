package cn.mucang.android.jiakaoyi.k3collect.g0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Build;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class b extends j<cn.mucang.android.jiakaoyi.k3collect.j0.b.b> {
    public cn.mucang.android.jiakaoyi.k3collect.j0.b.b n;
    private Paint o;
    private Paint p;
    private Paint q;
    private Path r;
    private double s;
    private Matrix t;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3942a;

        static {
            int[] iArr = new int[K3ShapeType.values().length];
            f3942a = iArr;
            try {
                iArr[K3ShapeType.ARROW_STRAIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3942a[K3ShapeType.ARROW_TURN_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3942a[K3ShapeType.ARROW_TURN_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3942a[K3ShapeType.ARROW_TURN_AROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3942a[K3ShapeType.ARROW_STRAIGHT_TURN_LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3942a[K3ShapeType.ARROW_STRAIGHT_TURN_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3942a[K3ShapeType.ARROW_STRAIGHT_TURN_AROUND.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3942a[K3ShapeType.ARROW_TURN_LEFT_AROUND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3942a[K3ShapeType.ARROW_TURN_LEFT_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public b(MapView mapView, cn.mucang.android.jiakaoyi.k3collect.j0.b.b bVar) {
        super(mapView, bVar.b, bVar.c);
        o(bVar);
    }

    private void p(Canvas canvas, Matrix matrix, Pos pos, Pos pos2) {
        canvas.save();
        canvas.setMatrix(matrix);
        l(canvas, pos, this.p);
        l(canvas, pos2, this.p);
        if (!MucangConfig.v() || this.j == null) {
            m(canvas, "点1", this.n.f3957g, this.q);
        } else {
            j(canvas, this.j + "-" + LineLayoutType.ARROW.getLineName(), this.n.f3957g, this.l);
        }
        m(canvas, "点2", this.n.f3958h, this.q);
        canvas.restore();
    }

    private void r() {
        this.r.lineTo(15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-7.5f, -120.0f);
        this.r.lineTo(-30.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-15.0f, 180.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 180.0f);
        this.r.close();
        float f2 = (float) (this.s / 180.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    private void s() {
        this.r.lineTo(15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-7.5f, -120.0f);
        this.r.lineTo(-30.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-15.0f, 48.0f);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            this.r.arcTo(-60.0f, 33.0f, BitmapDescriptorFactory.HUE_RED, 93.0f, -45.0f, -135.0f, false);
        } else {
            this.r.quadTo(-30.0f, -40.0f, -60.0f, 63.0f);
        }
        this.r.lineTo(-60.0f, 63.0f);
        this.r.lineTo(-60.0f, 83.0f);
        this.r.lineTo(-75.0f, 83.0f);
        this.r.lineTo(-52.5f, 180.0f);
        this.r.lineTo(-30.0f, 83.0f);
        this.r.lineTo(-45.0f, 83.0f);
        this.r.lineTo(-45.0f, 63.0f);
        if (i >= 21) {
            this.r.arcTo(-45.0f, 48.0f, -15.0f, 78.0f, 180.0f, 180.0f, false);
        } else {
            this.r.quadTo(-30.0f, 48.0f, -15.0f, 63.0f);
        }
        this.r.lineTo(-15.0f, 180.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 180.0f);
        this.r.close();
        float f2 = (float) (this.s / 180.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    private void t() {
        this.r.lineTo(15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-7.5f, -120.0f);
        this.r.lineTo(-30.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-15.0f, 100.0f);
        this.r.lineTo(-55.0f, 55.0f);
        this.r.lineTo(-55.0f, 5.0f);
        this.r.lineTo(-75.0f, 85.0f);
        this.r.lineTo(-55.0f, 160.0f);
        this.r.lineTo(-55.0f, 115.0f);
        this.r.lineTo(-15.0f, 160.0f);
        this.r.lineTo(-15.0f, 180.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 180.0f);
        this.r.close();
        float f2 = (float) (this.s / 180.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    private void u() {
        this.r.lineTo(-15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(7.5f, -120.0f);
        this.r.lineTo(30.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(15.0f, 100.0f);
        this.r.lineTo(55.0f, 55.0f);
        this.r.lineTo(55.0f, 5.0f);
        this.r.lineTo(75.0f, 85.0f);
        this.r.lineTo(55.0f, 160.0f);
        this.r.lineTo(55.0f, 115.0f);
        this.r.lineTo(15.0f, 160.0f);
        this.r.lineTo(15.0f, 180.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 180.0f);
        this.r.close();
        float f2 = (float) (this.s / 180.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    private void v() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            this.r.arcTo(-90.0f, -45.0f, BitmapDescriptorFactory.HUE_RED, 45.0f, BitmapDescriptorFactory.HUE_RED, -180.0f, false);
        } else {
            this.r.quadTo(-45.0f, -45.0f, -90.0f, BitmapDescriptorFactory.HUE_RED);
        }
        this.r.lineTo(-90.0f, 55.0f);
        this.r.lineTo(-110.0f, 55.0f);
        this.r.lineTo(-80.0f, 175.0f);
        this.r.lineTo(-50.0f, 55.0f);
        this.r.lineTo(-70.0f, 55.0f);
        this.r.lineTo(-70.0f, 25.0f);
        if (i >= 21) {
            this.r.arcTo(-70.0f, BitmapDescriptorFactory.HUE_RED, -20.0f, 50.0f, 180.0f, 180.0f, false);
        } else {
            this.r.quadTo(-45.0f, BitmapDescriptorFactory.HUE_RED, -20.0f, 25.0f);
        }
        this.r.lineTo(-20.0f, 255.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 255.0f);
        this.r.close();
        float f2 = (float) (this.s / 255.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    private void w() {
        this.r.lineTo(-55.0f, -55.0f);
        this.r.lineTo(-55.0f, -105.0f);
        this.r.lineTo(-75.0f, -25.0f);
        this.r.lineTo(-55.0f, 50.0f);
        this.r.lineTo(-55.0f, 5.0f);
        this.r.lineTo(-15.0f, 45.0f);
        this.r.lineTo(-15.0f, 195.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 195.0f);
        this.r.close();
        float f2 = (float) (this.s / 195.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    private void x() {
        this.r.lineTo(-55.0f, -55.0f);
        this.r.lineTo(-55.0f, -105.0f);
        this.r.lineTo(-75.0f, -25.0f);
        this.r.lineTo(-55.0f, 50.0f);
        this.r.lineTo(-55.0f, 5.0f);
        this.r.lineTo(-15.0f, 45.0f);
        this.r.lineTo(-15.0f, 60.0f);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            this.r.arcTo(-60.0f, 45.0f, BitmapDescriptorFactory.HUE_RED, 103.0f, -45.0f, -135.0f, false);
        } else {
            this.r.quadTo(-40.0f, 40.0f, -60.0f, 75.0f);
        }
        this.r.lineTo(-60.0f, 95.0f);
        this.r.lineTo(-75.0f, 95.0f);
        this.r.lineTo(-52.5f, 195.0f);
        this.r.lineTo(-30.0f, 95.0f);
        this.r.lineTo(-45.0f, 95.0f);
        this.r.lineTo(-45.0f, 75.0f);
        if (i >= 21) {
            this.r.arcTo(-45.0f, 60.0f, -15.0f, 90.0f, 180.0f, 180.0f, false);
        } else {
            this.r.quadTo(-30.0f, 60.0f, -15.0f, 75.0f);
        }
        this.r.lineTo(-15.0f, 195.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 195.0f);
        this.r.close();
        float f2 = (float) (this.s / 195.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    private void y() {
        this.r.lineTo(40.0f, -40.0f);
        this.r.lineTo(40.0f, 5.0f);
        this.r.lineTo(60.0f, -70.0f);
        this.r.lineTo(40.0f, -150.0f);
        this.r.lineTo(40.0f, -100.0f);
        this.r.lineTo(-7.5f, -60.0f);
        this.r.lineTo(-55.0f, -100.0f);
        this.r.lineTo(-55.0f, -150.0f);
        this.r.lineTo(-75.0f, -70.0f);
        this.r.lineTo(-55.0f, 5.0f);
        this.r.lineTo(-55.0f, 5.0f);
        this.r.lineTo(-55.0f, -40.0f);
        this.r.lineTo(-15.0f, BitmapDescriptorFactory.HUE_RED);
        this.r.lineTo(-15.0f, 150.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 150.0f);
        this.r.close();
        float f2 = (float) (this.s / 150.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    private void z() {
        this.r.lineTo(55.0f, -55.0f);
        this.r.lineTo(55.0f, -105.0f);
        this.r.lineTo(75.0f, -25.0f);
        this.r.lineTo(55.0f, 50.0f);
        this.r.lineTo(55.0f, 5.0f);
        this.r.lineTo(15.0f, 45.0f);
        this.r.lineTo(15.0f, 195.0f);
        this.r.lineTo(BitmapDescriptorFactory.HUE_RED, 195.0f);
        this.r.close();
        float f2 = (float) (this.s / 195.0d);
        this.t.reset();
        this.t.setScale(f2, f2);
        this.r.transform(this.t);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        cn.mucang.android.jiakaoyi.k3collect.j0.b.b bVar = this.n;
        Pos pos = bVar.f3955e;
        Pos pos2 = bVar.f3956f;
        if (this.f3759d) {
            this.o.setColor(-11751600);
        } else {
            this.o.setColor(bVar.f3948a.color);
        }
        if (this.n.a()) {
            this.s = pos.distanceTo(pos2);
            double dAngleTo = pos2.angleTo(pos);
            canvas.save();
            canvas.setMatrix(matrix);
            this.r.reset();
            canvas.translate(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y));
            double d2 = ((dAngleTo * 180.0d) / 3.141592653589793d) - 90.0d;
            canvas.rotate((float) d2);
            K3ShapeType k3ShapeTypeA = K3ShapeType.INSTANCE.a(this.n.f3954d);
            if (k3ShapeTypeA != null) {
                switch (a.f3942a[k3ShapeTypeA.ordinal()]) {
                    case 1:
                        r();
                        break;
                    case 2:
                        w();
                        break;
                    case 3:
                        z();
                        break;
                    case 4:
                        v();
                        break;
                    case 5:
                        t();
                        break;
                    case 6:
                        u();
                        break;
                    case 7:
                        s();
                        break;
                    case 8:
                        x();
                        break;
                    case 9:
                        y();
                        break;
                }
                this.o.setStrokeWidth(n(this.n.f3948a.lineWidth, cn.mucang.android.jiakaoyi.k3collect.style.a.c));
                canvas.drawPath(this.r, this.o);
            }
            canvas.rotate((float) (-d2));
            canvas.translate(-cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.x), -cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos2.y));
            canvas.restore();
        }
        if (this.c.getMapMode() == MapView.Mode.Edit && this.c.getCurrentZoom() > 0.02f && this.k) {
            p(canvas, matrix, pos, pos2);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (this.n.a()) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = this.n.i;
            if (cVar2 != null) {
                return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, cVar2);
            }
            return false;
        }
        Pos pos = this.n.f3955e;
        if (pos != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos)) {
            return true;
        }
        Pos pos2 = this.n.f3956f;
        return pos2 != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos2);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        if (this.n.i == null) {
            return null;
        }
        Pos pos2 = new Pos(-1.0E11d, -1.0E11d);
        double d3 = 1.0E11d;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(this.n.i, pos)) {
            d3 = 0.0d;
            pos2.setPos(pos);
        }
        if (d3 > d2) {
            return null;
        }
        return new cn.mucang.android.jiakaoyi.hpmap.view.q.a(d3, (pos2.x == -1.0E11d && pos2.y == -1.0E11d) ? null : pos2, this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.g0.j
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void o(cn.mucang.android.jiakaoyi.k3collect.j0.b.b bVar) {
        this.n = bVar;
        this.o = cn.mucang.android.jiakaoyi.k3collect.style.a.a(bVar.f3948a);
        this.p = cn.mucang.android.jiakaoyi.k3collect.style.a.b();
        this.q = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
        this.o.setStyle(Paint.Style.FILL);
        this.r = new Path();
        this.t = new Matrix();
        if (MucangConfig.v()) {
            Paint paintC = cn.mucang.android.jiakaoyi.k3collect.style.a.c();
            this.l = paintC;
            paintC.setTextSize(25.0f);
            this.l.setColor(-65536);
        }
    }
}
