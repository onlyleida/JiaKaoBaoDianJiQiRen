package cn.mucang.android.ui.widget.pulltorefresh;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import cn.mucang.android.core.utils.t;
import com.mobile.auth.BuildConfig;

/* JADX INFO: loaded from: classes4.dex */
public class PullToRefreshListView extends h<ListView> {
    private String H;
    private String I;
    private e K;
    private e M;
    private FrameLayout N;
    private boolean Q;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9046a;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f9046a = iArr;
            try {
                iArr[PullToRefreshBase.Mode.MANUAL_REFRESH_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9046a[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9046a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected class b extends ListView implements cn.mucang.android.ui.widget.pulltorefresh.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f9047a;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f9047a = false;
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            try {
                super.dispatchDraw(canvas);
            } catch (IndexOutOfBoundsException e2) {
                t.c("Exception", e2);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            try {
                return super.dispatchTouchEvent(motionEvent);
            } catch (IndexOutOfBoundsException e2) {
                t.c("Exception", e2);
                return false;
            }
        }

        @Override // android.widget.AdapterView
        public void setEmptyView(View view) {
            PullToRefreshListView.this.setEmptyView(view);
        }

        @Override // cn.mucang.android.ui.widget.pulltorefresh.a
        public void setEmptyViewInternal(View view) {
            super.setEmptyView(view);
        }

        @Override // android.widget.AdapterView
        public void setAdapter(ListAdapter listAdapter) {
            if (PullToRefreshListView.this.N != null && !this.f9047a) {
                addFooterView(PullToRefreshListView.this.N, null, false);
                this.f9047a = true;
            }
            super.setAdapter(listAdapter);
        }
    }

    @TargetApi(9)
    final class c extends b {
        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.ListView, android.widget.AbsListView
        protected void layoutChildren() {
            try {
                super.layoutChildren();
            } catch (Exception e2) {
                PullToRefreshListView pullToRefreshListView = PullToRefreshListView.this;
                String str = PullToRefreshListView.this.H;
                String str2 = BuildConfig.COMMON_MODULE_COMMIT_ID;
                pullToRefreshListView.H = str == null ? BuildConfig.COMMON_MODULE_COMMIT_ID : PullToRefreshListView.this.H;
                PullToRefreshListView pullToRefreshListView2 = PullToRefreshListView.this;
                if (pullToRefreshListView2.I != null) {
                    str2 = PullToRefreshListView.this.I;
                }
                pullToRefreshListView2.I = str2;
                throw new IllegalStateException("Layout: " + PullToRefreshListView.this.I + ", viewId: " + PullToRefreshListView.this.H + ". " + e2.getMessage());
            }
        }

        @Override // android.view.View
        protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
            boolean zOverScrollBy = super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
            g.d(PullToRefreshListView.this, i, i3, i2, i4, z);
            return zOverScrollBy;
        }
    }

    public PullToRefreshListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        getViewAndLayoutIdForDebug();
    }

    private void getViewAndLayoutIdForDebug() {
        int sourceLayoutResId;
        int id = getId();
        if (id != -1) {
            try {
                this.H = getResources().getResourceEntryName(id);
            } catch (Exception unused) {
            }
        }
        if (Build.VERSION.SDK_INT < 29 || (sourceLayoutResId = getSourceLayoutResId()) == 0) {
            return;
        }
        try {
            this.I = getResources().getResourceEntryName(sourceLayoutResId);
        } catch (Exception unused2) {
        }
    }

