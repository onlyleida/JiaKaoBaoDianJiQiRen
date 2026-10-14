package com.autonavi.base.amap.mapcore.message;

import android.graphics.Point;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.ae.gmap.maploader.Pools;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.base.ae.gmap.GLMapState;

/* JADX INFO: loaded from: classes5.dex */
public class MoveGestureMapMessage extends AbstractGestureMapMessage {
    private static final Pools.SynchronizedPool<MoveGestureMapMessage> M_POOL = new Pools.SynchronizedPool<>(1024);
    static int newCount;
    public float touchDeltaX;
    public float touchDeltaY;

    public MoveGestureMapMessage(int i, float f2, float f3) {
        super(i);
        this.touchDeltaX = BitmapDescriptorFactory.HUE_RED;
        this.touchDeltaY = BitmapDescriptorFactory.HUE_RED;
        this.touchDeltaX = f2;
        this.touchDeltaY = f3;
        newCount++;
    }

    public static void destory() {
        M_POOL.destory();
    }

    public static synchronized MoveGestureMapMessage obtain(int i, float f2, float f3) {
        MoveGestureMapMessage moveGestureMapMessageAcquire;
        moveGestureMapMessageAcquire = M_POOL.acquire();
        if (moveGestureMapMessageAcquire == null) {
            moveGestureMapMessageAcquire = new MoveGestureMapMessage(i, f2, f3);
        } else {
            moveGestureMapMessageAcquire.reset();
            moveGestureMapMessageAcquire.setParams(i, f2, f3);
        }
        return moveGestureMapMessageAcquire;
    }

    private void setParams(int i, float f2, float f3) {
        setState(i);
        this.touchDeltaX = f2;
        this.touchDeltaY = f3;
    }

    @Override // com.autonavi.base.amap.mapcore.message.AbstractGestureMapMessage, com.autonavi.base.ae.gmap.AbstractMapMessage
    public int getType() {
        return 0;
    }

    public void recycle() {
        M_POOL.release(this);
    }

    @Override // com.autonavi.base.amap.mapcore.message.AbstractGestureMapMessage
    public void runCameraUpdate(GLMapState gLMapState) {
        int i = (int) this.touchDeltaX;
        int i2 = (int) this.touchDeltaY;
        float f2 = this.width >> 1;
        float f3 = this.height >> 1;
        if (this.isUseAnchor) {
            f2 = this.anchorX;
            f3 = this.anchorY;
        }
        IPoint iPointObtain = IPoint.obtain();
        win2geo(gLMapState, (int) (f2 - i), (int) (f3 - i2), iPointObtain);
        gLMapState.setMapGeoCenter(((Point) iPointObtain).x, ((Point) iPointObtain).y);
        gLMapState.recalculate();
        iPointObtain.recycle();
    }
}
