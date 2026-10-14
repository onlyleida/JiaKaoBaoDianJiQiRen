package com.serenegiant.graphics;

import android.graphics.Path;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class TriangleShape extends PathShape {
    public TriangleShape() {
        this(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f);
    }

    private static final float delta(float f2, float f3, float f4) {
        return max(f2, f3, f4) - min(f2, f3, f4);
    }

    private static final float max(float f2, float f3, float f4) {
        return Math.max(Math.max(f2, f3), f4);
    }

    private static final float min(float f2, float f3, float f4) {
        return Math.min(Math.min(f2, f3), f4);
    }

    public TriangleShape(float[] fArr) {
        this(fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5]);
    }

    public TriangleShape(float f2, float f3, float f4, float f5, float f6, float f7) {
        super(null, delta(f2, f4, f6), delta(f3, f5, f7));
        float fMin = min(f2, f4, f6);
        float fMin2 = min(f3, f5, f7);
        Path path = new Path();
        path.moveTo(f2 - fMin, f3 - fMin2);
        path.lineTo(f4 - fMin, f5 - fMin2);
        path.lineTo(f6 - fMin, f7 - fMin2);
        path.close();
        setPath(path);
    }
}
