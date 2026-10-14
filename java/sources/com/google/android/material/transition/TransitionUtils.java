package com.google.android.material.transition;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.view.View;
import androidx.transition.m;
import androidx.transition.q;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;

/* JADX INFO: loaded from: classes3.dex */
class TransitionUtils {
    private static final RectF transformAlphaRectF = new RectF();

    interface CanvasOperation {
        void run(Canvas canvas);
    }

    interface CornerSizeBinaryOperator {
        CornerSize apply(CornerSize cornerSize, CornerSize cornerSize2);
    }

    private TransitionUtils() {
    }

    static float calculateArea(RectF rectF) {
        return rectF.width() * rectF.height();
    }

    static ShapeAppearanceModel convertToRelativeCornerSizes(ShapeAppearanceModel shapeAppearanceModel, final RectF rectF) {
        return shapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.google.android.material.transition.TransitionUtils.1
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public CornerSize apply(CornerSize cornerSize) {
                return cornerSize instanceof RelativeCornerSize ? cornerSize : new RelativeCornerSize(cornerSize.getCornerSize(rectF) / rectF.height());
            }
        });
    }

    static Shader createColorShader(int i) {
        return new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, i, Shader.TileMode.CLAMP);
    }

    static <T> T defaultIfNull(T t, T t2) {
        return t != null ? t : t2;
    }

    static View findAncestorById(View view, int i) {
        String resourceName = view.getResources().getResourceName(i);
        while (view != null) {
            if (view.getId() != i) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    static View findDescendantOrAncestorById(View view, int i) {
        View viewFindViewById = view.findViewById(i);
        return viewFindViewById != null ? viewFindViewById : findAncestorById(view, i);
    }

    static RectF getLocationOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new RectF(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    static RectF getRelativeBounds(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    static Rect getRelativeBoundsRect(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    private static boolean isShapeAppearanceSignificant(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(rectF) == BitmapDescriptorFactory.HUE_RED && shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) == BitmapDescriptorFactory.HUE_RED && shapeAppearanceModel.getBottomRightCornerSize().getCornerSize(rectF) == BitmapDescriptorFactory.HUE_RED && shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(rectF) == BitmapDescriptorFactory.HUE_RED) ? false : true;
    }

    static float lerp(float f2, float f3, float f4) {
        return f2 + (f4 * (f3 - f2));
    }

    static float lerp(float f2, float f3, float f4, float f5, float f6) {
        if (f6 < f4) {
            return f2;
        }
        return f6 > f5 ? f3 : lerp(f2, f3, (f6 - f4) / (f5 - f4));
    }

    static void maybeAddTransition(q qVar, m mVar) {
        if (mVar != null) {
            qVar.g(mVar);
        }
    }

    static void maybeRemoveTransition(q qVar, m mVar) {
        if (mVar != null) {
            qVar.p(mVar);
        }
    }

    private static int saveLayerAlphaCompat(Canvas canvas, Rect rect, int i) {
        RectF rectF = transformAlphaRectF;
        rectF.set(rect);
        return Build.VERSION.SDK_INT >= 21 ? canvas.saveLayerAlpha(rectF, i) : canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i, 31);
    }

    static void transform(Canvas canvas, Rect rect, float f2, float f3, float f4, int i, CanvasOperation canvasOperation) {
        if (i <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(f2, f3);
        canvas.scale(f4, f4);
        if (i < 255) {
            saveLayerAlphaCompat(canvas, rect, i);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(iSave);
    }

    static ShapeAppearanceModel transformCornerSizes(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, CornerSizeBinaryOperator cornerSizeBinaryOperator) {
        return (isShapeAppearanceSignificant(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).toBuilder().setTopLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel2.getTopLeftCornerSize())).setTopRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel2.getTopRightCornerSize())).setBottomLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel2.getBottomLeftCornerSize())).setBottomRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomRightCornerSize(), shapeAppearanceModel2.getBottomRightCornerSize())).build();
    }

    static int lerp(int i, int i2, float f2, float f3, float f4) {
        if (f4 < f2) {
            return i;
        }
        return f4 > f3 ? i2 : (int) lerp(i, i2, (f4 - f2) / (f3 - f2));
    }

    static ShapeAppearanceModel lerp(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, final RectF rectF, final RectF rectF2, final float f2, final float f3, final float f4) {
        if (f4 < f2) {
            return shapeAppearanceModel;
        }
        return f4 > f3 ? shapeAppearanceModel2 : transformCornerSizes(shapeAppearanceModel, shapeAppearanceModel2, rectF, new CornerSizeBinaryOperator() { // from class: com.google.android.material.transition.TransitionUtils.2
            @Override // com.google.android.material.transition.TransitionUtils.CornerSizeBinaryOperator
            public CornerSize apply(CornerSize cornerSize, CornerSize cornerSize2) {
                return new AbsoluteCornerSize(TransitionUtils.lerp(cornerSize.getCornerSize(rectF), cornerSize2.getCornerSize(rectF2), f2, f3, f4));
            }
        });
    }
}
