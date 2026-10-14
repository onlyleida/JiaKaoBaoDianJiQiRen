package com.serenegiant.utils;

/* JADX INFO: loaded from: classes6.dex */
public class GPS {
    public static final Datum BESSEL = new Datum(6377397.155d, 6356079.0d, 299.152813d, true);
    public static final Datum WGS84 = new Datum(6378137.0d, 6356752.314245d, 298.257223563d, true);
    public static final Datum GRS80 = new Datum(6378137.0d, 6356752.31414d, 298.257222101d, true);

    public static class Datum {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final double f13650a;
        public final double ae2;
        public final double b;
        public final double e2;
        public final double inv_ellipticity;

        public Datum(double d2, double d3, double d4, boolean z) {
            this.f13650a = d2;
            this.b = d3;
            this.inv_ellipticity = z ? d4 : 1.0d / d4;
            double d5 = d2 * d2;
            double d6 = (d5 - (d3 * d3)) / d5;
            this.e2 = d6;
            this.ae2 = d2 * (1.0d - d6);
        }
    }

    public static double distance(Datum datum, double d2, double d3, double d4, double d5, double d6, double d7) {
        double radians = Math.toRadians(d2);
        double radians2 = Math.toRadians(d5);
        double radians3 = Math.toRadians(d3);
        double radians4 = Math.toRadians(d6);
        double d8 = radians - radians2;
        double d9 = radians3 - radians4;
        double d10 = (radians + radians2) / 2.0d;
        double dSin = Math.sin(d10);
        double dSqrt = Math.sqrt(1.0d - ((datum.e2 * dSin) * dSin));
        double d11 = d8 * (datum.ae2 / ((dSqrt * dSqrt) * dSqrt));
        double dCos = d9 * (datum.f13650a / dSqrt) * Math.cos(d10);
        return Math.sqrt((d11 * d11) + (dCos * dCos));
    }
}
