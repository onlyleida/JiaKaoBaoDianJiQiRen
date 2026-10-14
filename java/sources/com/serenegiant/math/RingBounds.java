package com.serenegiant.math;

/* JADX INFO: loaded from: classes6.dex */
public class RingBounds extends CylinderBounds {
    private static final long serialVersionUID = -5157039256747626240L;
    protected float height;
    protected float inner_r;

    public RingBounds(float f2, float f3, float f4, float f5, float f6, float f7) {
        super(f2, f3, f4, f5, f6);
        this.inner_r = f7;
    }

    @Override // com.serenegiant.math.CylinderBounds, com.serenegiant.math.BaseBounds
    public boolean ptInBounds(float f2, float f3, float f4) {
        boolean zPtInBounds = super.ptInBounds(f2, f3, f4);
        return zPtInBounds ? !ptInCylinder(f2, f3, f4, this.inner_r) : zPtInBounds;
    }

    public RingBounds(Vector vector, float f2, float f3, float f4) {
        this(vector.x, vector.y, vector.z, f2, f3, f4);
    }
}
