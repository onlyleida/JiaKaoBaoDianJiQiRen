package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g extends RecyclerView.n implements RecyclerView.q {
    private C0049g A;
    private Rect C;
    private long D;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f1761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f1762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1763f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f1764g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f1765h;
    float i;
    private float j;
    private float k;
    f m;
    int o;
    private int q;
    RecyclerView r;
    VelocityTracker t;
    private List<RecyclerView.c0> u;
    private List<Integer> v;
    GestureDetectorCompat z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List<View> f1760a = new ArrayList();
    private final float[] b = new float[2];
    RecyclerView.c0 c = null;
    int l = -1;
    private int n = 0;
    List<h> p = new ArrayList();
    final Runnable s = new a();
    private RecyclerView.j w = null;
    View x = null;
    int y = -1;
    private final RecyclerView.s B = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            if (gVar.c == null || !gVar.y()) {
                return;
            }
            g gVar2 = g.this;
            RecyclerView.c0 c0Var = gVar2.c;
            if (c0Var != null) {
                gVar2.t(c0Var);
            }
            g gVar3 = g.this;
            gVar3.r.removeCallbacks(gVar3.s);
            ViewCompat.postOnAnimation(g.this.r, this);
        }
    }

    class b implements RecyclerView.s {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
            g.this.z.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = g.this.t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (g.this.l == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int iFindPointerIndex = motionEvent.findPointerIndex(g.this.l);
            if (iFindPointerIndex >= 0) {
                g.this.i(actionMasked, motionEvent, iFindPointerIndex);
            }
            g gVar = g.this;
            RecyclerView.c0 c0Var = gVar.c;
            if (c0Var == null) {
                return;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (iFindPointerIndex >= 0) {
                        gVar.E(motionEvent, gVar.o, iFindPointerIndex);
                        g.this.t(c0Var);
                        g gVar2 = g.this;
                        gVar2.r.removeCallbacks(gVar2.s);
                        g.this.s.run();
                        g.this.r.invalidate();
                        return;
                    }
                    return;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 6) {
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    g gVar3 = g.this;
                    if (pointerId == gVar3.l) {
                        gVar3.l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        g gVar4 = g.this;
                        gVar4.E(motionEvent, gVar4.o, actionIndex);
                        return;
                    }
                    return;
                }
                VelocityTracker velocityTracker2 = gVar.t;
                if (velocityTracker2 != null) {
                    velocityTracker2.clear();
                }
            }
            g.this.z(null, 0);
            g.this.l = -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public boolean c(RecyclerView recyclerView, MotionEvent motionEvent) {
            int iFindPointerIndex;
            h hVarM;
            g.this.z.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                g.this.l = motionEvent.getPointerId(0);
                g.this.f1761d = motionEvent.getX();
                g.this.f1762e = motionEvent.getY();
                g.this.u();
                g gVar = g.this;
                if (gVar.c == null && (hVarM = gVar.m(motionEvent)) != null) {
                    g gVar2 = g.this;
                    gVar2.f1761d -= hVarM.i;
                    gVar2.f1762e -= hVarM.j;
                    gVar2.l(hVarM.f1774e, true);
                    if (g.this.f1760a.remove(hVarM.f1774e.itemView)) {
                        g gVar3 = g.this;
                        gVar3.m.c(gVar3.r, hVarM.f1774e);
                    }
                    g.this.z(hVarM.f1774e, hVarM.f1775f);
                    g gVar4 = g.this;
                    gVar4.E(motionEvent, gVar4.o, 0);
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                g gVar5 = g.this;
                gVar5.l = -1;
                gVar5.z(null, 0);
            } else {
                int i = g.this.l;
                if (i != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                    g.this.i(actionMasked, motionEvent, iFindPointerIndex);
                }
            }
            VelocityTracker velocityTracker = g.this.t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return g.this.c != null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void e(boolean z) {
            if (z) {
                g.this.z(null, 0);
            }
        }
    }

    class c extends h {
        final /* synthetic */ int n;
        final /* synthetic */ RecyclerView.c0 o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(RecyclerView.c0 c0Var, int i, int i2, float f2, float f3, float f4, float f5, int i3, RecyclerView.c0 c0Var2) {
            super(c0Var, i, i2, f2, f3, f4, f5);
            this.n = i3;
            this.o = c0Var2;
        }

        @Override // androidx.recyclerview.widget.g.h, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (this.k) {
                return;
            }
            if (this.n <= 0) {
                g gVar = g.this;
                gVar.m.c(gVar.r, this.o);
            } else {
                g.this.f1760a.add(this.o.itemView);
                this.f1777h = true;
                int i = this.n;
                if (i > 0) {
                    g.this.v(this, i);
                }
            }
            g gVar2 = g.this;
            View view = gVar2.x;
            View view2 = this.o.itemView;
            if (view == view2) {
                gVar2.x(view2);
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h f1768a;
        final /* synthetic */ int b;

        d(h hVar, int i) {
            this.f1768a = hVar;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = g.this.r;
            if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            h hVar = this.f1768a;
            if (hVar.k || hVar.f1774e.getAbsoluteAdapterPosition() == -1) {
                return;
            }
            RecyclerView.l itemAnimator = g.this.r.getItemAnimator();
            if ((itemAnimator == null || !itemAnimator.q(null)) && !g.this.r()) {
                g.this.m.B(this.f1768a.f1774e, this.b);
            } else {
                g.this.r.post(this);
            }
        }
    }

    class e implements RecyclerView.j {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public int a(int i, int i2) {
            g gVar = g.this;
            View view = gVar.x;
            if (view == null) {
                return i2;
            }
            int iIndexOfChild = gVar.y;
            if (iIndexOfChild == -1) {
                iIndexOfChild = gVar.r.indexOfChild(view);
                g.this.y = iIndexOfChild;
            }
            if (i2 == i - 1) {
                return iIndexOfChild;
            }
            return i2 < iIndexOfChild ? i2 : i2 + 1;
        }
    }

    public static abstract class f {
        private static final Interpolator b = new a();
        private static final Interpolator c = new b();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1770a = -1;

        class a implements Interpolator {
            a() {
            }

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                return f2 * f2 * f2 * f2 * f2;
            }
        }

        class b implements Interpolator {
            b() {
            }

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        }

        public static int e(int i, int i2) {
            int i3;
            int i4 = i & 789516;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 << 2;
            } else {
                int i6 = i4 << 1;
                i5 |= (-789517) & i6;
                i3 = (i6 & 789516) << 2;
            }
            return i5 | i3;
        }

        private int i(RecyclerView recyclerView) {
            if (this.f1770a == -1) {
                this.f1770a = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            return this.f1770a;
        }

        public static int s(int i, int i2) {
            return i2 << (i * 8);
        }

        public static int t(int i, int i2) {
            return s(2, i) | s(1, i2) | s(0, i2 | i);
        }

        public void A(RecyclerView.c0 c0Var, int i) {
            if (c0Var != null) {
                androidx.recyclerview.widget.i.f1779a.b(c0Var.itemView);
            }
        }

        public abstract void B(RecyclerView.c0 c0Var, int i);

        public boolean a(RecyclerView recyclerView, RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2) {
            return true;
        }

        public RecyclerView.c0 b(RecyclerView.c0 c0Var, List<RecyclerView.c0> list, int i, int i2) {
            int bottom;
            int iAbs;
            int top;
            int iAbs2;
            int left;
            int iAbs3;
            int right;
            int iAbs4;
            int width = i + c0Var.itemView.getWidth();
            int height = i2 + c0Var.itemView.getHeight();
            int left2 = i - c0Var.itemView.getLeft();
            int top2 = i2 - c0Var.itemView.getTop();
            int size = list.size();
            RecyclerView.c0 c0Var2 = null;
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                RecyclerView.c0 c0Var3 = list.get(i4);
                if (left2 > 0 && (right = c0Var3.itemView.getRight() - width) < 0 && c0Var3.itemView.getRight() > c0Var.itemView.getRight() && (iAbs4 = Math.abs(right)) > i3) {
                    c0Var2 = c0Var3;
                    i3 = iAbs4;
                }
                if (left2 < 0 && (left = c0Var3.itemView.getLeft() - i) > 0 && c0Var3.itemView.getLeft() < c0Var.itemView.getLeft() && (iAbs3 = Math.abs(left)) > i3) {
                    c0Var2 = c0Var3;
                    i3 = iAbs3;
                }
                if (top2 < 0 && (top = c0Var3.itemView.getTop() - i2) > 0 && c0Var3.itemView.getTop() < c0Var.itemView.getTop() && (iAbs2 = Math.abs(top)) > i3) {
                    c0Var2 = c0Var3;
                    i3 = iAbs2;
                }
                if (top2 > 0 && (bottom = c0Var3.itemView.getBottom() - height) < 0 && c0Var3.itemView.getBottom() > c0Var.itemView.getBottom() && (iAbs = Math.abs(bottom)) > i3) {
                    c0Var2 = c0Var3;
                    i3 = iAbs;
                }
            }
            return c0Var2;
        }

        public void c(RecyclerView recyclerView, RecyclerView.c0 c0Var) {
            androidx.recyclerview.widget.i.f1779a.a(c0Var.itemView);
        }

        public int d(int i, int i2) {
            int i3;
            int i4 = i & 3158064;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 >> 2;
            } else {
                int i6 = i4 >> 1;
                i5 |= (-3158065) & i6;
                i3 = (i6 & 3158064) >> 2;
            }
            return i5 | i3;
        }

        final int f(RecyclerView recyclerView, RecyclerView.c0 c0Var) {
            return d(k(recyclerView, c0Var), ViewCompat.getLayoutDirection(recyclerView));
        }

        public long g(RecyclerView recyclerView, int i, float f2, float f3) {
            RecyclerView.l itemAnimator = recyclerView.getItemAnimator();
            if (itemAnimator == null) {
                return i == 8 ? 200L : 250L;
            }
            return i == 8 ? itemAnimator.n() : itemAnimator.o();
        }

        public int h() {
            return 0;
        }

        public float j(RecyclerView.c0 c0Var) {
            return 0.5f;
        }

        public abstract int k(RecyclerView recyclerView, RecyclerView.c0 c0Var);

        public float l(float f2) {
            return f2;
        }

        public float m(RecyclerView.c0 c0Var) {
            return 0.5f;
        }

        public float n(float f2) {
            return f2;
        }

        boolean o(RecyclerView recyclerView, RecyclerView.c0 c0Var) {
            return (f(recyclerView, c0Var) & 16711680) != 0;
        }

        public int p(RecyclerView recyclerView, int i, int i2, int i3, long j) {
            int iSignum = (int) (((int) (((int) Math.signum(i2)) * i(recyclerView) * c.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)))) * b.getInterpolation(j <= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS ? j / 2000.0f : 1.0f));
            if (iSignum == 0) {
                return i2 > 0 ? 1 : -1;
            }
            return iSignum;
        }

        public boolean q() {
            return true;
        }

        public boolean r() {
            return true;
        }

        public void u(Canvas canvas, RecyclerView recyclerView, RecyclerView.c0 c0Var, float f2, float f3, int i, boolean z) {
            androidx.recyclerview.widget.i.f1779a.c(canvas, recyclerView, c0Var.itemView, f2, f3, i, z);
        }

        public void v(Canvas canvas, RecyclerView recyclerView, RecyclerView.c0 c0Var, float f2, float f3, int i, boolean z) {
            androidx.recyclerview.widget.i.f1779a.d(canvas, recyclerView, c0Var.itemView, f2, f3, i, z);
        }

        void w(Canvas canvas, RecyclerView recyclerView, RecyclerView.c0 c0Var, List<h> list, int i, float f2, float f3) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                h hVar = list.get(i2);
                hVar.e();
                int iSave = canvas.save();
                u(canvas, recyclerView, hVar.f1774e, hVar.i, hVar.j, hVar.f1775f, false);
                canvas.restoreToCount(iSave);
            }
            if (c0Var != null) {
                int iSave2 = canvas.save();
                u(canvas, recyclerView, c0Var, f2, f3, i, true);
                canvas.restoreToCount(iSave2);
            }
        }

        void x(Canvas canvas, RecyclerView recyclerView, RecyclerView.c0 c0Var, List<h> list, int i, float f2, float f3) {
            int size = list.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                h hVar = list.get(i2);
                int iSave = canvas.save();
                v(canvas, recyclerView, hVar.f1774e, hVar.i, hVar.j, hVar.f1775f, false);
                canvas.restoreToCount(iSave);
            }
            if (c0Var != null) {
                int iSave2 = canvas.save();
                v(canvas, recyclerView, c0Var, f2, f3, i, true);
                canvas.restoreToCount(iSave2);
            }
            for (int i3 = size - 1; i3 >= 0; i3--) {
                h hVar2 = list.get(i3);
                boolean z2 = hVar2.l;
                if (z2 && !hVar2.f1777h) {
                    list.remove(i3);
                } else if (!z2) {
                    z = true;
                }
            }
            if (z) {
                recyclerView.invalidate();
            }
        }

        public abstract boolean y(RecyclerView recyclerView, RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2);

        /* JADX WARN: Multi-variable type inference failed */
        public void z(RecyclerView recyclerView, RecyclerView.c0 c0Var, int i, RecyclerView.c0 c0Var2, int i2, int i3, int i4) {
            RecyclerView.o layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof i) {
                ((i) layoutManager).prepareForDrop(c0Var.itemView, c0Var2.itemView, i3, i4);
                return;
            }
            if (layoutManager.canScrollHorizontally()) {
                if (layoutManager.getDecoratedLeft(c0Var2.itemView) <= recyclerView.getPaddingLeft()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.getDecoratedRight(c0Var2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
            if (layoutManager.canScrollVertically()) {
                if (layoutManager.getDecoratedTop(c0Var2.itemView) <= recyclerView.getPaddingTop()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.getDecoratedBottom(c0Var2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.g$g, reason: collision with other inner class name */
    private class C0049g extends GestureDetector.SimpleOnGestureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1771a = true;

        C0049g() {
        }

        void a() {
            this.f1771a = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            View viewN;
            RecyclerView.c0 childViewHolder;
            if (!this.f1771a || (viewN = g.this.n(motionEvent)) == null || (childViewHolder = g.this.r.getChildViewHolder(viewN)) == null) {
                return;
            }
            g gVar = g.this;
            if (gVar.m.o(gVar.r, childViewHolder)) {
                int pointerId = motionEvent.getPointerId(0);
                int i = g.this.l;
                if (pointerId == i) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i);
                    float x = motionEvent.getX(iFindPointerIndex);
                    float y = motionEvent.getY(iFindPointerIndex);
                    g gVar2 = g.this;
                    gVar2.f1761d = x;
                    gVar2.f1762e = y;
                    gVar2.i = BitmapDescriptorFactory.HUE_RED;
                    gVar2.f1765h = BitmapDescriptorFactory.HUE_RED;
                    if (gVar2.m.r()) {
                        g.this.z(childViewHolder, 2);
                    }
                }
            }
        }
    }

    static class h implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f1772a;
        final float b;
        final float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final float f1773d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final RecyclerView.c0 f1774e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final int f1775f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final ValueAnimator f1776g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f1777h;
        float i;
        float j;
        boolean k = false;
        boolean l = false;
        private float m;

        class a implements ValueAnimator.AnimatorUpdateListener {
            a() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                h.this.c(valueAnimator.getAnimatedFraction());
            }
        }

        h(RecyclerView.c0 c0Var, int i, int i2, float f2, float f3, float f4, float f5) {
            this.f1775f = i2;
            this.f1774e = c0Var;
            this.f1772a = f2;
            this.b = f3;
            this.c = f4;
            this.f1773d = f5;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f1776g = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new a());
            valueAnimatorOfFloat.setTarget(c0Var.itemView);
            valueAnimatorOfFloat.addListener(this);
            c(BitmapDescriptorFactory.HUE_RED);
        }

        public void a() {
            this.f1776g.cancel();
        }

        public void b(long j) {
            this.f1776g.setDuration(j);
        }

        public void c(float f2) {
            this.m = f2;
        }

        public void d() {
            this.f1774e.setIsRecyclable(false);
            this.f1776g.start();
        }

        public void e() {
            float f2 = this.f1772a;
            float f3 = this.c;
            if (f2 == f3) {
                this.i = this.f1774e.itemView.getTranslationX();
            } else {
                this.i = f2 + (this.m * (f3 - f2));
            }
            float f4 = this.b;
            float f5 = this.f1773d;
            if (f4 == f5) {
                this.j = this.f1774e.itemView.getTranslationY();
            } else {
                this.j = f4 + (this.m * (f5 - f4));
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            c(1.0f);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.l) {
                this.f1774e.setIsRecyclable(true);
            }
            this.l = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public interface i {
        void prepareForDrop(View view, View view2, int i, int i2);
    }

    public g(f fVar) {
        this.m = fVar;
    }

    private void A() {
        this.q = ViewConfiguration.get(this.r.getContext()).getScaledTouchSlop();
        this.r.addItemDecoration(this);
        this.r.addOnItemTouchListener(this.B);
        this.r.addOnChildAttachStateChangeListener(this);
        B();
    }

    private void B() {
        this.A = new C0049g();
        this.z = new GestureDetectorCompat(this.r.getContext(), this.A);
    }

    private void C() {
        C0049g c0049g = this.A;
        if (c0049g != null) {
            c0049g.a();
            this.A = null;
        }
        if (this.z != null) {
            this.z = null;
        }
    }

    private int D(RecyclerView.c0 c0Var) {
        if (this.n == 2) {
            return 0;
        }
        int iK = this.m.k(this.r, c0Var);
        int iD = (this.m.d(iK, ViewCompat.getLayoutDirection(this.r)) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (iD == 0) {
            return 0;
        }
        int i2 = (iK & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (Math.abs(this.f1765h) > Math.abs(this.i)) {
            int iH = h(c0Var, iD);
            if (iH > 0) {
                return (i2 & iH) == 0 ? f.e(iH, ViewCompat.getLayoutDirection(this.r)) : iH;
            }
            int iJ = j(c0Var, iD);
            if (iJ > 0) {
                return iJ;
            }
        } else {
            int iJ2 = j(c0Var, iD);
            if (iJ2 > 0) {
                return iJ2;
            }
            int iH2 = h(c0Var, iD);
            if (iH2 > 0) {
                return (i2 & iH2) == 0 ? f.e(iH2, ViewCompat.getLayoutDirection(this.r)) : iH2;
            }
        }
        return 0;
    }

    private void f() {
        if (Build.VERSION.SDK_INT >= 21) {
            return;
        }
        if (this.w == null) {
            this.w = new e();
        }
        this.r.setChildDrawingOrderCallback(this.w);
    }

    private int h(RecyclerView.c0 c0Var, int i2) {
        if ((i2 & 12) == 0) {
            return 0;
        }
        int i3 = this.f1765h > BitmapDescriptorFactory.HUE_RED ? 8 : 4;
        VelocityTracker velocityTracker = this.t;
        if (velocityTracker != null && this.l > -1) {
            f fVar = this.m;
            float f2 = this.f1764g;
            fVar.n(f2);
            velocityTracker.computeCurrentVelocity(1000, f2);
            float xVelocity = this.t.getXVelocity(this.l);
            float yVelocity = this.t.getYVelocity(this.l);
            int i4 = xVelocity <= BitmapDescriptorFactory.HUE_RED ? 4 : 8;
            float fAbs = Math.abs(xVelocity);
            if ((i4 & i2) != 0 && i3 == i4) {
                f fVar2 = this.m;
                float f3 = this.f1763f;
                fVar2.l(f3);
                if (fAbs >= f3 && fAbs > Math.abs(yVelocity)) {
                    return i4;
                }
            }
        }
        float width = this.r.getWidth() * this.m.m(c0Var);
        if ((i2 & i3) == 0 || Math.abs(this.f1765h) <= width) {
            return 0;
        }
        return i3;
    }

    private int j(RecyclerView.c0 c0Var, int i2) {
        if ((i2 & 3) == 0) {
            return 0;
        }
        int i3 = this.i > BitmapDescriptorFactory.HUE_RED ? 2 : 1;
        VelocityTracker velocityTracker = this.t;
        if (velocityTracker != null && this.l > -1) {
            f fVar = this.m;
            float f2 = this.f1764g;
            fVar.n(f2);
            velocityTracker.computeCurrentVelocity(1000, f2);
            float xVelocity = this.t.getXVelocity(this.l);
            float yVelocity = this.t.getYVelocity(this.l);
            int i4 = yVelocity <= BitmapDescriptorFactory.HUE_RED ? 1 : 2;
            float fAbs = Math.abs(yVelocity);
            if ((i4 & i2) != 0 && i4 == i3) {
                f fVar2 = this.m;
                float f3 = this.f1763f;
                fVar2.l(f3);
                if (fAbs >= f3 && fAbs > Math.abs(xVelocity)) {
                    return i4;
                }
            }
        }
        float height = this.r.getHeight() * this.m.m(c0Var);
        if ((i2 & i3) == 0 || Math.abs(this.i) <= height) {
            return 0;
        }
        return i3;
    }

    private void k() {
        this.r.removeItemDecoration(this);
        this.r.removeOnItemTouchListener(this.B);
        this.r.removeOnChildAttachStateChangeListener(this);
        for (int size = this.p.size() - 1; size >= 0; size--) {
            h hVar = this.p.get(0);
            hVar.a();
            this.m.c(this.r, hVar.f1774e);
        }
        this.p.clear();
        this.x = null;
        this.y = -1;
        w();
        C();
    }

    private List<RecyclerView.c0> o(RecyclerView.c0 c0Var) {
        RecyclerView.c0 c0Var2 = c0Var;
        List<RecyclerView.c0> list = this.u;
        if (list == null) {
            this.u = new ArrayList();
            this.v = new ArrayList();
        } else {
            list.clear();
            this.v.clear();
        }
        int iH = this.m.h();
        int iRound = Math.round(this.j + this.f1765h) - iH;
        int iRound2 = Math.round(this.k + this.i) - iH;
        int i2 = iH * 2;
        int width = c0Var2.itemView.getWidth() + iRound + i2;
        int height = c0Var2.itemView.getHeight() + iRound2 + i2;
        int i3 = (iRound + width) / 2;
        int i4 = (iRound2 + height) / 2;
        RecyclerView.o layoutManager = this.r.getLayoutManager();
        int childCount = layoutManager.getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = layoutManager.getChildAt(i5);
            if (childAt != c0Var2.itemView && childAt.getBottom() >= iRound2 && childAt.getTop() <= height && childAt.getRight() >= iRound && childAt.getLeft() <= width) {
                RecyclerView.c0 childViewHolder = this.r.getChildViewHolder(childAt);
                if (this.m.a(this.r, this.c, childViewHolder)) {
                    int iAbs = Math.abs(i3 - ((childAt.getLeft() + childAt.getRight()) / 2));
                    int iAbs2 = Math.abs(i4 - ((childAt.getTop() + childAt.getBottom()) / 2));
                    int i6 = (iAbs * iAbs) + (iAbs2 * iAbs2);
                    int size = this.u.size();
                    int i7 = 0;
                    for (int i8 = 0; i8 < size && i6 > this.v.get(i8).intValue(); i8++) {
                        i7++;
                    }
                    this.u.add(i7, childViewHolder);
                    this.v.add(i7, Integer.valueOf(i6));
                }
            }
            i5++;
            c0Var2 = c0Var;
        }
        return this.u;
    }

    private RecyclerView.c0 p(MotionEvent motionEvent) {
        View viewN;
        RecyclerView.o layoutManager = this.r.getLayoutManager();
        int i2 = this.l;
        if (i2 == -1) {
            return null;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i2);
        float x = motionEvent.getX(iFindPointerIndex) - this.f1761d;
        float y = motionEvent.getY(iFindPointerIndex) - this.f1762e;
        float fAbs = Math.abs(x);
        float fAbs2 = Math.abs(y);
        int i3 = this.q;
        if (fAbs < i3 && fAbs2 < i3) {
            return null;
        }
        if (fAbs > fAbs2 && layoutManager.canScrollHorizontally()) {
            return null;
        }
        if ((fAbs2 <= fAbs || !layoutManager.canScrollVertically()) && (viewN = n(motionEvent)) != null) {
            return this.r.getChildViewHolder(viewN);
        }
        return null;
    }

    private void q(float[] fArr) {
        if ((this.o & 12) != 0) {
            fArr[0] = (this.j + this.f1765h) - this.c.itemView.getLeft();
        } else {
            fArr[0] = this.c.itemView.getTranslationX();
        }
        if ((this.o & 3) != 0) {
            fArr[1] = (this.k + this.i) - this.c.itemView.getTop();
        } else {
            fArr[1] = this.c.itemView.getTranslationY();
        }
    }

    private static boolean s(View view, float f2, float f3, float f4, float f5) {
        return f2 >= f4 && f2 <= f4 + ((float) view.getWidth()) && f3 >= f5 && f3 <= f5 + ((float) view.getHeight());
    }

    private void w() {
        VelocityTracker velocityTracker = this.t;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.t = null;
        }
    }

    void E(MotionEvent motionEvent, int i2, int i3) {
        float x = motionEvent.getX(i3);
        float y = motionEvent.getY(i3);
        float f2 = x - this.f1761d;
        this.f1765h = f2;
        this.i = y - this.f1762e;
        if ((i2 & 4) == 0) {
            this.f1765h = Math.max(BitmapDescriptorFactory.HUE_RED, f2);
        }
        if ((i2 & 8) == 0) {
            this.f1765h = Math.min(BitmapDescriptorFactory.HUE_RED, this.f1765h);
        }
        if ((i2 & 1) == 0) {
            this.i = Math.max(BitmapDescriptorFactory.HUE_RED, this.i);
        }
        if ((i2 & 2) == 0) {
            this.i = Math.min(BitmapDescriptorFactory.HUE_RED, this.i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public void b(View view) {
        x(view);
        RecyclerView.c0 childViewHolder = this.r.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.c0 c0Var = this.c;
        if (c0Var != null && childViewHolder == c0Var) {
            z(null, 0);
            return;
        }
        l(childViewHolder, false);
        if (this.f1760a.remove(childViewHolder.itemView)) {
            this.m.c(this.r, childViewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public void d(View view) {
    }

    public void g(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.r;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            k();
        }
        this.r = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.f1763f = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
            this.f1764g = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
            A();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.z zVar) {
        rect.setEmpty();
    }

    void i(int i2, MotionEvent motionEvent, int i3) {
        RecyclerView.c0 c0VarP;
        int iF;
        if (this.c != null || i2 != 2 || this.n == 2 || !this.m.q() || this.r.getScrollState() == 1 || (c0VarP = p(motionEvent)) == null || (iF = (this.m.f(this.r, c0VarP) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8) == 0) {
            return;
        }
        float x = motionEvent.getX(i3);
        float y = motionEvent.getY(i3);
        float f2 = x - this.f1761d;
        float f3 = y - this.f1762e;
        float fAbs = Math.abs(f2);
        float fAbs2 = Math.abs(f3);
        int i4 = this.q;
        if (fAbs >= i4 || fAbs2 >= i4) {
            if (fAbs > fAbs2) {
                if (f2 < BitmapDescriptorFactory.HUE_RED && (iF & 4) == 0) {
                    return;
                }
                if (f2 > BitmapDescriptorFactory.HUE_RED && (iF & 8) == 0) {
                    return;
                }
            } else {
                if (f3 < BitmapDescriptorFactory.HUE_RED && (iF & 1) == 0) {
                    return;
                }
                if (f3 > BitmapDescriptorFactory.HUE_RED && (iF & 2) == 0) {
                    return;
                }
            }
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.f1765h = BitmapDescriptorFactory.HUE_RED;
            this.l = motionEvent.getPointerId(0);
            z(c0VarP, 1);
        }
    }

    void l(RecyclerView.c0 c0Var, boolean z) {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            h hVar = this.p.get(size);
            if (hVar.f1774e == c0Var) {
                hVar.k |= z;
                if (!hVar.l) {
                    hVar.a();
                }
                this.p.remove(size);
                return;
            }
        }
    }

    h m(MotionEvent motionEvent) {
        if (this.p.isEmpty()) {
            return null;
        }
        View viewN = n(motionEvent);
        for (int size = this.p.size() - 1; size >= 0; size--) {
            h hVar = this.p.get(size);
            if (hVar.f1774e.itemView == viewN) {
                return hVar;
            }
        }
        return null;
    }

    View n(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.c0 c0Var = this.c;
        if (c0Var != null) {
            View view = c0Var.itemView;
            if (s(view, x, y, this.j + this.f1765h, this.k + this.i)) {
                return view;
            }
        }
        for (int size = this.p.size() - 1; size >= 0; size--) {
            h hVar = this.p.get(size);
            View view2 = hVar.f1774e.itemView;
            if (s(view2, x, y, hVar.i, hVar.j)) {
                return view2;
            }
        }
        return this.r.findChildViewUnder(x, y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        float f2;
        float f3;
        this.y = -1;
        if (this.c != null) {
            q(this.b);
            float[] fArr = this.b;
            float f4 = fArr[0];
            f3 = fArr[1];
            f2 = f4;
        } else {
            f2 = BitmapDescriptorFactory.HUE_RED;
            f3 = BitmapDescriptorFactory.HUE_RED;
        }
        this.m.w(canvas, recyclerView, this.c, this.p, this.n, f2, f3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        float f2;
        float f3;
        if (this.c != null) {
            q(this.b);
            float[] fArr = this.b;
            float f4 = fArr[0];
            f3 = fArr[1];
            f2 = f4;
        } else {
            f2 = BitmapDescriptorFactory.HUE_RED;
            f3 = BitmapDescriptorFactory.HUE_RED;
        }
        this.m.x(canvas, recyclerView, this.c, this.p, this.n, f2, f3);
    }

    boolean r() {
        int size = this.p.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!this.p.get(i2).l) {
                return true;
            }
        }
        return false;
    }

    void t(RecyclerView.c0 c0Var) {
        if (!this.r.isLayoutRequested() && this.n == 2) {
            float fJ = this.m.j(c0Var);
            int i2 = (int) (this.j + this.f1765h);
            int i3 = (int) (this.k + this.i);
            if (Math.abs(i3 - c0Var.itemView.getTop()) >= c0Var.itemView.getHeight() * fJ || Math.abs(i2 - c0Var.itemView.getLeft()) >= c0Var.itemView.getWidth() * fJ) {
                List<RecyclerView.c0> listO = o(c0Var);
                if (listO.size() == 0) {
                    return;
                }
                RecyclerView.c0 c0VarB = this.m.b(c0Var, listO, i2, i3);
                if (c0VarB == null) {
                    this.u.clear();
                    this.v.clear();
                    return;
                }
                int absoluteAdapterPosition = c0VarB.getAbsoluteAdapterPosition();
                int absoluteAdapterPosition2 = c0Var.getAbsoluteAdapterPosition();
                if (this.m.y(this.r, c0Var, c0VarB)) {
                    this.m.z(this.r, c0Var, absoluteAdapterPosition2, c0VarB, absoluteAdapterPosition, i2, i3);
                }
            }
        }
    }

    void u() {
        VelocityTracker velocityTracker = this.t;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.t = VelocityTracker.obtain();
    }

    void v(h hVar, int i2) {
        this.r.post(new d(hVar, i2));
    }

    void x(View view) {
        if (view == this.x) {
            this.x = null;
            if (this.w != null) {
                this.r.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007d  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c4  */
    boolean y() {
        int iP;
        int iP2;
        int i2;
        int width;
        if (this.c == null) {
            this.D = Long.MIN_VALUE;
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.D;
        long j2 = j == Long.MIN_VALUE ? 0L : jCurrentTimeMillis - j;
        RecyclerView.o layoutManager = this.r.getLayoutManager();
        if (this.C == null) {
            this.C = new Rect();
        }
        layoutManager.calculateItemDecorationsForChild(this.c.itemView, this.C);
        if (layoutManager.canScrollHorizontally()) {
            int i3 = (int) (this.j + this.f1765h);
            int paddingLeft = (i3 - this.C.left) - this.r.getPaddingLeft();
            float f2 = this.f1765h;
            if (f2 < BitmapDescriptorFactory.HUE_RED && paddingLeft < 0) {
                iP = paddingLeft;
            } else if (f2 <= BitmapDescriptorFactory.HUE_RED || (width = ((i3 + this.c.itemView.getWidth()) + this.C.right) - (this.r.getWidth() - this.r.getPaddingRight())) <= 0) {
                iP = 0;
            } else {
                iP = width;
            }
        } else {
            iP = 0;
        }
        if (layoutManager.canScrollVertically()) {
            int i4 = (int) (this.k + this.i);
            int paddingTop = (i4 - this.C.top) - this.r.getPaddingTop();
            float f3 = this.i;
            if (f3 < BitmapDescriptorFactory.HUE_RED && paddingTop < 0) {
                iP2 = paddingTop;
            } else if (f3 <= BitmapDescriptorFactory.HUE_RED || (iP2 = ((i4 + this.c.itemView.getHeight()) + this.C.bottom) - (this.r.getHeight() - this.r.getPaddingBottom())) <= 0) {
                iP2 = 0;
            }
        } else {
            iP2 = 0;
        }
        if (iP != 0) {
            iP = this.m.p(this.r, this.c.itemView.getWidth(), iP, this.r.getWidth(), j2);
        }
        int i5 = iP;
        if (iP2 != 0) {
            i2 = i5;
            iP2 = this.m.p(this.r, this.c.itemView.getHeight(), iP2, this.r.getHeight(), j2);
        } else {
            i2 = i5;
        }
        if (i2 == 0 && iP2 == 0) {
            this.D = Long.MIN_VALUE;
            return false;
        }
        if (this.D == Long.MIN_VALUE) {
            this.D = jCurrentTimeMillis;
        }
        this.r.scrollBy(i2, iP2);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0122  */
    void z(RecyclerView.c0 c0Var, int i2) {
        boolean z;
        float fSignum;
        float fSignum2;
        int i3;
        if (c0Var == this.c && i2 == this.n) {
            return;
        }
        this.D = Long.MIN_VALUE;
        int i4 = this.n;
        l(c0Var, true);
        this.n = i2;
        if (i2 == 2) {
            if (c0Var == null) {
                throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
            }
            this.x = c0Var.itemView;
            f();
        }
        int i5 = (1 << ((i2 * 8) + 8)) - 1;
        RecyclerView.c0 c0Var2 = this.c;
        if (c0Var2 != null) {
            if (c0Var2.itemView.getParent() != null) {
                int iD = i4 == 2 ? 0 : D(c0Var2);
                w();
                if (iD == 1 || iD == 2) {
                    fSignum = Math.signum(this.i) * this.r.getHeight();
                    fSignum2 = BitmapDescriptorFactory.HUE_RED;
                } else {
                    fSignum2 = (iD == 4 || iD == 8 || iD == 16 || iD == 32) ? Math.signum(this.f1765h) * this.r.getWidth() : BitmapDescriptorFactory.HUE_RED;
                    fSignum = BitmapDescriptorFactory.HUE_RED;
                }
                if (i4 == 2) {
                    i3 = 8;
                } else {
                    i3 = iD > 0 ? 2 : 4;
                }
                q(this.b);
                float[] fArr = this.b;
                float f2 = fArr[0];
                float f3 = fArr[1];
                c cVar = new c(c0Var2, i3, i4, f2, f3, fSignum2, fSignum, iD, c0Var2);
                cVar.b(this.m.g(this.r, i3, fSignum2 - f2, fSignum - f3));
                this.p.add(cVar);
                cVar.d();
                z = true;
            } else {
                x(c0Var2.itemView);
                this.m.c(this.r, c0Var2);
                z = false;
            }
            this.c = null;
        } else {
            z = false;
        }
        if (c0Var != null) {
            this.o = (this.m.f(this.r, c0Var) & i5) >> (this.n * 8);
            this.j = c0Var.itemView.getLeft();
            this.k = c0Var.itemView.getTop();
            this.c = c0Var;
            if (i2 == 2) {
                c0Var.itemView.performHapticFeedback(0);
            }
        }
        ViewParent parent = this.r.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(this.c != null);
        }
        if (!z) {
            this.r.getLayoutManager().requestSimpleAnimationsInNextLayout();
        }
        this.m.A(this.c, this.n);
        this.r.invalidate();
    }
}
