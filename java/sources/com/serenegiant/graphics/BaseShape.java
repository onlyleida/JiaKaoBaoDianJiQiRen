package com.serenegiant.graphics;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.shapes.Shape;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class BaseShape extends Shape {
    private static final boolean DEBUG = false;
    protected float mPivotX;
    protected float mPivotY;
    protected float mRotation;
    protected float mScaleX;
    protected float mScaleY;
    protected final float mStdHeight;
    protected final float mStdHeight2;
    protected final float mStdWidth;
    protected final float mStdWidth2;
    protected final String TAG = getClass().getSimpleName();
    protected final RectF mBoundsRect = new RectF();
    final Paint debugPaint = new Paint();

    public BaseShape(float f2, float f3) {
        this.mStdWidth = f2;
        this.mStdHeight = f3;
        this.mStdWidth2 = f2 / 2.0f;
        this.mStdHeight2 = f3 / 2.0f;
    }

    protected final RectF boundsRect() {
        return this.mBoundsRect;
    }

    protected void doDraw(Canvas canvas, Paint paint) {
        canvas.drawRect(this.mBoundsRect, paint);
    }

    @Override // android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        int iSave = canvas.save();
        canvas.translate(this.mPivotX, this.mPivotY);
        canvas.rotate(this.mRotation);
        canvas.scale(this.mScaleX, this.mScaleY);
        canvas.translate(-this.mStdWidth2, -this.mStdHeight2);
        doDraw(canvas, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.shapes.Shape
    @TargetApi(21)
    public void getOutline(Outline outline) {
        RectF rectFBoundsRect = boundsRect();
        outline.setRect((int) Math.ceil(rectFBoundsRect.left), (int) Math.ceil(rectFBoundsRect.top), (int) Math.floor(rectFBoundsRect.right), (int) Math.floor(rectFBoundsRect.bottom));
    }

    public float getRotation() {
        return this.mRotation;
    }

    public float getScaleX() {
        return this.mScaleX;
    }

    public float getScaleY() {
        return this.mScaleY;
    }

    @Override // android.graphics.drawable.shapes.Shape
    protected void onResize(float f2, float f3) {
        this.mBoundsRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, f3);
        this.mScaleX = f2 / this.mStdWidth;
        this.mScaleY = f3 / this.mStdHeight;
        this.mPivotX = f2 / 2.0f;
        this.mPivotY = f3 / 2.0f;
    }

    public void setRotation(float f2) {
        this.mRotation = f2;
    }

    @Override // android.graphics.drawable.shapes.Shape
    public BaseShape clone() throws CloneNotSupportedException {
        BaseShape baseShape = (BaseShape) super.clone();
        baseShape.mBoundsRect.set(this.mBoundsRect);
        return baseShape;
    }
}
