package com.amap.api.mapcore.util;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class j9 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static j9 f10945e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private kj f10946a = null;
    private long b = 0;
    private long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f10947d = 0;

    private j9() {
    }

    public static synchronized j9 a() {
        if (f10945e == null) {
            f10945e = new j9();
        }
        return f10945e;
    }

    public final kj b(kj kjVar) {
        if (g9.p() - this.f10947d > 30000) {
            this.f10946a = kjVar;
            this.f10947d = g9.p();
            return this.f10946a;
        }
        this.f10947d = g9.p();
        if (!q9.b(this.f10946a) || !q9.b(kjVar)) {
            this.b = g9.p();
            this.f10946a = kjVar;
            return kjVar;
        }
        if (kjVar.getTime() == this.f10946a.getTime() && kjVar.getAccuracy() < 300.0f) {
            return kjVar;
        }
        if (kjVar.getProvider().equalsIgnoreCase("gps")) {
            this.b = g9.p();
            this.f10946a = kjVar;
            return kjVar;
        }
        if (kjVar.f() != this.f10946a.f()) {
            this.b = g9.p();
            this.f10946a = kjVar;
            return kjVar;
        }
        if (!kjVar.getBuildingId().equals(this.f10946a.getBuildingId()) && !TextUtils.isEmpty(kjVar.getBuildingId())) {
            this.b = g9.p();
            this.f10946a = kjVar;
            return kjVar;
        }
        float fC = g9.c(new double[]{kjVar.getLatitude(), kjVar.getLongitude(), this.f10946a.getLatitude(), this.f10946a.getLongitude()});
        float accuracy = this.f10946a.getAccuracy();
        float accuracy2 = kjVar.getAccuracy();
        float f2 = accuracy2 - accuracy;
        long jP = g9.p();
        long j = jP - this.b;
        if ((accuracy < 101.0f && accuracy2 > 299.0f) || (accuracy > 299.0f && accuracy2 > 299.0f)) {
            long j2 = this.c;
            if (j2 == 0) {
                this.c = jP;
            } else if (jP - j2 > 30000) {
                this.b = jP;
                this.f10946a = kjVar;
                this.c = 0L;
                return kjVar;
            }
            return this.f10946a;
        }
        if (accuracy2 < 101.0f && accuracy > 299.0f) {
            this.b = jP;
            this.f10946a = kjVar;
            this.c = 0L;
            return kjVar;
        }
        if (accuracy2 <= 299.0f) {
            this.c = 0L;
        }
        if (fC < 10.0f && fC > 0.1d && accuracy2 > 5.0f) {
            if (f2 < -300.0f && accuracy / accuracy2 >= 2.0f) {
                this.b = jP;
                this.f10946a = kjVar;
                return kjVar;
            }
            return this.f10946a;
        }
        if (f2 < 300.0f) {
            this.b = g9.p();
            this.f10946a = kjVar;
            return kjVar;
        }
        if (j < 30000) {
            return this.f10946a;
        }
        this.b = g9.p();
        this.f10946a = kjVar;
        return kjVar;
    }
}
