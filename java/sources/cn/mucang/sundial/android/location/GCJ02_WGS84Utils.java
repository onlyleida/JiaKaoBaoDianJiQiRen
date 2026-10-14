package cn.mucang.sundial.android.location;

/* JADX INFO: loaded from: classes5.dex */
public class GCJ02_WGS84Utils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static double f10352a = 6378245.0d;
    public static double ee = 0.006693421622965943d;
    public static double pi = 3.141592653589793d;

    public static class LocateInfo {
        public boolean china = false;
        public double latitude = 0.0d;
        public double longitude = 0.0d;
    }

    public static LocateInfo gcj02_To_Wgs84(double d2, double d3) {
        LocateInfo locateInfo = new LocateInfo();
        LocateInfo locateInfoTransform = transform(d2, d3);
        double d4 = (d3 * 2.0d) - locateInfoTransform.longitude;
        double d5 = (d2 * 2.0d) - locateInfoTransform.latitude;
        locateInfo.china = locateInfoTransform.china;
        locateInfo.latitude = d5;
        locateInfo.longitude = d4;
        return locateInfo;
    }

    private static boolean isOutOfChina(double d2, double d3) {
        return d3 < 72.004d || d3 > 137.8347d || d2 < 0.8293d || d2 > 55.8271d;
    }

    private static LocateInfo transform(double d2, double d3) {
        LocateInfo locateInfo = new LocateInfo();
        if (isOutOfChina(d2, d3)) {
            locateInfo.china = false;
            locateInfo.latitude = d2;
            locateInfo.longitude = d3;
            return locateInfo;
        }
        double d4 = d3 - 105.0d;
        double d5 = d2 - 35.0d;
        double dTransformLat = transformLat(d4, d5);
        double dTransformLon = transformLon(d4, d5);
        double d6 = (d2 / 180.0d) * pi;
        double dSin = Math.sin(d6);
        double d7 = 1.0d - ((ee * dSin) * dSin);
        double dSqrt = Math.sqrt(d7);
        double d8 = f10352a;
        double d9 = (dTransformLat * 180.0d) / ((((1.0d - ee) * d8) / (d7 * dSqrt)) * pi);
        double dCos = d3 + ((dTransformLon * 180.0d) / (((d8 / dSqrt) * Math.cos(d6)) * pi));
        locateInfo.china = true;
        locateInfo.latitude = d2 + d9;
        locateInfo.longitude = dCos;
        return locateInfo;
    }

    private static double transformLat(double d2, double d3) {
        double d4 = d2 * 2.0d;
        return (-100.0d) + d4 + (d3 * 3.0d) + (d3 * 0.2d * d3) + (0.1d * d2 * d3) + (Math.sqrt(Math.abs(d2)) * 0.2d) + ((((Math.sin((d2 * 6.0d) * pi) * 20.0d) + (Math.sin(d4 * pi) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(pi * d3) * 20.0d) + (Math.sin((d3 / 3.0d) * pi) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d3 / 12.0d) * pi) * 160.0d) + (Math.sin((d3 * pi) / 30.0d) * 320.0d)) * 2.0d) / 3.0d);
    }

    private static double transformLon(double d2, double d3) {
        double d4 = d2 * 0.1d;
        return d2 + 300.0d + (d3 * 2.0d) + (d4 * d2) + (d4 * d3) + (Math.sqrt(Math.abs(d2)) * 0.1d) + ((((Math.sin((6.0d * d2) * pi) * 20.0d) + (Math.sin((d2 * 2.0d) * pi) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(pi * d2) * 20.0d) + (Math.sin((d2 / 3.0d) * pi) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 12.0d) * pi) * 150.0d) + (Math.sin((d2 / 30.0d) * pi) * 300.0d)) * 2.0d) / 3.0d);
    }

    public static LocateInfo wgs84_To_Gcj02(double d2, double d3) {
        LocateInfo locateInfo = new LocateInfo();
        if (isOutOfChina(d2, d3)) {
            locateInfo.china = false;
            locateInfo.latitude = d2;
            locateInfo.longitude = d3;
        } else {
            double d4 = d3 - 105.0d;
            double d5 = d2 - 35.0d;
            double dTransformLat = transformLat(d4, d5);
            double dTransformLon = transformLon(d4, d5);
            double d6 = (d2 / 180.0d) * pi;
            double dSin = Math.sin(d6);
            double d7 = 1.0d - ((ee * dSin) * dSin);
            double dSqrt = Math.sqrt(d7);
            double d8 = f10352a;
            double d9 = (dTransformLat * 180.0d) / ((((1.0d - ee) * d8) / (d7 * dSqrt)) * pi);
            double dCos = d3 + ((dTransformLon * 180.0d) / (((d8 / dSqrt) * Math.cos(d6)) * pi));
            locateInfo.china = true;
            locateInfo.latitude = d2 + d9;
            locateInfo.longitude = dCos;
        }
        return locateInfo;
    }
}
