package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public final class r9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f11144a;
    public String b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f11146e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public short f11148g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11149h;
    public int c = -113;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f11147f = 0;

    public r9(boolean z) {
        this.f11149h = z;
    }

    public static long a(String str) {
        long j;
        if (str == null || str.length() == 0) {
            return 0L;
        }
        int i = 0;
        long j2 = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            long jCharAt = str.charAt(length);
            if (jCharAt < 48 || jCharAt > 57) {
                long j3 = 97;
                if (jCharAt < 97 || jCharAt > 102) {
                    j3 = 65;
                    if (jCharAt < 65 || jCharAt > 70) {
                        if (jCharAt != 58 && jCharAt != 124) {
                            return 0L;
                        }
                    }
                }
                j = (jCharAt - j3) + 10;
            } else {
                j = jCharAt - 48;
            }
            j2 += j << i;
            i += 4;
        }
        if (i != 48) {
            return 0L;
        }
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public r9 clone() {
        boolean z = this.f11149h;
        r9 r9Var = new r9(z);
        r9Var.f11144a = this.f11144a;
        r9Var.b = this.b;
        r9Var.c = this.c;
        r9Var.f11145d = this.f11145d;
        r9Var.f11146e = this.f11146e;
        r9Var.f11147f = this.f11147f;
        r9Var.f11148g = this.f11148g;
        r9Var.f11149h = z;
        return r9Var;
    }

    public final String toString() {
        return "AmapWifi{mac=" + this.f11144a + ", ssid='" + this.b + "', rssi=" + this.c + ", frequency=" + this.f11145d + ", timestamp=" + this.f11146e + ", lastUpdateUtcMills=" + this.f11147f + ", freshness=" + ((int) this.f11148g) + ", connected=" + this.f11149h + '}';
    }
}
