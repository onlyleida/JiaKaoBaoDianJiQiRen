package com.amap.api.mapcore.util;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.amap.mapcore.Inner_3dMap_location;

/* JADX INFO: loaded from: classes5.dex */
public final class h9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f10879a;
    LocationManager b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Object f10883g;
    boolean i;
    volatile long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    volatile boolean f10880d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f10881e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile Inner_3dMap_location f10882f = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f10884h = false;
    LocationListener j = new a();

    final class a implements LocationListener {
        a() {
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            if (location == null) {
                return;
            }
            try {
                Inner_3dMap_location inner_3dMap_location = new Inner_3dMap_location(location);
                inner_3dMap_location.setProvider("gps");
                inner_3dMap_location.setLocationType(1);
                Bundle extras = location.getExtras();
                inner_3dMap_location.setSatellites(extras != null ? extras.getInt("satellites") : 0);
                inner_3dMap_location.setTime(c9.b(inner_3dMap_location.getTime(), System.currentTimeMillis()));
                h9.this.f10882f = inner_3dMap_location;
                h9.this.c = g9.p();
                h9.this.f10880d = true;
            } catch (Throwable th) {
                b9.b(th, "MAPGPSLocation", "onLocationChanged");
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
            try {
                if ("gps".equals(str)) {
                    h9.this.f10880d = false;
                }
            } catch (Throwable th) {
                b9.b(th, "MAPGPSLocation", "onProviderDisabled");
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    public h9(Context context) {
        this.f10883g = null;
        this.i = false;
        if (context == null) {
            return;
        }
        this.f10879a = context;
        e();
        try {
            if (this.f10883g == null && !this.i) {
                this.f10883g = this.f10884h ? Class.forName("com.amap.api.maps.CoordinateConverter").getConstructor(Context.class).newInstance(context) : Class.forName("com.amap.api.maps2d.CoordinateConverter").getConstructor(new Class[0]).newInstance(new Object[0]);
                if (context == null) {
                    this.i = true;
                }
            }
        } catch (Throwable unused) {
        }
        if (this.b == null) {
            this.b = (LocationManager) this.f10879a.getSystemService("location");
        }
    }

    private void e() {
        try {
            if (Class.forName("com.amap.api.maps.CoordinateConverter") != null) {
                this.f10884h = true;
            }
        } catch (Throwable unused) {
        }
    }

    private void f() {
        try {
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                looperMyLooper = this.f10879a.getMainLooper();
            }
            Looper looper = looperMyLooper;
            try {
                this.b.sendExtraCommand("gps", "force_xtra_injection", new Bundle());
            } catch (Throwable unused) {
            }
            this.b.requestLocationUpdates("gps", 800L, BitmapDescriptorFactory.HUE_RED, this.j, looper);
        } catch (SecurityException unused2) {
        } catch (Throwable th) {
            b9.b(th, "MAPGPSLocation", "requestLocationUpdates");
        }
    }

    private void g() {
        this.f10880d = false;
        this.c = 0L;
        this.f10882f = null;
    }

    public final void a() {
        if (this.f10881e) {
            return;
        }
        f();
        this.f10881e = true;
    }

    public final void b() {
        LocationListener locationListener;
        this.f10881e = false;
        g();
        LocationManager locationManager = this.b;
        if (locationManager == null || (locationListener = this.j) == null) {
            return;
        }
        locationManager.removeUpdates(locationListener);
    }

    public final boolean c() {
        if (!this.f10880d) {
            return false;
        }
        if (g9.p() - this.c <= 10000) {
            return true;
        }
        this.f10882f = null;
        return false;
    }

    public final Inner_3dMap_location d() {
        double[] dArrB;
        Object objE;
        Object objNewInstance;
        if (this.f10882f == null) {
            return null;
        }
        Inner_3dMap_location inner_3dMap_locationM128clone = this.f10882f.m128clone();
        if (inner_3dMap_locationM128clone != null && inner_3dMap_locationM128clone.getErrorCode() == 0) {
            try {
                if (this.f10883g != null) {
                    if (b9.c(inner_3dMap_locationM128clone.getLatitude(), inner_3dMap_locationM128clone.getLongitude())) {
                        Object[] objArr = {"GPS"};
                        Class[] clsArr = {String.class};
                        if (this.f10884h) {
                            objE = e9.e("com.amap.api.maps.CoordinateConverter$CoordType", "valueOf", objArr, clsArr);
                            Class<?> cls = Class.forName("com.amap.api.maps.model.LatLng");
                            Class<?> cls2 = Double.TYPE;
                            objNewInstance = cls.getConstructor(cls2, cls2).newInstance(Double.valueOf(inner_3dMap_locationM128clone.getLatitude()), Double.valueOf(inner_3dMap_locationM128clone.getLongitude()));
                        } else {
                            objE = e9.e("com.amap.api.maps2d.CoordinateConverter$CoordType", "valueOf", objArr, clsArr);
                            Class<?> cls3 = Class.forName("com.amap.api.maps2d.model.LatLng");
                            Class<?> cls4 = Double.TYPE;
                            objNewInstance = cls3.getConstructor(cls4, cls4).newInstance(Double.valueOf(inner_3dMap_locationM128clone.getLatitude()), Double.valueOf(inner_3dMap_locationM128clone.getLongitude()));
                        }
                        e9.c(this.f10883g, "coord", objNewInstance);
                        e9.c(this.f10883g, "from", objE);
                        Object objC = e9.c(this.f10883g, "convert", new Object[0]);
                        double dDoubleValue = ((Double) objC.getClass().getDeclaredField("latitude").get(objC)).doubleValue();
                        double dDoubleValue2 = ((Double) objC.getClass().getDeclaredField("longitude").get(objC)).doubleValue();
                        inner_3dMap_locationM128clone.setLatitude(dDoubleValue);
                        inner_3dMap_locationM128clone.setLongitude(dDoubleValue2);
                    }
                } else if (this.i && b9.c(inner_3dMap_locationM128clone.getLatitude(), inner_3dMap_locationM128clone.getLongitude()) && (dArrB = t8.b(inner_3dMap_locationM128clone.getLongitude(), inner_3dMap_locationM128clone.getLatitude())) != null) {
                    inner_3dMap_locationM128clone.setLatitude(dArrB[1]);
                    inner_3dMap_locationM128clone.setLongitude(dArrB[0]);
                }
            } catch (Throwable unused) {
            }
        }
        return inner_3dMap_locationM128clone;
    }
}
