package net.lucode.hackware.magicindicator.e.c;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import net.lucode.hackware.magicindicator.R;
import net.lucode.hackware.magicindicator.b;
import net.lucode.hackware.magicindicator.e.c.b.c;
import net.lucode.hackware.magicindicator.e.c.b.d;

/* JADX INFO: loaded from: classes6.dex */
public class a extends FrameLayout implements net.lucode.hackware.magicindicator.d.a, b.a {
    private net.lucode.hackware.magicindicator.e.c.b.a mAdapter;
    private boolean mAdjustMode;
    private boolean mEnablePivotScroll;
    private boolean mFollowTouch;
    private c mIndicator;
    private LinearLayout mIndicatorContainer;
    private boolean mIndicatorOnTop;
    private int mLeftPadding;
    private b mNavigatorHelper;
    private DataSetObserver mObserver;
    private List<net.lucode.hackware.magicindicator.e.c.d.a> mPositionDataList;
    private boolean mReselectWhenLayout;
    private int mRightPadding;
    private float mScrollPivotX;
    private HorizontalScrollView mScrollView;
    private boolean mSkimOver;
    private boolean mSmoothScroll;
    private LinearLayout mTitleContainer;

    /* JADX INFO: renamed from: net.lucode.hackware.magicindicator.e.c.a$a, reason: collision with other inner class name */
    class C0370a extends DataSetObserver {
        C0370a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a.this.mNavigatorHelper.m(a.this.mAdapter.getCount());
            a.this.init();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
        }
    }

    public a(Context context) {
        super(context);
        this.mScrollPivotX = 0.5f;
        this.mSmoothScroll = true;
        this.mFollowTouch = true;
        this.mReselectWhenLayout = true;
        this.mPositionDataList = new ArrayList();
        this.mObserver = new C0370a();
        b bVar = new b();
        this.mNavigatorHelper = bVar;
        bVar.k(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init() {
        removeAllViews();
        View viewInflate = this.mAdjustMode ? LayoutInflater.from(getContext()).inflate(R.layout.pager_navigator_layout_no_scroll, this) : LayoutInflater.from(getContext()).inflate(R.layout.pager_navigator_layout, this);
        this.mScrollView = (HorizontalScrollView) viewInflate.findViewById(R.id.scroll_view);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.title_container);
        this.mTitleContainer = linearLayout;
        linearLayout.setPadding(this.mLeftPadding, 0, this.mRightPadding, 0);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.indicator_container);
        this.mIndicatorContainer = linearLayout2;
        if (this.mIndicatorOnTop) {
            linearLayout2.getParent().bringChildToFront(this.mIndicatorContainer);
        }
        initTitlesAndIndicator();
    }

    private void initTitlesAndIndicator() {
        LinearLayout.LayoutParams layoutParams;
        int iG = this.mNavigatorHelper.g();
        for (int i = 0; i < iG; i++) {
            Object titleView = this.mAdapter.getTitleView(getContext(), i);
            if (titleView instanceof View) {
                View view = (View) titleView;
                if (this.mAdjustMode) {
                    layoutParams = new LinearLayout.LayoutParams(0, -1);
                    layoutParams.weight = this.mAdapter.getTitleWeight(getContext(), i);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(-2, -1);
                }
                this.mTitleContainer.addView(view, layoutParams);
            }
        }
        net.lucode.hackware.magicindicator.e.c.b.a aVar = this.mAdapter;
        if (aVar != null) {
            c indicator = aVar.getIndicator(getContext());
            this.mIndicator = indicator;
            if (indicator instanceof View) {
                this.mIndicatorContainer.addView((View) this.mIndicator, new FrameLayout.LayoutParams(-1, -1));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void preparePositionData() {
        this.mPositionDataList.clear();
        int iG = this.mNavigatorHelper.g();
        for (int i = 0; i < iG; i++) {
            net.lucode.hackware.magicindicator.e.c.d.a aVar = new net.lucode.hackware.magicindicator.e.c.d.a();
            View childAt = this.mTitleContainer.getChildAt(i);
            if (childAt != 0) {
                aVar.f16155a = childAt.getLeft();
                aVar.b = childAt.getTop();
                aVar.c = childAt.getRight();
                int bottom = childAt.getBottom();
                aVar.f16156d = bottom;
                if (childAt instanceof net.lucode.hackware.magicindicator.e.c.b.b) {
                    net.lucode.hackware.magicindicator.e.c.b.b bVar = (net.lucode.hackware.magicindicator.e.c.b.b) childAt;
                    aVar.f16157e = bVar.getContentLeft();
                    aVar.f16158f = bVar.getContentTop();
                    aVar.f16159g = bVar.getContentRight();
                    aVar.f16160h = bVar.getContentBottom();
                } else {
                    aVar.f16157e = aVar.f16155a;
                    aVar.f16158f = aVar.b;
                    aVar.f16159g = aVar.c;
                    aVar.f16160h = bottom;
                }
            }
            this.mPositionDataList.add(aVar);
        }
    }

    public net.lucode.hackware.magicindicator.e.c.b.a getAdapter() {
        return this.mAdapter;
    }

    public int getLeftPadding() {
        return this.mLeftPadding;
    }

    public c getPagerIndicator() {
        return this.mIndicator;
    }

    public d getPagerTitleView(int i) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return null;
        }
        return (d) linearLayout.getChildAt(i);
    }

    public int getRightPadding() {
        return this.mRightPadding;
    }

    public float getScrollPivotX() {
        return this.mScrollPivotX;
    }

    public LinearLayout getTitleContainer() {
        return this.mTitleContainer;
    }

    public boolean isAdjustMode() {
        return this.mAdjustMode;
    }

    public boolean isEnablePivotScroll() {
        return this.mEnablePivotScroll;
    }

    public boolean isFollowTouch() {
        return this.mFollowTouch;
    }

    public boolean isIndicatorOnTop() {
        return this.mIndicatorOnTop;
    }

    public boolean isReselectWhenLayout() {
        return this.mReselectWhenLayout;
    }

    public boolean isSkimOver() {
        return this.mSkimOver;
    }

    public boolean isSmoothScroll() {
        return this.mSmoothScroll;
    }

    public void notifyDataSetChanged() {
        net.lucode.hackware.magicindicator.e.c.b.a aVar = this.mAdapter;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // net.lucode.hackware.magicindicator.d.a
    public void onAttachToMagicIndicator() {
        init();
    }

    @Override // net.lucode.hackware.magicindicator.b.a
    public void onDeselected(int i, int i2) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i);
        if (childAt instanceof d) {
            ((d) childAt).onDeselected(i, i2);
        }
    }

    @Override // net.lucode.hackware.magicindicator.d.a
    public void onDetachFromMagicIndicator() {
    }

    @Override // net.lucode.hackware.magicindicator.b.a
    public void onEnter(int i, int i2, float f2, boolean z) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i);
        if (childAt instanceof d) {
            ((d) childAt).onEnter(i, i2, f2, z);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mAdapter != null) {
            preparePositionData();
            c cVar = this.mIndicator;
            if (cVar != null) {
                cVar.a(this.mPositionDataList);
            }
            if (this.mReselectWhenLayout && this.mNavigatorHelper.f() == 0) {
                onPageSelected(this.mNavigatorHelper.e());
                onPageScrolled(this.mNavigatorHelper.e(), BitmapDescriptorFactory.HUE_RED, 0);
            }
        }
    }

    @Override // net.lucode.hackware.magicindicator.b.a
    public void onLeave(int i, int i2, float f2, boolean z) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i);
        if (childAt instanceof d) {
            ((d) childAt).onLeave(i, i2, f2, z);
        }
    }

    @Override // net.lucode.hackware.magicindicator.d.a
    public void onPageScrollStateChanged(int i) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.h(i);
            c cVar = this.mIndicator;
            if (cVar != null) {
                cVar.onPageScrollStateChanged(i);
            }
        }
    }

    @Override // net.lucode.hackware.magicindicator.d.a
    public void onPageScrolled(int i, float f2, int i2) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.i(i, f2, i2);
            c cVar = this.mIndicator;
            if (cVar != null) {
                cVar.onPageScrolled(i, f2, i2);
            }
            if (this.mScrollView == null || this.mPositionDataList.size() <= 0 || i < 0 || i >= this.mPositionDataList.size() || !this.mFollowTouch) {
                return;
            }
            int iMin = Math.min(this.mPositionDataList.size() - 1, i);
            int iMin2 = Math.min(this.mPositionDataList.size() - 1, i + 1);
            net.lucode.hackware.magicindicator.e.c.d.a aVar = this.mPositionDataList.get(iMin);
            net.lucode.hackware.magicindicator.e.c.d.a aVar2 = this.mPositionDataList.get(iMin2);
            float fA = aVar.a() - (this.mScrollView.getWidth() * this.mScrollPivotX);
            this.mScrollView.scrollTo((int) (fA + (((aVar2.a() - (this.mScrollView.getWidth() * this.mScrollPivotX)) - fA) * f2)), 0);
        }
    }

    @Override // net.lucode.hackware.magicindicator.d.a
    public void onPageSelected(int i) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.j(i);
            c cVar = this.mIndicator;
            if (cVar != null) {
                cVar.onPageSelected(i);
            }
        }
    }

    @Override // net.lucode.hackware.magicindicator.b.a
    public void onSelected(int i, int i2) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i);
        if (childAt instanceof d) {
            ((d) childAt).onSelected(i, i2);
        }
        if (this.mAdjustMode || this.mFollowTouch || this.mScrollView == null || this.mPositionDataList.size() <= 0) {
            return;
        }
        net.lucode.hackware.magicindicator.e.c.d.a aVar = this.mPositionDataList.get(Math.min(this.mPositionDataList.size() - 1, i));
        if (this.mEnablePivotScroll) {
            float fA = aVar.a() - (this.mScrollView.getWidth() * this.mScrollPivotX);
            if (this.mSmoothScroll) {
                this.mScrollView.smoothScrollTo((int) fA, 0);
                return;
            } else {
                this.mScrollView.scrollTo((int) fA, 0);
                return;
            }
        }
        int scrollX = this.mScrollView.getScrollX();
        int i3 = aVar.f16155a;
        if (scrollX > i3) {
            if (this.mSmoothScroll) {
                this.mScrollView.smoothScrollTo(i3, 0);
                return;
            } else {
                this.mScrollView.scrollTo(i3, 0);
                return;
            }
        }
        int scrollX2 = this.mScrollView.getScrollX() + getWidth();
        int i4 = aVar.c;
        if (scrollX2 < i4) {
            if (this.mSmoothScroll) {
                this.mScrollView.smoothScrollTo(i4 - getWidth(), 0);
            } else {
                this.mScrollView.scrollTo(i4 - getWidth(), 0);
            }
        }
    }

    public void setAdapter(net.lucode.hackware.magicindicator.e.c.b.a aVar) {
        net.lucode.hackware.magicindicator.e.c.b.a aVar2 = this.mAdapter;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            aVar2.unregisterDataSetObserver(this.mObserver);
        }
        this.mAdapter = aVar;
        if (aVar == null) {
            this.mNavigatorHelper.m(0);
            init();
            return;
        }
        aVar.registerDataSetObserver(this.mObserver);
        this.mNavigatorHelper.m(this.mAdapter.getCount());
        if (this.mTitleContainer != null) {
            this.mAdapter.notifyDataSetChanged();
        }
    }

    public void setAdjustMode(boolean z) {
        this.mAdjustMode = z;
    }

    public void setEnablePivotScroll(boolean z) {
        this.mEnablePivotScroll = z;
    }

    public void setFollowTouch(boolean z) {
        this.mFollowTouch = z;
    }

    public void setIndicatorOnTop(boolean z) {
        this.mIndicatorOnTop = z;
    }

    public void setLeftPadding(int i) {
        this.mLeftPadding = i;
    }

    public void setReselectWhenLayout(boolean z) {
        this.mReselectWhenLayout = z;
    }

    public void setRightPadding(int i) {
        this.mRightPadding = i;
    }

    public void setScrollPivotX(float f2) {
        this.mScrollPivotX = f2;
    }

    public void setSkimOver(boolean z) {
        this.mSkimOver = z;
        this.mNavigatorHelper.l(z);
    }

    public void setSmoothScroll(boolean z) {
        this.mSmoothScroll = z;
    }
}
