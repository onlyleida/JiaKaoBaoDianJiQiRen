package cn.mucang.android.jiakaoyi.signal.pos;

import android.location.Location;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class Gps implements Serializable {
    public double altitude;
    public double latitude;
    public double longitude;

    public Gps() {
    }

    public static Gps from(Location location) {
        return new Gps(location.getLatitude(), location.getLongitude(), location.getAltitude());
    }

    public static boolean isValid(Gps gps) {
        return gps != null && Math.abs(gps.latitude) <= 90.0d && Math.abs(gps.longitude) <= 180.0d && Math.abs(gps.latitude) + Math.abs(gps.longitude) > 0.0d;
    }

    public static void set(Location location, Gps gps) {
        gps.setGps(location.getLatitude(), location.getLongitude(), location.getAltitude());
    }

    public double angleTo(Gps gps) {
        float[] fArr = new float[2];
        Location.distanceBetween(this.latitude, this.longitude, gps.latitude, gps.longitude, fArr);
        return fArr[1];
    }

    public double distanceTo(Gps gps) {
        float[] fArr = new float[1];
        Location.distanceBetween(this.latitude, this.longitude, gps.latitude, gps.longitude, fArr);
        return fArr[0];
    }

    public boolean sameWith(Gps gps) {
        return Math.abs(this.latitude - gps.latitude) < 1.0E-10d && Math.abs(this.longitude - gps.longitude) < 1.0E-10d;
    }

    public void setGps(Gps gps) {
        this.latitude = gps.latitude;
        this.longitude = gps.longitude;
        this.altitude = gps.altitude;
    }

    public String toString() {
        return "Gps{latitude=" + this.latitude + ", longitude=" + this.longitude + ", altitude=" + this.altitude + '}';
    }

    public Gps(double d2, double d3) {
        this(d2, d3, 0.0d);
    }

    public Gps(double d2, double d3, double d4) {
        this.latitude = d2;
        this.longitude = d3;
        this.altitude = d4;
    }

    public void setGps(double d2, double d3, double d4) {
        this.latitude = d2;
        this.longitude = d3;
        this.altitude = d4;
    }

    public Gps(Gps gps) {
        this(gps.latitude, gps.longitude, gps.altitude);
    }
}
