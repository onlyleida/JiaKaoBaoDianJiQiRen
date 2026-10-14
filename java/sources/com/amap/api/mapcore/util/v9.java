package com.amap.api.mapcore.util;

import com.mobile.auth.gatewayauth.Constant;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class v9 {
    public int k;
    public boolean n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11287a = 0;
    public int b = 0;
    public int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11288d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11289e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11290f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11291g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11292h = 0;
    public int i = 0;
    public int j = -113;
    public short l = 0;
    public long m = 0;
    public int o = 32767;
    public boolean p = true;

    public v9(int i, boolean z) {
        this.k = 0;
        this.n = false;
        this.k = i;
        this.n = z;
    }

    public final int a() {
        return this.c;
    }

    public final int b() {
        return this.f11288d;
    }

    public final int c() {
        return this.f11292h;
    }

    public final int d() {
        return this.i;
    }

    public final int e() {
        return this.j;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof v9)) {
            v9 v9Var = (v9) obj;
            int i = v9Var.k;
            if (i != 1) {
                if (i == 2) {
                    return this.k == 2 && v9Var.i == this.i && v9Var.f11292h == this.f11292h && v9Var.f11291g == this.f11291g;
                }
                if (i != 3) {
                    return i == 4 && this.k == 4 && v9Var.c == this.c && v9Var.f11288d == this.f11288d && v9Var.b == this.b;
                }
                return this.k == 3 && v9Var.c == this.c && v9Var.f11288d == this.f11288d && v9Var.b == this.b;
            }
            if (this.k == 1 && v9Var.c == this.c && v9Var.f11288d == this.f11288d && v9Var.b == this.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode;
        int i;
        int iHashCode2 = String.valueOf(this.k).hashCode();
        if (this.k == 2) {
            iHashCode = String.valueOf(this.i).hashCode() + String.valueOf(this.f11292h).hashCode();
            i = this.f11291g;
        } else {
            iHashCode = String.valueOf(this.c).hashCode() + String.valueOf(this.f11288d).hashCode();
            i = this.b;
        }
        return iHashCode2 + iHashCode + String.valueOf(i).hashCode();
    }

    public final String toString() {
        int i = this.k;
        if (i == 1) {
            return String.format(Locale.CHINA, "GSM lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b", Integer.valueOf(this.c), Integer.valueOf(this.f11288d), Integer.valueOf(this.b), Boolean.valueOf(this.p), Integer.valueOf(this.j), Short.valueOf(this.l), Boolean.valueOf(this.n));
        }
        if (i == 2) {
            return String.format(Locale.CHINA, "CDMA bid=%d, nid=%d, sid=%d, valid=%b, sig=%d, age=%d, reg=%b", Integer.valueOf(this.i), Integer.valueOf(this.f11292h), Integer.valueOf(this.f11291g), Boolean.valueOf(this.p), Integer.valueOf(this.j), Short.valueOf(this.l), Boolean.valueOf(this.n));
        }
        if (i != 3) {
            return i != 4 ? Constant.VENDOR_UNKNOWN : String.format(Locale.CHINA, "WCDMA lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b, pci=%d", Integer.valueOf(this.c), Integer.valueOf(this.f11288d), Integer.valueOf(this.b), Boolean.valueOf(this.p), Integer.valueOf(this.j), Short.valueOf(this.l), Boolean.valueOf(this.n), Integer.valueOf(this.o));
        }
        return String.format(Locale.CHINA, "LTE lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b, pci=%d", Integer.valueOf(this.c), Integer.valueOf(this.f11288d), Integer.valueOf(this.b), Boolean.valueOf(this.p), Integer.valueOf(this.j), Short.valueOf(this.l), Boolean.valueOf(this.n), Integer.valueOf(this.o));
    }
}
