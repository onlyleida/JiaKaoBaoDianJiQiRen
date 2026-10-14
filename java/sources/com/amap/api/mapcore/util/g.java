package com.amap.api.mapcore.util;

import com.autonavi.amap.api.mapcore.IGLMapState;
import com.autonavi.amap.mapcore.AbstractCameraUpdateMessage;

/* JADX INFO: loaded from: classes5.dex */
public class g extends AbstractCameraUpdateMessage {
    @Override // com.autonavi.amap.mapcore.AbstractCameraUpdateMessage
    public void mergeCameraUpdateDelegate(AbstractCameraUpdateMessage abstractCameraUpdateMessage) {
        abstractCameraUpdateMessage.zoom += this.amount;
    }

    @Override // com.autonavi.amap.mapcore.AbstractCameraUpdateMessage
    public void runCameraUpdate(IGLMapState iGLMapState) {
        float mapZoomer = iGLMapState.getMapZoomer() + this.amount;
        this.zoom = mapZoomer;
        this.zoom = r3.f(this.mapConfig, mapZoomer);
        normalChange(iGLMapState);
    }
}
