package com.amap.api.mapcore.util;

import android.graphics.Point;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.autonavi.amap.mapcore.AbstractCameraUpdateMessage;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.VirtualEarthProjection;

/* JADX INFO: loaded from: classes5.dex */
public class h {
    public static AbstractCameraUpdateMessage a() {
        g gVar = new g();
        gVar.nowType = AbstractCameraUpdateMessage.Type.zoomBy;
        gVar.amount = 1.0f;
        return gVar;
    }

    public static AbstractCameraUpdateMessage b(float f2) {
        e eVar = new e();
        eVar.nowType = AbstractCameraUpdateMessage.Type.newCameraPosition;
        eVar.zoom = f2;
        return eVar;
    }

    public static AbstractCameraUpdateMessage c(float f2, float f3) {
        f fVar = new f();
        fVar.nowType = AbstractCameraUpdateMessage.Type.scrollBy;
        fVar.xPixel = f2;
        fVar.yPixel = f3;
        return fVar;
    }

    public static AbstractCameraUpdateMessage d(float f2, Point point) {
        g gVar = new g();
        gVar.nowType = AbstractCameraUpdateMessage.Type.zoomBy;
        gVar.amount = f2;
        gVar.focus = point;
        return gVar;
    }

    public static AbstractCameraUpdateMessage e(Point point) {
        e eVar = new e();
        eVar.nowType = AbstractCameraUpdateMessage.Type.newCameraPosition;
        eVar.geoPoint = new DPoint(point.x, point.y);
        return eVar;
    }

    public static AbstractCameraUpdateMessage f(CameraPosition cameraPosition) {
        LatLng latLng;
        e eVar = new e();
        eVar.nowType = AbstractCameraUpdateMessage.Type.newCameraPosition;
        if (cameraPosition != null && (latLng = cameraPosition.target) != null) {
            DPoint dPointLatLongToPixelsDouble = VirtualEarthProjection.latLongToPixelsDouble(latLng.latitude, latLng.longitude, 20);
            eVar.geoPoint = new DPoint(dPointLatLongToPixelsDouble.x, dPointLatLongToPixelsDouble.y);
            eVar.zoom = cameraPosition.zoom;
            eVar.bearing = cameraPosition.bearing;
            eVar.tilt = cameraPosition.tilt;
            eVar.cameraPosition = cameraPosition;
        }
        return eVar;
    }

    public static AbstractCameraUpdateMessage g(LatLng latLng) {
        return f(CameraPosition.builder().target(latLng).zoom(Float.NaN).bearing(Float.NaN).tilt(Float.NaN).build());
    }

    public static AbstractCameraUpdateMessage h(LatLng latLng, float f2) {
        return f(CameraPosition.builder().target(latLng).zoom(f2).bearing(Float.NaN).tilt(Float.NaN).build());
    }

    public static AbstractCameraUpdateMessage i(LatLngBounds latLngBounds, int i) {
        d dVar = new d();
        dVar.nowType = AbstractCameraUpdateMessage.Type.newLatLngBounds;
        dVar.bounds = latLngBounds;
        dVar.paddingLeft = i;
        dVar.paddingRight = i;
        dVar.paddingTop = i;
        dVar.paddingBottom = i;
        return dVar;
    }

    public static AbstractCameraUpdateMessage j(LatLngBounds latLngBounds, int i, int i2, int i3) {
        d dVar = new d();
        dVar.nowType = AbstractCameraUpdateMessage.Type.newLatLngBoundsWithSize;
        dVar.bounds = latLngBounds;
        dVar.paddingLeft = i3;
        dVar.paddingRight = i3;
        dVar.paddingTop = i3;
        dVar.paddingBottom = i3;
        dVar.width = i;
        dVar.height = i2;
        return dVar;
    }

    public static AbstractCameraUpdateMessage k(LatLngBounds latLngBounds, int i, int i2, int i3, int i4) {
        d dVar = new d();
        dVar.nowType = AbstractCameraUpdateMessage.Type.newLatLngBounds;
        dVar.bounds = latLngBounds;
        dVar.paddingLeft = i;
        dVar.paddingRight = i2;
        dVar.paddingTop = i3;
        dVar.paddingBottom = i4;
        return dVar;
    }

    public static AbstractCameraUpdateMessage l() {
        g gVar = new g();
        gVar.nowType = AbstractCameraUpdateMessage.Type.zoomBy;
        gVar.amount = -1.0f;
        return gVar;
    }

    public static AbstractCameraUpdateMessage m(float f2) {
        return d(f2, null);
    }

    public static AbstractCameraUpdateMessage n(float f2, Point point) {
        e eVar = new e();
        eVar.nowType = AbstractCameraUpdateMessage.Type.newCameraPosition;
        eVar.geoPoint = new DPoint(point.x, point.y);
        eVar.bearing = f2;
        return eVar;
    }

    public static AbstractCameraUpdateMessage o() {
        return new e();
    }

    public static AbstractCameraUpdateMessage p(float f2) {
        e eVar = new e();
        eVar.nowType = AbstractCameraUpdateMessage.Type.newCameraPosition;
        eVar.tilt = f2;
        return eVar;
    }

    public static AbstractCameraUpdateMessage q(float f2) {
        e eVar = new e();
        eVar.nowType = AbstractCameraUpdateMessage.Type.newCameraPosition;
        eVar.bearing = f2;
        return eVar;
    }
}
