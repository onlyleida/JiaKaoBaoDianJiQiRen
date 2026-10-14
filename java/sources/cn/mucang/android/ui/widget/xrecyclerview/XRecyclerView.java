package cn.mucang.android.ui.widget.xrecyclerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import cn.mucang.android.framework.core.R;
import com.google.android.material.appbar.AppBarLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class XRecyclerView extends cn.mucang.android.ui.widget.xrecyclerview.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f9064a;
    private boolean b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f9067f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<Integer> f9068g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private e f9069h;
    private View i;
    private cn.mucang.android.ui.widget.xrecyclerview.b j;
    private cn.mucang.android.ui.widget.xrecyclerview.a k;
    private ArrayList<View> l;
    private f m;
    private GridLayoutManager.c n;
    private AppBarLayout o;
    private final RecyclerView.i p;
    private AppBarStateChangeListener.State q;
    private RecyclerView.t r;
    private AppBarStateChangeListener s;

    class a implements cn.mucang.android.ui.widget.xrecyclerview.a.b {
        a() {
        }

        @Override // cn.mucang.android.ui.widget.xrecyclerview.a.b
        public void a() {
            XRecyclerView.this.c = true;
            XRecyclerView.this.k.setState(0);
            XRecyclerView.this.f9069h.b();
        }
    }

    class b extends RecyclerView.t {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            int iFindLastVisibleItemPosition;
            super.onScrolled(recyclerView, i, i2);
            if (XRecyclerView.this.f9069h == null || XRecyclerView.this.c || !XRecyclerView.this.b) {
                return;
            }
            RecyclerView.o layoutManager = XRecyclerView.this.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                iFindLastVisibleItemPosition = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
                int[] iArr = new int[staggeredGridLayoutManager.B()];
                staggeredGridLayoutManager.r(iArr);
                iFindLastVisibleItemPosition = XRecyclerView.this.s(iArr);
            } else {
                iFindLastVisibleItemPosition = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
            }
            if (layoutManager.getChildCount() <= 0 || iFindLastVisibleItemPosition < layoutManager.getItemCount() - (XRecyclerView.this.f9066e + 1) || layoutManager.getItemCount() < layoutManager.getChildCount() || XRecyclerView.this.f9065d || XRecyclerView.this.c || XRecyclerView.this.j.getState() == 2 || XRecyclerView.this.k.getCurrentState() == 3) {
                return;
            }
            XRecyclerView.this.c = true;
            XRecyclerView.this.k.setState(0);
            XRecyclerView.this.f9069h.b();
        }
    }

    class c extends AppBarStateChangeListener {
        c() {
        }

        @Override // cn.mucang.android.ui.widget.xrecyclerview.AppBarStateChangeListener
        public void a(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
            XRecyclerView.this.q = state;
        }
    }

    private class d extends RecyclerView.i {
        private d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onChanged() {
            RecyclerView.Adapter adapter = XRecyclerView.this.getAdapter();
            if (adapter != null && XRecyclerView.this.i != null) {
                int i = XRecyclerView.this.f9064a ? 1 : 0;
                if (XRecyclerView.this.b) {
                    i++;
                }
                if (adapter.getItemCount() == i) {
                    XRecyclerView.this.i.setVisibility(0);
                    XRecyclerView.this.setVisibility(8);
                } else {
                    XRecyclerView.this.i.setVisibility(8);
                    XRecyclerView.this.setVisibility(0);
                }
            }
            if (XRecyclerView.this.m != null) {
                XRecyclerView.this.m.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeChanged(int i, int i2) {
            XRecyclerView.this.m.notifyItemRangeChanged(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeInserted(int i, int i2) {
            XRecyclerView.this.m.notifyItemRangeInserted(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeMoved(int i, int i2, int i3) {
            XRecyclerView.this.m.notifyItemMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeRemoved(int i, int i2) {
            XRecyclerView.this.m.notifyItemRangeRemoved(i, i2);
        }

        /* synthetic */ d(XRecyclerView xRecyclerView, a aVar) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeChanged(int i, int i2, Object obj) {
            XRecyclerView.this.m.notifyItemRangeChanged(i, i2, obj);
        }
    }

    public interface e {
        void a();

        void b();
    }

    public class f extends RecyclerView.Adapter<RecyclerView.c0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RecyclerView.Adapter f9073a;

        class a extends GridLayoutManager.c {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ GridLayoutManager f9074e;

            a(GridLayoutManager gridLayoutManager) {
                this.f9074e = gridLayoutManager;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.c
            public int f(int i) {
                return (f.this.e(i) || f.this.d(i) || f.this.f(i)) ? this.f9074e.k() : XRecyclerView.this.u(i);
            }
        }

        private class b extends RecyclerView.c0 {
            public b(f fVar, View view) {
                super(view);
            }
        }

        public f(RecyclerView.Adapter adapter) {
            this.f9073a = adapter;
        }

        public int c() {
            return XRecyclerView.this.l.size();
        }

        public boolean d(int i) {
            return XRecyclerView.this.b && i == getItemCount() - 1;
        }

        public boolean e(int i) {
            return i >= 1 && i < XRecyclerView.this.l.size() + 1;
        }

        public boolean f(int i) {
            return i == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (XRecyclerView.this.b) {
                return this.f9073a != null ? c() + this.f9073a.getItemCount() + 2 : c() + 2;
            }
            return this.f9073a != null ? c() + this.f9073a.getItemCount() + 1 : c() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            int iC;
            if (this.f9073a == null || i < c() + 1 || (iC = i - (c() + 1)) >= this.f9073a.getItemCount()) {
                return -1L;
            }
            return this.f9073a.getItemId(iC);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int iC = i - (c() + 1);
            if (f(i)) {
                return 10000;
            }
            if (e(i)) {
                return ((Integer) XRecyclerView.this.f9068g.get(i - 1)).intValue();
            }
            if (d(i)) {
                return 10001;
            }
            RecyclerView.Adapter adapter = this.f9073a;
            if (adapter == null || iC >= adapter.getItemCount()) {
                return 0;
            }
            return this.f9073a.getItemViewType(iC);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            super.onAttachedToRecyclerView(recyclerView);
            RecyclerView.o layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                gridLayoutManager.s(new a(gridLayoutManager));
            }
            this.f9073a.onAttachedToRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.c0 c0Var, int i) {
            if (e(i) || f(i)) {
                return;
            }
            int iC = i - (c() + 1);
            RecyclerView.Adapter adapter = this.f9073a;
            if (adapter == null || iC >= adapter.getItemCount()) {
                return;
            }
            this.f9073a.onBindViewHolder(c0Var, iC);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 10000) {
                return new b(this, XRecyclerView.this.j);
            }
            if (XRecyclerView.this.w(i)) {
                return new b(this, XRecyclerView.this.t(i));
            }
            return i == 10001 ? new b(this, XRecyclerView.this.k) : this.f9073a.onCreateViewHolder(viewGroup, i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            this.f9073a.onDetachedFromRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public boolean onFailedToRecycleView(RecyclerView.c0 c0Var) {
            return c0Var instanceof b ? super.onFailedToRecycleView(c0Var) : this.f9073a.onFailedToRecycleView(c0Var);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.c0 c0Var) {
            super.onViewAttachedToWindow(c0Var);
            ViewGroup.LayoutParams layoutParams = c0Var.itemView.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.c) && (e(c0Var.getLayoutPosition()) || f(c0Var.getLayoutPosition()) || d(c0Var.getLayoutPosition()))) {
                ((StaggeredGridLayoutManager.c) layoutParams).f(true);
            }
            if (c0Var instanceof b) {
                super.onViewAttachedToWindow(c0Var);
            } else {
                this.f9073a.onViewAttachedToWindow(c0Var);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.c0 c0Var) {
            if (c0Var instanceof b) {
                super.onViewDetachedFromWindow(c0Var);
            } else {
                this.f9073a.onViewDetachedFromWindow(c0Var);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.c0 c0Var) {
            if (c0Var instanceof b) {
                super.onViewRecycled(c0Var);
            } else {
                this.f9073a.onViewRecycled(c0Var);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void registerAdapterDataObserver(RecyclerView.i iVar) {
            this.f9073a.registerAdapterDataObserver(iVar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void unregisterAdapterDataObserver(RecyclerView.i iVar) {
            this.f9073a.unregisterAdapterDataObserver(iVar);
        }
    }

    public XRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int s(int[] iArr) {
        int i = iArr[0];
        for (int i2 : iArr) {
            if (i2 > i) {
                i = i2;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View t(int i) {
        if (w(i)) {
            return this.l.get(i - 10002);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int u(int i) {
        GridLayoutManager.c cVar = this.n;
        if (cVar == null) {
            return 1;
        }
        return cVar.f(i);
    }

    private void v(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.XRecyclerView);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.XRecyclerView_core__pull_img_src, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (this.f9064a) {
            this.j = new cn.mucang.android.ui.widget.xrecyclerview.b(context, null, resourceId);
        }
        if (this.b) {
            cn.mucang.android.ui.widget.xrecyclerview.a aVar = new cn.mucang.android.ui.widget.xrecyclerview.a(context);
            this.k = aVar;
            aVar.setVisibility(8);
            this.k.setOnReloadListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w(int i) {
        return this.l.size() > 0 && this.f9068g.contains(Integer.valueOf(i));
    }

    private boolean x() {
        return this.j.getParent() != null;
    }

    public GridLayoutManager.c getCustomSpanSizeLoopup() {
        return this.n;
    }

    public View getEmptyView() {
        return this.i;
    }

    public cn.mucang.android.ui.widget.xrecyclerview.a getFootView() {
        return this.k;
    }

    public cn.mucang.android.ui.widget.xrecyclerview.b getRefreshHeader() {
        return this.j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        while (parent != null && !(parent instanceof CoordinatorLayout)) {
            parent = parent.getParent();
        }
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = coordinatorLayout.getChildAt(childCount);
                if (childAt instanceof AppBarLayout) {
                    this.o = (AppBarLayout) childAt;
                    break;
                }
            }
            AppBarLayout appBarLayout = this.o;
            if (appBarLayout != null) {
                appBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this.s);
            }
        }
    }

    @Override // cn.mucang.android.ui.widget.xrecyclerview.c, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AppBarLayout appBarLayout = this.o;
        if (appBarLayout != null) {
            appBarLayout.removeOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this.s);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i) {
        super.onScrollStateChanged(i);
        if (this.r == null) {
            b bVar = new b();
            this.r = bVar;
            addOnScrollListener(bVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        e eVar;
        if (this.f9067f == -1.0f) {
            this.f9067f = motionEvent.getRawY();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f9067f = motionEvent.getRawY();
        } else if (action != 2) {
            this.f9067f = -1.0f;
            if (x() && this.f9064a && this.q == AppBarStateChangeListener.State.EXPANDED && this.j.c() && (eVar = this.f9069h) != null) {
                eVar.a();
            }
        } else {
            float rawY = motionEvent.getRawY() - this.f9067f;
            this.f9067f = motionEvent.getRawY();
            if (x() && this.f9064a && this.q == AppBarStateChangeListener.State.EXPANDED) {
                this.j.b(rawY / 1.3f);
                if (this.j.getVisibleHeight() > 0 && this.j.getState() < 2) {
                    return false;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        f fVar = new f(adapter);
        this.m = fVar;
        super.setAdapter(fVar);
        adapter.registerAdapterDataObserver(this.p);
        this.p.onChanged();
    }

    public void setCustomSpanSizeLoopup(GridLayoutManager.c cVar) {
        this.n = cVar;
    }

    public void setEmptyView(View view) {
        this.i = view;
        this.p.onChanged();
    }

    public void setLoadingListener(e eVar) {
        this.f9069h = eVar;
    }

    public void setLoadingMoreEnabled(boolean z) {
        this.b = z;
    }

    public void setNoMore(boolean z) {
        this.c = false;
        this.f9065d = z;
        this.k.setState(z ? 2 : 1);
    }

    public void setPreLoadCount(int i) {
        this.f9066e = i;
    }

    public void setPullRefreshEnabled(boolean z) {
        this.f9064a = z;
    }

    public void setRefreshImageViewBg(int i) {
        cn.mucang.android.ui.widget.xrecyclerview.b bVar = this.j;
        if (bVar != null) {
            bVar.setRefreshImageViewBg(i);
        }
    }

    public XRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f9064a = true;
        this.b = true;
        this.c = false;
        this.f9065d = false;
        this.f9066e = 0;
        this.f9067f = -1.0f;
        this.f9068g = new ArrayList();
        this.l = new ArrayList<>();
        this.o = null;
        this.p = new d(this, null);
        this.q = AppBarStateChangeListener.State.EXPANDED;
        this.s = new c();
        v(context, attributeSet, i);
    }
}
