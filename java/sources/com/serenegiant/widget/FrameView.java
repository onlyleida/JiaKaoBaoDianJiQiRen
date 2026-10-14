package com.serenegiant.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.common.R;

/* JADX INFO: loaded from: classes6.dex */
public class FrameView extends View {
    private static final float DEFAULT_FRAME_WIDTH_DP = 3.0f;
    public static final int FRAME_TYPE_CIRCLE = 4;
    public static final int FRAME_TYPE_CIRCLE_2 = 6;
    public static final int FRAME_TYPE_CROSS_CIRCLE = 5;
    public static final int FRAME_TYPE_CROSS_CIRCLE2 = 7;
    public static final int FRAME_TYPE_CROSS_FULL = 2;
    public static final int FRAME_TYPE_CROSS_QUARTER = 3;
    public static final int FRAME_TYPE_FRAME = 1;
    public static final int FRAME_TYPE_NONE = 0;
    public static final int FRAME_TYPE_NUMS = 8;
    public static final float MAX_SCALE = 10.0f;
    public static final int SCALE_TYPE_INCH = 1;
    public static final int SCALE_TYPE_MM = 2;
    public static final int SCALE_TYPE_NONE = 0;
    public static final int SCALE_TYPE_NUMS = 3;
    private static final String TAG = FrameView.class.getSimpleName();
    private final float defaultFrameWidth;
    private final RectF mBoundsRect;
    private float mCenterX;
    private float mCenterY;
    private int mFrameColor;
    private int mFrameType;
    private float mFrameWidth;
    private float mHeight;
    private final Paint mPaint;
    private float mRadius;
    private float mRadius2;
    private float mRadius4;
    private float mRadiusQ;
    private float mRotation;
    private float mScale;
    private int mScaleColor;
    private int mScaleType;
    private float mScaleWidth;
    private int mTickColor;
    private float mWidth;
    private final DisplayMetrics metrics;

    public FrameView(Context context) {
        this(context, null, 0);
    }

    private void draw_scale_full(Canvas canvas, float f2, float f3, float f4, float f5, int i) {
        float f6 = this.mCenterX;
        float f7 = this.mCenterY;
        float f8 = this.mScaleWidth;
        float f9 = this.defaultFrameWidth;
        float f10 = f8 > f9 ? 4.0f * f8 : 4.0f * f9;
        float f11 = f8 > f9 ? f8 * 2.0f : f9 * 2.0f;
        float f12 = f2 / 2.0f;
        float f13 = f3 / 2.0f;
        int i2 = (int) (f12 / f4);
        int i3 = (int) (f13 / f5);
        canvas.drawLine(f6, f7 - f13, f6, f7 + f13, this.mPaint);
        canvas.drawLine(f6 - f12, f7, f6 + f12, f7, this.mPaint);
        this.mPaint.setColor(this.mTickColor);
        for (int i4 = 0; i4 < i2; i4++) {
            float f14 = i4 % i == 0 ? f10 : f11;
            float f15 = i4 * f4;
            float f16 = f6 + f15;
            float f17 = f7 - f14;
            float f18 = f7 + f14;
            canvas.drawLine(f16, f17, f16, f18, this.mPaint);
            float f19 = f6 - f15;
            canvas.drawLine(f19, f17, f19, f18, this.mPaint);
        }
        for (int i5 = 0; i5 < i3; i5++) {
            float f20 = i5 % i == 0 ? f10 : f11;
            float f21 = i5 * f5;
            float f22 = f7 + f21;
            float f23 = f6 - f20;
            float f24 = f6 + f20;
            canvas.drawLine(f23, f22, f24, f22, this.mPaint);
            float f25 = f7 - f21;
            canvas.drawLine(f23, f25, f24, f25, this.mPaint);
        }
        this.mPaint.setColor(this.mScaleColor);
    }

    public int getFrameColor() {
        return this.mFrameColor;
    }

    public int getFrameType() {
        return this.mFrameType;
    }

    public float getFrameWidth() {
        return this.mFrameWidth;
    }

    @Override // android.view.View
    public float getRotation() {
        return this.mRotation;
    }

    public float getScale() {
        return this.mScale;
    }

    public int getScaleColor() {
        return this.mScaleColor;
    }

    public int getScaleType() {
        return this.mScaleType;
    }

    public float getScaleWidth() {
        return this.mScaleWidth;
    }

