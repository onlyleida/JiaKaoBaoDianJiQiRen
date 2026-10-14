package androidx.viewpager2.widget;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.o;
import com.google.android.material.badge.BadgeDrawable;

/* JADX INFO: loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f1963a;
    private final Rect b;
    private androidx.viewpager2.widget.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RecyclerView.i f1966f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayoutManager f1967g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1968h;
    private Parcelable i;
    RecyclerView j;
    private o k;
    d l;
    private androidx.viewpager2.widget.a m;
    private androidx.viewpager2.widget.b n;
    private androidx.viewpager2.widget.c o;
    private RecyclerView.l p;
    private boolean q;
    private int r;
    a s;

    private abstract class a {
        abstract boolean a();

        abstract boolean b(int i, Bundle bundle);

        abstract void c(RecyclerView.Adapter<?> adapter);

        abstract void d(RecyclerView.Adapter<?> adapter);

        abstract String e();

        abstract void f(AccessibilityNodeInfo accessibilityNodeInfo);

        abstract boolean g(int i, Bundle bundle);

        abstract void h();

        abstract void i();

        abstract void j();

        abstract void k();

        abstract void l();
    }

    public static abstract class b {
        public abstract void onPageScrollStateChanged(int i);

        public abstract void onPageScrolled(int i, float f2, int i2);

        public abstract void onPageSelected(int i);
    }

    public interface c {
    }

    private void b(RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f1966f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d() {
        RecyclerView.Adapter adapter;
        if (this.f1968h == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.i;
        if (parcelable != null) {
            if (adapter instanceof androidx.viewpager2.adapter.c) {
                ((androidx.viewpager2.adapter.c) adapter).b(parcelable);
            }
            this.i = null;
        }
        int iMax = Math.max(0, Math.min(this.f1968h, adapter.getItemCount() - 1));
        this.f1964d = iMax;
        this.f1968h = -1;
        this.j.scrollToPosition(iMax);
        this.s.h();
    }

    private void g(RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f1966f);
        }
    }

    public boolean a() {
        return this.n.a();
    }

    public void c(b bVar) {
        this.c.a(bVar);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.j.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.j.canScrollVertically(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).f1969a;
            sparseArray.put(this.j.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        d();
    }

    public void e(int i, boolean z) {
        if (a()) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        f(i, z);
    }

    void f(int i, boolean z) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f1968h != -1) {
                this.f1968h = Math.max(i, 0);
            }
        } else {
            if (adapter.getItemCount() <= 0) {
                return;
            }
            int iMin = Math.min(Math.max(i, 0), adapter.getItemCount() - 1);
            int i2 = this.f1964d;
            if (iMin == i2) {
                this.l.b();
                throw null;
            }
            if (iMin == i2 && z) {
                return;
            }
            this.f1964d = iMin;
            this.s.j();
            this.l.b();
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return this.s.a() ? this.s.e() : super.getAccessibilityClassName();
    }

    public RecyclerView.Adapter getAdapter() {
        return this.j.getAdapter();
    }

    public int getCurrentItem() {
        return this.f1964d;
    }

    public int getItemDecorationCount() {
        return this.j.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.r;
    }

    public int getOrientation() {
        return this.f1967g.getOrientation();
    }

    int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.j;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.l.a();
    }

    public void h(b bVar) {
        this.c.b(bVar);
    }

    void i() {
        o oVar = this.k;
        if (oVar == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View viewH = oVar.h(this.f1967g);
        if (viewH == null) {
            return;
        }
        int position = this.f1967g.getPosition(viewH);
        if (position != this.f1964d && getScrollState() == 0) {
            this.m.onPageSelected(position);
        }
        this.f1965e = false;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.s.f(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        this.f1963a.left = getPaddingLeft();
        this.f1963a.right = (i3 - i) - getPaddingRight();
        this.f1963a.top = getPaddingTop();
        this.f1963a.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(BadgeDrawable.TOP_START, measuredWidth, measuredHeight, this.f1963a, this.b);
        RecyclerView recyclerView = this.j;
        Rect rect = this.b;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f1965e) {
            i();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        measureChild(this.j, i, i2);
        int measuredWidth = this.j.getMeasuredWidth();
        int measuredHeight = this.j.getMeasuredHeight();
        int measuredState = this.j.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, measuredState), ViewGroup.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f1968h = savedState.b;
        this.i = savedState.c;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1969a = this.j.getId();
        int i = this.f1968h;
        if (i == -1) {
            i = this.f1964d;
        }
        savedState.b = i;
        Parcelable parcelable = this.i;
        if (parcelable != null) {
            savedState.c = parcelable;
        } else {
            Object adapter = this.j.getAdapter();
            if (adapter instanceof androidx.viewpager2.adapter.c) {
                savedState.c = ((androidx.viewpager2.adapter.c) adapter).a();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.s.b(i, bundle) ? this.s.g(i, bundle) : super.performAccessibilityAction(i, bundle);
    }

    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.j.getAdapter();
        this.s.d(adapter2);
        g(adapter2);
        this.j.setAdapter(adapter);
        this.f1964d = 0;
        d();
        this.s.c(adapter);
        b(adapter);
    }

    public void setCurrentItem(int i) {
        e(i, true);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.s.i();
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1 && i != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.r = i;
        this.j.requestLayout();
    }

    public void setOrientation(int i) {
        this.f1967g.setOrientation(i);
        this.s.k();
    }

    public void setPageTransformer(c cVar) {
        if (cVar != null) {
            if (!this.q) {
                this.p = this.j.getItemAnimator();
                this.q = true;
            }
            this.j.setItemAnimator(null);
        } else if (this.q) {
            this.j.setItemAnimator(this.p);
            this.p = null;
            this.q = false;
        }
        this.o.a();
        throw null;
    }

    public void setUserInputEnabled(boolean z) {
        this.s.l();
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1969a;
        int b;
        Parcelable c;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f1969a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1969a);
            parcel.writeInt(this.b);
            parcel.writeParcelable(this.c, i);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            a(parcel, null);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
