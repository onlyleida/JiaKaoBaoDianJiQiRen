package com.amap.api.maps.model.particle;

import com.autonavi.base.amap.mapcore.AMapNativeParticleSystem;

/* JADX INFO: loaded from: classes5.dex */
public class SinglePointParticleShape extends ParticleShapeModule {
    private float[] point_3;

    public SinglePointParticleShape(float f2, float f3, float f4, boolean z) {
        this.point_3 = new float[]{f2, f3, f4};
        this.isUseRatio = z;
        createNativeInstace();
        this.type = 0;
    }

    @Override // com.autonavi.amap.mapcore.AbstractNativeInstance
    public void createNativeInstace() {
        try {
            float[] fArr = this.point_3;
            this.nativeInstance = AMapNativeParticleSystem.nativeCreateSinglePointParticleShape(fArr[0], fArr[1], fArr[2], this.isUseRatio);
        } catch (Throwable unused) {
        }
    }

    @Override // com.amap.api.maps.model.particle.ParticleShapeModule
    public float[] getPoint() {
        return this.point_3;
    }

    public SinglePointParticleShape(float f2, float f3, float f4) {
        this(f2, f3, f4, false);
    }
}
