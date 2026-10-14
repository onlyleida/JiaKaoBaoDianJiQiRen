package cn.mucang.android.jiakaoyi.signal.handle.gps;

import android.location.Location;

/* JADX INFO: loaded from: classes3.dex */
public class k {
    public static float a(double d2, double d3, double d4, double d5) {
        float[] fArr = new float[1];
        Location.distanceBetween(d3, d2, d5, d4, fArr);
        return fArr[0];
    }

    public static boolean b(double d2, double d3) {
        if (d2 < -180.0d || d2 > 180.0d || d3 < -90.0d || d3 > 90.0d) {
            return false;
        }
        return Math.abs(d2) >= 1.0E-10d || Math.abs(d3) >= 1.0E-10d;
    }

    public static boolean c(Location location) {
        return location != null && b(location.getLongitude(), location.getLatitude());
    }
}
