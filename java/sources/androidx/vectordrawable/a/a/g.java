package androidx.vectordrawable.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class g implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float[] f1910a;
    private float[] b;

    public g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    private void a(float f2, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        path.cubicTo(f2, f3, f4, f5, 1.0f, 1.0f);
        b(path);
    }

    private void b(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f1910a = new float[iMin];
        this.b = new float[iMin];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < iMin; i2++) {
            pathMeasure.getPosTan((i2 * length) / (iMin - 1), fArr, null);
            this.f1910a[i2] = fArr[0];
            this.b[i2] = fArr[1];
        }
        if (Math.abs(this.f1910a[0]) <= 1.0E-5d && Math.abs(this.b[0]) <= 1.0E-5d) {
            int i3 = iMin - 1;
            if (Math.abs(this.f1910a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.b[i3] - 1.0f) <= 1.0E-5d) {
                float f2 = BitmapDescriptorFactory.HUE_RED;
                int i4 = 0;
                while (i < iMin) {
                    float[] fArr2 = this.f1910a;
                    int i5 = i4 + 1;
                    float f3 = fArr2[i4];
                    if (f3 < f2) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f3);
                    }
                    fArr2[i] = f3;
                    i++;
                    f2 = f3;
                    i4 = i5;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("The Path must start at (0,0) and end at (1,1) start: ");
        sb.append(this.f1910a[0]);
        sb.append(",");
        sb.append(this.b[0]);
        sb.append(" end:");
        int i6 = iMin - 1;
        sb.append(this.f1910a[i6]);
        sb.append(",");
        sb.append(this.b[i6]);
        throw new IllegalArgumentException(sb.toString());
    }

    private void c(float f2, float f3) {
        Path path = new Path();
        path.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        path.quadTo(f2, f3, 1.0f, 1.0f);
        b(path);
    }

    private void d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (androidx.core.a.f.g.j(xmlPullParser, "pathData")) {
            String strI = androidx.core.a.f.g.i(typedArray, xmlPullParser, "pathData", 4);
            Path pathE = androidx.core.graphics.e.e(strI);
            if (pathE != null) {
                b(pathE);
                return;
            }
            throw new InflateException("The path is null, which is created from " + strI);
        }
        if (!androidx.core.a.f.g.j(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!androidx.core.a.f.g.j(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float f2 = androidx.core.a.f.g.f(typedArray, xmlPullParser, "controlX1", 0, BitmapDescriptorFactory.HUE_RED);
        float f3 = androidx.core.a.f.g.f(typedArray, xmlPullParser, "controlY1", 1, BitmapDescriptorFactory.HUE_RED);
        boolean zJ = androidx.core.a.f.g.j(xmlPullParser, "controlX2");
        if (zJ != androidx.core.a.f.g.j(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (zJ) {
            a(f2, f3, androidx.core.a.f.g.f(typedArray, xmlPullParser, "controlX2", 2, BitmapDescriptorFactory.HUE_RED), androidx.core.a.f.g.f(typedArray, xmlPullParser, "controlY2", 3, BitmapDescriptorFactory.HUE_RED));
        } else {
            c(f2, f3);
        }
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
        int length = this.f1910a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f2 < this.f1910a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f1910a;
        float f3 = fArr[length] - fArr[i];
        if (f3 == BitmapDescriptorFactory.HUE_RED) {
            return this.b[i];
        }
        float f4 = (f2 - fArr[i]) / f3;
        float[] fArr2 = this.b;
        float f5 = fArr2[i];
        return f5 + (f4 * (fArr2[length] - f5));
    }

    public g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, a.l);
        d(typedArrayK, xmlPullParser);
        typedArrayK.recycle();
    }
}
