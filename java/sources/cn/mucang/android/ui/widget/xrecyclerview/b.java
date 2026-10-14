package cn.mucang.android.ui.widget.xrecyclerview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class b extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinearLayout f9079a;
    private TextView b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressBar f9080d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9081e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9082f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9083g;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            b.this.setVisibleHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f9081e = 0;
        this.f9083g = i;
        a();
    }

    private void a() {
        this.f9079a = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.ui__widget_xrecyclerview_refresh_header, (ViewGroup) this, false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, 0);
        setLayoutParams(layoutParams);
        setPadding(0, 0, 0, 0);
        addView(this.f9079a, new LinearLayout.LayoutParams(-1, 0));
        this.b = (TextView) findViewById(R.id.refresh_status_textview);
        this.c = (ImageView) findViewById(R.id.refresh_image);
        this.f9080d = (ProgressBar) findViewById(R.id.loading_progress);
        int i = this.f9083g;
        if (i > 0) {
            this.c.setImageResource(i);
        }
        measure(-2, -2);
        this.f9082f = getMeasuredHeight();
    }

    private void d(int i) {
        e(i, null);
    }

    private void e(int i, Animator.AnimatorListener animatorListener) {
        f(i, animatorListener, new a());
    }

    private void f(int i, Animator.AnimatorListener animatorListener, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(getVisibleHeight(), i);
        valueAnimatorOfInt.setDuration(300L).start();
        if (animatorListener != null) {
            valueAnimatorOfInt.addListener(animatorListener);
        }
        valueAnimatorOfInt.addUpdateListener(animatorUpdateListener);
        valueAnimatorOfInt.start();
    }

    public void b(float f2) {
        if (getVisibleHeight() > 0 || f2 > BitmapDescriptorFactory.HUE_RED) {
            setVisibleHeight(((int) f2) + getVisibleHeight());
            if (this.f9081e <= 1) {
                if (getVisibleHeight() > this.f9082f) {
                    setState(1);
                } else {
                    setState(0);
                }
            }
        }
    }

    public boolean c() {
        boolean z;
        getVisibleHeight();
        if (getVisibleHeight() <= this.f9082f || this.f9081e >= 2) {
            z = false;
        } else {
            setState(2);
            z = true;
        }
        d(this.f9081e == 2 ? this.f9082f : 0);
        return z;
    }

    public int getState() {
        return this.f9081e;
    }

    public int getVisibleHeight() {
        return ((LinearLayout.LayoutParams) this.f9079a.getLayoutParams()).height;
    }

    public void setRefreshImageViewBg(int i) {
        ImageView imageView = this.c;
        if (imageView != null) {
            imageView.setBackgroundResource(i);
        }
    }

    public void setState(int i) {
        if (i == this.f9081e) {
            return;
        }
        if (i == 0) {
            this.b.setText(R.string.ui_framework__x_recycler_view_pull_refresh_label);
        } else if (i == 1) {
            this.b.setText(R.string.ui_framework__x_recycler_view_pull_refresh_release);
        } else if (i == 2) {
            if (this.c.getBackground() != null && (this.c.getBackground() instanceof AnimationDrawable)) {
                ((AnimationDrawable) this.c.getBackground()).start();
            }
            this.b.setText(R.string.ui_framework__x_recycler_view_pull_refresh_ing);
        } else if (i == 3) {
            if (this.c.getBackground() != null && (this.c.getBackground() instanceof AnimationDrawable)) {
                ((AnimationDrawable) this.c.getBackground()).stop();
            }
            this.b.setText(R.string.ui_framework__x_recycler_view_pull_refresh_complete);
        }
        if (this.f9083g > 0) {
            if (i == 0) {
                this.c.setVisibility(0);
                this.f9080d.setVisibility(8);
                ObjectAnimator.ofFloat(this.c, "rotation", -180.0f, BitmapDescriptorFactory.HUE_RED).setDuration(300L).start();
            } else if (i == 1) {
                ObjectAnimator.ofFloat(this.c, "rotation", BitmapDescriptorFactory.HUE_RED, -180.0f).setDuration(300L).start();
            } else if (i == 2) {
                this.f9080d.setVisibility(0);
                this.c.setVisibility(8);
            } else if (i == 3) {
                this.f9080d.setVisibility(8);
            }
        }
        this.f9081e = i;
    }

    public void setVisibleHeight(int i) {
        if (i < 0) {
            i = 0;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f9079a.getLayoutParams();
        layoutParams.height = i;
        this.f9079a.setLayoutParams(layoutParams);
    }
}
