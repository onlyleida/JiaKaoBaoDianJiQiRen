package jama.a;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    public static double a(double d2, double d3) {
        if (Math.abs(d2) > Math.abs(d3)) {
            double d4 = d3 / d2;
            return Math.abs(d2) * Math.sqrt((d4 * d4) + 1.0d);
        }
        if (d3 == 0.0d) {
            return 0.0d;
        }
        double d5 = d2 / d3;
        return Math.abs(d3) * Math.sqrt((d5 * d5) + 1.0d);
    }
}
