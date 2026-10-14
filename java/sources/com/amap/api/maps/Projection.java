package com.amap.api.maps;

import android.graphics.Point;
import android.graphics.PointF;
import com.amap.api.maps.model.AMapCameraInfo;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.TileProjection;
import com.amap.api.maps.model.VisibleRegion;
import com.autonavi.amap.mapcore.interfaces.IProjection;

/* JADX INFO: loaded from: classes5.dex */
public class Projection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IProjection f11493a;

    public Projection(IProjection iProjection) {
        this.f11493a = iProjection;
    }

    public TileProjection fromBoundsToTile(LatLngBounds latLngBounds, int i, int i2) {
        try {
            return this.f11493a.fromBoundsToTile(latLngBounds, i, i2);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public LatLng fromScreenLocation(Point point) {
        try {
            return this.f11493a.fromScreenLocation(point);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public AMapCameraInfo getCameraInfo() {
        try {
            return this.f11493a.getCameraInfo();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public LatLngBounds getMapBounds(LatLng latLng, float f2) {
        try {
            return this.f11493a.getMapBounds(latLng, f2);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public VisibleRegion getVisibleRegion() {
        try {
            return this.f11493a.getVisibleRegion();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Deprecated
    public PointF toMapLocation(LatLng latLng) {
        try {
            return this.f11493a.toMapLocation(latLng);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public PointF toOpenGLLocation(LatLng latLng) {
        try {
            return this.f11493a.toMapLocation(latLng);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public float toOpenGLWidth(int i) {
        try {
            return this.f11493a.toMapLenWithWin(i);
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public Point toScreenLocation(LatLng latLng) {
        try {
            return this.f11493a.toScreenLocation(latLng);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
