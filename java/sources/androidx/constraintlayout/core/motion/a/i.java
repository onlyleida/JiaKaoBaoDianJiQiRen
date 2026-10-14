package androidx.constraintlayout.core.motion.a;

/* JADX INFO: loaded from: classes.dex */
public class i extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    double f661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    double f662e;

    i(String str) {
        this.f631a = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.f661d = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i = iIndexOf2 + 1;
        this.f662e = Double.parseDouble(str.substring(i, str.indexOf(44, i)).trim());
    }

    private double d(double d2) {
        double d3 = this.f662e;
        if (d2 < d3) {
            double d4 = this.f661d;
            return ((d4 * d3) * d3) / ((((d3 - d2) * d4) + d2) * ((d4 * (d3 - d2)) + d2));
        }
        double d5 = this.f661d;
        return (((d3 - 1.0d) * d5) * (d3 - 1.0d)) / (((((-d5) * (d3 - d2)) - d2) + 1.0d) * ((((-d5) * (d3 - d2)) - d2) + 1.0d));
    }

    private double e(double d2) {
        double d3 = this.f662e;
        return d2 < d3 ? (d3 * d2) / (d2 + (this.f661d * (d3 - d2))) : ((1.0d - d3) * (d2 - 1.0d)) / ((1.0d - d2) - (this.f661d * (d3 - d2)));
    }

    @Override // androidx.constraintlayout.core.motion.a.c
    public double a(double d2) {
        return e(d2);
    }

    @Override // androidx.constraintlayout.core.motion.a.c
    public double b(double d2) {
        return d(d2);
    }
}
