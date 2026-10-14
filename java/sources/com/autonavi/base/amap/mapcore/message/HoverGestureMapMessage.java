package com.autonavi.base.amap.mapcore.message;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.ae.gmap.maploader.Pools;
import com.autonavi.base.ae.gmap.GLMapState;

/* JADX INFO: loaded from: classes5.dex */
public class HoverGestureMapMessage extends AbstractGestureMapMessage {
    private static final Pools.SynchronizedPool<HoverGestureMapMessage> M_POOL = new Pools.SynchronizedPool<>(256);
    public float angleDelta;

    public HoverGestureMapMessage(int i, float f2) {
        super(i);
        this.angleDelta = BitmapDescriptorFactory.HUE_RED;
        this.angleDelta = f2;
    }

    public static void destory() {
        M_POOL.destory();
    }

    public static HoverGestureMapMessage obtain(int i, float f2) {
        HoverGestureMapMessage hoverGestureMapMessageAcquire = M_POOL.acquire();
        if (hoverGestureMapMessageAcquire == null) {
            hoverGestureMapMessageAcquire = new HoverGestureMapMessage(i, f2);
        } else {
            hoverGestureMapMessageAcquire.reset();
        }
        hoverGestureMapMessageAcquire.setParams(i, f2);
        return hoverGestureMapMessageAcquire;
    }

    private void setParams(int i, float f2) {
        setState(i);
        this.angleDelta = f2;
    }

    @Override // com.autonavi.base.amap.mapcore.message.AbstractGestureMapMessage, com.autonavi.base.ae.gmap.AbstractMapMessage
    public int getType() {
        return 3;
    }

    public void recycle() {
        M_POOL.release(this);
    }

    @Override // com.autonavi.base.amap.mapcore.message.AbstractGestureMapMessage
    public void runCameraUpdate(GLMapState gLMapState) {
        float cameraDegree = gLMapState.getCameraDegree() + this.angleDelta;
        if (cameraDegree < BitmapDescriptorFactory.HUE_RED) {
            cameraDegree = BitmapDescriptorFactory.HUE_RED;
        } else if (cameraDegree > 80.0f) {
            cameraDegree = 80.0f;
        } else if (gLMapState.getCameraDegree() > 40.0f && cameraDegree > 40.0f && gLMapState.getCameraDegree() > cameraDegree) {
            cameraDegree = 40.0f;
        }
        gLMapState.setCameraDegree(cameraDegree);
        gLMapState.recalculate();
    }
}
