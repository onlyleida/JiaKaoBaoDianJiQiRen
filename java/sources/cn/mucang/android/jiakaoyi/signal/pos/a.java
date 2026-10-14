package cn.mucang.android.jiakaoyi.signal.pos;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f5816a;
    public double b;
    public double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f5817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Pos f5818e;

    public a(a aVar) {
        this(aVar.f5816a, aVar.b, aVar.c, aVar.f5817d);
    }

    public void a() {
        this.f5816a = Double.MAX_VALUE;
        this.b = Double.MAX_VALUE;
        this.c = -1.7976931348623157E308d;
        this.f5817d = -1.7976931348623157E308d;
    }

    public double b() {
        return this.c;
    }

    public double c() {
        return this.f5817d;
    }

    public double d() {
        return this.f5816a;
    }

    public double e() {
        return this.b;
    }

    public double f() {
        double d2 = this.f5817d - this.b;
        if (Double.isInfinite(d2) || Double.isNaN(d2)) {
            return 0.0d;
        }
        return d2;
    }

    public boolean g(Pos pos) {
        double d2 = this.f5816a;
        double d3 = pos.x;
        if (d2 > d3) {
            return false;
        }
        double d4 = this.b;
        double d5 = pos.y;
        return d4 <= d5 && this.c >= d3 && this.f5817d >= d5;
    }

    public boolean h(a aVar) {
        return this.f5816a > aVar.c || this.b > aVar.f5817d || this.c < aVar.f5816a || this.f5817d < aVar.b;
    }

    public a i(a aVar) {
        double d2 = aVar.f5816a;
        if (d2 < this.f5816a) {
            this.f5816a = d2;
        }
        double d3 = aVar.c;
        if (d3 > this.c) {
            this.c = d3;
        }
        double d4 = aVar.b;
        if (d4 < this.b) {
            this.b = d4;
        }
        double d5 = aVar.f5817d;
        if (d5 > this.f5817d) {
            this.f5817d = d5;
        }
        Pos pos = this.f5818e;
        pos.x = (this.f5816a + this.c) * 0.5d;
        pos.y = (this.b + this.f5817d) * 0.5d;
        return this;
    }

    public void j(double d2, double d3) {
        if (d2 > this.c) {
            this.c = d2;
        }
        if (d2 < this.f5816a) {
            this.f5816a = d2;
        }
        if (d3 > this.f5817d) {
            this.f5817d = d3;
        }
        if (d3 < this.b) {
            this.b = d3;
        }
        Pos pos = this.f5818e;
        pos.x = (this.f5816a + this.c) * 0.5d;
        pos.y = (this.b + this.f5817d) * 0.5d;
    }

    public void k(a aVar) {
        this.f5816a = aVar.f5816a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.f5817d = aVar.f5817d;
        this.f5818e.setPos(aVar.f5818e);
    }

    public double l() {
        double d2 = this.c - this.f5816a;
        if (Double.isInfinite(d2) || Double.isNaN(d2)) {
            return 0.0d;
        }
        return d2;
    }

    public a m(float f2, float f3, float f4, float f5) {
        return new a(this.f5816a - ((double) f2), this.b - ((double) f3), ((double) f4) + this.c, this.f5817d + ((double) f5));
    }

    public String toString() {
        return "Bound{minX=" + this.f5816a + ", minY=" + this.b + ", maxX=" + this.c + ", maxY=" + this.f5817d + '}';
    }

    public a(double d2, double d3, double d4, double d5) {
        this.f5816a = d2;
        this.b = d3;
        this.c = d4;
        this.f5817d = d5;
        this.f5818e = new Pos((d2 + d4) * 0.5d, (d3 + d5) * 0.5d);
    }

    public a() {
        this(Double.MAX_VALUE, Double.MAX_VALUE, -1.7976931348623157E308d, -1.7976931348623157E308d);
    }
}
