package cn.mucang.android.ui.widget.pulltorefresh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.amap.mapcore.AMapEngineUtils;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public class b extends e {
    private final Animation w;
    private final Animation x;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9048a;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f9048a = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9048a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        super(context, mode, orientation, typedArray);
        float f2 = mode == PullToRefreshBase.Mode.PULL_FROM_START ? AMapEngineUtils.MIN_LONGITUDE_DEGREE : 180;
        RotateAnimation rotateAnimation = new RotateAnimation(BitmapDescriptorFactory.HUE_RED, f2, 1, 0.5f, 1, 0.5f);
        this.w = rotateAnimation;
        Interpolator interpolator = e.v;
        rotateAnimation.setInterpolator(interpolator);
        rotateAnimation.setDuration(150L);
        rotateAnimation.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(f2, BitmapDescriptorFactory.HUE_RED, 1, 0.5f, 1, 0.5f);
        this.x = rotateAnimation2;
        rotateAnimation2.setInterpolator(interpolator);
        rotateAnimation2.setDuration(150L);
        rotateAnimation2.setFillAfter(true);
    }

    private float getDrawableRotationAngle() {
        int i = a.f9048a[this.i.ordinal()];
        if (i == 1) {
            return this.j == PullToRefreshBase.Orientation.HORIZONTAL ? 90.0f : 180.0f;
        }
        if (i == 2 && this.j == PullToRefreshBase.Orientation.HORIZONTAL) {
            return 270.0f;
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void c(Drawable drawable) {
        if (drawable != null) {
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            ViewGroup.LayoutParams layoutParams = this.b.getLayoutParams();
            int iMax = Math.max(intrinsicHeight, intrinsicWidth);
            layoutParams.height = iMax;
            layoutParams.width = iMax;
            this.b.requestLayout();
            this.b.setScaleType(ImageView.ScaleType.MATRIX);
            Matrix matrix = new Matrix();
            matrix.postTranslate((layoutParams.width - intrinsicWidth) / 2.0f, (layoutParams.height - intrinsicHeight) / 2.0f);
            matrix.postRotate(getDrawableRotationAngle(), layoutParams.width / 2.0f, layoutParams.height / 2.0f);
            this.b.setImageMatrix(matrix);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void e(float f2) {
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void g() {
        if (this.w == this.b.getAnimation()) {
            this.b.startAnimation(this.x);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected int getDefaultDrawableResId() {
        return R.drawable.default_ptr_flip;
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void i() {
        this.b.clearAnimation();
        this.b.setVisibility(4);
        this.f9054d.setVisibility(0);
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void k() {
        this.b.startAnimation(this.w);
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.e
    protected void m() {
        this.b.clearAnimation();
        this.f9054d.setVisibility(8);
        this.b.setVisibility(0);
    }
}
