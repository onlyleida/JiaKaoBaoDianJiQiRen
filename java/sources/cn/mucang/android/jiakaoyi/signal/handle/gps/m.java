package cn.mucang.android.jiakaoyi.signal.handle.gps;

import android.location.Location;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f5741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f5742f;
    private final cn.mucang.android.jiakaoyi.signal.i.a j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5739a = 0;
    private double b = 0.0d;
    private double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f5740d = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5743g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Pos f5744h = new Pos();
    private final Gps i = new Gps();

    public m(cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.j = aVar;
    }

    public Pos a(Location location) {
        if (this.j == null) {
            return null;
        }
        Gps.set(location, this.i);
        return this.j.a(this.i);
    }

    public Pos b() {
        Pos pos = new Pos();
        double dMax = Math.max(((this.f5740d * 0.2d) * 100.0d) / 3.6d, 200.0d);
        double dCos = Math.cos(Math.toRadians(this.f5741e)) * dMax;
        double dSin = dMax * Math.sin(Math.toRadians(this.f5741e));
        Pos pos2 = this.f5744h;
        pos.x = pos2.x + dCos;
        pos.y = pos2.y + dSin;
        return pos;
    }

    public Pos c(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.j == null) {
            return null;
        }
        Location location = eVar.getCurrentPosition().f5281g;
        if (location.getLatitude() < 1.0E-8d && location.getLongitude() < 1.0E-8d) {
            return null;
        }
        Pos pos = new Pos();
        if (!this.f5743g) {
            if (Math.abs(location.getLongitude() - this.c) + Math.abs(location.getLatitude() - this.b) <= 1.0E-8d) {
                this.c = location.getLongitude();
                this.b = location.getLatitude();
                return null;
            }
            Gps.set(location, this.i);
            pos.setPos(this.j.a(this.i));
            this.f5744h.setPos(pos);
            this.f5741e = location.getBearing();
            this.f5742f = eVar.d().D;
            this.c = location.getLongitude();
            this.b = location.getLatitude();
            this.f5743g = true;
            return pos;
        }
        long j = eVar.d().L;
        double d2 = eVar.d().b;
        Gps.set(location, this.i);
        double d3 = eVar.d().D;
        double dC = ((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (d3 - this.f5742f))) * 0.5d;
        double d4 = (j - this.f5739a) * 0.001d;
        if (Math.abs(location.getLongitude() - this.c) + Math.abs(location.getLatitude() - this.b) >= 1.0E-10d) {
            pos.setPos(this.j.a(this.i));
            this.f5741e = location.getBearing();
        } else if (d2 > 7.0d) {
            double d5 = ((((d4 * (this.f5740d + d2)) * 100.0d) * 0.5d) / 3.6d) * 0.8d;
            double d6 = this.f5741e + dC;
            this.f5741e = d6;
            double dCos = Math.cos(Math.toRadians(d6)) * d5;
            double dSin = d5 * Math.sin(Math.toRadians(this.f5741e));
            Pos pos2 = this.f5744h;
            pos.x = pos2.x + dCos;
            pos.y = pos2.y + dSin;
        } else {
            pos.setPos(this.f5744h);
        }
        this.c = location.getLongitude();
        this.b = location.getLatitude();
        this.f5740d = d2;
        this.f5739a = j;
        this.f5742f = d3;
        this.f5744h.setPos(pos);
        return pos;
    }
}
