package com.amap.api.maps;

import android.graphics.Point;
import android.util.Log;
import com.amap.api.mapcore.util.h;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.VirtualEarthProjection;

/* JADX INFO: loaded from: classes5.dex */
public final class CameraUpdateFactory {
    public static CameraUpdate changeBearing(float f2) {
        return new CameraUpdate(h.q(f2 % 360.0f));
    }

    public static CameraUpdate changeBearingGeoCenter(float f2, IPoint iPoint) {
        if (iPoint != null) {
            return new CameraUpdate(h.n(f2 % 360.0f, new Point(((Point) iPoint).x, ((Point) iPoint).y)));
        }
        Log.w("CameraUpdateFactory", "geoPoint is null");
        return new CameraUpdate(h.o());
    }

    public static CameraUpdate changeLatLng(LatLng latLng) {
        if (latLng != null) {
            return new CameraUpdate(h.e(VirtualEarthProjection.latLongToPixels(latLng.latitude, latLng.longitude, 20)));
        }
        Log.w("CameraUpdateFactory", "target is null");
        return new CameraUpdate(h.o());
    }

    public static CameraUpdate changeTilt(float f2) {
        return new CameraUpdate(h.p(f2));
    }

    public static CameraUpdate newCameraPosition(CameraPosition cameraPosition) {
        if (cameraPosition != null) {
            return new CameraUpdate(h.f(cameraPosition));
        }
        Log.w("CameraUpdateFactory", "cameraPosition is null");
        return new CameraUpdate(h.o());
    }

    public static CameraUpdate newLatLng(LatLng latLng) {
        if (latLng != null) {
            return new CameraUpdate(h.g(latLng));
        }
        Log.w("CameraUpdateFactory", "latLng is null");
        return new CameraUpdate(h.o());
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i) {
        if (latLngBounds != null) {
            return new CameraUpdate(h.i(latLngBounds, i));
        }
        Log.w("CameraUpdateFactory", "bounds is null");
        return new CameraUpdate(h.o());
    }

    public static CameraUpdate newLatLngBoundsRect(LatLngBounds latLngBounds, int i, int i2, int i3, int i4) {
        if (latLngBounds != null) {
            return new CameraUpdate(h.k(latLngBounds, i, i2, i3, i4));
        }
        Log.w("CameraUpdateFactory", "bounds is null");
        return new CameraUpdate(h.o());
    }

    public static CameraUpdate newLatLngZoom(LatLng latLng, float f2) {
        if (latLng != null) {
            return new CameraUpdate(h.h(latLng, f2));
        }
        Log.w("CameraUpdateFactory", "target is null");
        return new CameraUpdate(h.o());
    }

    public static CameraUpdate scrollBy(float f2, float f3) {
        return new CameraUpdate(h.c(f2, f3));
    }

    public static CameraUpdate zoomBy(float f2) {
        return new CameraUpdate(h.m(f2));
    }

    public static CameraUpdate zoomIn() {
        return new CameraUpdate(h.a());
    }

    public static CameraUpdate zoomOut() {
        return new CameraUpdate(h.l());
    }

    public static CameraUpdate zoomTo(float f2) {
        return new CameraUpdate(h.b(f2));
    }

    public static CameraUpdate zoomBy(float f2, Point point) {
        return new CameraUpdate(h.d(f2, point));
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i, int i2, int i3) {
        if (latLngBounds == null) {
            Log.w("CameraUpdateFactory", "bounds is null");
            return new CameraUpdate(h.o());
        }
        return new CameraUpdate(h.j(latLngBounds, i, i2, i3));
    }
}
