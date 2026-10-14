package com.loc;

import android.content.Context;
import com.amap.api.location.DPoint;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class fk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static double f12910a = 3.141592653589793d;
    private static final List<DPoint> b = new ArrayList(Arrays.asList(new DPoint(23.379947d, 119.757001d), new DPoint(24.983296d, 120.474496d), new DPoint(25.518722d, 121.359866d), new DPoint(25.41329d, 122.443582d), new DPoint(24.862708d, 122.288354d), new DPoint(24.461292d, 122.188319d), new DPoint(21.584761d, 120.968923d), new DPoint(21.830837d, 120.654445d)));

    private static double a(double d2) {
        return Math.sin(d2 * 3000.0d * (f12910a / 180.0d)) * 2.0E-5d;
    }

    private static double a(double d2, double d3) {
        return (Math.cos(d3 / 100000.0d) * (d2 / 18000.0d)) + (Math.sin(d2 / 100000.0d) * (d3 / 9000.0d));
    }

    private static DPoint a(double d2, double d3, double d4, double d5) {
        DPoint dPoint = new DPoint();
        double d6 = d2 - d4;
        double d7 = d3 - d5;
        DPoint dPointD = d(d6, d7);
        dPoint.setLongitude(c((d2 + d6) - dPointD.getLongitude()));
        dPoint.setLatitude(c((d3 + d7) - dPointD.getLatitude()));
        return dPoint;
    }

    public static DPoint a(Context context, DPoint dPoint) {
        if (context == null) {
            return null;
        }
        return b(dPoint);
    }

    public static DPoint a(DPoint dPoint) {
        if (dPoint != null) {
            try {
                if (fi.a(dPoint.getLatitude(), dPoint.getLongitude())) {
                    return c(dPoint);
                }
                if (!e(dPoint.getLatitude(), dPoint.getLongitude())) {
                    return dPoint;
                }
                DPoint dPointC = c(dPoint);
                return f(dPointC.getLatitude(), dPointC.getLongitude());
            } catch (Throwable th) {
                fi.a(th, "OffsetUtil", "b2G");
            }
        }
        return dPoint;
    }

    private static double b(double d2) {
        return Math.cos(d2 * 3000.0d * (f12910a / 180.0d)) * 3.0E-6d;
    }

    private static double b(double d2, double d3) {
        return (Math.sin(d3 / 100000.0d) * (d2 / 18000.0d)) + (Math.cos(d2 / 100000.0d) * (d3 / 9000.0d));
    }

    public static DPoint b(Context context, DPoint dPoint) {
        try {
            return !fi.a(dPoint.getLatitude(), dPoint.getLongitude()) ? dPoint : a(context, c(dPoint.getLongitude(), dPoint.getLatitude()));
        } catch (Throwable th) {
            fi.a(th, "OffsetUtil", "marbar2G");
            return dPoint;
        }
    }

    private static DPoint b(DPoint dPoint) {
        try {
            if (!fi.a(dPoint.getLatitude(), dPoint.getLongitude())) {
                return dPoint;
            }
            double[] dArrA = fq.a(dPoint.getLongitude(), dPoint.getLatitude());
            return new DPoint(dArrA[1], dArrA[0]);
        } catch (Throwable th) {
            fi.a(th, "OffsetUtil", "cover part2");
            return dPoint;
        }
    }

    private static double c(double d2) {
        return new BigDecimal(d2).setScale(8, 4).doubleValue();
    }

    private static DPoint c(double d2, double d3) {
        double d4 = ((long) (d2 * 100000.0d)) % 36000000;
        double d5 = ((long) (d3 * 100000.0d)) % 36000000;
        double d6 = (int) ((-a(d4, d5)) + d4);
        double d7 = (int) ((-b(d4, d5)) + d5);
        double d8 = (int) ((-a(d6, d7)) + d4 + ((double) (d4 > 0.0d ? 1 : -1)));
        return new DPoint(((double) ((int) (((-b(d8, d7)) + d5) + ((double) (d5 <= 0.0d ? -1 : 1))))) / 100000.0d, d8 / 100000.0d);
    }

    private static DPoint c(DPoint dPoint) {
        DPoint dPointA = null;
        double longitude = 0.006401062d;
        double latitude = 0.0060424805d;
        for (int i = 0; i < 2; i++) {
            dPointA = a(dPoint.getLongitude(), dPoint.getLatitude(), longitude, latitude);
            longitude = dPoint.getLongitude() - dPointA.getLongitude();
            latitude = dPoint.getLatitude() - dPointA.getLatitude();
        }
        return dPointA;
    }

    private static DPoint d(double d2, double d3) {
        DPoint dPoint = new DPoint();
        double d4 = (d2 * d2) + (d3 * d3);
        double dCos = (Math.cos(b(d2) + Math.atan2(d3, d2)) * (a(d3) + Math.sqrt(d4))) + 0.0065d;
        double dSin = (Math.sin(b(d2) + Math.atan2(d3, d2)) * (a(d3) + Math.sqrt(d4))) + 0.006d;
        dPoint.setLongitude(c(dCos));
        dPoint.setLatitude(c(dSin));
        return dPoint;
    }

    private static boolean e(double d2, double d3) {
        return fi.a(new DPoint(d2, d3), b);
    }

    private static DPoint f(double d2, double d3) {
        DPoint dPointG = g(d2, d3);
        return new DPoint((d2 * 2.0d) - dPointG.getLatitude(), (d3 * 2.0d) - dPointG.getLongitude());
    }

    private static DPoint g(double d2, double d3) {
        double d4 = d3 - 105.0d;
        double d5 = d2 - 35.0d;
        double dH = h(d4, d5);
        double dI = i(d4, d5);
        double d6 = (d2 / 180.0d) * f12910a;
        double dSin = Math.sin(d6);
        double d7 = 1.0d - ((0.006693421622965943d * dSin) * dSin);
        double dSqrt = Math.sqrt(d7);
        return new DPoint(d2 + ((dH * 180.0d) / ((6335552.717000426d / (d7 * dSqrt)) * f12910a)), d3 + ((dI * 180.0d) / (((6378245.0d / dSqrt) * Math.cos(d6)) * f12910a)));
    }

    private static double h(double d2, double d3) {
        double d4 = d2 * 2.0d;
        return (-100.0d) + d4 + (d3 * 3.0d) + (d3 * 0.2d * d3) + (0.1d * d2 * d3) + (Math.sqrt(Math.abs(d2)) * 0.2d) + ((((Math.sin((d2 * 6.0d) * f12910a) * 20.0d) + (Math.sin(d4 * f12910a) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(f12910a * d3) * 20.0d) + (Math.sin((d3 / 3.0d) * f12910a) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d3 / 12.0d) * f12910a) * 160.0d) + (Math.sin((d3 * f12910a) / 30.0d) * 320.0d)) * 2.0d) / 3.0d);
    }

    private static double i(double d2, double d3) {
        double d4 = d2 * 0.1d;
        return d2 + 300.0d + (d3 * 2.0d) + (d4 * d2) + (d4 * d3) + (Math.sqrt(Math.abs(d2)) * 0.1d) + ((((Math.sin((6.0d * d2) * f12910a) * 20.0d) + (Math.sin((d2 * 2.0d) * f12910a) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(f12910a * d2) * 20.0d) + (Math.sin((d2 / 3.0d) * f12910a) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 12.0d) * f12910a) * 150.0d) + (Math.sin((d2 / 30.0d) * f12910a) * 300.0d)) * 2.0d) / 3.0d);
    }
}
