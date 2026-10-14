package com.serenegiant.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.graphics.BitmapHelper;
import com.serenegiant.graphics.ShaderDrawable;

/* JADX INFO: loaded from: classes6.dex */
public class ColorPickerView extends View {
    private static final int BORDER_COLOR = -9539986;
    private static final float BORDER_WIDTH_PX = 1.0f;
    private static final int DEFAULT_HEIGHT = 100;
    private static final int DEFAULT_SELECTED_RADIUS = 8;
    private static final int DEFAULT_WIDTH = 100;
    private static final float PI = 3.1415927f;
    private static final float RECTANGLE_TRACKER_OFFSET_DP = 2.0f;
    private static final float SQRT2 = (float) Math.sqrt(2.0d);
    private static final int STATE_ALPHA = 2;
    private static final int STATE_COLOR = 1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_VAL = 3;
    private static final int TRACKER_COLOR = -14935012;
    private final int[] COLORS;
    private final float DENSITY;
    private final float[] HSV;
    private final float RECTANGLE_TRACKER_OFFSET;
    private final float SELECTED_RADIUS;
    private int center_x;
    private int center_y;
    private int mAlpha;
    private final ShaderDrawable mAlphaDrawable;
    private final Paint mAlphaPaint;
    private final RectF mAlphaRect;
    private final Shader mAlphaShader;
    private final Paint mBorderPaint;
    private int mColor;
    private ColorPickerListener mColorPickerListener;
    private final RectF mDrawingRect;
    private final Paint mGradientPaint;
    private float mHue;
    private final Paint mPaint;
    private float mSat;
    private final PointF mSelected;
    private final Paint mSelectionPaint;
    private final RectF mSelectionRect;
    private boolean mShowAlphaSlider;
    private boolean mShowSelectedColor;
    private boolean mShowValSlider;
    private final RectF mSliderRect;
    private int mState;
    private final Paint mTrackerPaint;
    private float mVal;
    private final Paint mValPaint;
    private final RectF mValRect;
    private int radius;
    private int radius2;
    private int slider_width;

    public interface ColorPickerListener {
        void onColorChanged(ColorPickerView colorPickerView, int i);
    }

    public ColorPickerView(Context context) {
        this(context, null, 0);
    }

    private final int HSVToColor(int i, float f2, float f3, float f4) {
        if (f2 >= 360.0f) {
            f2 = 359.99f;
        } else if (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        if (f3 > 1.0f) {
            f3 = 1.0f;
        } else if (f3 < BitmapDescriptorFactory.HUE_RED) {
            f3 = BitmapDescriptorFactory.HUE_RED;
        }
        if (f4 > 1.0f) {
            f4 = 1.0f;
        } else if (f4 < BitmapDescriptorFactory.HUE_RED) {
            f4 = BitmapDescriptorFactory.HUE_RED;
        }
        float[] fArr = this.HSV;
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f4;
        return Color.HSVToColor(i, fArr);
    }

    private final Point alphaToPoint(int i) {
        RectF rectF = this.mAlphaRect;
        float fWidth = rectF.width();
        return new Point((int) ((fWidth - ((i * fWidth) / 255.0f)) + rectF.left), (int) rectF.top);
    }

    private final void drawAlphaPanel(Canvas canvas) {
        if (this.mShowAlphaSlider) {
            RectF rectF = this.mAlphaRect;
            this.mBorderPaint.setColor(BORDER_COLOR);
            canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.mBorderPaint);
            this.mAlphaPaint.setShader(this.mAlphaShader);
            canvas.drawRect(rectF, this.mAlphaPaint);
            int iHSVToColor = HSVToColor(255, this.mHue, this.mSat, this.mVal);
            int iHSVToColor2 = HSVToColor(0, this.mHue, this.mSat, this.mVal);
            float f2 = rectF.left;
            float f3 = rectF.top;
            this.mAlphaPaint.setShader(new LinearGradient(f2, f3, rectF.right, f3, iHSVToColor, iHSVToColor2, Shader.TileMode.CLAMP));
            canvas.drawRect(rectF, this.mAlphaPaint);
            Point pointAlphaToPoint = alphaToPoint(this.mAlpha);
            drawTrackerHorizontal(canvas, pointAlphaToPoint.x, pointAlphaToPoint.y, rectF.height());
        }
    }

