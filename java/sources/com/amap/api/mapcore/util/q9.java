package com.amap.api.mapcore.util;

import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.tencent.connect.common.Constants;

/* JADX INFO: loaded from: classes5.dex */
public final class q9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f11107a = {"com.amap.api.maps", "com.amap.api.mapcore", "com.autonavi.amap.mapcore", "com.amap.api.3dmap.admic", "com.amap.api.trace", "com.amap.api.trace.core"};
    private static final String[] b = {"com.amap.api.mapcore2d", "com.amap.api.maps2d"};
    private static final String[] c = {"com.amap.trace"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static m5 f11108d;

    public static m5 a() throws gb {
        Class<?> cls;
        Class<?> cls2;
        m5 m5VarC;
        m5 m5Var = f11108d;
        if (m5Var != null) {
            return m5Var;
        }
        try {
            cls = Class.forName("com.amap.api.maps.MapsInitializer");
        } catch (Throwable unused) {
            cls = null;
        }
        try {
            if (cls != null) {
                String str = (String) e9.a(cls, "getVersion", null, null);
                m5.b bVar = new m5.b("3dmap", str, "AMAP_SDK_Android_Map_" + str);
                bVar.b(f11107a);
                m5VarC = bVar.c();
            } else {
                cls = Class.forName("com.amap.api.maps2d.MapsInitializer");
                String str2 = (String) e9.a(cls, "getVersion", null, null);
                m5.b bVar2 = new m5.b("2dmap", str2, "AMAP_SDK_Android_2DMap_" + str2);
                bVar2.b(b);
                m5VarC = bVar2.c();
            }
            f11108d = m5VarC;
        } catch (Throwable unused2) {
        }
        if (cls == null) {
            try {
                cls2 = Class.forName("com.amap.trace.AMapTraceClient");
            } catch (Throwable unused3) {
                cls2 = null;
            }
            if (cls2 != null) {
                try {
                    String str3 = (String) e9.a(cls2, "getVersion", null, null);
                    m5.b bVar3 = new m5.b("trace", str3, "AMAP_TRACE_Android_" + str3);
                    bVar3.b(c);
                    f11108d = bVar3.c();
                } catch (Throwable unused4) {
                }
            }
        }
        return f11108d;
    }

    public static boolean b(kj kjVar) {
        if (kjVar == null || kjVar.h().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO) || kjVar.h().equals("5") || kjVar.h().equals(Constants.VIA_SHARE_TYPE_INFO)) {
            return false;
        }
        return c(kjVar);
    }

    public static boolean c(Inner_3dMap_location inner_3dMap_location) {
        double longitude = inner_3dMap_location.getLongitude();
        double latitude = inner_3dMap_location.getLatitude();
        return !(longitude == 0.0d && latitude == 0.0d) && longitude <= 180.0d && latitude <= 90.0d && longitude >= -180.0d && latitude >= -90.0d;
    }
}
