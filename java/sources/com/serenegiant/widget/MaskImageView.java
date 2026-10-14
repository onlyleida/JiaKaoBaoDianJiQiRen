package com.serenegiant.widget;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class MaskImageView extends AppCompatImageView {
    private final Paint mCopyPaint;
    private final Rect mMaskBounds;
    private Drawable mMaskDrawable;
    private final Paint mMaskedPaint;
    private final RectF mViewBoundsF;

    public MaskImageView(Context context) {
        this(context, null, 0);
    }

    @Override // android.widget.ImageView, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        int iSaveLayer = canvas.saveLayer(this.mViewBoundsF, this.mCopyPaint, 31);
        try {
            Drawable drawable = this.mMaskDrawable;
            if (drawable != null) {
                drawable.draw(canvas);
                canvas.saveLayer(this.mViewBoundsF, this.mMaskedPaint, 0);
            }
            super.onDraw(canvas);
            canvas.restoreToCount(iSaveLayer);
        } catch (Throwable th) {
            canvas.restoreToCount(iSaveLayer);
            throw th;
        }
    }

    @Override // android.view.View
    protected synchronized void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != 0 && i2 != 0) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int iMin = Math.min((i - paddingLeft) - getPaddingRight(), (i2 - paddingTop) - getPaddingBottom());
            int i5 = ((i - iMin) / 2) + paddingLeft;
            int i6 = ((i2 - iMin) / 2) + paddingTop;
            this.mMaskBounds.set(i5, i6, i5 + iMin, i6 + iMin);
            if (iMin > 3) {
                this.mMaskedPaint.setMaskFilter(new BlurMaskFilter((iMin * 2) / 3.0f, BlurMaskFilter.Blur.NORMAL));
            }
            this.mViewBoundsF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, i2);
            Drawable drawable = this.mMaskDrawable;
            if (drawable != null) {
                drawable.setBounds(this.mMaskBounds);
            }
        }
    }

    public synchronized void setMaskDrawable(Drawable drawable) {
        if (this.mMaskDrawable != drawable) {
            this.mMaskDrawable = drawable;
            if (drawable != null) {
                drawable.setBounds(this.mMaskBounds);
            }
            postInvalidate();
        }
    }

    public MaskImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaskImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint();
        this.mMaskedPaint = paint;
        this.mCopyPaint = new Paint();
        this.mMaskBounds = new Rect();
        this.mViewBoundsF = new RectF();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.mMaskDrawable = null;
    }
}
