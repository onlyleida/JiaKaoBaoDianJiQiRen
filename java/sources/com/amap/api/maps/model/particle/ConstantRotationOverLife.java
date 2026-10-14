package com.amap.api.maps.model.particle;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.base.amap.mapcore.AMapNativeParticleSystem;

/* JADX INFO: loaded from: classes5.dex */
public class ConstantRotationOverLife extends RotationOverLife {
    private float rotate;

    public ConstantRotationOverLife(float f2) {
        this.rotate = BitmapDescriptorFactory.HUE_RED;
        this.rotate = f2;
        this.type = 0;
        createNativeInstace();
    }

    @Override // com.autonavi.amap.mapcore.AbstractNativeInstance
    public void createNativeInstace() {
        try {
            this.nativeInstance = AMapNativeParticleSystem.nativeCreateConstantRotationOverLife(this.rotate);
        } catch (Throwable unused) {
        }
    }

    @Override // com.amap.api.maps.model.particle.RotationOverLife
    public float getRotate() {
        return this.rotate;
    }
}
