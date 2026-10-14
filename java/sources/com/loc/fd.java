package com.loc;

import android.content.Context;
import com.amap.api.maps.AMap;
import com.google.common.net.HttpHeaders;
import com.iflytek.cloud.SpeechConstant;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class fd {
    private static fd b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    bf f12885a;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f12886d = fi.i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12887e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12888f = 0;

    private fd(Context context) {
        this.f12885a = null;
        this.c = null;
        try {
            p.a().a(context);
        } catch (Throwable unused) {
        }
        this.c = context;
        this.f12885a = bf.a();
    }

    public static fd a(Context context) {
        if (b == null) {
            b = new fd(context);
        }
        return b;
    }

    public final bl a(fe feVar) throws Throwable {
        if (this.f12887e) {
            feVar.a(bk.c.HTTPS);
        }
        return bf.a(feVar);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x00e3 A[Catch: all -> 0x0108, TRY_ENTER, TryCatch #1 {all -> 0x0108, blocks: (B:4:0x0012, B:6:0x007a, B:7:0x0081, B:10:0x008f, B:17:0x00e9, B:19:0x00f0, B:21:0x0101, B:15:0x00e3), top: B:28:0x0012 }] */
    public final fe a(Context context, byte[] bArr, String str, String str2, boolean z) {
        String str3;
        try {
            HashMap map = new HashMap(16);
            fe feVar = new fe(context, fi.c());
            try {
                map.put(HttpHeaders.CONTENT_TYPE, "application/octet-stream");
                map.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
                map.put("gzipped", "1");
                map.put(HttpHeaders.CONNECTION, "Keep-Alive");
                map.put(HttpHeaders.USER_AGENT, "AMAP_Location_SDK_Android 5.6.2");
                map.put("KEY", k.f(context));
                map.put("enginever", fi.f12904a);
                String strA = m.a();
                String strA2 = m.a(context, strA, "key=" + k.f(context));
                map.put("ts", strA);
                map.put("scode", strA2);
                if (Double.valueOf(fi.f12904a).doubleValue() >= 5.3d) {
                    map.put("aps_s_src", "openapi");
                }
                map.put("encr", "1");
                feVar.b(map);
                String str4 = z ? "loc" : "locf";
                feVar.c(true);
                feVar.b(String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s", "5.6.2", str4, 3));
                feVar.b(z);
                feVar.c(str);
                feVar.d(str2);
                feVar.c(fp.a(bArr));
                feVar.a(u.a(context));
                HashMap map2 = new HashMap(16);
                map2.put("output", "bin");
                map2.put("policy", "3103");
                int i = this.f12888f;
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
                feVar.a((Map<String, String>) map2);
                feVar.a(this.f12886d);
                feVar.b(this.f12886d);
                if (!this.f12887e) {
                    return feVar;
                }
                feVar.a(bk.c.HTTPS);
                return feVar;
            } catch (Throwable unused) {
                return feVar;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0049 A[Catch: all -> 0x00ee, TRY_ENTER, TryCatch #1 {all -> 0x00ee, blocks: (B:2:0x0000, B:9:0x004f, B:11:0x0056, B:18:0x00e7, B:7:0x0049, B:12:0x00c5, B:14:0x00d3, B:15:0x00d8), top: B:24:0x0000, inners: #0 }] */
    public final String a(Context context, double d2, double d3) {
        String str;
        try {
            HashMap map = new HashMap(16);
            fe feVar = new fe(context, fi.c());
            map.clear();
            map.put(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
            map.put(HttpHeaders.CONNECTION, "Keep-Alive");
            map.put(HttpHeaders.USER_AGENT, "AMAP_Location_SDK_Android 5.6.2");
            HashMap map2 = new HashMap(16);
            map2.put(AMap.CUSTOM, "26260A1F00020002");
            map2.put("key", k.f(context));
            int i = this.f12888f;
            if (i == 0) {
                map2.remove(SpeechConstant.LANGUAGE);
            } else {
                if (i == 1) {
                    str = "zh-CN";
                } else if (i != 2) {
                    map2.remove(SpeechConstant.LANGUAGE);
                } else {
                    str = AMap.ENGLISH;
                }
                map2.put(SpeechConstant.LANGUAGE, str);
            }
            String strA = m.a();
            String strA2 = m.a(context, strA, w.b(map2));
            map2.put("ts", strA);
            map2.put("scode", strA2);
            feVar.b(("output=json&radius=1000&extensions=all&location=" + d3 + "," + d2).getBytes("UTF-8"));
            feVar.c(false);
            feVar.b(true);
            feVar.b(String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s", "5.6.2", "loc", 3));
            feVar.a((Map<String, String>) map2);
            feVar.b(map);
            feVar.a(u.a(context));
            feVar.a(fi.i);
            feVar.b(fi.i);
            try {
                feVar.d("http://dualstack-arestapi.amap.com/v3/geocode/regeo");
                feVar.c("http://restsdk.amap.com/v3/geocode/regeo");
                if (this.f12887e) {
                    feVar.a(bk.c.HTTPS);
                }
                return new String(bf.a(feVar).f12619a, "utf-8");
            } catch (Throwable th) {
                fi.a(th, "LocNetManager", "post");
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void a(long j, boolean z, int i) {
        try {
            this.f12887e = z;
            this.f12886d = Long.valueOf(j).intValue();
            this.f12888f = i;
        } catch (Throwable th) {
            fi.a(th, "LocNetManager", "setOption");
        }
    }
}
