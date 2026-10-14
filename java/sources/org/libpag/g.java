package org.libpag;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
class g extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PAGImageView f16286a;

    g(PAGImageView pAGImageView) {
        this.f16286a = pAGImageView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        ArrayList arrayList;
        super.onAnimationCancel(animator);
        synchronized (this.f16286a) {
            arrayList = new ArrayList(this.f16286a.B);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageView.PAGImageViewListener) it.next()).onAnimationCancel(this.f16286a);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        int repeatCount = ((ValueAnimator) animator).getRepeatCount();
        if (repeatCount < 0 || animator.getDuration() <= 0 || this.f16286a.z / animator.getDuration() <= repeatCount) {
            return;
        }
        this.f16286a.n();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        ArrayList arrayList;
        super.onAnimationRepeat(animator);
        synchronized (this.f16286a) {
            arrayList = new ArrayList(this.f16286a.B);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageView.PAGImageViewListener) it.next()).onAnimationRepeat(this.f16286a);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        ArrayList arrayList;
        super.onAnimationStart(animator);
        synchronized (this.f16286a) {
            arrayList = new ArrayList(this.f16286a.B);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageView.PAGImageViewListener) it.next()).onAnimationStart(this.f16286a);
        }
    }
}
