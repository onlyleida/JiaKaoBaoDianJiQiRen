package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public final class dx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f12742a;
    public String b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f12744e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public short f12746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12747h;
    public int c = -113;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f12745f = 0;

    public dx(boolean z) {
        this.f12747h = z;
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

    public static String a(long j) {
        if (j < 0 || j > 281474976710655L) {
            return null;
        }
        return ef.a(ef.a(j), ":");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public dx clone() {
        dx dxVar = new dx(this.f12747h);
        dxVar.f12742a = this.f12742a;
        dxVar.b = this.b;
        dxVar.c = this.c;
        dxVar.f12743d = this.f12743d;
        dxVar.f12744e = this.f12744e;
        dxVar.f12745f = this.f12745f;
        dxVar.f12746g = this.f12746g;
        dxVar.f12747h = this.f12747h;
        return dxVar;
    }

    public final String a() {
        return this.f12747h + "#" + this.f12742a;
    }

    public final String toString() {
        return "AmapWifi{mac=" + this.f12742a + ", ssid='" + this.b + "', rssi=" + this.c + ", frequency=" + this.f12743d + ", timestamp=" + this.f12744e + ", lastUpdateUtcMills=" + this.f12745f + ", freshness=" + ((int) this.f12746g) + ", connected=" + this.f12747h + '}';
    }
}
