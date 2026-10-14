package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMap;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class x8 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static x8 f11340f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f7 f11341a;
    private Context b;
    private int c = b9.f10518f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11342d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11343e = 0;

    private x8(Context context) {
        this.f11341a = null;
        this.b = null;
        try {
            i5.a().c(context);
        } catch (Throwable unused) {
        }
        this.b = context;
        this.f11341a = f7.a();
    }

    public static x8 b(Context context) {
        if (f11340f == null) {
            f11340f = new x8(context);
        }
        return f11340f;
    }

    public final m7 a(y8 y8Var) throws Throwable {
        return this.f11341a.b(y8Var, this.f11342d || g9.E(this.b));
    }

    /* JADX WARN: Code duplicated, block: B:9:0x00c7 A[Catch: all -> 0x0100, TRY_ENTER, TryCatch #0 {all -> 0x0100, blocks: (B:4:0x0014, B:11:0x00cd, B:13:0x00d4, B:15:0x00e5, B:17:0x00eb, B:19:0x00f3, B:9:0x00c7), top: B:24:0x0014 }] */
    public final y8 c(Context context, byte[] bArr, String str, String str2) {
        String str3;
        try {
            HashMap map = new HashMap(16);
            y8 y8Var = new y8(context, b9.e());
            try {
                map.put(HttpHeaders.CONTENT_TYPE, "application/octet-stream");
                map.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
                map.put("gzipped", "1");
                map.put(HttpHeaders.CONNECTION, "Keep-Alive");
                map.put(HttpHeaders.USER_AGENT, "AMAP_Location_SDK_Android 4.9.0");
                map.put("KEY", c5.j(context));
                map.put("enginever", "5.1");
                String strA = f5.a();
                String strD = f5.d(context, strA, "key=" + c5.j(context));
                map.put("ts", strA);
                map.put("scode", strD);
                map.put("encr", "1");
                y8Var.u(map);
                y8Var.x();
                y8Var.r(String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s", "4.9.0", "loc", 3));
                y8Var.q();
                y8Var.t(str);
                y8Var.w(str2);
                y8Var.v(g9.m(bArr));
                y8Var.setProxy(l5.c(context));
                HashMap map2 = new HashMap(16);
                map2.put("output", "bin");
                map2.put("policy", "3103");
                int i = this.f11343e;
                if (i == 0) {
                    map2.remove(AMap.CUSTOM);
                } else {
                    if (i == 1) {
                        str3 = "language:cn";
                    } else if (i != 2) {
                        map2.remove(AMap.CUSTOM);
                    } else {
                        str3 = "language:en";
                    }
                    map2.put(AMap.CUSTOM, str3);
                }
                y8Var.s(map2);
                y8Var.setConnectionTimeout(this.c);
                y8Var.setSoTimeout(this.c);
                if ((!this.f11342d && !g9.E(context)) || !str.startsWith("http:")) {
                    return y8Var;
                }
                y8Var.t(y8Var.getURL().replace("https:", "https:"));
                return y8Var;
            } catch (Throwable unused) {
                return y8Var;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public final void d(long j, boolean z) {
        try {
            this.f11342d = z;
            try {
                i5.a().e(z);
            } catch (Throwable unused) {
            }
            this.c = Long.valueOf(j).intValue();
            this.f11343e = 0;
        } catch (Throwable th) {
            b9.b(th, "LocNetManager", "setOption");
        }
    }
}
