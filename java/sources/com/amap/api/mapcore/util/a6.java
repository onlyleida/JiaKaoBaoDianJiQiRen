package com.amap.api.mapcore.util;

import android.location.Location;
import com.amap.api.maps.LocationSource;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;

/* JADX INFO: loaded from: classes5.dex */
class a6 implements LocationSource.OnLocationChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f10444a;
    Location b;

    a6(IAMapDelegate iAMapDelegate) {
        this.f10444a = iAMapDelegate;
    }

    @Override // com.amap.api.maps.LocationSource.OnLocationChangedListener
    public void onLocationChanged(Location location) {
        this.b = location;
        try {
            if (this.f10444a.isMyLocationEnabled()) {
                this.f10444a.showMyLocationOverlay(location);
            }
        } catch (Throwable th) {
            e6.r(th, "AMapOnLocationChangedListener", "onLocationChanged");
            th.printStackTrace();
        }
    }
}
