package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes.dex */
public abstract class s extends RecyclerView.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    RecyclerView f1792a;
    private Scroller b;
    private final RecyclerView.t c = new a();

    class a extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1793a = false;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0 && this.f1793a) {
                this.f1793a = false;
                s.this.l();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f1793a = true;
        }
    }

    class b extends k {
        b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.k
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.k, androidx.recyclerview.widget.RecyclerView.y
        protected void onTargetFound(View view, RecyclerView.z zVar, RecyclerView.y.a aVar) {
            s sVar = s.this;
            RecyclerView recyclerView = sVar.f1792a;
            if (recyclerView == null) {
                return;
            }
            int[] iArrC = sVar.c(recyclerView.getLayoutManager(), view);
            int i = iArrC[0];
            int i2 = iArrC[1];
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
            if (iCalculateTimeForDeceleration > 0) {
                aVar.d(i, i2, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
            }
        }
    }

    private void g() {
        this.f1792a.removeOnScrollListener(this.c);
        this.f1792a.setOnFlingListener(null);
    }

    private void j() throws IllegalStateException {
        if (this.f1792a.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.f1792a.addOnScrollListener(this.c);
        this.f1792a.setOnFlingListener(this);
    }

    private boolean k(RecyclerView.o oVar, int i, int i2) {
        RecyclerView.y yVarE;
        int i3;
        if (!(oVar instanceof RecyclerView.y.b) || (yVarE = e(oVar)) == null || (i3 = i(oVar, i, i2)) == -1) {
            return false;
        }
        yVarE.setTargetPosition(i3);
        oVar.startSmoothScroll(yVarE);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public boolean a(int i, int i2) {
        RecyclerView.o layoutManager = this.f1792a.getLayoutManager();
        if (layoutManager == null || this.f1792a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f1792a.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && k(layoutManager, i, i2);
    }

    public void b(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f1792a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            g();
        }
        this.f1792a = recyclerView;
        if (recyclerView != null) {
            j();
            this.b = new Scroller(this.f1792a.getContext(), new DecelerateInterpolator());
            l();
        }
    }

    public abstract int[] c(RecyclerView.o oVar, View view);

    public int[] d(int i, int i2) {
        this.b.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.b.getFinalX(), this.b.getFinalY()};
    }

    protected RecyclerView.y e(RecyclerView.o oVar) {
        return f(oVar);
    }

    @Deprecated
    protected k f(RecyclerView.o oVar) {
        if (oVar instanceof RecyclerView.y.b) {
            return new b(this.f1792a.getContext());
        }
        return null;
    }

    public abstract View h(RecyclerView.o oVar);

    public abstract int i(RecyclerView.o oVar, int i, int i2);

    void l() {
        RecyclerView.o layoutManager;
        View viewH;
        RecyclerView recyclerView = this.f1792a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewH = h(layoutManager)) == null) {
            return;
        }
        int[] iArrC = c(layoutManager, viewH);
        if (iArrC[0] == 0 && iArrC[1] == 0) {
            return;
        }
        this.f1792a.smoothScrollBy(iArrC[0], iArrC[1]);
    }
}
