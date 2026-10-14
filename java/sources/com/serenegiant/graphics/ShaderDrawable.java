package com.serenegiant.graphics;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DrawFilter;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public class ShaderDrawable extends Drawable {
    private final DrawFilter mDrawFilter;
    private final Paint mPaint;
    private Shader mShader;

    public ShaderDrawable() {
        this(0, 0);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mShader != null) {
            int iSave = canvas.save();
            DrawFilter drawFilter = canvas.getDrawFilter();
            canvas.setDrawFilter(this.mDrawFilter);
            this.mPaint.setShader(this.mShader);
            canvas.drawPaint(this.mPaint);
            canvas.setDrawFilter(drawFilter);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @SuppressLint({"Override"})
    public ColorFilter getColorFilter() {
        return this.mPaint.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    public Shader getShader() {
        return this.mShader;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    public void setBounds(RectF rectF) {
        super.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public Shader setShader(Shader shader) {
        if (this.mShader != shader) {
            this.mShader = shader;
        }
        return shader;
    }

    public ShaderDrawable(int i) {
        this(i, 0);
    }

    public void setBounds(float f2, float f3, float f4, float f5) {
        super.setBounds((int) f2, (int) f3, (int) f4, (int) f5);
    }

    public ShaderDrawable(int i, int i2) {
        this.mPaint = new Paint();
        this.mDrawFilter = new PaintFlagsDrawFilter(i, i2);
    }
}
