package com.amap.api.mapcore.util;

import com.autonavi.amap.mapcore.DPoint;

/* JADX INFO: loaded from: classes5.dex */
public class v2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f11262a;
    public final double b;
    public final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double f11263d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f11264e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f11265f;

    public v2(double d2, double d3, double d4, double d5) {
        this.f11262a = d2;
        this.b = d4;
        this.c = d3;
        this.f11263d = d5;
        this.f11264e = (d2 + d3) / 2.0d;
        this.f11265f = (d4 + d5) / 2.0d;
    }

    public boolean a(double d2, double d3) {
        return this.f11262a <= d2 && d2 <= this.c && this.b <= d3 && d3 <= this.f11263d;
    }

    public boolean b(double d2, double d3, double d4, double d5) {
        return d2 < this.c && this.f11262a < d3 && d4 < this.f11263d && this.b < d5;
    }

    public boolean c(v2 v2Var) {
        return b(v2Var.f11262a, v2Var.c, v2Var.b, v2Var.f11263d);
    }

    public boolean d(DPoint dPoint) {
        return a(dPoint.x, dPoint.y);
    }

    public boolean e(v2 v2Var) {
        return v2Var.f11262a >= this.f11262a && v2Var.c <= this.c && v2Var.b >= this.b && v2Var.f11263d <= this.f11263d;
    }
}
