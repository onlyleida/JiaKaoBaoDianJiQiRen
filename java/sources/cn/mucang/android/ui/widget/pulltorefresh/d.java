package cn.mucang.android.ui.widget.pulltorefresh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public class d extends FrameLayout implements Animation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation f9049a;
    private Animation b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Animation f9050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Animation f9051e;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9052a;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f9052a = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9052a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public d(Context context, PullToRefreshBase.Mode mode) {
        int i;
        int i2;
        super(context);
        this.c = new ImageView(context);
        Drawable drawable = getResources().getDrawable(R.drawable.indicator_arrow);
        this.c.setImageDrawable(drawable);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.indicator_internal_padding);
        this.c.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        addView(this.c);
        if (a.f9052a[mode.ordinal()] != 1) {
            i = R.anim.slide_in_from_top;
            i2 = R.anim.slide_out_to_top;
            setBackgroundResource(R.drawable.indicator_bg_top);
        } else {
            i = R.anim.slide_in_from_bottom;
            int i3 = R.anim.slide_out_to_bottom;
            setBackgroundResource(R.drawable.indicator_bg_bottom);
            this.c.setScaleType(ImageView.ScaleType.MATRIX);
            Matrix matrix = new Matrix();
            matrix.setRotate(180.0f, drawable.getIntrinsicWidth() / 2.0f, drawable.getIntrinsicHeight() / 2.0f);
            this.c.setImageMatrix(matrix);
            i2 = i3;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i);
        this.f9049a = animationLoadAnimation;
        animationLoadAnimation.setAnimationListener(this);
        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, i2);
        this.b = animationLoadAnimation2;
        animationLoadAnimation2.setAnimationListener(this);
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        RotateAnimation rotateAnimation = new RotateAnimation(BitmapDescriptorFactory.HUE_RED, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f9050d = rotateAnimation;
        rotateAnimation.setInterpolator(linearInterpolator);
        rotateAnimation.setDuration(150L);
        rotateAnimation.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, BitmapDescriptorFactory.HUE_RED, 1, 0.5f, 1, 0.5f);
        this.f9051e = rotateAnimation2;
        rotateAnimation2.setInterpolator(linearInterpolator);
        rotateAnimation2.setDuration(150L);
        rotateAnimation2.setFillAfter(true);
    }

    public void a() {
        startAnimation(this.b);
    }

    public final boolean b() {
        Animation animation = getAnimation();
        if (animation != null) {
            return this.f9049a == animation;
        }
        return getVisibility() == 0;
    }

    public void c() {
        this.c.startAnimation(this.f9051e);
    }

    public void d() {
        this.c.startAnimation(this.f9050d);
    }

    public void e() {
        this.c.clearAnimation();
        startAnimation(this.f9049a);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (animation == this.b) {
            this.c.clearAnimation();
            setVisibility(8);
        } else if (animation == this.f9049a) {
            setVisibility(0);
        }
        clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        setVisibility(0);
    }
}
