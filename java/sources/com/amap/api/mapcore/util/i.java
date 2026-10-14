package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.DPoint;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f10892a = false;
    static double b = 3.141592653589793d;
    private static final List<LatLng> c = new ArrayList(Arrays.asList(new LatLng(23.379947d, 119.757001d), new LatLng(24.983296d, 120.474496d), new LatLng(25.518722d, 121.359866d), new LatLng(25.41329d, 122.443582d), new LatLng(24.862708d, 122.288354d), new LatLng(24.461292d, 122.188319d), new LatLng(21.584761d, 120.968923d), new LatLng(21.830837d, 120.654445d)));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static double f10893d = 6378245.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static double f10894e = 0.006693421622965943d;

    private static double a(double d2) {
        return Math.sin(d2 * 3000.0d * (b / 180.0d)) * 2.0E-5d;
    }

    public static double b(double d2, double d3) {
        return (Math.cos(d3 / 100000.0d) * (d2 / 18000.0d)) + (Math.sin(d2 / 100000.0d) * (d3 / 9000.0d));
    }

    private static double c(double d2, int i) {
        return new BigDecimal(d2).setScale(i, 4).doubleValue();
    }

    public static LatLng d(Context context, LatLng latLng) {
        if (context == null) {
            return null;
        }
        if (!k3.a(latLng.latitude, latLng.longitude)) {
            return latLng;
        }
        DPoint dPointH = h(DPoint.obtain(latLng.longitude, latLng.latitude), f10892a);
        LatLng latLng2 = new LatLng(dPointH.y, dPointH.x, false);
        dPointH.recycle();
        return latLng2;
    }

    public static LatLng e(LatLng latLng) {
        if (latLng != null) {
            try {
                if (k3.a(latLng.latitude, latLng.longitude)) {
                    DPoint dPointG = g(latLng.longitude, latLng.latitude, 2);
                    LatLng latLng2 = new LatLng(dPointG.y, dPointG.x, false);
                    dPointG.recycle();
                    return latLng2;
                }
                if (!l(latLng.latitude, latLng.longitude)) {
                    return latLng;
                }
                DPoint dPointG2 = g(latLng.longitude, latLng.latitude, 2);
                return q(dPointG2.y, dPointG2.x);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return latLng;
    }

    private static DPoint f(double d2, double d3, double d4, double d5) {
        DPoint dPointObtain = DPoint.obtain();
        double d6 = d2 - d4;
        double d7 = d3 - d5;
        DPoint dPointP = p(d6, d7);
        dPointObtain.x = c((d2 + d6) - dPointP.x, 8);
        dPointObtain.y = c((d3 + d7) - dPointP.y, 8);
        return dPointObtain;
    }

    private static DPoint g(double d2, double d3, int i) {
        DPoint dPointF = null;
        double d4 = 0.006401062d;
        double d5 = 0.0060424805d;
        for (int i2 = 0; i2 < i; i2++) {
            dPointF = f(d2, d3, d4, d5);
            d4 = d2 - dPointF.x;
            d5 = d3 - dPointF.y;
        }
        return dPointF;
    }

    private static DPoint h(DPoint dPoint, boolean z) {
        try {
            if (!k3.a(dPoint.y, dPoint.x)) {
                return dPoint;
            }
            double[] dArrB = new double[2];
            if (!z) {
                dArrB = t8.b(dPoint.x, dPoint.y);
            }
            dPoint.recycle();
            return DPoint.obtain(dArrB[0], dArrB[1]);
        } catch (Throwable unused) {
            return dPoint;
        }
    }

    private static double i(double d2) {
        return Math.cos(d2 * 3000.0d * (b / 180.0d)) * 3.0E-6d;
    }

    public static double j(double d2, double d3) {
        return (Math.sin(d3 / 100000.0d) * (d2 / 18000.0d)) + (Math.cos(d2 / 100000.0d) * (d3 / 9000.0d));
    }

    public static LatLng k(Context context, LatLng latLng) {
        try {
            if (!k3.a(latLng.latitude, latLng.longitude)) {
                return latLng;
            }
            DPoint dPointO = o(latLng.longitude, latLng.latitude);
            LatLng latLngD = d(context, new LatLng(dPointO.y, dPointO.x, false));
            dPointO.recycle();
            return latLngD;
        } catch (Throwable th) {
            th.printStackTrace();
            return latLng;
        }
    }

    public static boolean l(double d2, double d3) {
        return r3.P(new LatLng(d2, d3), c);
    }

    public static double m(double d2, double d3) {
        double d4 = d2 * 2.0d;
        return (-100.0d) + d4 + (d3 * 3.0d) + (d3 * 0.2d * d3) + (0.1d * d2 * d3) + (Math.sqrt(Math.abs(d2)) * 0.2d) + ((((Math.sin((d2 * 6.0d) * b) * 20.0d) + (Math.sin(d4 * b) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(b * d3) * 20.0d) + (Math.sin((d3 / 3.0d) * b) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d3 / 12.0d) * b) * 160.0d) + (Math.sin((d3 * b) / 30.0d) * 320.0d)) * 2.0d) / 3.0d);
    }

    public static double n(double d2, double d3) {
        double d4 = d2 * 0.1d;
        return d2 + 300.0d + (d3 * 2.0d) + (d4 * d2) + (d4 * d3) + (Math.sqrt(Math.abs(d2)) * 0.1d) + ((((Math.sin((6.0d * d2) * b) * 20.0d) + (Math.sin((d2 * 2.0d) * b) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(b * d2) * 20.0d) + (Math.sin((d2 / 3.0d) * b) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 12.0d) * b) * 150.0d) + (Math.sin((d2 / 30.0d) * b) * 300.0d)) * 2.0d) / 3.0d);
    }

    private static DPoint o(double d2, double d3) {
        double d4 = ((long) (d2 * 100000.0d)) % 36000000;
        double d5 = ((long) (d3 * 100000.0d)) % 36000000;
        double d6 = (int) ((-b(d4, d5)) + d4);
        double d7 = (int) ((-j(d4, d5)) + d5);
        double d8 = (int) ((-b(d6, d7)) + d4 + ((double) (d4 > 0.0d ? 1 : -1)));
        return DPoint.obtain(d8 / 100000.0d, ((double) ((int) (((-j(d8, d7)) + d5) + ((double) (d5 <= 0.0d ? -1 : 1))))) / 100000.0d);
    }

    private static DPoint p(double d2, double d3) {
        DPoint dPointObtain = DPoint.obtain();
        double d4 = (d2 * d2) + (d3 * d3);
        double dCos = (Math.cos(i(d2) + Math.atan2(d3, d2)) * (a(d3) + Math.sqrt(d4))) + 0.0065d;
        double dSin = (Math.sin(i(d2) + Math.atan2(d3, d2)) * (a(d3) + Math.sqrt(d4))) + 0.006d;
        dPointObtain.x = c(dCos, 8);
        dPointObtain.y = c(dSin, 8);
        return dPointObtain;
    }

    private static LatLng q(double d2, double d3) {
        LatLng latLngR = r(d2, d3);
        return new LatLng((d2 * 2.0d) - latLngR.latitude, (d3 * 2.0d) - latLngR.longitude);
    }

    private static LatLng r(double d2, double d3) {
        double d4 = d3 - 105.0d;
        double d5 = d2 - 35.0d;
        double dM = m(d4, d5);
        double dN = n(d4, d5);
        double d6 = (d2 / 180.0d) * b;
        double dSin = Math.sin(d6);
        double d7 = 1.0d - ((f10894e * dSin) * dSin);
        double dSqrt = Math.sqrt(d7);
        double d8 = f10893d;
        return new LatLng(d2 + ((dM * 180.0d) / ((((1.0d - f10894e) * d8) / (d7 * dSqrt)) * b)), d3 + ((dN * 180.0d) / (((d8 / dSqrt) * Math.cos(d6)) * b)));
    }
}
