package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.R;

/* JADX INFO: loaded from: classes.dex */
class e {

    class a implements androidx.core.os.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Fragment f1357a;

        a(Fragment fragment) {
            this.f1357a = fragment;
        }

        @Override // androidx.core.os.b.a
        public void onCancel() {
            if (this.f1357a.getAnimatingAway() != null) {
                View animatingAway = this.f1357a.getAnimatingAway();
                this.f1357a.setAnimatingAway(null);
                animatingAway.clearAnimation();
            }
            this.f1357a.setAnimator(null);
        }
    }

    class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f1358a;
        final /* synthetic */ Fragment b;
        final /* synthetic */ v.g c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ androidx.core.os.b f1359d;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (b.this.b.getAnimatingAway() != null) {
                    b.this.b.setAnimatingAway(null);
                    b bVar = b.this;
                    bVar.c.a(bVar.b, bVar.f1359d);
                }
            }
        }

        b(ViewGroup viewGroup, Fragment fragment, v.g gVar, androidx.core.os.b bVar) {
            this.f1358a = viewGroup;
            this.b = fragment;
            this.c = gVar;
            this.f1359d = bVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f1358a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f1361a;
        final /* synthetic */ View b;
        final /* synthetic */ Fragment c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ v.g f1362d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ androidx.core.os.b f1363e;

        c(ViewGroup viewGroup, View view, Fragment fragment, v.g gVar, androidx.core.os.b bVar) {
            this.f1361a = viewGroup;
            this.b = view;
            this.c = fragment;
            this.f1362d = gVar;
            this.f1363e = bVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1361a.endViewTransition(this.b);
            Animator animator2 = this.c.getAnimator();
            this.c.setAnimator(null);
            if (animator2 == null || this.f1361a.indexOfChild(this.b) >= 0) {
                return;
            }
            this.f1362d.a(this.c, this.f1363e);
        }
    }

    static void a(Fragment fragment, d dVar, v.g gVar) {
        View view = fragment.mView;
        ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        androidx.core.os.b bVar = new androidx.core.os.b();
        bVar.c(new a(fragment));
        gVar.b(fragment, bVar);
        if (dVar.f1364a != null) {
            RunnableC0043e runnableC0043e = new RunnableC0043e(dVar.f1364a, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            runnableC0043e.setAnimationListener(new b(viewGroup, fragment, gVar, bVar));
            fragment.mView.startAnimation(runnableC0043e);
            return;
        }
        Animator animator = dVar.b;
        fragment.setAnimator(animator);
        animator.addListener(new c(viewGroup, view, fragment, gVar, bVar));
        animator.setTarget(fragment.mView);
        animator.start();
    }

    private static int b(Fragment fragment, boolean z, boolean z2) {
        if (z2) {
            return z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim();
        }
        return z ? fragment.getEnterAnim() : fragment.getExitAnim();
    }

    static d c(Context context, Fragment fragment, boolean z, boolean z2) {
        int nextTransition = fragment.getNextTransition();
        int iB = b(fragment, z, z2);
        boolean z3 = false;
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            int i = R.id.visible_removing_fragment_view_tag;
            if (viewGroup.getTag(i) != null) {
                fragment.mContainer.setTag(i, null);
            }
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z, iB);
        if (animationOnCreateAnimation != null) {
            return new d(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z, iB);
        if (animatorOnCreateAnimator != null) {
            return new d(animatorOnCreateAnimator);
        }
        if (iB == 0 && nextTransition != 0) {
            iB = d(nextTransition, z);
        }
        if (iB != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(iB));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, iB);
                    if (animationLoadAnimation != null) {
                        return new d(animationLoadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z3) {
                try {
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, iB);
                    if (animatorLoadAnimator != null) {
                        return new d(animatorLoadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (zEquals) {
                        throw e3;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, iB);
                    if (animationLoadAnimation2 != null) {
                        return new d(animationLoadAnimation2);
                    }
                }
            }
        }
        return null;
    }

    private static int d(int i, boolean z) {
        if (i == 4097) {
            return z ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
        }
        if (i == 4099) {
            return z ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
        }
        if (i != 8194) {
            return -1;
        }
        return z ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Animation f1364a;
        public final Animator b;

        d(Animation animation) {
            this.f1364a = animation;
            this.b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        d(Animator animator) {
            this.f1364a = null;
            this.b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.e$e, reason: collision with other inner class name */
    static class RunnableC0043e extends AnimationSet implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewGroup f1365a;
        private final View b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1366d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f1367e;

        RunnableC0043e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f1367e = true;
            this.f1365a = viewGroup;
            this.b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f1367e = true;
            if (this.c) {
                return !this.f1366d;
            }
            if (!super.getTransformation(j, transformation)) {
                this.c = true;
                OneShotPreDrawListener.add(this.f1365a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.c || !this.f1367e) {
                this.f1365a.endViewTransition(this.b);
                this.f1366d = true;
            } else {
                this.f1367e = false;
                this.f1365a.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f2) {
            this.f1367e = true;
            if (this.c) {
                return !this.f1366d;
            }
            if (!super.getTransformation(j, transformation, f2)) {
                this.c = true;
                OneShotPreDrawListener.add(this.f1365a, this);
            }
            return true;
        }
    }
}
