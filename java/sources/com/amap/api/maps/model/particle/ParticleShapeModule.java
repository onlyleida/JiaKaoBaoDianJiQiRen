package com.amap.api.maps.model.particle;

import com.autonavi.amap.mapcore.AbstractNativeInstance;
import com.autonavi.base.amap.mapcore.AMapNativeParticleSystem;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ParticleShapeModule extends AbstractNativeInstance {
    protected final int TYPE_DEFAULT = -1;
    protected final int TYPE_SINGLEPOINT = 0;
    protected final int TYPE_RECT = 1;
    protected int type = -1;
    protected boolean isUseRatio = false;

    @Override // com.autonavi.amap.mapcore.AbstractNativeInstance
    protected void finalize() throws Throwable {
        super.finalize();
        long j = this.nativeInstance;
        if (j != 0) {
            AMapNativeParticleSystem.nativeReleaseParticleShapeModule(j);
            this.nativeInstance = 0L;
        }
    }

    public abstract float[] getPoint();

    public boolean isUseRatio() {
        return this.isUseRatio;
    }
}
