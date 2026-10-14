package com.amap.api.mapcore.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ServiceInfo;
import com.amap.api.location.AMapLocationClient;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;

/* JADX INFO: loaded from: classes5.dex */
public class j4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f10938a;
    Inner_3dMap_locationManagerBase b = null;
    Object c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f10939d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    i9 f10940e;

    public j4(Context context) {
        this.f10940e = null;
        try {
            q9.a();
        } catch (Throwable unused) {
        }
        this.f10940e = new i9();
        b(context);
    }

    private void b(Context context) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context参数不能为null");
            }
            this.f10938a = context.getApplicationContext();
            try {
                Class<?> cls = Class.forName("com.amap.api.location.AMapLocationClient");
                ServiceInfo serviceInfo = null;
                try {
                    serviceInfo = this.f10938a.getPackageManager().getServiceInfo(new ComponentName(this.f10938a, "com.amap.api.location.APSService"), 128);
                } catch (Throwable unused) {
                }
                if (cls != null && serviceInfo != null) {
                    this.f10939d = true;
                }
            } catch (Throwable unused2) {
                this.f10939d = false;
            }
            if (this.f10939d) {
                this.c = new AMapLocationClient(this.f10938a);
            } else {
                this.b = e(this.f10938a);
            }
        } catch (Throwable th) {
            b9.b(th, "AMapLocationClient", "AMapLocationClient 1");
        }
    }

    private static Inner_3dMap_locationManagerBase e(Context context) {
        return new k9(context);
    }

    public void a() {
        try {
            if (this.f10939d) {
                ((AMapLocationClient) this.c).startLocation();
            } else {
                this.b.startLocation();
            }
        } catch (Throwable th) {
            b9.b(th, "AMapLocationClient", "startLocation");
        }
    }

    public void c(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        try {
            if (inner_3dMap_locationListener == null) {
                throw new IllegalArgumentException("listener参数不能为null");
            }
            if (this.f10939d) {
                this.f10940e.c(this.c, inner_3dMap_locationListener);
            } else {
                this.b.setLocationListener(inner_3dMap_locationListener);
            }
        } catch (Throwable th) {
            b9.b(th, "AMapLocationClient", "setLocationListener");
        }
    }

    public void d(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        try {
            if (inner_3dMap_locationOption == null) {
                throw new IllegalArgumentException("LocationManagerOption参数不能为null");
            }
            if (this.f10939d) {
                i9.d(this.c, inner_3dMap_locationOption);
            } else {
                this.b.setLocationOption(inner_3dMap_locationOption);
            }
        } catch (Throwable th) {
            b9.b(th, "AMapLocationClient", "setLocationOption");
        }
    }

    public void f() {
        try {
            if (this.f10939d) {
                ((AMapLocationClient) this.c).stopLocation();
            } else {
                this.b.stopLocation();
            }
        } catch (Throwable th) {
            b9.b(th, "AMapLocationClient", "stopLocation");
        }
    }

    public void g() {
        try {
            if (this.f10939d) {
                ((AMapLocationClient) this.c).onDestroy();
            } else {
                this.b.destroy();
            }
            if (this.f10940e != null) {
                this.f10940e = null;
            }
        } catch (Throwable th) {
            b9.b(th, "AMapLocationClient", "onDestroy");
        }
    }
}
