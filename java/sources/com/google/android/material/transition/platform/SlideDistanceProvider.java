package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public final class SlideDistanceProvider implements VisibilityAnimatorProvider {
    private static final int DEFAULT_DISTANCE = -1;
    private int slideDistance = -1;
    private int slideEdge;

    @Retention(RetentionPolicy.SOURCE)
    public @interface GravityFlag {
    }

    public SlideDistanceProvider(int i) {
        this.slideEdge = i;
    }

    private static Animator createTranslationAppearAnimator(View view, View view2, int i, int i2) {
        if (i == 3) {
            return createTranslationXAnimator(view2, i2, BitmapDescriptorFactory.HUE_RED);
        }
        if (i == 5) {
            return createTranslationXAnimator(view2, -i2, BitmapDescriptorFactory.HUE_RED);
        }
        if (i == 48) {
            return createTranslationYAnimator(view2, -i2, BitmapDescriptorFactory.HUE_RED);
        }
        if (i == 80) {
            return createTranslationYAnimator(view2, i2, BitmapDescriptorFactory.HUE_RED);
        }
        if (i == 8388611) {
            return createTranslationXAnimator(view2, isRtl(view) ? i2 : -i2, BitmapDescriptorFactory.HUE_RED);
        }
        if (i == 8388613) {
            return createTranslationXAnimator(view2, isRtl(view) ? -i2 : i2, BitmapDescriptorFactory.HUE_RED);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    private static Animator createTranslationDisappearAnimator(View view, View view2, int i, int i2) {
        if (i == 3) {
            return createTranslationXAnimator(view2, BitmapDescriptorFactory.HUE_RED, -i2);
        }
        if (i == 5) {
            return createTranslationXAnimator(view2, BitmapDescriptorFactory.HUE_RED, i2);
        }
        if (i == 48) {
            return createTranslationYAnimator(view2, BitmapDescriptorFactory.HUE_RED, i2);
        }
        if (i == 80) {
            return createTranslationYAnimator(view2, BitmapDescriptorFactory.HUE_RED, -i2);
        }
        if (i == 8388611) {
            return createTranslationXAnimator(view2, BitmapDescriptorFactory.HUE_RED, isRtl(view) ? -i2 : i2);
        }
        if (i == 8388613) {
            return createTranslationXAnimator(view2, BitmapDescriptorFactory.HUE_RED, isRtl(view) ? i2 : -i2);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    private static Animator createTranslationXAnimator(View view, float f2, float f3) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f2, f3));
    }

    private static Animator createTranslationYAnimator(View view, float f2, float f3) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f2, f3));
    }

    private int getSlideDistanceOrDefault(Context context) {
        int i = this.slideDistance;
        return i != -1 ? i : context.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    private static boolean isRtl(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    public Animator createAppear(ViewGroup viewGroup, View view) {
        return createTranslationAppearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    public Animator createDisappear(ViewGroup viewGroup, View view) {
        return createTranslationDisappearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    public int getSlideDistance() {
        return this.slideDistance;
    }

    public int getSlideEdge() {
        return this.slideEdge;
    }

    public void setSlideDistance(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
        }
        this.slideDistance = i;
    }

    public void setSlideEdge(int i) {
        this.slideEdge = i;
    }
}
