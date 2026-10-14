package com.amap.api.mapcore.util;

import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;

/* JADX INFO: loaded from: classes5.dex */
public final class u8 implements AMapLocationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Inner_3dMap_locationListener f11241a = null;

    public final void a(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        this.f11241a = inner_3dMap_locationListener;
    }

    @Override // com.amap.api.location.AMapLocationListener
    public final void onLocationChanged(AMapLocation aMapLocation) {
        try {
            Inner_3dMap_location inner_3dMap_locationB = i9.b(aMapLocation);
            if (q9.c(inner_3dMap_locationB)) {
                i9.b = inner_3dMap_locationB;
            }
            Inner_3dMap_locationListener inner_3dMap_locationListener = this.f11241a;
            if (inner_3dMap_locationListener != null) {
                inner_3dMap_locationListener.onLocationChanged(inner_3dMap_locationB);
            }
        } catch (Throwable th) {
            b9.b(th, "LocationListener", "onLocationChanged");
        }
    }
}
