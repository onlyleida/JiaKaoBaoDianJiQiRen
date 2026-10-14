package com.amap.api.mapcore.util;

import android.graphics.Point;
import com.autonavi.amap.api.mapcore.IGLMapState;
import com.autonavi.amap.mapcore.AbstractCameraUpdateMessage;

/* JADX INFO: loaded from: classes5.dex */
public class f extends AbstractCameraUpdateMessage {
    public void a(IGLMapState iGLMapState, int i, int i2, Point point) {
        iGLMapState.screenToP20Point(i, i2, point);
    }

    @Override // com.autonavi.amap.mapcore.AbstractCameraUpdateMessage
    public void mergeCameraUpdateDelegate(AbstractCameraUpdateMessage abstractCameraUpdateMessage) {
    }

    @Override // com.autonavi.amap.mapcore.AbstractCameraUpdateMessage
    public void runCameraUpdate(IGLMapState iGLMapState) {
        float f2 = this.xPixel;
        float f3 = this.yPixel;
        float f4 = (this.width / 2.0f) + f2;
        float f5 = (this.height / 2.0f) + f3;
        Point point = new Point();
        a(iGLMapState, (int) f4, (int) f5, point);
        iGLMapState.setMapGeoCenter(point.x, point.y);
    }
}
