package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
abstract class a implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    protected a(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float[] fArr = this.mValues;
        int iMin = Math.min((int) ((fArr.length - 1) * f2), fArr.length - 2);
        float f3 = this.mStepSize;
        float f4 = (f2 - (iMin * f3)) / f3;
        float[] fArr2 = this.mValues;
        return fArr2[iMin] + (f4 * (fArr2[iMin + 1] - fArr2[iMin]));
    }
}
