package cn.mucang.android.jiakaoyi.signal.center.model;

import android.location.Location;
import cn.mucang.android.jiakaoyi.signal.handle.gps.f;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5277a;
    public int b;
    public Float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f5278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f5279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5280f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Location f5281g = new Location("gps");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5282h = 1;
    public int i;
    public float j;

    public static void a(b bVar, b bVar2) {
        bVar.f5277a = bVar2.f5277a;
        bVar.j = bVar2.j;
        bVar.f5278d = bVar2.f5278d;
        bVar.f5281g.set(bVar2.f5281g);
        bVar.f5282h = bVar2.f5282h;
        bVar.f5279e = bVar2.f5279e;
        bVar.i = bVar2.i;
        bVar.f5280f = bVar2.f5280f;
        bVar.b = bVar2.b;
    }

    public boolean b() {
        return this.f5282h == 4 && this.b == 4;
    }

    public boolean c() {
        return f.a(this.f5282h);
    }

    public String toString() {
        return "{heading=" + this.f5277a + ", calculateHeading=" + this.c + ", distance=" + this.f5278d + ", pitch=" + this.f5279e + ", sourcePitch=" + this.f5280f + ", lat=" + this.f5281g.getLatitude() + ", lon=" + this.f5281g.getLongitude() + ", alt=" + this.f5281g.getAltitude() + ", bearing=" + this.f5281g.getBearing() + ", speed=" + this.f5281g.getSpeed() + ", gpsQuality=" + this.f5282h + ", headingQuality=" + this.b + ", satelliteNumber=" + this.i + ", time=" + this.j + '}';
    }
}
