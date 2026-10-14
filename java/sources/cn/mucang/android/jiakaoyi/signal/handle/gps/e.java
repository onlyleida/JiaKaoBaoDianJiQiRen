package cn.mucang.android.jiakaoyi.signal.handle.gps;

import android.location.Location;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f5722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f5723f;
    private cn.mucang.android.jiakaoyi.signal.i.a i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5720a = 0;
    private double b = 0.0d;
    private double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f5721d = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Pos f5724g = new Pos();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Pos f5725h = new Pos();

    public Location a(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        Location location = eVar.getCurrentPosition().f5281g;
        if (location.getLatitude() < 1.0E-8d && location.getLongitude() < 1.0E-8d) {
            return location;
        }
        if (this.i == null) {
            if (Math.abs(location.getLongitude() - this.c) + Math.abs(location.getLatitude() - this.b) <= 1.0E-8d) {
                this.c = location.getLongitude();
                this.b = location.getLatitude();
                return location;
            }
            Gps gpsFrom = Gps.from(location);
            cn.mucang.android.jiakaoyi.signal.i.b bVar = new cn.mucang.android.jiakaoyi.signal.i.b(gpsFrom);
            this.i = bVar;
            this.f5725h.setPos(bVar.a(gpsFrom));
            this.f5724g.setPos(this.f5725h);
            this.f5722e = location.getBearing();
            this.f5723f = eVar.d().D;
            this.c = location.getLongitude();
            this.b = location.getLatitude();
            this.f5720a = eVar.d().L;
            return location;
        }
        long j = eVar.d().L;
        double d2 = eVar.d().b;
        Gps gpsFrom2 = Gps.from(location);
        double d3 = eVar.d().D;
        double dC = cn.mucang.android.jiakaoyi.signal.utils.d.c(((float) (d3 - this.f5723f)) * 0.5f);
        double d4 = (j - this.f5720a) * 0.001d;
        if (Math.abs(location.getLongitude() - this.c) + Math.abs(location.getLatitude() - this.b) < 1.0E-10d) {
            double d5 = (((d4 * (this.f5721d + d2)) * 100.0d) * 0.5d) / 3.6d;
            double d6 = this.f5722e + dC;
            this.f5722e = d6;
            double dCos = Math.cos(Math.toRadians(d6)) * d5;
            double dSin = d5 * Math.sin(Math.toRadians(this.f5722e));
            Pos pos = this.f5725h;
            Pos pos2 = this.f5724g;
            pos.x = pos2.x + dCos;
            pos.y = pos2.y + dSin;
        } else {
            this.f5725h.setPos(this.i.a(gpsFrom2));
            this.f5722e = location.getBearing();
        }
        this.c = location.getLongitude();
        this.b = location.getLatitude();
        this.f5721d = d2;
        this.f5720a = j;
        this.f5723f = d3;
        this.f5724g.setPos(this.f5725h);
        Gps gpsB = this.i.b(this.f5725h);
        Location location2 = new Location(location);
        location2.setAltitude(gpsB.altitude);
        location2.setLongitude(gpsB.longitude);
        location2.setLatitude(gpsB.latitude);
        location2.setBearing((float) this.f5722e);
        return location2;
    }
}
