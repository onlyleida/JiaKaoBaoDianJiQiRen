package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes5.dex */
public class p3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f11065a = false;
    private static boolean b = false;
    private static boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f11066d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f11067e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f11068f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f11069g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f11070h = false;
    private static boolean i = false;
    private static HashMap<String, Boolean> j = new HashMap<>();

    private static <T> String a(Map<String, T> map) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(VectorFormat.DEFAULT_PREFIX);
            for (Map.Entry<String, T> entry : map.entrySet()) {
                sb.append("\"" + entry.getKey() + "\":");
                sb.append(entry.getValue());
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(VectorFormat.DEFAULT_SUFFIX);
            return sb.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static String b(boolean z) {
        try {
            return "{\"Quest\":" + z + VectorFormat.DEFAULT_SUFFIX;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void c(Context context) {
        if (c) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_heatmap", 1);
            f(context, "O009", a(map));
            c = true;
        } catch (Throwable unused) {
        }
    }

    public static void d(Context context, long j2) {
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_rendertime", Long.valueOf(j2));
            map.put("amap_3dmap_render_background", 0L);
            f(context, "O005", a(map));
        } catch (Throwable unused) {
        }
    }

    public static synchronized void e(Context context, String str) {
        try {
            if (j != null && !TextUtils.isEmpty(str)) {
                if (j.containsKey(str) && j.get(str).booleanValue()) {
                    return;
                }
                HashMap map = new HashMap();
                map.put("amap_3dmap_coordinate", str);
                f(context, "O008", a(map));
                if (!j.containsKey(str)) {
                    j.put(str, Boolean.TRUE);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static void f(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        try {
            u7 u7Var = new u7(context, "3dmap", "7.4.0", str);
            u7Var.a(str2);
            v7.d(u7Var, context);
        } catch (Throwable unused) {
        }
    }

    public static void g(Context context, boolean z) {
        try {
            String strB = b(z);
            u7 u7Var = new u7(context, "3dmap", "7.4.0", "O001");
            u7Var.a(strB);
            v7.d(u7Var, context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void h(Context context) {
        if (f11066d) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_offlinemap", 1);
            f(context, "O010", a(map));
            f11066d = true;
        } catch (Throwable unused) {
        }
    }

    public static void i(Context context, boolean z) {
        if (f11065a) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_stylemap", Integer.valueOf(z ? 1 : 0));
            f(context, "O006", a(map));
            f11065a = true;
        } catch (Throwable unused) {
        }
    }

    public static void j(Context context) {
        if (f11067e) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_particleoverlay", 1);
            f(context, "O011", a(map));
            f11067e = true;
        } catch (Throwable unused) {
        }
    }

    public static void k(Context context, boolean z) {
        if (b) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_indoormap", Integer.valueOf(z ? 1 : 0));
            f(context, "O007", a(map));
            b = true;
        } catch (Throwable unused) {
        }
    }

    public static void l(Context context) {
        if (f11069g) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_bzmapreview", 1);
            f(context, "O012", a(map));
            f11069g = true;
        } catch (Throwable unused) {
        }
    }

    public static void m(Context context) {
        if (f11070h) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_wxmapreview", 1);
            f(context, "O013", a(map));
            f11070h = true;
        } catch (Throwable unused) {
        }
    }

    public static void n(Context context) {
        if (f11068f) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_renderfps", 1);
            f(context, "O014", a(map));
            f11068f = true;
        } catch (Throwable unused) {
        }
    }

    public static void o(Context context) {
        if (i) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("amap_3dmap_buildingoverlay", 1);
            f(context, "O015", a(map));
            i = true;
        } catch (Throwable unused) {
        }
    }
}
