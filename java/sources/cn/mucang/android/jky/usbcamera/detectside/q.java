package cn.mucang.android.jky.usbcamera.detectside;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import org.opencv.core.Point;

/* JADX INFO: loaded from: classes4.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Point f8884a;
    public Point b;
    public double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f8885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f8886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Point f8887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f8888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f8889h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public float s;
    public float t;
    public float u;

    public q(float f2, float f3) {
        this.f8888g = f2;
        this.f8889h = f3;
        Math.toDegrees(f2);
        h();
    }

    private void a() {
        Point point = this.f8884a;
        double d2 = point.x;
        double d3 = point.y;
        Point point2 = this.b;
        double d4 = point2.x;
        double d5 = point2.y - d3;
        this.c = d5;
        double d6 = d2 - d4;
        this.f8885d = d6;
        double d7 = ((d4 - d2) * d3) - (d2 * d5);
        this.f8886e = d7;
        if (d6 < 0.0d) {
            this.c = d5 * (-1.0d);
            this.f8885d = d6 * (-1.0d);
            this.f8886e = d7 * (-1.0d);
        } else {
            if (d6 != 0.0d || d5 >= 0.0d) {
                return;
            }
            this.c = d5 * (-1.0d);
            this.f8886e = d7 * (-1.0d);
        }
    }

    private void b() {
        float f2 = this.f8888g;
        this.j = f2;
        float f3 = this.f8889h;
        this.k = f3;
        if (f3 < BitmapDescriptorFactory.HUE_RED) {
            this.k = -f3;
            this.j = (float) (((double) f2) + 3.141592653589793d);
        }
        this.i = (float) Math.toDegrees(this.k);
    }

    private void c() {
        float f2 = p.f(74.8f);
        double d2 = 74.5f;
        this.p = p.f((float) (d2 - g(p.b(10.0f))));
        this.q = p.f((float) (d2 - g(p.b(240.0f))));
        this.r = p.f((float) (d2 - g(p.b(BitmapDescriptorFactory.HUE_RED))));
        this.s = p.f((float) (d2 - g(p.b(f2))));
    }

    private void d() {
        this.t = (float) Math.cos(this.f8888g);
        float fSin = (float) Math.sin(this.f8888g);
        this.u = fSin;
        float f2 = this.t;
        float f3 = this.f8889h;
        double d2 = f2 * f3;
        double d3 = fSin * f3;
        Point point = new Point();
        Point point2 = new Point();
        float f4 = this.u;
        point.x = ((double) ((-f4) * 5000.0f)) + d2;
        float f5 = this.t;
        point.y = ((double) (f5 * 5000.0f)) + d3;
        point2.x = d2 - ((double) ((-f4) * 5000.0f));
        point2.y = d3 - ((double) (f5 * 5000.0f));
        this.f8887f = new Point(d2, d3);
        this.f8884a = point;
        this.b = point2;
    }

    public static double e(float f2, float f3) {
        return Math.cos(f2 - f3);
    }

    private double g(double d2) {
        double d3 = this.f8885d;
        if (d3 == 0.0d) {
            return 0.0d;
        }
        return (-(this.f8886e + (this.c * d2))) / d3;
    }

    private void h() {
        d();
        b();
        a();
        c();
    }

    public Point f(q qVar) {
        double d2 = this.c;
        double d3 = qVar.f8885d;
        double d4 = qVar.c;
        double d5 = this.f8885d;
        double d6 = (d2 * d3) - (d4 * d5);
        if (d6 == 0.0d) {
            return null;
        }
        double d7 = qVar.f8886e;
        double d8 = this.f8886e;
        return new Point(((d5 * d7) - (d3 * d8)) / d6, ((d8 * d4) - (d7 * d2)) / d6);
    }
}
