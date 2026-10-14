package com.amap.api.maps;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class SwipeDismissTouchListener implements View.OnTouchListener {
    public static final int A_HALF = 2;
    public static final int MIN_VIEW_WIDTH = 2;
    public static final int ONE_THIRD = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11496a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f11497d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f11498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DismissCallbacks f11499f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11500g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f11501h;
    private float i;
    private boolean j;
    private int k;
    private Object l;
    private VelocityTracker m;
    private float n;
    private boolean o;
    private boolean p;

    public interface DismissCallbacks {
        boolean canDismiss(Object obj);

        void onDismiss(View view, Object obj);

        void onNotifySwipe();
    }

    public SwipeDismissTouchListener(View view, Object obj, DismissCallbacks dismissCallbacks) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.f11496a = viewConfiguration.getScaledTouchSlop();
        this.b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f11497d = view.getContext().getResources().getInteger(R.integer.config_shortAnimTime);
        this.f11498e = view;
        this.l = obj;
        this.f11499f = dismissCallbacks;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        motionEvent.offsetLocation(this.n, BitmapDescriptorFactory.HUE_RED);
        if (this.f11500g < 2) {
            this.f11500g = this.f11498e.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z2 = true;
        if (actionMasked == 0) {
            this.f11501h = motionEvent.getRawX();
            this.i = motionEvent.getRawY();
            if (this.f11499f.canDismiss(this.l)) {
                this.o = false;
                VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
                this.m = velocityTrackerObtain;
                velocityTrackerObtain.addMovement(motionEvent);
            }
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                VelocityTracker velocityTracker = this.m;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    float rawX = motionEvent.getRawX() - this.f11501h;
                    float rawY = motionEvent.getRawY() - this.i;
                    if (Math.abs(rawX) > this.f11496a && Math.abs(rawY) < Math.abs(rawX) / 2.0f) {
                        this.j = true;
                        this.k = rawX > BitmapDescriptorFactory.HUE_RED ? this.f11496a : -this.f11496a;
                        this.f11498e.getParent().requestDisallowInterceptTouchEvent(true);
                        if (!this.o) {
                            this.o = true;
                            this.f11499f.onNotifySwipe();
                        }
                        if (Math.abs(rawX) <= this.f11500g / 3) {
                            this.p = false;
                        } else if (!this.p) {
                            this.p = true;
                            this.f11499f.onNotifySwipe();
                        }
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        motionEventObtain.setAction((motionEvent.getActionIndex() << 8) | 3);
                        this.f11498e.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (this.j) {
                        this.n = rawX;
                        this.f11498e.setTranslationX(rawX - this.k);
                        this.f11498e.setAlpha(Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawX) * 2.0f) / this.f11500g))));
                        return true;
                    }
                }
            } else if (actionMasked == 3 && this.m != null) {
                this.f11498e.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f11497d).setListener(null);
                this.m.recycle();
                this.m = null;
                this.n = BitmapDescriptorFactory.HUE_RED;
                this.f11501h = BitmapDescriptorFactory.HUE_RED;
                this.i = BitmapDescriptorFactory.HUE_RED;
                this.j = false;
            }
        } else if (this.m != null) {
            float rawX2 = motionEvent.getRawX() - this.f11501h;
            this.m.addMovement(motionEvent);
            this.m.computeCurrentVelocity(1000);
            float xVelocity = this.m.getXVelocity();
            float fAbs = Math.abs(xVelocity);
            float fAbs2 = Math.abs(this.m.getYVelocity());
            if (Math.abs(rawX2) > this.f11500g / 2 && this.j) {
                z = rawX2 > BitmapDescriptorFactory.HUE_RED;
            } else if (this.b > fAbs || fAbs > this.c || fAbs2 >= fAbs || !this.j) {
                z = false;
                z2 = false;
            } else {
                z2 = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX2 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                z = this.m.getXVelocity() > BitmapDescriptorFactory.HUE_RED;
            }
            if (z2) {
                this.f11498e.animate().translationX(z ? this.f11500g : -this.f11500g).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(50L).setListener(new AnimatorListenerAdapter() { // from class: com.amap.api.maps.SwipeDismissTouchListener.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SwipeDismissTouchListener.this.a();
                    }
                });
            } else if (this.j) {
                this.f11498e.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f11497d).setListener(null);
            }
            this.m.recycle();
            this.m = null;
            this.n = BitmapDescriptorFactory.HUE_RED;
            this.f11501h = BitmapDescriptorFactory.HUE_RED;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.j = false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f11499f.onDismiss(this.f11498e, this.l);
        final ViewGroup.LayoutParams layoutParams = this.f11498e.getLayoutParams();
        final int height = this.f11498e.getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(this.f11497d);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.amap.api.maps.SwipeDismissTouchListener.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SwipeDismissTouchListener.this.f11498e.setAlpha(BitmapDescriptorFactory.HUE_RED);
                SwipeDismissTouchListener.this.f11498e.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                layoutParams.height = height;
                SwipeDismissTouchListener.this.f11498e.setLayoutParams(layoutParams);
            }
        });
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amap.api.maps.SwipeDismissTouchListener.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                SwipeDismissTouchListener.this.f11498e.setLayoutParams(layoutParams);
            }
        });
        duration.start();
    }
}
