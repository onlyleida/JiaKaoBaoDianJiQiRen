package androidx.core.a.f;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
final class d {
    private static a a(a aVar, int i, int i2, boolean z, int i3) {
        if (aVar != null) {
            return aVar;
        }
        return z ? new a(i, i3, i2) : new a(i, i2);
    }

    static Shader b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray typedArrayK = g.k(resources, theme, attributeSet, R.styleable.GradientColor);
        float f2 = g.f(typedArrayK, xmlPullParser, "startX", R.styleable.GradientColor_android_startX, BitmapDescriptorFactory.HUE_RED);
        float f3 = g.f(typedArrayK, xmlPullParser, "startY", R.styleable.GradientColor_android_startY, BitmapDescriptorFactory.HUE_RED);
        float f4 = g.f(typedArrayK, xmlPullParser, "endX", R.styleable.GradientColor_android_endX, BitmapDescriptorFactory.HUE_RED);
        float f5 = g.f(typedArrayK, xmlPullParser, "endY", R.styleable.GradientColor_android_endY, BitmapDescriptorFactory.HUE_RED);
        float f6 = g.f(typedArrayK, xmlPullParser, "centerX", R.styleable.GradientColor_android_centerX, BitmapDescriptorFactory.HUE_RED);
        float f7 = g.f(typedArrayK, xmlPullParser, "centerY", R.styleable.GradientColor_android_centerY, BitmapDescriptorFactory.HUE_RED);
        int iG = g.g(typedArrayK, xmlPullParser, "type", R.styleable.GradientColor_android_type, 0);
        int iB = g.b(typedArrayK, xmlPullParser, "startColor", R.styleable.GradientColor_android_startColor, 0);
        boolean zJ = g.j(xmlPullParser, "centerColor");
        int iB2 = g.b(typedArrayK, xmlPullParser, "centerColor", R.styleable.GradientColor_android_centerColor, 0);
        int iB3 = g.b(typedArrayK, xmlPullParser, "endColor", R.styleable.GradientColor_android_endColor, 0);
        int iG2 = g.g(typedArrayK, xmlPullParser, "tileMode", R.styleable.GradientColor_android_tileMode, 0);
        float f8 = g.f(typedArrayK, xmlPullParser, "gradientRadius", R.styleable.GradientColor_android_gradientRadius, BitmapDescriptorFactory.HUE_RED);
        typedArrayK.recycle();
        a aVarA = a(c(resources, xmlPullParser, attributeSet, theme), iB, iB3, zJ, iB2);
        if (iG != 1) {
            return iG != 2 ? new LinearGradient(f2, f3, f4, f5, aVarA.f940a, aVarA.b, d(iG2)) : new SweepGradient(f6, f7, aVarA.f940a, aVarA.b);
        }
        if (f8 > BitmapDescriptorFactory.HUE_RED) {
            return new RadialGradient(f6, f7, f8, aVarA.f940a, aVarA.b, d(iG2));
        }
        throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }

    private static a c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayK = g.k(resources, theme, attributeSet, R.styleable.GradientColorItem);
                int i = R.styleable.GradientColorItem_android_color;
                boolean zHasValue = typedArrayK.hasValue(i);
                int i2 = R.styleable.GradientColorItem_android_offset;
                boolean zHasValue2 = typedArrayK.hasValue(i2);
                if (!zHasValue || !zHasValue2) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
                }
                int color = typedArrayK.getColor(i, 0);
                float f2 = typedArrayK.getFloat(i2, BitmapDescriptorFactory.HUE_RED);
                typedArrayK.recycle();
                arrayList2.add(Integer.valueOf(color));
                arrayList.add(Float.valueOf(f2));
            }
        }
        if (arrayList2.size() > 0) {
            return new a(arrayList2, arrayList);
        }
        return null;
    }

    private static Shader.TileMode d(int i) {
        if (i != 1) {
            return i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR;
        }
        return Shader.TileMode.REPEAT;
    }

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f940a;
        final float[] b;

        a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f940a = new int[size];
            this.b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f940a[i] = list.get(i).intValue();
                this.b[i] = list2.get(i).floatValue();
            }
        }

        a(int i, int i2) {
            this.f940a = new int[]{i, i2};
            this.b = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f};
        }

        a(int i, int i2, int i3) {
            this.f940a = new int[]{i, i2, i3};
            this.b = new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f};
        }
    }
}
