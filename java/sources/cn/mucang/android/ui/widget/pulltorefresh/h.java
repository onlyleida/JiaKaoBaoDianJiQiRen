package cn.mucang.android.ui.widget.pulltorefresh;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h<T extends AbsListView> extends PullToRefreshBase<T> implements AbsListView.OnScrollListener {
    private AbsListView.OnScrollListener A;
    private PullToRefreshBase.e B;
    private View C;
    private d D;
    private d E;
    private boolean F;
    private boolean G;
    private boolean z;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9062a;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f9062a = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9062a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.G = true;
        ((AbsListView) this.j).setOnScrollListener(this);
    }

    private void J() {
        d dVar;
        d dVar2;
        PullToRefreshBase.Mode mode = getMode();
        FrameLayout refreshableViewWrapper = getRefreshableViewWrapper();
        if (mode.showHeaderLoadingLayout() && this.D == null) {
            this.D = new d(getContext(), PullToRefreshBase.Mode.PULL_FROM_START);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.rightMargin = getResources().getDimensionPixelSize(R.dimen.indicator_right_padding);
            layoutParams.gravity = 53;
            refreshableViewWrapper.addView(this.D, layoutParams);
        } else if (!mode.showHeaderLoadingLayout() && (dVar = this.D) != null) {
            refreshableViewWrapper.removeView(dVar);
            this.D = null;
        }
        if (mode.showFooterLoadingLayout() && this.E == null) {
            this.E = new d(getContext(), PullToRefreshBase.Mode.PULL_FROM_END);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.rightMargin = getResources().getDimensionPixelSize(R.dimen.indicator_right_padding);
            layoutParams2.gravity = 85;
            refreshableViewWrapper.addView(this.E, layoutParams2);
            return;
        }
        if (mode.showFooterLoadingLayout() || (dVar2 = this.E) == null) {
            return;
        }
        refreshableViewWrapper.removeView(dVar2);
        this.E = null;
    }

    private static FrameLayout.LayoutParams K(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return null;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            layoutParams2.gravity = ((LinearLayout.LayoutParams) layoutParams).gravity;
            return layoutParams2;
        }
        layoutParams2.gravity = 17;
        return layoutParams2;
    }

    private boolean L() {
        View childAt;
        Adapter adapter = ((AbsListView) this.j).getAdapter();
        if (adapter != null && !adapter.isEmpty()) {
            return ((AbsListView) this.j).getFirstVisiblePosition() <= 1 && (childAt = ((AbsListView) this.j).getChildAt(0)) != null && childAt.getTop() >= ((AbsListView) this.j).getTop();
        }
        Log.d("PullToRefresh", "isFirstItemVisible. Empty View.");
        return true;
    }

    private boolean M() {
        Adapter adapter = ((AbsListView) this.j).getAdapter();
        if (adapter == null || adapter.isEmpty()) {
            Log.d("PullToRefresh", "isLastItemVisible. Empty View.");
            return true;
        }
        int count = ((AbsListView) this.j).getCount() - 1;
        int lastVisiblePosition = ((AbsListView) this.j).getLastVisiblePosition();
        Log.d("PullToRefresh", "isLastItemVisible. Last Item Position: " + count + " Last Visible Pos: " + lastVisiblePosition);
        if (lastVisiblePosition >= count - 1) {
            View childAt = ((AbsListView) this.j).getChildAt(lastVisiblePosition - ((AbsListView) this.j).getFirstVisiblePosition());
            return childAt != null && childAt.getBottom() <= ((AbsListView) this.j).getBottom();
        }
        return false;
    }

    private void N() {
        if (this.D != null) {
            getRefreshableViewWrapper().removeView(this.D);
            this.D = null;
        }
        if (this.E != null) {
            getRefreshableViewWrapper().removeView(this.E);
            this.E = null;
        }
    }

    private void O() {
        if (this.D != null) {
            if (s() || !r()) {
                if (this.D.b()) {
                    this.D.a();
                }
            } else if (!this.D.b()) {
                this.D.e();
            }
        }
        if (this.E != null) {
            if (s() || !q()) {
                if (this.E.b()) {
                    this.E.a();
                }
            } else {
                if (this.E.b()) {
                    return;
                }
                this.E.e();
            }
        }
    }

    private boolean getShowIndicatorInternal() {
        return this.F && n();
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void I() {
        super.I();
        if (getShowIndicatorInternal()) {
            J();
        } else {
            N();
        }
    }

    public ListAdapter getAdapter() {
        return (ListAdapter) ((AdapterView) this.j).getAdapter();
    }

    public boolean getShowIndicator() {
        return this.F;
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void l(TypedArray typedArray) {
        this.F = typedArray.getBoolean(R.styleable.PullToRefresh_ptrShowIndicator, !o());
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        Log.d("PullToRefresh", "First Visible: " + i + ". Visible Count: " + i2 + ". Total Items:" + i3);
        if (this.B != null) {
            this.z = i3 > 0 && i + i2 >= i3 + (-1);
        }
        if (getShowIndicatorInternal()) {
            O();
        }
        AbsListView.OnScrollListener onScrollListener = this.A;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i, i2, i3);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        View view = this.C;
        if (view == null || this.G) {
            return;
        }
        view.scrollTo(-i, -i2);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        PullToRefreshBase.e eVar;
        if (i == 0 && (eVar = this.B) != null && this.z) {
            eVar.a();
        }
        AbsListView.OnScrollListener onScrollListener = this.A;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected boolean q() {
        return M();
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected boolean r() {
        return L();
    }

    public void setAdapter(ListAdapter listAdapter) {
        ((AdapterView) this.j).setAdapter(listAdapter);
    }

    public final void setEmptyView(View view) {
        FrameLayout refreshableViewWrapper = getRefreshableViewWrapper();
        if (view != null) {
            view.setClickable(true);
            ViewParent parent = view.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(view);
            }
            FrameLayout.LayoutParams layoutParamsK = K(view.getLayoutParams());
            if (layoutParamsK != null) {
                refreshableViewWrapper.addView(view, layoutParamsK);
            } else {
                refreshableViewWrapper.addView(view);
            }
        }
        T t = this.j;
        if (t instanceof cn.mucang.android.ui.widget.pulltorefresh.a) {
            ((cn.mucang.android.ui.widget.pulltorefresh.a) t).setEmptyViewInternal(view);
        } else {
            ((AbsListView) t).setEmptyView(view);
        }
        this.C = view;
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        ((AbsListView) this.j).setOnItemClickListener(onItemClickListener);
    }

    public final void setOnLastItemVisibleListener(PullToRefreshBase.e eVar) {
        this.B = eVar;
    }

    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.A = onScrollListener;
    }

    public final void setScrollEmptyView(boolean z) {
        this.G = z;
    }

    public void setSelection(int i) {
        ((AbsListView) this.j).setSelection(i);
    }

    public void setShowIndicator(boolean z) {
        this.F = z;
        if (getShowIndicatorInternal()) {
            J();
        } else {
            N();
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void v() {
        super.v();
        if (getShowIndicatorInternal()) {
            int i = a.f9062a[getCurrentMode().ordinal()];
            if (i == 1) {
                this.E.c();
            } else {
                if (i != 2) {
                    return;
                }
                this.D.c();
            }
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void w(boolean z) {
        super.w(z);
        if (getShowIndicatorInternal()) {
            O();
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void x() {
        super.x();
        if (getShowIndicatorInternal()) {
            int i = a.f9062a[getCurrentMode().ordinal()];
            if (i == 1) {
                this.E.d();
            } else {
                if (i != 2) {
                    return;
                }
                this.D.d();
            }
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void y() {
        super.y();
        if (getShowIndicatorInternal()) {
            O();
        }
    }
}