    protected ListView U(Context context, AttributeSet attributeSet) {
        return Build.VERSION.SDK_INT >= 9 ? new c(context, attributeSet) : new b(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public ListView i(Context context, AttributeSet attributeSet) {
        ListView listViewU = U(context, attributeSet);
        listViewU.setId(R.id.list);
        return listViewU;
    }

    public int getHeaderViewsCount() {
        return ((ListView) this.j).getHeaderViewsCount();
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    public final PullToRefreshBase.Orientation getPullToRefreshScrollDirection() {
        return PullToRefreshBase.Orientation.VERTICAL;
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected f h(boolean z, boolean z2) {
        f fVarH = super.h(z, z2);
        if (this.Q) {
            PullToRefreshBase.Mode mode = getMode();
            if (z && mode.showHeaderLoadingLayout()) {
                fVarH.a(this.K);
            }
            if (z2 && mode.showFooterLoadingLayout()) {
                fVarH.a(this.M);
            }
        }
        return fVarH;
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.h, cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void l(TypedArray typedArray) {
        super.l(typedArray);
        boolean z = typedArray.getBoolean(cn.mucang.android.framework.core.R.styleable.PullToRefresh_ptrListViewExtrasEnabled, true);
        this.Q = z;
        if (z) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 1);
            FrameLayout frameLayout = new FrameLayout(getContext());
            e eVarG = g(getContext(), PullToRefreshBase.Mode.PULL_FROM_START, typedArray);
            this.K = eVarG;
            eVarG.setVisibility(8);
            frameLayout.addView(this.K, layoutParams);
            ((ListView) this.j).addHeaderView(frameLayout, null, false);
            this.N = new FrameLayout(getContext());
            e eVarG2 = g(getContext(), PullToRefreshBase.Mode.PULL_FROM_END, typedArray);
            this.M = eVarG2;
            eVarG2.setVisibility(8);
            this.N.addView(this.M, layoutParams);
            if (typedArray.hasValue(cn.mucang.android.framework.core.R.styleable.PullToRefresh_ptrScrollingWhileRefreshingEnabled)) {
                return;
            }
            setScrollingWhileRefreshingEnabled(true);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.h, cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void w(boolean z) {
        e footerLayout;
        int count;
        int scrollY;
        e eVar;
        e eVar2;
        ListAdapter adapter = ((ListView) this.j).getAdapter();
        if (!this.Q || !getShowViewWhileRefreshing() || adapter == null || adapter.isEmpty()) {
            super.w(z);
            return;
        }
        super.w(false);
        int i = a.f9046a[getCurrentMode().ordinal()];
        if (i == 1 || i == 2) {
            footerLayout = getFooterLayout();
            e eVar3 = this.M;
            e eVar4 = this.K;
            count = ((ListView) this.j).getCount() - 1;
            scrollY = getScrollY() - getFooterSize();
            eVar = eVar3;
            eVar2 = eVar4;
        } else {
            footerLayout = getHeaderLayout();
            eVar = this.K;
            eVar2 = this.M;
            scrollY = getScrollY() + getHeaderSize();
            count = 0;
        }
        footerLayout.l();
        footerLayout.a();
        eVar2.setVisibility(8);
        eVar.setVisibility(0);
        eVar.h();
        if (z) {
            j();
            setHeaderScroll(scrollY);
            ((ListView) this.j).setSelection(count);
            E(0);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.h, cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase
    protected void y() {
        e footerLayout;
        e eVar;
        int i;
        if (!this.Q) {
            super.y();
            return;
        }
        int i2 = a.f9046a[getCurrentMode().ordinal()];
        int i3 = 0;
        int i4 = 1;
        if (i2 == 1 || i2 == 2) {
            footerLayout = getFooterLayout();
            eVar = this.M;
            int count = ((ListView) this.j).getCount() - 1;
            int footerSize = getFooterSize();
            i4 = Math.abs(((ListView) this.j).getLastVisiblePosition() - count) <= 1 ? 1 : 0;
            i3 = count;
            i = footerSize;
        } else {
            footerLayout = getHeaderLayout();
            eVar = this.K;
            i = -getHeaderSize();
            if (Math.abs(((ListView) this.j).getFirstVisiblePosition() - 0) > 1) {
                i4 = 0;
            }
        }
        if (eVar.getVisibility() == 0) {
            footerLayout.n();
            eVar.setVisibility(8);
            if (i4 != 0 && getState() != PullToRefreshBase.State.MANUAL_REFRESHING) {
                ((ListView) this.j).setSelection(i3);
                setHeaderScroll(i);
            }
        }
        super.y();
    }
}
