package cn.mucang.android.ui.framework.widget.tab.animation;

import android.animation.ValueAnimator;
import cn.mucang.android.core.utils.s0;

/* JADX INFO: loaded from: classes4.dex */
public class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ValueAnimator f9022a;
    private int b;
    private c c;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            e.this.b = s0.a(((Integer) e.this.f9022a.getAnimatedValue()).intValue());
            if (e.this.c != null) {
                e.this.c.a();
            }
        }
    }

    public e() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 20, 0);
        this.f9022a = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(200L);
        this.f9022a.addUpdateListener(new a());
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.animation.d
    public void a(long j) {
        this.f9022a.setStartDelay(j);
        this.f9022a.start();
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.animation.d
    public void b(c cVar) {
        this.c = cVar;
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.animation.d
    public int c() {
        return this.b;
    }
}
