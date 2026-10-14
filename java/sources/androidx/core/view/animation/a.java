package androidx.core.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
class a implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f1209a;
    private final float[] b;

    a(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / 0.002f)) + 1;
        this.f1209a = new float[i];
        this.b = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((i2 * length) / (i - 1), fArr, null);
            this.f1209a[i2] = fArr[0];
            this.b[i2] = fArr[1];
        }
    }

    private static Path a(float f2, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        path.cubicTo(f2, f3, f4, f5, 1.0f, 1.0f);
        return path;
    }

    private static Path b(float f2, float f3) {
        Path path = new Path();
        path.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        path.quadTo(f2, f3, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.f1209a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f2 < this.f1209a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f1209a;
        float f3 = fArr[length] - fArr[i];
        if (f3 == BitmapDescriptorFactory.HUE_RED) {
            return this.b[i];
        }
        float f4 = (f2 - fArr[i]) / f3;
        float[] fArr2 = this.b;
        float f5 = fArr2[i];
        return f5 + (f4 * (fArr2[length] - f5));
    }

    a(float f2, float f3) {
        this(b(f2, f3));
    }

    a(float f2, float f3, float f4, float f5) {
        this(a(f2, f3, f4, f5));
    }
}
