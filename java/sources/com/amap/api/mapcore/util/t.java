package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Bundle;
import com.amap.api.maps.LocationSource;
import com.amap.api.maps.model.MyLocationStyle;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class t implements LocationSource, Inner_3dMap_locationListener {
    private LocationSource.OnLocationChangedListener b;
    private j4 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Inner_3dMap_locationOption f11178d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f11181g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bundle f11177a = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f11179e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f11180f = SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;

    public t(Context context) {
        this.f11181g = context;
    }

    private void c(boolean z) {
        j4 j4Var;
        if (this.f11178d != null && (j4Var = this.c) != null) {
            j4Var.g();
            j4 j4Var2 = new j4(this.f11181g);
            this.c = j4Var2;
            j4Var2.c(this);
            this.f11178d.setOnceLocation(z);
            if (!z) {
                this.f11178d.setInterval(this.f11180f);
            }
            this.c.d(this.f11178d);
            this.c.a();
        }
        this.f11179e = z;
    }

    public void a(int i) {
        if (i == 1 || i == 0) {
            c(true);
        } else {
            c(false);
        }
    }

    @Override // com.amap.api.maps.LocationSource
    public void activate(LocationSource.OnLocationChangedListener onLocationChangedListener) {
        this.b = onLocationChangedListener;
        if (this.c == null) {
            this.c = new j4(this.f11181g);
            this.f11178d = new Inner_3dMap_locationOption();
            this.c.c(this);
            this.f11178d.setInterval(this.f11180f);
            this.f11178d.setOnceLocation(this.f11179e);
            this.f11178d.setLocationMode(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Hight_Accuracy);
            this.c.d(this.f11178d);
            this.c.a();
        }
    }

    public void b(long j) {
        Inner_3dMap_locationOption inner_3dMap_locationOption = this.f11178d;
        if (inner_3dMap_locationOption != null && this.c != null && inner_3dMap_locationOption.getInterval() != j) {
            this.f11178d.setInterval(j);
            this.c.d(this.f11178d);
        }
        this.f11180f = j;
    }

    @Override // com.amap.api.maps.LocationSource
    public void deactivate() {
        this.b = null;
        j4 j4Var = this.c;
        if (j4Var != null) {
            j4Var.f();
            this.c.g();
        }
        this.c = null;
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_locationListener
    public void onLocationChanged(Inner_3dMap_location inner_3dMap_location) {
        try {
            if (this.b == null || inner_3dMap_location == null) {
                return;
            }
            Bundle extras = inner_3dMap_location.getExtras();
            this.f11177a = extras;
            if (extras == null) {
                this.f11177a = new Bundle();
            }
            this.f11177a.putInt(MyLocationStyle.ERROR_CODE, inner_3dMap_location.getErrorCode());
            this.f11177a.putString(MyLocationStyle.ERROR_INFO, inner_3dMap_location.getErrorInfo());
            this.f11177a.putInt(MyLocationStyle.LOCATION_TYPE, inner_3dMap_location.getLocationType());
            this.f11177a.putFloat("Accuracy", inner_3dMap_location.getAccuracy());
            this.f11177a.putString("AdCode", inner_3dMap_location.getAdCode());
            this.f11177a.putString("Address", inner_3dMap_location.getAddress());
            this.f11177a.putString("AoiName", inner_3dMap_location.getAoiName());
            this.f11177a.putString("City", inner_3dMap_location.getCity());
            this.f11177a.putString("CityCode", inner_3dMap_location.getCityCode());
            this.f11177a.putString("Country", inner_3dMap_location.getCountry());
            this.f11177a.putString("District", inner_3dMap_location.getDistrict());
            this.f11177a.putString("Street", inner_3dMap_location.getStreet());
            this.f11177a.putString("StreetNum", inner_3dMap_location.getStreetNum());
            this.f11177a.putString("PoiName", inner_3dMap_location.getPoiName());
            this.f11177a.putString("Province", inner_3dMap_location.getProvince());
            this.f11177a.putFloat("Speed", inner_3dMap_location.getSpeed());
            this.f11177a.putString("Floor", inner_3dMap_location.getFloor());
            this.f11177a.putFloat("Bearing", inner_3dMap_location.getBearing());
            this.f11177a.putString("BuildingId", inner_3dMap_location.getBuildingId());
            this.f11177a.putDouble("Altitude", inner_3dMap_location.getAltitude());
            inner_3dMap_location.setExtras(this.f11177a);
            this.b.onLocationChanged(inner_3dMap_location);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
