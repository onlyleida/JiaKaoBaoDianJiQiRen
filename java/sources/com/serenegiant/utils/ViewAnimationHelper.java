package com.serenegiant.utils;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.util.Log;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.common.R;

/* JADX INFO: loaded from: classes6.dex */
public class ViewAnimationHelper {
    public static final int ANIMATION_FADE_IN = 1;
    public static final int ANIMATION_FADE_OUT = 0;
    public static final int ANIMATION_UNKNOWN = -1;
    public static final int ANIMATION_ZOOM_IN = 2;
    public static final int ANIMATION_ZOOM_OUT = 3;
    private static final long DEFAULT_DURATION_MS = 500;
    private static final String TAG = "ViewAnimationHelper";
    private static final Animator.AnimatorListener mAnimatorListener = new Animator.AnimatorListener() { // from class: com.serenegiant.utils.ViewAnimationHelper.5
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ViewAnimationHelper.onAnimation(animator, 2);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewAnimationHelper.onAnimation(animator, 1);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ViewAnimationHelper.onAnimation(animator, 0);
        }
    };

    public interface ViewAnimationListener {
        void onAnimationCancel(Animator animator, View view, int i);

        void onAnimationEnd(Animator animator, View view, int i);

        void onAnimationStart(Animator animator, View view, int i);
    }

    @SuppressLint({"NewApi"})
    public static void fadeIn(final View view, final long j, final long j2, final ViewAnimationListener viewAnimationListener) {
        if (view == null) {
            return;
        }
        view.postDelayed(new Runnable() { // from class: com.serenegiant.utils.ViewAnimationHelper.1
            @Override // java.lang.Runnable
            public void run() {
                view.setVisibility(0);
                view.setTag(R.id.anim_type, 1);
                view.setTag(R.id.anim_listener, viewAnimationListener);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f);
                objectAnimatorOfFloat.addListener(ViewAnimationHelper.mAnimatorListener);
                if (BuildCheck.isJellyBeanMR2()) {
                    objectAnimatorOfFloat.setAutoCancel(true);
                }
                long j3 = j;
                if (j3 <= 0) {
                    j3 = 500;
                }
                objectAnimatorOfFloat.setDuration(j3);
                long j4 = j2;
                objectAnimatorOfFloat.setStartDelay(j4 > 0 ? j4 : 0L);
                objectAnimatorOfFloat.start();
            }
        }, 100L);
    }

    @SuppressLint({"NewApi"})
    public static void fadeOut(final View view, final long j, final long j2, final ViewAnimationListener viewAnimationListener) {
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        view.postDelayed(new Runnable() { // from class: com.serenegiant.utils.ViewAnimationHelper.2
            @Override // java.lang.Runnable
            public void run() {
                view.setTag(R.id.anim_type, 0);
                view.setTag(R.id.anim_listener, viewAnimationListener);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setAlpha(1.0f);
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, BitmapDescriptorFactory.HUE_RED);
                objectAnimatorOfFloat.addListener(ViewAnimationHelper.mAnimatorListener);
                if (BuildCheck.isAndroid4_3()) {
                    objectAnimatorOfFloat.setAutoCancel(true);
                }
                long j3 = j;
                if (j3 <= 0) {
                    j3 = 500;
                }
                objectAnimatorOfFloat.setDuration(j3);
                long j4 = j2;
                objectAnimatorOfFloat.setStartDelay(j4 > 0 ? j4 : 0L);
                objectAnimatorOfFloat.start();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onAnimation(Animator animator, final int i) {
        if (animator instanceof ObjectAnimator) {
            final ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            final View view = (View) objectAnimator.getTarget();
            if (view == null) {
                return;
            }
            final ViewAnimationListener viewAnimationListener = (ViewAnimationListener) view.getTag(R.id.anim_listener);
            try {
                final int iIntValue = ((Integer) view.getTag(R.id.anim_type)).intValue();
                if (viewAnimationListener != null) {
                    view.postDelayed(new Runnable() { // from class: com.serenegiant.utils.ViewAnimationHelper.6
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                int i2 = i;
                                if (i2 == 0) {
                                    viewAnimationListener.onAnimationStart(objectAnimator, view, iIntValue);
                                } else if (i2 == 1) {
                                    viewAnimationListener.onAnimationEnd(objectAnimator, view, iIntValue);
                                } else if (i2 == 2) {
                                    viewAnimationListener.onAnimationCancel(objectAnimator, view, iIntValue);
                                }
                            } catch (Exception e2) {
                                Log.w(ViewAnimationHelper.TAG, e2);
                            }
                        }
                    }, 100L);
                }
            } catch (Exception unused) {
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static void zoomIn(final View view, final long j, final long j2, final ViewAnimationListener viewAnimationListener) {
        if (view == null) {
            return;
        }
        view.postDelayed(new Runnable() { // from class: com.serenegiant.utils.ViewAnimationHelper.3
            @Override // java.lang.Runnable
            public void run() {
                view.setVisibility(0);
                view.setTag(R.id.anim_type, 2);
                view.setTag(R.id.anim_listener, viewAnimationListener);
                view.setScaleX(BitmapDescriptorFactory.HUE_RED);
                view.setScaleY(BitmapDescriptorFactory.HUE_RED);
                view.setAlpha(1.0f);
                ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat("scaleX", 0.01f, 1.0f), PropertyValuesHolder.ofFloat("scaleY", 0.01f, 1.0f));
                objectAnimatorOfPropertyValuesHolder.addListener(ViewAnimationHelper.mAnimatorListener);
                if (BuildCheck.isJellyBeanMR2()) {
                    objectAnimatorOfPropertyValuesHolder.setAutoCancel(true);
                }
                long j3 = j;
                if (j3 <= 0) {
                    j3 = 500;
                }
                objectAnimatorOfPropertyValuesHolder.setDuration(j3);
                long j4 = j2;
                objectAnimatorOfPropertyValuesHolder.setStartDelay(j4 > 0 ? j4 : 0L);
                objectAnimatorOfPropertyValuesHolder.start();
            }
        }, 100L);
    }

    @SuppressLint({"NewApi"})
    public static void zoomOut(final View view, final long j, final long j2, final ViewAnimationListener viewAnimationListener) {
        if (view == null) {
            return;
        }
        view.postDelayed(new Runnable() { // from class: com.serenegiant.utils.ViewAnimationHelper.4
            @Override // java.lang.Runnable
            public void run() {
                view.setVisibility(0);
                view.setTag(R.id.anim_type, 3);
                view.setTag(R.id.anim_listener, viewAnimationListener);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setAlpha(1.0f);
                ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat("scaleX", 1.0f, BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat("scaleY", 1.0f, BitmapDescriptorFactory.HUE_RED));
                objectAnimatorOfPropertyValuesHolder.addListener(ViewAnimationHelper.mAnimatorListener);
                if (BuildCheck.isJellyBeanMR2()) {
                    objectAnimatorOfPropertyValuesHolder.setAutoCancel(true);
                }
                long j3 = j;
                if (j3 <= 0) {
                    j3 = 500;
                }
                objectAnimatorOfPropertyValuesHolder.setDuration(j3);
                long j4 = j2;
                objectAnimatorOfPropertyValuesHolder.setStartDelay(j4 > 0 ? j4 : 0L);
                objectAnimatorOfPropertyValuesHolder.start();
            }
        }, 100L);
    }
}
