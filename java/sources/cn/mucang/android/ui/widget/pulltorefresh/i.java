package cn.mucang.android.ui.widget.pulltorefresh;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class i extends e {
    private final boolean A;
    private final Animation w;
    private final Matrix x;
    private float y;
    private float z;

    public i(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        super(context, mode, orientation, typedArray);
        this.A = typedArray.getBoolean(R.styleable.PullToRefresh_ptrRotateDrawableWhilePulling, true);
        this.b.setScaleType(ImageView.ScaleType.MATRIX);
        Matrix matrix = new Matrix();
        this.x = matrix;
        this.b.setImageMatrix(matrix);
        RotateAnimation rotateAnimation = new RotateAnimation(BitmapDescriptorFactory.HUE_RED, 720.0f, 1, 0.5f, 1, 0.5f);
        this.w = rotateAnimation;
        rotateAnimation.setInterpolator(e.v);
        rotateAnimation.setDuration(1200L);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setRepeatMode(1);
    }

    private void p() {
        Matrix matrix = this.x;
        if (matrix != null) {
            matrix.reset();
            this.b.setImageMatrix(this.x);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    public void c(Drawable drawable) {
        if (drawable != null) {
            this.y = Math.round(drawable.getIntrinsicWidth() / 2.0f);
            this.z = Math.round(drawable.getIntrinsicHeight() / 2.0f);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void e(float f2) {
        this.x.setRotate(this.A ? f2 * 90.0f : Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(180.0f, (f2 * 360.0f) - 180.0f)), this.y, this.z);
        this.b.setImageMatrix(this.x);
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void g() {
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected int getDefaultDrawableResId() {
        return R.drawable.default_ptr_rotate;
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void i() {
        this.b.startAnimation(this.w);
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void k() {
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void m() {
        this.b.clearAnimation();
        p();
    }
}
