package org.libpag;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
class n extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGView f16300a;

    n(PAGView pAGView) {
        this.f16300a = pAGView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        ArrayList arrayList;
        super.onAnimationCancel(animator);
        synchronized (this.f16300a) {
            arrayList = new ArrayList(this.f16300a.u);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGView.PAGViewListener) it.next()).onAnimationCancel(this.f16300a);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        int repeatCount = ((ValueAnimator) animator).getRepeatCount();
        if (repeatCount < 0 || animator.getDuration() <= 0 || this.f16300a.w / animator.getDuration() <= repeatCount) {
            return;
        }
        this.f16300a.h();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        ArrayList arrayList;
        super.onAnimationRepeat(animator);
        synchronized (this.f16300a) {
            arrayList = new ArrayList(this.f16300a.u);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGView.PAGViewListener) it.next()).onAnimationRepeat(this.f16300a);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        ArrayList arrayList;
        super.onAnimationStart(animator);
        synchronized (this.f16300a) {
            arrayList = new ArrayList(this.f16300a.u);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGView.PAGViewListener) it.next()).onAnimationStart(this.f16300a);
        }
    }
}
