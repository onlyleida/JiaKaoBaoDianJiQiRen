package com.serenegiant.usb.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import com.serenegiant.widget.IAspectRatioView;

/* JADX INFO: loaded from: classes6.dex */
public class AspectRatioTextureView extends TextureView implements IAspectRatioView {
    private static final boolean DEBUG = true;
    private static final String TAG = "AbstractCameraView";
    private CameraViewInterface.Callback mCallback;
    private double mRequestedAspect;

    public AspectRatioTextureView(Context context) {
        this(context, null, 0);
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public double getAspectRatio() {
        return this.mRequestedAspect;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0058  */
    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        if (this.mRequestedAspect > 0.0d) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int i3 = size - paddingLeft;
            int i4 = size2 - paddingTop;
            double d2 = i3;
            double d3 = i4;
            double d4 = (this.mRequestedAspect / (d2 / d3)) - 1.0d;
            if (Math.abs(d4) > 0.01d) {
                if (d4 > 0.0d) {
                    i4 = (int) (d2 / this.mRequestedAspect);
                } else {
                    i3 = (int) (d3 * this.mRequestedAspect);
                }
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3 + paddingLeft, 1073741824);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4 + paddingTop, 1073741824);
            } else {
                iMakeMeasureSpec = i;
                iMakeMeasureSpec2 = i2;
            }
        } else {
            iMakeMeasureSpec = i;
            iMakeMeasureSpec2 = i2;
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public void setAspectRatio(double d2) {
        if (d2 < 0.0d) {
            throw new IllegalArgumentException();
        }
        if (this.mRequestedAspect != d2) {
            this.mRequestedAspect = d2;
            requestLayout();
        }
    }

    public AspectRatioTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRequestedAspect = -1.0d;
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public void setAspectRatio(int i, int i2) {
        setAspectRatio(((double) i) / ((double) i2));
    }
}
