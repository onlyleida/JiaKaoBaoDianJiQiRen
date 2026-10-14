package com.autonavi.base.amap.mapcore;

import android.graphics.PointF;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.ae.gmap.maploader.Pools;

/* JADX INFO: loaded from: classes5.dex */
public class FPoint extends PointF {
    private static final Pools.SynchronizedPool<FPoint> M_POOL = new Pools.SynchronizedPool<>(32);

    public FPoint() {
    }

    public static FPoint obtain() {
        FPoint fPointAcquire = M_POOL.acquire();
        if (fPointAcquire == null) {
            return new FPoint();
        }
        fPointAcquire.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        return fPointAcquire;
    }

    @Override // android.graphics.PointF
    public boolean equals(Object obj) {
        FPoint fPoint = (FPoint) obj;
        return fPoint != null && ((PointF) this).x == ((PointF) fPoint).x && ((PointF) this).y == ((PointF) fPoint).y;
    }

    @Override // android.graphics.PointF
    public int hashCode() {
        Float.floatToIntBits(((PointF) this).x);
        return Float.floatToIntBits(((PointF) this).y) * 37;
    }

    public void recycle() {
        M_POOL.release(this);
    }

    public FPoint(float f2, float f3) {
        ((PointF) this).x = f2;
        ((PointF) this).y = f3;
    }

    public static FPoint obtain(float f2, float f3) {
        FPoint fPointAcquire = M_POOL.acquire();
        if (fPointAcquire == null) {
            return new FPoint(f2, f3);
        }
        fPointAcquire.set(f2, f3);
        return fPointAcquire;
    }
}