    private final void drawTrackerHorizontal(Canvas canvas, float f2, float f3, float f4) {
        float f5 = (this.DENSITY * 4.0f) / RECTANGLE_TRACKER_OFFSET_DP;
        RectF rectF = this.mSliderRect;
        rectF.left = f2 - f5;
        rectF.right = f2 + f5;
        float f6 = this.RECTANGLE_TRACKER_OFFSET;
        rectF.top = f3 - f6;
        rectF.bottom = f3 + f4 + f6;
        this.mTrackerPaint.setColor(-1842205);
        this.mTrackerPaint.setStyle(Paint.Style.FILL);
        canvas.drawRoundRect(this.mSliderRect, RECTANGLE_TRACKER_OFFSET_DP, RECTANGLE_TRACKER_OFFSET_DP, this.mTrackerPaint);
        this.mTrackerPaint.setColor(TRACKER_COLOR);
        this.mTrackerPaint.setStyle(Paint.Style.STROKE);
        canvas.drawRoundRect(this.mSliderRect, RECTANGLE_TRACKER_OFFSET_DP, RECTANGLE_TRACKER_OFFSET_DP, this.mTrackerPaint);
    }

    private final void drawTrackerVertical(Canvas canvas, float f2, float f3, float f4) {
        float f5 = (this.DENSITY * 4.0f) / RECTANGLE_TRACKER_OFFSET_DP;
        RectF rectF = this.mSliderRect;
        float f6 = this.RECTANGLE_TRACKER_OFFSET;
        rectF.left = f2 - f6;
        rectF.right = f2 + f4 + f6;
        rectF.top = f3 - f5;
        rectF.bottom = f3 + f5;
        this.mTrackerPaint.setColor(-1842205);
        this.mTrackerPaint.setStyle(Paint.Style.FILL);
        canvas.drawRoundRect(this.mSliderRect, RECTANGLE_TRACKER_OFFSET_DP, RECTANGLE_TRACKER_OFFSET_DP, this.mTrackerPaint);
        this.mTrackerPaint.setColor(TRACKER_COLOR);
        this.mTrackerPaint.setStyle(Paint.Style.STROKE);
        canvas.drawRoundRect(this.mSliderRect, RECTANGLE_TRACKER_OFFSET_DP, RECTANGLE_TRACKER_OFFSET_DP, this.mTrackerPaint);
    }

