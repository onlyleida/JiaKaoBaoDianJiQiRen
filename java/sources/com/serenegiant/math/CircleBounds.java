package com.serenegiant.math;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CircleBounds extends BaseBounds {
    private static final long serialVersionUID = -6571630061846420508L;

    public CircleBounds(float f2, float f3, float f4, float f5) {
        this.position.set(f2, f3, f4);
        this.radius = f5;
    }

    @Override // com.serenegiant.math.BaseBounds
    public boolean ptInBounds(float f2, float f3, float f4) {
        return ptInBoundsSphere(f2, f3, f4, this.radius);
    }

    public CircleBounds(float f2, float f3, float f4) {
        this(f2, f3, BitmapDescriptorFactory.HUE_RED, f4);
    }

    public CircleBounds(Vector vector, float f2) {
        this(vector.x, vector.y, BitmapDescriptorFactory.HUE_RED, f2);
    }
}
