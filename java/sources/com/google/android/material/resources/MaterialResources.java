package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.appcompat.a.a.a;
import androidx.appcompat.widget.q0;

/* JADX INFO: loaded from: classes3.dex */
public class MaterialResources {
    private MaterialResources() {
    }

    public static ColorStateList getColorStateList(Context context, TypedArray typedArray, int i) {
        int color;
        int resourceId;
        ColorStateList colorStateListC;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateListC = a.c(context, resourceId)) == null) {
            return (Build.VERSION.SDK_INT > 15 || (color = typedArray.getColor(i, -1)) == -1) ? typedArray.getColorStateList(i) : ColorStateList.valueOf(color);
        }
        return colorStateListC;
    }

    public static int getDimensionPixelSize(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i2);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static Drawable getDrawable(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable drawableD;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawableD = a.d(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawableD;
    }

    static int getIndexWithValue(TypedArray typedArray, int i, int i2) {
        return typedArray.hasValue(i) ? i : i2;
    }

    public static TextAppearance getTextAppearance(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new TextAppearance(context, resourceId);
    }

    public static ColorStateList getColorStateList(Context context, q0 q0Var, int i) {
        int iB;
        int iN;
        ColorStateList colorStateListC;
        if (q0Var.s(i) && (iN = q0Var.n(i, 0)) != 0 && (colorStateListC = a.c(context, iN)) != null) {
            return colorStateListC;
        }
        if (Build.VERSION.SDK_INT <= 15 && (iB = q0Var.b(i, -1)) != -1) {
            return ColorStateList.valueOf(iB);
        }
        return q0Var.c(i);
    }
}
