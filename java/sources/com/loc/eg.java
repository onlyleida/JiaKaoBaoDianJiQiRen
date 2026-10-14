package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class eg {
    public static double a(double d2, double d3, double d4, double d5) {
        double d6 = (((90.0d - d3) * 21412.0d) / 90.0d) + 6356725.0d;
        double dCos = ((d4 * 0.01745329238474369d) - (d2 * 0.01745329238474369d)) * Math.cos((3.1415927410125732d * d3) / 180.0d) * d6;
        double d7 = ((d5 * 0.01745329238474369d) - (d3 * 0.01745329238474369d)) * d6;
        return Math.pow((dCos * dCos) + (d7 * d7), 0.5d);
    }
}
