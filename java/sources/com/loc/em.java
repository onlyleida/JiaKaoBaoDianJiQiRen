package com.loc;

import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.google.android.exoplayer2.DefaultRenderersFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class em {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    en f12806a = null;
    long b = 0;
    long c = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f12811h = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f12807d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f12808e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    AMapLocation f12809f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f12810g = 0;

    private en b(en enVar) {
        int i;
        if (fp.a(enVar)) {
            if (!this.f12811h || !fh.a(enVar.getTime())) {
                i = this.f12807d;
            } else if (enVar.getLocationType() == 5 || enVar.getLocationType() == 6) {
                i = 4;
            }
            enVar.setLocationType(i);
        }
        return enVar;
    }

    public final AMapLocation a(AMapLocation aMapLocation) {
        if (!fp.a(aMapLocation)) {
            return aMapLocation;
        }
        long jB = fp.b() - this.f12810g;
        this.f12810g = fp.b();
        if (jB > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            return aMapLocation;
        }
        AMapLocation aMapLocation2 = this.f12809f;
        if (aMapLocation2 == null) {
            this.f12809f = aMapLocation;
            return aMapLocation;
        }
        if (1 != aMapLocation2.getLocationType() && !"gps".equalsIgnoreCase(this.f12809f.getProvider())) {
            this.f12809f = aMapLocation;
            return aMapLocation;
        }
        if (this.f12809f.getAltitude() == aMapLocation.getAltitude() && this.f12809f.getLongitude() == aMapLocation.getLongitude()) {
            this.f12809f = aMapLocation;
            return aMapLocation;
        }
        long jAbs = Math.abs(aMapLocation.getTime() - this.f12809f.getTime());
        if (30000 < jAbs) {
            this.f12809f = aMapLocation;
            return aMapLocation;
        }
        if (fp.a(aMapLocation, this.f12809f) > (((this.f12809f.getSpeed() + aMapLocation.getSpeed()) * jAbs) / 2000.0f) + ((this.f12809f.getAccuracy() + aMapLocation.getAccuracy()) * 2.0f) + 3000.0f) {
            return this.f12809f;
        }
        this.f12809f = aMapLocation;
        return aMapLocation;
    }

    public final en a(en enVar) {
        if (fp.b() - this.f12808e > 30000) {
            this.f12806a = enVar;
            this.f12808e = fp.b();
            return this.f12806a;
        }
        this.f12808e = fp.b();
        if (!fp.a(this.f12806a) || !fp.a(enVar)) {
            this.b = fp.b();
            this.f12806a = enVar;
            return enVar;
        }
        if (enVar.getTime() == this.f12806a.getTime() && enVar.getAccuracy() < 300.0f) {
            return enVar;
        }
        if (enVar.getProvider().equals("gps")) {
            this.b = fp.b();
            this.f12806a = enVar;
            return enVar;
        }
        if (enVar.c() != this.f12806a.c()) {
            this.b = fp.b();
            this.f12806a = enVar;
            return enVar;
        }
        if (!enVar.getBuildingId().equals(this.f12806a.getBuildingId()) && !TextUtils.isEmpty(enVar.getBuildingId())) {
            this.b = fp.b();
            this.f12806a = enVar;
            return enVar;
        }
        this.f12807d = enVar.getLocationType();
        float fA = fp.a(enVar, this.f12806a);
        float accuracy = this.f12806a.getAccuracy();
        float accuracy2 = enVar.getAccuracy();
        float f2 = accuracy2 - accuracy;
        long jB = fp.b();
        long j = jB - this.b;
        boolean z = accuracy <= 100.0f && accuracy2 > 299.0f;
        boolean z2 = accuracy > 299.0f && accuracy2 > 299.0f;
        if (z || z2) {
            long j2 = this.c;
            if (j2 == 0) {
                this.c = jB;
            } else if (jB - j2 > 30000) {
                this.b = jB;
                this.f12806a = enVar;
                this.c = 0L;
                return enVar;
            }
            en enVarB = b(this.f12806a);
            this.f12806a = enVarB;
            return enVarB;
        }
        if (accuracy2 < 100.0f && accuracy > 299.0f) {
            this.b = jB;
            this.f12806a = enVar;
            this.c = 0L;
            return enVar;
        }
        if (accuracy2 <= 299.0f) {
            this.c = 0L;
        }
        if (fA >= 10.0f || fA <= 0.1d || accuracy2 <= 5.0f) {
            if (f2 < 300.0f) {
                this.b = fp.b();
                this.f12806a = enVar;
                return enVar;
            }
            if (j >= 30000) {
                this.b = fp.b();
                this.f12806a = enVar;
                return enVar;
            }
            en enVarB2 = b(this.f12806a);
            this.f12806a = enVarB2;
            return enVarB2;
        }
        if (f2 >= -300.0f) {
            en enVarB3 = b(this.f12806a);
            this.f12806a = enVarB3;
            return enVarB3;
        }
        if (accuracy / accuracy2 >= 2.0f) {
            this.b = jB;
            this.f12806a = enVar;
            return enVar;
        }
        en enVarB4 = b(this.f12806a);
        this.f12806a = enVarB4;
        return enVarB4;
    }

    public final void a() {
        this.f12806a = null;
        this.b = 0L;
        this.c = 0L;
        this.f12809f = null;
        this.f12810g = 0L;
    }

    public final void a(boolean z) {
        this.f12811h = z;
    }
}
