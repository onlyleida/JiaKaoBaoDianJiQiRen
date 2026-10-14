package cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static double f6232a = 6378137.0d;
    static double b = 6356752.314d;
    static double c = 0.9996d;

    public static double a(double d2) {
        double d3 = f6232a;
        double d4 = b;
        double d5 = (d3 - d4) / (d3 + d4);
        return ((d3 + d4) / 2.0d) * ((Math.pow(d5, 2.0d) / 4.0d) + 1.0d + (Math.pow(d5, 4.0d) / 64.0d)) * (d2 + ((((d5 * (-3.0d)) / 2.0d) + ((Math.pow(d5, 3.0d) * 9.0d) / 16.0d) + ((Math.pow(d5, 5.0d) * (-3.0d)) / 32.0d)) * Math.sin(2.0d * d2)) + ((((Math.pow(d5, 2.0d) * 15.0d) / 16.0d) + ((Math.pow(d5, 4.0d) * (-15.0d)) / 32.0d)) * Math.sin(4.0d * d2)) + ((((Math.pow(d5, 3.0d) * (-35.0d)) / 48.0d) + ((Math.pow(d5, 5.0d) * 105.0d) / 256.0d)) * Math.sin(6.0d * d2)) + (((Math.pow(d5, 4.0d) * 315.0d) / 512.0d) * Math.sin(8.0d * d2)));
    }

    public static double b(double d2) {
        return (d2 / 180.0d) * 3.141592653589793d;
    }

    public static double c(double d2) {
        double d3 = f6232a;
        double d4 = b;
        double d5 = (d3 - d4) / (d3 + d4);
        double dPow = d2 / (((d3 + d4) / 2.0d) * (((Math.pow(d5, 2.0d) / 4.0d) + 1.0d) + (Math.pow(d5, 4.0d) / 64.0d)));
        return ((((d5 * 3.0d) / 2.0d) + ((Math.pow(d5, 3.0d) * (-27.0d)) / 32.0d) + ((Math.pow(d5, 5.0d) * 269.0d) / 512.0d)) * Math.sin(2.0d * dPow)) + dPow + ((((Math.pow(d5, 2.0d) * 21.0d) / 16.0d) + ((Math.pow(d5, 4.0d) * (-55.0d)) / 32.0d)) * Math.sin(4.0d * dPow)) + ((((Math.pow(d5, 3.0d) * 151.0d) / 96.0d) + ((Math.pow(d5, 5.0d) * (-417.0d)) / 128.0d)) * Math.sin(6.0d * dPow)) + (((Math.pow(d5, 4.0d) * 1097.0d) / 512.0d) * Math.sin(dPow * 8.0d));
    }

    public static int d(double d2, double d3, int i, double[] dArr) {
        e(d2, d3, g(i), dArr);
        double d4 = dArr[0];
        double d5 = c;
        dArr[0] = (d4 * d5) + 500000.0d;
        dArr[1] = dArr[1] * d5;
        if (dArr[1] < 0.0d) {
            dArr[1] = dArr[1] + 1.0E7d;
        }
        return i;
    }

    public static void e(double d2, double d3, double d4, double[] dArr) {
        double dPow = ((Math.pow(f6232a, 2.0d) - Math.pow(b, 2.0d)) / Math.pow(b, 2.0d)) * Math.pow(Math.cos(d2), 2.0d);
        double dPow2 = Math.pow(f6232a, 2.0d) / (b * Math.sqrt(dPow + 1.0d));
        double dTan = Math.tan(d2);
        double d5 = dTan * dTan;
        double d6 = d3 - d4;
        double d7 = (1.0d - d5) + dPow;
        double d8 = (5.0d - d5) + (9.0d * dPow) + (dPow * dPow * 4.0d);
        double d9 = d5 * d5;
        double d10 = 58.0d * d5;
        double d11 = (((5.0d - (18.0d * d5)) + d9) + (14.0d * dPow)) - (d10 * dPow);
        double d12 = (((61.0d - d10) + d9) + (270.0d * dPow)) - ((330.0d * d5) * dPow);
        double d13 = d9 * d5;
        dArr[0] = (Math.cos(d2) * dPow2 * d6) + ((dPow2 / 6.0d) * Math.pow(Math.cos(d2), 3.0d) * d7 * Math.pow(d6, 3.0d)) + ((dPow2 / 120.0d) * Math.pow(Math.cos(d2), 5.0d) * d11 * Math.pow(d6, 5.0d)) + ((dPow2 / 5040.0d) * Math.pow(Math.cos(d2), 7.0d) * (((61.0d - (479.0d * d5)) + (179.0d * d9)) - d13) * Math.pow(d6, 7.0d));
        dArr[1] = a(d2) + ((dTan / 2.0d) * dPow2 * Math.pow(Math.cos(d2), 2.0d) * Math.pow(d6, 2.0d)) + ((dTan / 24.0d) * dPow2 * Math.pow(Math.cos(d2), 4.0d) * d8 * Math.pow(d6, 4.0d)) + ((dTan / 720.0d) * dPow2 * Math.pow(Math.cos(d2), 6.0d) * d12 * Math.pow(d6, 6.0d)) + ((dTan / 40320.0d) * dPow2 * Math.pow(Math.cos(d2), 8.0d) * (((1385.0d - (d5 * 3111.0d)) + (d9 * 543.0d)) - d13) * Math.pow(d6, 8.0d));
    }

    public static void f(double d2, double d3, double d4, double[] dArr) {
        double dC = c(d3);
        double dPow = (Math.pow(f6232a, 2.0d) - Math.pow(b, 2.0d)) / Math.pow(b, 2.0d);
        double dCos = Math.cos(dC);
        double dPow2 = dPow * Math.pow(dCos, 2.0d);
        double dPow3 = Math.pow(f6232a, 2.0d) / (b * Math.sqrt(dPow2 + 1.0d));
        double dTan = Math.tan(dC);
        double d5 = dTan * dTan;
        double d6 = d5 * d5;
        double d7 = 1.0d / (dPow3 * dCos);
        double d8 = dPow3 * dPow3;
        double d9 = dTan / (d8 * 2.0d);
        double d10 = d8 * dPow3;
        double d11 = 1.0d / ((d10 * 6.0d) * dCos);
        double d12 = d10 * dPow3;
        double d13 = dTan / (d12 * 24.0d);
        double d14 = d12 * dPow3;
        double d15 = 1.0d / ((120.0d * d14) * dCos);
        double d16 = d14 * dPow3;
        double d17 = dTan / (d16 * 720.0d);
        double d18 = d16 * dPow3;
        double d19 = 1.0d / ((5040.0d * d18) * dCos);
        double d20 = dTan / ((d18 * dPow3) * 40320.0d);
        double d21 = (-1.0d) - dPow2;
        double d22 = ((-1.0d) - (2.0d * d5)) - dPow2;
        double d23 = dPow2 * 6.0d;
        double d24 = dPow2 * dPow2;
        double d25 = (((((d5 * 3.0d) + 5.0d) + d23) - ((d5 * 6.0d) * dPow2)) - (d24 * 3.0d)) - ((9.0d * d5) * d24);
        double d26 = (28.0d * d5) + 5.0d + (24.0d * d6) + d23 + (d5 * 8.0d * dPow2);
        double d27 = ((((-61.0d) - (90.0d * d5)) - (45.0d * d6)) - (107.0d * dPow2)) + (162.0d * d5 * dPow2);
        double d28 = d6 * d5;
        double d29 = (((-61.0d) - (662.0d * d5)) - (1320.0d * d6)) - (720.0d * d28);
        dArr[0] = dC + (d9 * d21 * d2 * d2) + (d13 * d25 * Math.pow(d2, 4.0d)) + (d17 * d27 * Math.pow(d2, 6.0d)) + (d20 * ((d5 * 3633.0d) + 1385.0d + (d6 * 4095.0d) + (d28 * 1575.0d)) * Math.pow(d2, 8.0d));
        dArr[1] = d4 + (d7 * d2) + (d11 * d22 * Math.pow(d2, 3.0d)) + (d15 * d26 * Math.pow(d2, 5.0d)) + (d19 * d29 * Math.pow(d2, 7.0d));
    }

    public static double g(int i) {
        return b((((double) i) * 6.0d) - 183.0d);
    }

    public static void h(double d2, double d3, int i, boolean z, double[] dArr) {
        double d4 = c;
        double d5 = (d2 - 500000.0d) / d4;
        if (z) {
            d3 -= 1.0E7d;
        }
        f(d5, d3 / d4, g(i), dArr);
    }

    public static double[] i(double d2, double d3) throws Exception {
        double[] dArr = {0.0d, 0.0d};
        if (d2 < -180.0d || 180.0d <= d2) {
            throw new Exception("The longitude you entered is out of range.  Please enter a number in the range [-180, 180).");
        }
        if (d3 < -90.0d || 90.0d < d3) {
            throw new Exception("The latitude you entered is out of range.  Please enter a number in the range [-90, 90].");
        }
        d(b(d3), b(d2), ((int) Math.floor((180.0d + d2) / 6.0d)) + 1, dArr);
        return dArr;
    }
}