    private final void drawValPanel(Canvas canvas) {
        if (this.mShowValSlider) {
            RectF rectF = this.mValRect;
            this.mBorderPaint.setColor(BORDER_COLOR);
            canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.mBorderPaint);
            int iHSVToColor = HSVToColor(255, this.mHue, this.mSat, 1.0f);
            int iHSVToColor2 = HSVToColor(255, this.mHue, this.mSat, BitmapDescriptorFactory.HUE_RED);
            float f2 = rectF.left;
            this.mValPaint.setShader(new LinearGradient(f2, rectF.top, f2, rectF.bottom, iHSVToColor, iHSVToColor2, Shader.TileMode.CLAMP));
            canvas.drawRect(rectF, this.mValPaint);
            Point pointValToPoint = valToPoint(this.mVal);
            drawTrackerVertical(canvas, pointValToPoint.x, pointValToPoint.y, rectF.width());
        }
    }

    private final int pointToAlpha(int i) {
        int i2;
        RectF rectF = this.mAlphaRect;
        int iWidth = (int) rectF.width();
        float f2 = i;
        float f3 = rectF.left;
        if (f2 < f3) {
            i2 = 0;
        } else {
            i2 = f2 > rectF.right ? iWidth : i - ((int) f3);
        }
        return 255 - ((i2 * 255) / iWidth);
    }

    private final float pointToVal(float f2) {
        float f3;
        RectF rectF = this.mValRect;
        float fHeight = rectF.height();
        float f4 = rectF.top;
        if (f2 < f4) {
            f3 = BitmapDescriptorFactory.HUE_RED;
        } else {
            f3 = f2 > rectF.bottom ? fHeight : f2 - f4;
        }
        return 1.0f - ((f3 * 1.0f) / fHeight);
    }

    private final int[] setHueColorArray(int i, int[] iArr) {
        int length = iArr.length;
        float f2 = 360.0f;
        float f3 = 360.0f / length;
        float[] fArr = this.HSV;
        fArr[1] = 1.0f;
        fArr[2] = this.mVal;
        for (int i2 = 0; f2 >= 0.0d && i2 < length; i2++) {
            float[] fArr2 = this.HSV;
            fArr2[0] = f2;
            iArr[i2] = Color.HSVToColor(i, fArr2);
            f2 -= f3;
        }
        float[] fArr3 = this.HSV;
        fArr3[0] = 0.0f;
        iArr[length - 1] = Color.HSVToColor(i, fArr3);
        return iArr;
    }

    private final void setUpValRect() {
        if (this.mShowValSlider) {
            RectF rectF = this.mDrawingRect;
            RectF rectF2 = this.mValRect;
            float f2 = rectF.right;
            int i = this.slider_width;
            float f3 = (f2 - i) + 1.0f;
            float f4 = rectF.top + 1.0f;
            float f5 = this.RECTANGLE_TRACKER_OFFSET;
            rectF2.set(f3, f4 + f5, (f2 - 1.0f) - f5, (rectF.bottom - 1.0f) - (this.mShowAlphaSlider ? i + 16 : 0));
        }
    }

    private void setupAlphaRect() {
        if (this.mShowAlphaSlider) {
            RectF rectF = this.mDrawingRect;
            RectF rectF2 = this.mAlphaRect;
            float f2 = rectF.left + 1.0f;
            float f3 = rectF.bottom;
            int i = this.slider_width;
            rectF2.set(f2, (f3 - i) + 1.0f, (rectF.right - i) - 1.0f, (f3 - 1.0f) - this.RECTANGLE_TRACKER_OFFSET);
        }
    }

    private final boolean trackAlpha(float f2, float f3) {
        int iPointToAlpha;
        if (!this.mShowAlphaSlider || this.mAlpha == (iPointToAlpha = pointToAlpha((int) f2))) {
            return false;
        }
        setColor(iPointToAlpha, this.mHue, this.mSat, this.mVal, true);
        return true;
    }

    private final boolean trackVal(float f2, float f3) {
        float fPointToVal = pointToVal(f3);
        if (this.mVal == fPointToVal) {
            return false;
        }
        setColor(this.mAlpha, this.mHue, this.mSat, fPointToVal, true);
        return true;
    }

    private final Point valToPoint(float f2) {
        RectF rectF = this.mValRect;
        float fHeight = rectF.height();
        Point point = new Point();
        point.y = (int) ((fHeight - (f2 * fHeight)) + rectF.top);
        point.x = (int) rectF.left;
        return point;
    }

    public int getColor() {
        return this.mColor;
    }

    public ColorPickerListener getColorPickerListener() {
        return this.mColorPickerListener;
    }

    public float getHue() {
        return this.mHue;
    }

    public float getSat() {
        return this.mSat;
    }

    public boolean getShowSelectedColor() {
        return this.mShowSelectedColor;
    }

    public float getVal() {
        return this.mVal;
    }

    protected void internalSetColor(int i, boolean z) {
        int iAlpha = Color.alpha(i);
        Color.RGBToHSV(Color.red(i), Color.green(i), Color.blue(i), this.HSV);
        float[] fArr = this.HSV;
        setColor(iAlpha, fArr[0], fArr[1], fArr[2], z);
    }

    public boolean isShowAlpha() {
        return this.mShowAlphaSlider;
    }

    public boolean isShowVal() {
        return this.mShowValSlider;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.mSelectionPaint.setStyle(Paint.Style.FILL);
        if (this.mShowSelectedColor) {
            this.mSelectionPaint.setShader(this.mAlphaShader);
            canvas.drawArc(this.mSelectionRect, BitmapDescriptorFactory.HUE_RED, 90.0f, true, this.mSelectionPaint);
            this.mSelectionPaint.setShader(null);
            this.mSelectionPaint.setColor(this.mColor);
            canvas.drawArc(this.mSelectionRect, BitmapDescriptorFactory.HUE_RED, 90.0f, true, this.mSelectionPaint);
        }
        int iSave = canvas.save();
        try {
            canvas.translate(this.center_x, this.center_y);
            this.mSelectionPaint.setShader(this.mAlphaShader);
            canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.radius, this.mSelectionPaint);
            canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.radius, this.mPaint);
            canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.radius, this.mGradientPaint);
            canvas.restoreToCount(iSave);
            this.mSelectionPaint.setShader(null);
            this.mSelectionPaint.setColor((~this.mColor) | ViewCompat.MEASURED_STATE_MASK);
            this.mSelectionPaint.setStyle(Paint.Style.STROKE);
            PointF pointF = this.mSelected;
            canvas.drawCircle(pointF.x, pointF.y, this.SELECTED_RADIUS, this.mSelectionPaint);
            drawAlphaPanel(canvas);
            drawValPanel(canvas);
        } catch (Throwable th) {
            canvas.restoreToCount(iSave);
            throw th;
        }
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        this.mDrawingRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
        int iMin = Math.min(width, height);
        int i5 = iMin / 10;
        this.slider_width = i5;
        if (i5 < 32) {
            this.slider_width = (int) (this.DENSITY * 32.0f);
        }
        int i6 = this.slider_width;
        int i7 = (iMin - (((int) (this.DENSITY * 16.0f)) + i6)) >>> 1;
        this.radius = i7;
        this.radius2 = i7 * i7;
        int i8 = (width - (this.mShowValSlider ? i6 : 0)) >>> 1;
        this.center_x = i8;
        if (!this.mShowAlphaSlider) {
            i6 = 0;
        }
        int i9 = (height - i6) >>> 1;
        this.center_y = i9;
        int iSqrt = ((int) Math.sqrt((i8 * i8) + (i9 * i9))) - this.radius;
        float f2 = -iSqrt;
        float f3 = iSqrt;
        this.mSelectionRect.set(f2, f2, f3, f3);
        this.mGradientPaint.setShader(new RadialGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.radius, -1, ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.CLAMP));
        setupAlphaRect();
        setUpValRect();
        setColor(this.mAlpha, this.mHue, this.mSat, this.mVal, true);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == 0) {
            size = 100;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, mode);
        if (mode2 == 0) {
            size2 = 100;
        }
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, mode2);
        setMeasuredDimension(iMakeMeasureSpec, iMakeMeasureSpec2);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ColorPickerListener colorPickerListener;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float f2 = x - this.center_x;
        float f3 = y - this.center_y;
        float f4 = (f2 * f2) + (f3 * f3);
        boolean zTrackAlpha = false;
        boolean z = f4 <= ((float) this.radius2);
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                ColorPickerListener colorPickerListener2 = this.mColorPickerListener;
                if (colorPickerListener2 != null) {
                    colorPickerListener2.onColorChanged(this, this.mColor);
                }
                this.mState = 0;
            } else if (action == 2) {
            }
            return true;
        }
        if (z) {
            this.mState = 1;
        } else if (this.mAlphaRect.contains(x, y)) {
            this.mState = 2;
        } else {
            if (!this.mValRect.contains(x, y)) {
                return false;
            }
            this.mState = 3;
        }
        int i = this.mState;
        if (i == 1) {
            float fAtan2 = ((float) Math.atan2(f3, f2)) / 6.2831855f;
            if (fAtan2 < BitmapDescriptorFactory.HUE_RED) {
                fAtan2 += 1.0f;
            }
            setColor(this.mAlpha, 360.0f - (fAtan2 * 360.0f), ((float) Math.sqrt(f4)) / this.radius, this.mVal, true);
            zTrackAlpha = true;
        } else if (i == 2) {
            zTrackAlpha = trackAlpha(x, y);
            if (zTrackAlpha) {
                setHueColorArray(this.mAlpha, this.COLORS);
                this.mPaint.setShader(new SweepGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.COLORS, (float[]) null));
            }
        } else if (i == 3 && (zTrackAlpha = trackVal(x, y))) {
            setHueColorArray(this.mAlpha, this.COLORS);
            this.mPaint.setShader(new SweepGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.COLORS, (float[]) null));
        }
        if (zTrackAlpha && (colorPickerListener = this.mColorPickerListener) != null) {
            colorPickerListener.onColorChanged(this, this.mColor);
        }
        return true;
    }

    public void setColor(int i) {
        internalSetColor(i, true);
    }

    public void setColorPickerListener(ColorPickerListener colorPickerListener) {
        this.mColorPickerListener = colorPickerListener;
    }

    public void setShowSelectedColor(boolean z) {
        this.mShowSelectedColor = z;
    }

    public void setShowVal(boolean z) {
        if (this.mShowValSlider != z) {
            this.mShowValSlider = z;
            postInvalidate();
        }
    }

    public void showAlpha(boolean z) {
        if (this.mShowAlphaSlider != z) {
            this.mShowAlphaSlider = z;
            postInvalidate();
        }
    }

    public ColorPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected void setColor(int i, float f2, float f3, float f4, boolean z) {
        if (f3 > 1.0f) {
            f3 = 1.0f;
        }
        if (!z && this.mAlpha == i && this.mHue == f2 && this.mSat == f3 && this.mVal == f4) {
            return;
        }
        this.mAlpha = i;
        this.mHue = f2;
        this.mSat = f3;
        this.mVal = f4;
        this.mColor = HSVToColor(i, f2, f3, f4);
        int i2 = this.radius;
        if (i2 > 0) {
            float f5 = i2 * f3;
            double d2 = (f2 / 180.0f) * PI;
            this.mSelected.set(this.center_x + (((float) Math.cos(d2)) * f5), this.center_y - (f5 * ((float) Math.sin(d2))));
            postInvalidate();
        }
    }

    public ColorPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mShowAlphaSlider = true;
        this.mShowValSlider = true;
        this.mShowSelectedColor = true;
        int[] iArr = new int[360];
        this.COLORS = iArr;
        this.HSV = new float[3];
        this.mDrawingRect = new RectF();
        this.mBorderPaint = new Paint();
        Paint paint = new Paint();
        this.mTrackerPaint = paint;
        Paint paint2 = new Paint(1);
        this.mPaint = paint2;
        this.mGradientPaint = new Paint(1);
        Paint paint3 = new Paint(1);
        this.mSelectionPaint = paint3;
        this.mSelectionRect = new RectF();
        this.mSelected = new PointF();
        this.mSliderRect = new RectF();
        this.mAlphaPaint = new Paint();
        this.mAlphaRect = new RectF();
        this.mValPaint = new Paint();
        this.mValRect = new RectF();
        this.mState = 0;
        this.slider_width = 32;
        this.mColor = -1;
        this.mAlpha = 255;
        this.mVal = BitmapDescriptorFactory.HUE_RED;
        this.mHue = 360.0f;
        this.mSat = BitmapDescriptorFactory.HUE_RED;
        float f2 = context.getResources().getDisplayMetrics().density;
        this.DENSITY = f2;
        this.RECTANGLE_TRACKER_OFFSET = f2 * RECTANGLE_TRACKER_OFFSET_DP;
        this.SELECTED_RADIUS = 8.0f * f2;
        Bitmap bitmapMakeCheckBitmap = BitmapHelper.makeCheckBitmap();
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(bitmapMakeCheckBitmap, tileMode, tileMode);
        this.mAlphaShader = bitmapShader;
        ShaderDrawable shaderDrawable = new ShaderDrawable(6, 0);
        this.mAlphaDrawable = shaderDrawable;
        shaderDrawable.setShader(bitmapShader);
        this.radius = 0;
        internalSetColor(this.mColor, false);
        setHueColorArray(this.mAlpha, iArr);
        paint2.setShader(new SweepGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, iArr, (float[]) null));
        paint2.setStyle(Paint.Style.FILL);
        paint2.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        paint3.setColor(this.mColor);
        paint3.setStrokeWidth(5.0f);
        paint.setColor(TRACKER_COLOR);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f2 * RECTANGLE_TRACKER_OFFSET_DP);
        paint.setAntiAlias(true);
    }
}
