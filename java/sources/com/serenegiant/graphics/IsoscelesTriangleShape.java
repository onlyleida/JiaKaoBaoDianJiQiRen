package com.serenegiant.graphics;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class IsoscelesTriangleShape extends TriangleShape {
    public IsoscelesTriangleShape(float f2, float f3) {
        super(new float[]{BitmapDescriptorFactory.HUE_RED, f2, f3, f2, f3 / 2.0f, BitmapDescriptorFactory.HUE_RED});
    }
}
