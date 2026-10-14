package com.autonavi.amap.mapcore;

import android.graphics.Point;

/* JADX INFO: loaded from: classes5.dex */
public class MapProjection {
    public static void geo2LonLat(int i, int i2, DPoint dPoint) {
        DPoint dPointPixelsToLatLong = VirtualEarthProjection.pixelsToLatLong(i, i2, 20);
        dPoint.x = dPointPixelsToLatLong.x;
        dPoint.y = dPointPixelsToLatLong.y;
        dPointPixelsToLatLong.recycle();
    }

    public static void lonlat2Geo(double d2, double d3, IPoint iPoint) {
        Point pointLatLongToPixels = VirtualEarthProjection.latLongToPixels(d3, d2, 20);
        ((Point) iPoint).x = pointLatLongToPixels.x;
        ((Point) iPoint).y = pointLatLongToPixels.y;
    }
}