    public int getTickColor() {
        return this.mTickColor;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mFrameType != 0) {
            this.mPaint.setStrokeWidth(this.mFrameWidth);
            this.mPaint.setColor(this.mFrameColor);
            canvas.drawRect(this.mBoundsRect, this.mPaint);
            this.mPaint.setStrokeWidth(this.mScaleWidth);
            this.mPaint.setColor(this.mScaleColor);
            float f2 = this.mCenterX;
            float f3 = this.mCenterY;
            float f4 = this.mRadius2;
            float f5 = this.mRadius4;
            int iSave = canvas.save();
            try {
                canvas.rotate(this.mRotation, f2, f3);
                float f6 = this.mScale;
                canvas.scale(f6, f6, f2, f3);
                switch (this.mFrameType) {
                    case 2:
                        int i = this.mScaleType;
                        if (i == 0) {
                            RectF rectF = this.mBoundsRect;
                            canvas.drawLine(f2, rectF.top, f2, rectF.bottom, this.mPaint);
                            RectF rectF2 = this.mBoundsRect;
                            canvas.drawLine(rectF2.left, f3, rectF2.right, f3, this.mPaint);
                        } else if (i == 1) {
                            float f7 = this.mWidth;
                            float f8 = this.mHeight;
                            DisplayMetrics displayMetrics = this.metrics;
                            draw_scale_full(canvas, f7, f8, displayMetrics.xdpi / 10.0f, displayMetrics.ydpi / 10.0f, 10);
                        } else if (i == 2) {
                            float f9 = this.mWidth;
                            float f10 = this.mHeight;
                            DisplayMetrics displayMetrics2 = this.metrics;
                            draw_scale_full(canvas, f9, f10, displayMetrics2.xdpi / 12.7f, displayMetrics2.ydpi / 12.7f, 5);
                        }
                        break;
                    case 3:
                        int i2 = this.mScaleType;
                        if (i2 == 0) {
                            canvas.drawLine(f2, f3 - f5, f2, f3 + f5, this.mPaint);
                            canvas.drawLine(f2 - f5, f3, f2 + f5, f3, this.mPaint);
                        } else if (i2 == 1) {
                            DisplayMetrics displayMetrics3 = this.metrics;
                            draw_scale_full(canvas, f4, f4, displayMetrics3.xdpi / 10.0f, displayMetrics3.ydpi / 10.0f, 10);
                        } else if (i2 == 2) {
                            DisplayMetrics displayMetrics4 = this.metrics;
                            draw_scale_full(canvas, f4, f4, displayMetrics4.xdpi / 12.7f, displayMetrics4.ydpi / 12.7f, 5);
                        }
                        break;
                    case 4:
                        canvas.drawCircle(this.mCenterX, f3, f5, this.mPaint);
                        break;
                    case 5:
                        int i3 = this.mScaleType;
                        if (i3 == 0) {
                            canvas.drawLine(f2, f3 - f5, f2, f3 + f5, this.mPaint);
                            canvas.drawLine(f2 - f5, f3, f2 + f5, f3, this.mPaint);
                        } else if (i3 == 1) {
                            DisplayMetrics displayMetrics5 = this.metrics;
                            draw_scale_full(canvas, f4, f4, displayMetrics5.xdpi / 10.0f, displayMetrics5.ydpi / 10.0f, 10);
                        } else if (i3 == 2) {
                            DisplayMetrics displayMetrics6 = this.metrics;
                            draw_scale_full(canvas, f4, f4, displayMetrics6.xdpi / 12.7f, displayMetrics6.ydpi / 12.7f, 5);
                        }
                        canvas.drawCircle(f2, f3, f5, this.mPaint);
                        break;
                    case 6:
                        canvas.drawCircle(f2, f3, f5 / 2.0f, this.mPaint);
                        canvas.drawCircle(f2, f3, f5, this.mPaint);
                        break;
                    case 7:
                        int i4 = this.mScaleType;
                        if (i4 == 0) {
                            canvas.drawLine(f2, f3 - f5, f2, f3 + f5, this.mPaint);
                            canvas.drawLine(f2 - f5, f3, f2 + f5, f3, this.mPaint);
                        } else if (i4 == 1) {
                            DisplayMetrics displayMetrics7 = this.metrics;
                            draw_scale_full(canvas, f4, f4, displayMetrics7.xdpi / 10.0f, displayMetrics7.ydpi / 10.0f, 10);
                        } else if (i4 == 2) {
                            DisplayMetrics displayMetrics8 = this.metrics;
                            draw_scale_full(canvas, f4, f4, displayMetrics8.xdpi / 12.7f, displayMetrics8.ydpi / 12.7f, 5);
                        }
                        canvas.drawCircle(f2, f3, f5 / 2.0f, this.mPaint);
                        canvas.drawCircle(f2, f3, f5, this.mPaint);
                        break;
                }
            } finally {
                canvas.restoreToCount(iSave);
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        float f2 = this.mFrameWidth / 2.0f;
        this.mBoundsRect.set(getPaddingLeft() + f2, getPaddingTop() + f2, (getWidth() - getPaddingRight()) - f2, (getHeight() - getPaddingBottom()) - f2);
        this.mCenterX = this.mBoundsRect.centerX();
        this.mCenterY = this.mBoundsRect.centerY();
        this.mWidth = this.mBoundsRect.width();
        float fHeight = this.mBoundsRect.height();
        this.mHeight = fHeight;
        float fMin = Math.min(this.mWidth, fHeight) * 0.9f;
        this.mRadius = fMin;
        this.mRadius2 = fMin / 2.0f;
        float f3 = fMin / 4.0f;
        this.mRadius4 = f3;
        this.mRadiusQ = (float) (((double) f3) / Math.sqrt(2.0d));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setFrameColor(int i) {
        int i2 = this.mFrameColor;
        if (i2 != i) {
            if (i2 == this.mScaleColor) {
                setScaleColor(i);
            }
            this.mFrameColor = i;
            postInvalidate();
        }
    }

    public void setFrameType(int i) {
        if (this.mFrameType == i || i < 0 || i >= 8) {
            return;
        }
        this.mFrameType = i;
        postInvalidate();
    }

    public void setFrameWidth(float f2) {
        if (f2 <= 1.0f) {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        float f3 = this.mFrameWidth;
        if (f3 == f2 || f2 < BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (f3 == this.mScaleWidth) {
            setScaleWidth(f2);
        }
        this.mFrameWidth = f2;
        postInvalidate();
    }

    @Override // android.view.View
    public void setRotation(float f2) {
        while (f2 > 360.0f) {
            f2 -= 360.0f;
        }
        while (f2 < -360.0f) {
            f2 += 360.0f;
        }
        if (this.mRotation != f2) {
            this.mRotation = f2;
            postInvalidate();
        }
    }

    public void setScale(float f2) {
        if (this.mScale == f2 || f2 <= BitmapDescriptorFactory.HUE_RED || f2 > 10.0f) {
            return;
        }
        this.mScale = f2;
        postInvalidate();
    }

    public void setScaleColor(int i) {
        int i2 = this.mScaleColor;
        if (i2 != i) {
            if (i2 == this.mTickColor) {
                setTickColor(i);
            }
            this.mScaleColor = i;
            postInvalidate();
        }
    }

    public void setScaleType(int i) {
        if (this.mScaleType == i || i < 0 || i >= 3) {
            return;
        }
        this.mScaleType = i;
        postInvalidate();
    }

    public void setScaleWidth(float f2) {
        if (f2 <= 1.0f) {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        if (this.mScaleWidth != f2) {
            this.mScaleWidth = f2;
            postInvalidate();
        }
    }

    public void setTickColor(int i) {
        if (this.mTickColor != i) {
            this.mTickColor = i;
            postInvalidate();
        }
    }

    public FrameView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FrameView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint();
        this.mPaint = paint;
        this.mBoundsRect = new RectF();
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.metrics = displayMetrics;
        float f2 = displayMetrics.density * 3.0f;
        this.defaultFrameWidth = f2;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FrameView, i, 0);
        this.mFrameType = typedArrayObtainStyledAttributes.getInt(R.styleable.FrameView_frame_type, 0);
        this.mFrameWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.FrameView_frame_width, f2);
        this.mFrameColor = typedArrayObtainStyledAttributes.getColor(R.styleable.FrameView_frame_color, -5131855);
        this.mScaleType = typedArrayObtainStyledAttributes.getInt(R.styleable.FrameView_scale_type, 0);
        this.mScaleWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.FrameView_scale_width, this.mFrameWidth);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.FrameView_scale_color, this.mFrameColor);
        this.mScaleColor = color;
        this.mTickColor = typedArrayObtainStyledAttributes.getColor(R.styleable.FrameView_tick_color, color);
        this.mRotation = typedArrayObtainStyledAttributes.getFloat(R.styleable.FrameView_scale_rotation, BitmapDescriptorFactory.HUE_RED);
        this.mScale = typedArrayObtainStyledAttributes.getFloat(R.styleable.FrameView_scale_scale, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        paint.setStyle(Paint.Style.STROKE);
    }
}
