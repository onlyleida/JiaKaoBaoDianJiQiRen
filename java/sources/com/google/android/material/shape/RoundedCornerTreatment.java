package com.google.android.material.shape;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    float radius;

    public RoundedCornerTreatment() {
        this.radius = -1.0f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(ShapePath shapePath, float f2, float f3, float f4) {
        shapePath.reset(BitmapDescriptorFactory.HUE_RED, f4 * f3, 180.0f, 180.0f - f2);
        float f5 = f4 * 2.0f * f3;
        shapePath.addArc(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f5, f5, 180.0f, f2);
    }

    @Deprecated
    public RoundedCornerTreatment(float f2) {
        this.radius = -1.0f;
        this.radius = f2;
    }
}
