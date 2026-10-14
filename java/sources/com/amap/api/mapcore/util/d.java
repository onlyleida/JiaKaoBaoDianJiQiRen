package com.amap.api.mapcore.util;

import android.graphics.Point;
import android.util.Pair;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.amap.api.mapcore.IGLMapState;
import com.autonavi.amap.mapcore.AbstractCameraUpdateMessage;
import com.autonavi.amap.mapcore.IPoint;

/* JADX INFO: loaded from: classes5.dex */
public class d extends AbstractCameraUpdateMessage {
    @Override // com.autonavi.amap.mapcore.AbstractCameraUpdateMessage
    public void mergeCameraUpdateDelegate(AbstractCameraUpdateMessage abstractCameraUpdateMessage) {
    }

    @Override // com.autonavi.amap.mapcore.AbstractCameraUpdateMessage
    public void runCameraUpdate(IGLMapState iGLMapState) {
        Pair<Float, IPoint> pairR = r3.r(this, iGLMapState, this.mapConfig);
        if (pairR == null) {
            return;
        }
        iGLMapState.setMapZoomer(((Float) pairR.first).floatValue());
        Object obj = pairR.second;
        iGLMapState.setMapGeoCenter(((Point) ((IPoint) obj)).x, ((Point) ((IPoint) obj)).y);
        iGLMapState.setCameraDegree(BitmapDescriptorFactory.HUE_RED);
        iGLMapState.setMapAngle(BitmapDescriptorFactory.HUE_RED);
    }
}
