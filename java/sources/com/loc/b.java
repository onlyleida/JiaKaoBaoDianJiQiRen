package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    bf f12533a;

    public b(Context context) {
        this.f12533a = null;
        try {
            p.a().a(context);
        } catch (Throwable unused) {
        }
        this.f12533a = bf.a();
    }

    private String a(Context context, String str, Map<String, String> map) {
        try {
            HashMap map2 = new HashMap(16);
            fc fcVar = new fc();
            map2.clear();
            map2.put(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
            map2.put(HttpHeaders.CONNECTION, "Keep-Alive");
            map2.put(HttpHeaders.USER_AGENT, "AMAP_Location_SDK_Android 5.6.2");
            String strA = m.a();
            String strA2 = m.a(context, strA, w.b(map));
            map.put("ts", strA);
            map.put("scode", strA2);
            fcVar.b(map);
            fcVar.a((Map<String, String>) map2);
            fcVar.b(str);
            fcVar.a(u.a(context));
            fcVar.a(fi.i);
            fcVar.b(fi.i);
            try {
                return new String(bf.a(fcVar).f12619a, "utf-8");
            } catch (Throwable th) {
                fi.a(th, "GeoFenceNetManager", "post");
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Map<String, String> b(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        HashMap map = new HashMap(16);
        map.put("key", k.f(context));
        if (!TextUtils.isEmpty(str)) {
            map.put("keywords", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            map.put("types", str2);
        }
        if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
            map.put("location", str6 + "," + str5);
        }
        if (!TextUtils.isEmpty(str3)) {
            map.put("city", str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            map.put("offset", str4);
        }
        if (!TextUtils.isEmpty(str7)) {
            map.put("radius", str7);
        }
        return map;
    }

    public final String a(Context context, String str, String str2) {
        Map<String, String> mapB = b(context, str2, null, null, null, null, null, null);
        mapB.put("extensions", "all");
        mapB.put("subdistrict", "0");
        return a(context, str, mapB);
    }

    public final String a(Context context, String str, String str2, String str3, String str4, String str5) {
        Map<String, String> mapB = b(context, str2, str3, str4, str5, null, null, null);
        mapB.put("children", "1");
        mapB.put("page", "1");
        mapB.put("extensions", TtmlNode.RUBY_BASE);
        return a(context, str, mapB);
    }

    public final String a(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Map<String, String> mapB = b(context, str2, str3, null, str4, str5, str6, str7);
        mapB.put("children", "1");
        mapB.put("page", "1");
        mapB.put("extensions", TtmlNode.RUBY_BASE);
        return a(context, str, mapB);
    }
}
