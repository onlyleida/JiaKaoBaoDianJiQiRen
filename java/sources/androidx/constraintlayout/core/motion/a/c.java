package androidx.constraintlayout.core.motion.a;

import com.mobile.auth.BuildConfig;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class c {
    static c b = new c();
    public static String[] c = {BuildConfig.FLAVOR_feat, "accelerate", "decelerate", "linear"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f631a = "identity";

    static class a extends c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static double f632h = 0.01d;
        private static double i = 1.0E-4d;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        double f633d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        double f634e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        double f635f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        double f636g;

        a(String str) {
            this.f631a = str;
            int iIndexOf = str.indexOf(40);
            int iIndexOf2 = str.indexOf(44, iIndexOf);
            this.f633d = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
            int i2 = iIndexOf2 + 1;
            int iIndexOf3 = str.indexOf(44, i2);
            this.f634e = Double.parseDouble(str.substring(i2, iIndexOf3).trim());
            int i3 = iIndexOf3 + 1;
            int iIndexOf4 = str.indexOf(44, i3);
            this.f635f = Double.parseDouble(str.substring(i3, iIndexOf4).trim());
            int i4 = iIndexOf4 + 1;
            this.f636g = Double.parseDouble(str.substring(i4, str.indexOf(41, i4)).trim());
        }

        private double d(double d2) {
            double d3 = 1.0d - d2;
            double d4 = 3.0d * d3;
            return (this.f633d * d3 * d4 * d2) + (this.f635f * d4 * d2 * d2) + (d2 * d2 * d2);
        }

        private double e(double d2) {
            double d3 = 1.0d - d2;
            double d4 = 3.0d * d3;
            return (this.f634e * d3 * d4 * d2) + (this.f636g * d4 * d2 * d2) + (d2 * d2 * d2);
        }

        @Override // androidx.constraintlayout.core.motion.a.c
        public double a(double d2) {
            if (d2 <= 0.0d) {
                return 0.0d;
            }
            if (d2 >= 1.0d) {
                return 1.0d;
            }
            double d3 = 0.5d;
            double d4 = 0.5d;
            while (d3 > f632h) {
                d3 *= 0.5d;
                d4 = d(d4) < d2 ? d4 + d3 : d4 - d3;
            }
            double d5 = d4 - d3;
            double d6 = d(d5);
            double d7 = d4 + d3;
            double d8 = d(d7);
            double dE = e(d5);
            return (((e(d7) - dE) * (d2 - d6)) / (d8 - d6)) + dE;
        }

        @Override // androidx.constraintlayout.core.motion.a.c
        public double b(double d2) {
            double d3 = 0.5d;
            double d4 = 0.5d;
            while (d3 > i) {
                d3 *= 0.5d;
                d4 = d(d4) < d2 ? d4 + d3 : d4 - d3;
            }
            double d5 = d4 - d3;
            double d6 = d4 + d3;
            return (e(d6) - e(d5)) / (d(d6) - d(d5));
        }
    }

    public static c c(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new a(str);
        }
        if (str.startsWith("spline")) {
            return new k(str);
        }
        if (str.startsWith("Schlick")) {
            return new i(str);
        }
        str.hashCode();
        switch (str) {
            case "accelerate":
                return new a("cubic(0.4, 0.05, 0.8, 0.7)");
            case "decelerate":
                return new a("cubic(0.0, 0.0, 0.2, 0.95)");
            case "anticipate":
                return new a("cubic(0.36, 0, 0.66, -0.56)");
            case "linear":
                return new a("cubic(1, 1, 0, 0)");
            case "overshoot":
                return new a("cubic(0.34, 1.56, 0.64, 1)");
            case "standard":
                return new a("cubic(0.4, 0.0, 0.2, 1)");
            default:
                System.err.println("transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(c));
                return b;
        }
    }

    public double a(double d2) {
        return d2;
    }

    public double b(double d2) {
        return 1.0d;
    }

    public String toString() {
        return this.f631a;
    }
}
