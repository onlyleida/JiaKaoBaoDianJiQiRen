package cn.mucang.android.jiakaoyi.k3setting;

import com.amap.api.maps.model.LatLng;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    public static LatLng a(double d2, double d3) {
        double d4 = (d3 / 180.0d) * 3.141592653589793d;
        double dSin = Math.sin(d4);
        double d5 = 1.0d - ((0.006693421622965943d * dSin) * dSin);
        double dSqrt = Math.sqrt(d5);
        double d6 = d2 - 105.0d;
        double d7 = d3 - 35.0d;
        return new LatLng(d3 + ((b(d6, d7) * 180.0d) / ((6335552.717000426d / (d5 * dSqrt)) * 3.141592653589793d)), d2 + ((c(d6, d7) * 180.0d) / (((6378245.0d / dSqrt) * Math.cos(d4)) * 3.141592653589793d)));
    }

    private static double b(double d2, double d3) {
        double d4 = d2 * 2.0d;
        double dSqrt = (-100.0d) + d4 + (d3 * 3.0d) + (d3 * 0.2d * d3) + (0.1d * d2 * d3) + (Math.sqrt(Math.abs(d2)) * 0.2d) + ((((Math.sin((6.0d * d2) * 3.141592653589793d) * 20.0d) + (Math.sin(d4 * 3.141592653589793d) * 20.0d)) * 2.0d) / 3.0d);
        double d5 = d3 * 3.141592653589793d;
        return dSqrt + ((((Math.sin(d5) * 20.0d) + (Math.sin((d3 / 3.0d) * 3.141592653589793d) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d3 / 12.0d) * 3.141592653589793d) * 160.0d) + (Math.sin(d5 / 30.0d) * 320.0d)) * 2.0d) / 3.0d);
    }

    private static double c(double d2, double d3) {
        double d4 = d2 * 0.1d;
        return d2 + 300.0d + (d3 * 2.0d) + (d4 * d2) + (d4 * d3) + (Math.sqrt(Math.abs(d2)) * 0.1d) + ((((Math.sin((6.0d * d2) * 3.141592653589793d) * 20.0d) + (Math.sin((d2 * 2.0d) * 3.141592653589793d) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(d2 * 3.141592653589793d) * 20.0d) + (Math.sin((d2 / 3.0d) * 3.141592653589793d) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 12.0d) * 3.141592653589793d) * 150.0d) + (Math.sin((d2 / 30.0d) * 3.141592653589793d) * 300.0d)) * 2.0d) / 3.0d);
    }
}
