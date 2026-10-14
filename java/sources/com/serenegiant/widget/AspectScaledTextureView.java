package com.serenegiant.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.util.Log;
import android.view.TextureView;
import android.view.View;
import com.serenegiant.common.R;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
public class AspectScaledTextureView extends TextureView implements TextureView.SurfaceTextureListener, IAspectRatioView, IScaledView, ITextureView {
    private static final String TAG = AspectScaledTextureView.class.getSimpleName();
    private volatile boolean mHasSurface;
    protected final Matrix mImageMatrix;
    private final Set<TextureView.SurfaceTextureListener> mListeners;
    private double mRequestedAspect;
    private int mScaleMode;
    private TextureView.SurfaceTextureListener mSurfaceTextureListener;
    private int prevHeight;
    private int prevWidth;

    public AspectScaledTextureView(Context context) {
        this(context, null, 0);
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public double getAspectRatio() {
        return this.mRequestedAspect;
    }

    @Override // com.serenegiant.widget.IScaledView
    public int getScaleMode() {
        return this.mScaleMode;
    }

    protected void init() {
        int width = getWidth();
        int height = getHeight();
        this.mImageMatrix.reset();
        if (this.mScaleMode == 2) {
            double d2 = height;
            double d3 = this.mRequestedAspect * d2;
            double d4 = width;
            double dMax = Math.max(d4 / d3, d2 / d2);
            this.mImageMatrix.postScale((float) ((d3 * dMax) / d4), (float) ((dMax * d2) / d2), width / 2, height / 2);
        }
        setTransform(this.mImageMatrix);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.prevWidth != getWidth() || this.prevHeight != getHeight()) {
            this.prevWidth = getWidth();
            int height = getHeight();
            this.prevHeight = height;
            onResize(this.prevWidth, height);
        }
        init();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x005c  */
    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        if (this.mRequestedAspect <= 0.0d || this.mScaleMode != 0) {
            iMakeMeasureSpec = i;
            iMakeMeasureSpec2 = i2;
        } else {
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
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    protected void onResize(int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.mHasSurface = true;
        init();
        for (TextureView.SurfaceTextureListener surfaceTextureListener : this.mListeners) {
            try {
                surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, i, i2);
            } catch (Exception e2) {
                this.mListeners.remove(surfaceTextureListener);
                Log.w(TAG, e2);
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.mHasSurface = false;
        for (TextureView.SurfaceTextureListener surfaceTextureListener : this.mListeners) {
            try {
                surfaceTextureListener.onSurfaceTextureDestroyed(surfaceTexture);
            } catch (Exception e2) {
                this.mListeners.remove(surfaceTextureListener);
                Log.w(TAG, e2);
            }
        }
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        for (TextureView.SurfaceTextureListener surfaceTextureListener : this.mListeners) {
            try {
                surfaceTextureListener.onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
            } catch (Exception e2) {
                this.mListeners.remove(surfaceTextureListener);
                Log.w(TAG, e2);
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        for (TextureView.SurfaceTextureListener surfaceTextureListener : this.mListeners) {
            try {
                surfaceTextureListener.onSurfaceTextureUpdated(surfaceTexture);
            } catch (Exception e2) {
                this.mListeners.remove(surfaceTextureListener);
                Log.w(TAG, e2);
            }
        }
    }

    @Override // com.serenegiant.widget.ITextureView
    public void register(TextureView.SurfaceTextureListener surfaceTextureListener) {
        if (surfaceTextureListener != null) {
            this.mListeners.add(surfaceTextureListener);
        }
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public void setAspectRatio(double d2) {
        if (this.mRequestedAspect != d2) {
            this.mRequestedAspect = d2;
            requestLayout();
        }
    }

    @Override // com.serenegiant.widget.IScaledView
    public void setScaleMode(int i) {
        if (this.mScaleMode != i) {
            this.mScaleMode = i;
            requestLayout();
        }
    }

    @Override // android.view.TextureView
    public final void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        unregister(this.mSurfaceTextureListener);
        this.mSurfaceTextureListener = surfaceTextureListener;
        register(surfaceTextureListener);
    }

    @Override // com.serenegiant.widget.ITextureView
    public void unregister(TextureView.SurfaceTextureListener surfaceTextureListener) {
        this.mListeners.remove(surfaceTextureListener);
    }

    public AspectScaledTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectScaledTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mImageMatrix = new Matrix();
        this.mScaleMode = 0;
        this.mRequestedAspect = -1.0d;
        this.mListeners = new CopyOnWriteArraySet();
        this.prevWidth = -1;
        this.prevHeight = -1;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AspectScaledTextureView, i, 0);
        try {
            this.mRequestedAspect = typedArrayObtainStyledAttributes.getFloat(R.styleable.AspectScaledTextureView_aspect_ratio, -1.0f);
            this.mScaleMode = typedArrayObtainStyledAttributes.getInt(R.styleable.AspectScaledTextureView_scale_mode, 0);
            typedArrayObtainStyledAttributes.recycle();
            super.setSurfaceTextureListener(this);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // com.serenegiant.widget.IAspectRatioView
    public void setAspectRatio(int i, int i2) {
        setAspectRatio(((double) i) / ((double) i2));
    }
}
