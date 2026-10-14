package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public class d extends k0 {

    class a extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f1837a;

        a(d dVar, View view) {
            this.f1837a = view;
        }

        @Override // androidx.transition.m.g
        public void onTransitionEnd(m mVar) {
            d0.g(this.f1837a, 1.0f);
            d0.a(this.f1837a);
            mVar.removeListener(this);
        }
    }

    private static class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f1838a;
        private boolean b = false;

        b(View view) {
            this.f1838a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.g(this.f1838a, 1.0f);
            if (this.b) {
                this.f1838a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewCompat.hasOverlappingRendering(this.f1838a) && this.f1838a.getLayerType() == 0) {
                this.b = true;
                this.f1838a.setLayerType(2, null);
            }
        }
    }

    public d(int i) {
        setMode(i);
    }

    private Animator b(View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        d0.g(view, f2);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, d0.b, f3);
        objectAnimatorOfFloat.addListener(new b(view));
        addListener(new a(this, view));
        return objectAnimatorOfFloat;
    }

    private static float c(t tVar, float f2) {
        Float f3;
        return (tVar == null || (f3 = (Float) tVar.f1887a.get("android:fade:transitionAlpha")) == null) ? f2 : f3.floatValue();
    }

    @Override // androidx.transition.k0, androidx.transition.m
    public void captureStartValues(t tVar) {
        super.captureStartValues(tVar);
        tVar.f1887a.put("android:fade:transitionAlpha", Float.valueOf(d0.c(tVar.b)));
    }

    @Override // androidx.transition.k0
    public Animator onAppear(ViewGroup viewGroup, View view, t tVar, t tVar2) {
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float fC = c(tVar, BitmapDescriptorFactory.HUE_RED);
        if (fC != 1.0f) {
            f2 = fC;
        }
        return b(view, f2, 1.0f);
    }

    @Override // androidx.transition.k0
    public Animator onDisappear(ViewGroup viewGroup, View view, t tVar, t tVar2) {
        d0.e(view);
        return b(view, c(tVar, 1.0f), BitmapDescriptorFactory.HUE_RED);
    }
}
