package com.amap.api.maps;

import com.autonavi.amap.mapcore.AbstractCameraUpdateMessage;

/* JADX INFO: loaded from: classes5.dex */
public final class CameraUpdate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    AbstractCameraUpdateMessage f11478a;

    CameraUpdate(AbstractCameraUpdateMessage abstractCameraUpdateMessage) {
        this.f11478a = abstractCameraUpdateMessage;
    }

    public AbstractCameraUpdateMessage getCameraUpdateFactoryDelegate() {
        return this.f11478a;
    }
}
