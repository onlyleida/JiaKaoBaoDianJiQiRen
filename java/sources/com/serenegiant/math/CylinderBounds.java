package com.serenegiant.math;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CylinderBounds extends BaseBounds {
    private static final long serialVersionUID = -2875851852923460432L;
    protected float height;
    protected float outer_r;
    private final Vector w1;
    private final Vector w2;

    public CylinderBounds(float f2, float f3, float f4, float f5, float f6) {
        this.w1 = new Vector();
        this.w2 = new Vector();
        this.position.set(f2, f3, f4);
        this.radius = (float) Math.sqrt((f6 * f6) + ((f5 * f5) / 4.0f));
        this.outer_r = f6;
        this.height = f5 / 2.0f;
    }

    @Override // com.serenegiant.math.BaseBounds
    public boolean ptInBounds(float f2, float f3, float f4) {
        boolean zPtInBoundsSphere = ptInBoundsSphere(f2, f3, f4, this.radius);
        return zPtInBoundsSphere ? ptInCylinder(f2, f3, f4, this.outer_r) : zPtInBoundsSphere;
    }

    protected boolean ptInCylinder(float f2, float f3, float f4, float f5) {
        this.w1.set(f2, f3, f4).sub(this.position).rotate(this.angle, -1.0f);
        this.w2.set(this.w1);
        Vector vector = this.w2;
        vector.y = BitmapDescriptorFactory.HUE_RED;
        Vector vector2 = this.position;
        if (vector.distSquared(vector2.x, BitmapDescriptorFactory.HUE_RED, vector2.z) >= f5 * f5) {
            return false;
        }
        Vector vector3 = this.position;
        float f6 = vector3.x;
        float f7 = f6 - f5;
        float f8 = f6 + f5;
        float f9 = vector3.y;
        float f10 = this.height;
        float f11 = f9 - f10;
        float f12 = f9 + f10;
        Vector vector4 = this.w1;
        float f13 = vector4.x;
        if (f13 < f7 || f13 > f8) {
            return false;
        }
        float f14 = vector4.y;
        return f14 >= f11 && f14 <= f12;
    }

    public CylinderBounds(Vector vector, float f2, float f3) {
        this(vector.x, vector.y, vector.z, f2, f3);
    }
}
