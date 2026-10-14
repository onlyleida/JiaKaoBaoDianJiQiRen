package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.o implements g.i, RecyclerView.y.b {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final a mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final b mLayoutChunkResult;
    private c mLayoutState;
    int mOrientation;
    n mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1622a;
        int b;
        boolean c;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        boolean a() {
            return this.f1622a >= 0;
        }

        void b() {
            this.f1622a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1622a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c ? 1 : 0);
        }

        SavedState(Parcel parcel) {
            this.f1622a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.f1622a = savedState.f1622a;
            this.b = savedState.b;
            this.c = savedState.c;
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        n f1623a;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1624d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f1625e;

        a() {
            e();
        }

        void a() {
            this.c = this.f1624d ? this.f1623a.i() : this.f1623a.m();
        }

        public void b(View view, int i) {
            if (this.f1624d) {
                this.c = this.f1623a.d(view) + this.f1623a.o();
            } else {
                this.c = this.f1623a.g(view);
            }
            this.b = i;
        }

        public void c(View view, int i) {
            int iO = this.f1623a.o();
            if (iO >= 0) {
                b(view, i);
                return;
            }
            this.b = i;
            if (this.f1624d) {
                int i2 = (this.f1623a.i() - iO) - this.f1623a.d(view);
                this.c = this.f1623a.i() - i2;
                if (i2 > 0) {
                    int iE = this.c - this.f1623a.e(view);
                    int iM = this.f1623a.m();
                    int iMin = iE - (iM + Math.min(this.f1623a.g(view) - iM, 0));
                    if (iMin < 0) {
                        this.c += Math.min(i2, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG = this.f1623a.g(view);
            int iM2 = iG - this.f1623a.m();
            this.c = iG;
            if (iM2 > 0) {
                int i3 = (this.f1623a.i() - Math.min(0, (this.f1623a.i() - iO) - this.f1623a.d(view))) - (iG + this.f1623a.e(view));
                if (i3 < 0) {
                    this.c -= Math.min(iM2, -i3);
                }
            }
        }

        boolean d(View view, RecyclerView.z zVar) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return !pVar.c() && pVar.a() >= 0 && pVar.a() < zVar.b();
        }

        void e() {
            this.b = -1;
            this.c = Integer.MIN_VALUE;
            this.f1624d = false;
            this.f1625e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.f1624d + ", mValid=" + this.f1625e + '}';
        }
    }

    protected static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1626a;
        public boolean b;
        public boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1627d;

        protected b() {
        }

        void a() {
            this.f1626a = 0;
            this.b = false;
            this.c = false;
            this.f1627d = false;
        }
    }

    static class c {
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1629d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1630e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1631f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f1632g;
        boolean j;
        int k;
        boolean m;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1628a = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f1633h = 0;
        int i = 0;
        List<RecyclerView.c0> l = null;

        c() {
        }

        private View e() {
            int size = this.l.size();
            for (int i = 0; i < size; i++) {
                View view = this.l.get(i).itemView;
                RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
                if (!pVar.c() && this.f1629d == pVar.a()) {
                    b(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            b(null);
        }

        public void b(View view) {
            View viewF = f(view);
            if (viewF == null) {
                this.f1629d = -1;
            } else {
                this.f1629d = ((RecyclerView.p) viewF.getLayoutParams()).a();
            }
        }

        boolean c(RecyclerView.z zVar) {
            int i = this.f1629d;
            return i >= 0 && i < zVar.b();
        }

        View d(RecyclerView.v vVar) {
            if (this.l != null) {
                return e();
            }
            View viewO = vVar.o(this.f1629d);
            this.f1629d += this.f1630e;
            return viewO;
        }

        public View f(View view) {
            int iA;
            int size = this.l.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = this.l.get(i2).itemView;
                RecyclerView.p pVar = (RecyclerView.p) view3.getLayoutParams();
                if (view3 != view && !pVar.c() && (iA = (pVar.a() - this.f1629d) * this.f1630e) >= 0 && iA < i) {
                    view2 = view3;
                    if (iA == 0) {
                        break;
                    }
                    i = iA;
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    private int computeScrollExtent(RecyclerView.z zVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return q.a(zVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(RecyclerView.z zVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return q.b(zVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(RecyclerView.z zVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return q.c(zVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild() : findLastPartiallyOrCompletelyInvisibleChild();
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild() : findFirstPartiallyOrCompletelyInvisibleChild();
    }

    private int fixLayoutEndGap(int i, RecyclerView.v vVar, RecyclerView.z zVar, boolean z) {
        int i2;
        int i3 = this.mOrientationHelper.i() - i;
        if (i3 <= 0) {
            return 0;
        }
        int i4 = -scrollBy(-i3, vVar, zVar);
        int i5 = i + i4;
        if (!z || (i2 = this.mOrientationHelper.i() - i5) <= 0) {
            return i4;
        }
        this.mOrientationHelper.r(i2);
        return i2 + i4;
    }

    private int fixLayoutStartGap(int i, RecyclerView.v vVar, RecyclerView.z zVar, boolean z) {
        int iM;
        int iM2 = i - this.mOrientationHelper.m();
        if (iM2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(iM2, vVar, zVar);
        int i3 = i + i2;
        if (!z || (iM = i3 - this.mOrientationHelper.m()) <= 0) {
            return i2;
        }
        this.mOrientationHelper.r(-iM);
        return i2 - iM;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void layoutForPredictiveAnimations(RecyclerView.v vVar, RecyclerView.z zVar, int i, int i2) {
        if (!zVar.g() || getChildCount() == 0 || zVar.e() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView.c0> listK = vVar.k();
        int size = listK.size();
        int position = getPosition(getChildAt(0));
        int iE = 0;
        int iE2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView.c0 c0Var = listK.get(i3);
            if (!c0Var.isRemoved()) {
                if (((c0Var.getLayoutPosition() < position) != this.mShouldReverseLayout ? (byte) -1 : (byte) 1) == -1) {
                    iE += this.mOrientationHelper.e(c0Var.itemView);
                } else {
                    iE2 += this.mOrientationHelper.e(c0Var.itemView);
                }
            }
        }
        this.mLayoutState.l = listK;
        if (iE > 0) {
            updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i);
            c cVar = this.mLayoutState;
            cVar.f1633h = iE;
            cVar.c = 0;
            cVar.a();
            fill(vVar, this.mLayoutState, zVar, false);
        }
        if (iE2 > 0) {
            updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i2);
            c cVar2 = this.mLayoutState;
            cVar2.f1633h = iE2;
            cVar2.c = 0;
            cVar2.a();
            fill(vVar, this.mLayoutState, zVar, false);
        }
        this.mLayoutState.l = null;
    }

    private void logChildren() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.g(childAt));
        }
        Log.d(TAG, "==============");
    }

    private void recycleByLayoutState(RecyclerView.v vVar, c cVar) {
        if (!cVar.f1628a || cVar.m) {
            return;
        }
        int i = cVar.f1632g;
        int i2 = cVar.i;
        if (cVar.f1631f == -1) {
            recycleViewsFromEnd(vVar, i, i2);
        } else {
            recycleViewsFromStart(vVar, i, i2);
        }
    }

    private void recycleChildren(RecyclerView.v vVar, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                removeAndRecycleViewAt(i, vVar);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                removeAndRecycleViewAt(i3, vVar);
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView.v vVar, int i, int i2) {
        int childCount = getChildCount();
        if (i < 0) {
            return;
        }
        int iH = (this.mOrientationHelper.h() - i) + i2;
        if (this.mShouldReverseLayout) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (this.mOrientationHelper.g(childAt) < iH || this.mOrientationHelper.q(childAt) < iH) {
                    recycleChildren(vVar, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = childCount - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View childAt2 = getChildAt(i5);
            if (this.mOrientationHelper.g(childAt2) < iH || this.mOrientationHelper.q(childAt2) < iH) {
                recycleChildren(vVar, i4, i5);
                return;
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.v vVar, int i, int i2) {
        if (i < 0) {
            return;
        }
        int i3 = i - i2;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (this.mOrientationHelper.d(childAt) > i3 || this.mOrientationHelper.p(childAt) > i3) {
                    recycleChildren(vVar, 0, i4);
                    return;
                }
            }
            return;
        }
        int i5 = childCount - 1;
        for (int i6 = i5; i6 >= 0; i6--) {
            View childAt2 = getChildAt(i6);
            if (this.mOrientationHelper.d(childAt2) > i3 || this.mOrientationHelper.p(childAt2) > i3) {
                recycleChildren(vVar, i5, i6);
                return;
            }
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.v vVar, RecyclerView.z zVar, a aVar) {
        View viewFindReferenceChild;
        boolean z = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && aVar.d(focusedChild, zVar)) {
            aVar.c(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z2 = this.mLastStackFromEnd;
        boolean z3 = this.mStackFromEnd;
        if (z2 != z3 || (viewFindReferenceChild = findReferenceChild(vVar, zVar, aVar.f1624d, z3)) == null) {
            return false;
        }
        aVar.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
        if (!zVar.e() && supportsPredictiveItemAnimations()) {
            int iG = this.mOrientationHelper.g(viewFindReferenceChild);
            int iD = this.mOrientationHelper.d(viewFindReferenceChild);
            int iM = this.mOrientationHelper.m();
            int i = this.mOrientationHelper.i();
            boolean z4 = iD <= iM && iG < iM;
            if (iG >= i && iD > i) {
                z = true;
            }
            if (z4 || z) {
                if (aVar.f1624d) {
                    iM = i;
                }
                aVar.c = iM;
            }
        }
        return true;
    }

    private boolean updateAnchorFromPendingData(RecyclerView.z zVar, a aVar) {
        int i;
        if (!zVar.e() && (i = this.mPendingScrollPosition) != -1) {
            if (i >= 0 && i < zVar.b()) {
                aVar.b = this.mPendingScrollPosition;
                SavedState savedState = this.mPendingSavedState;
                if (savedState != null && savedState.a()) {
                    boolean z = this.mPendingSavedState.c;
                    aVar.f1624d = z;
                    if (z) {
                        aVar.c = this.mOrientationHelper.i() - this.mPendingSavedState.b;
                    } else {
                        aVar.c = this.mOrientationHelper.m() + this.mPendingSavedState.b;
                    }
                    return true;
                }
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    boolean z2 = this.mShouldReverseLayout;
                    aVar.f1624d = z2;
                    if (z2) {
                        aVar.c = this.mOrientationHelper.i() - this.mPendingScrollPositionOffset;
                    } else {
                        aVar.c = this.mOrientationHelper.m() + this.mPendingScrollPositionOffset;
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0) {
                        aVar.f1624d = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                    }
                    aVar.a();
                } else {
                    if (this.mOrientationHelper.e(viewFindViewByPosition) > this.mOrientationHelper.n()) {
                        aVar.a();
                        return true;
                    }
                    if (this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.m() < 0) {
                        aVar.c = this.mOrientationHelper.m();
                        aVar.f1624d = false;
                        return true;
                    }
                    if (this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition) < 0) {
                        aVar.c = this.mOrientationHelper.i();
                        aVar.f1624d = true;
                        return true;
                    }
                    aVar.c = aVar.f1624d ? this.mOrientationHelper.d(viewFindViewByPosition) + this.mOrientationHelper.o() : this.mOrientationHelper.g(viewFindViewByPosition);
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void updateAnchorInfoForLayout(RecyclerView.v vVar, RecyclerView.z zVar, a aVar) {
        if (updateAnchorFromPendingData(zVar, aVar) || updateAnchorFromChildren(vVar, zVar, aVar)) {
            return;
        }
        aVar.a();
        aVar.b = this.mStackFromEnd ? zVar.b() - 1 : 0;
    }

    private void updateLayoutState(int i, int i2, boolean z, RecyclerView.z zVar) {
        int iM;
        this.mLayoutState.m = resolveIsInfinite();
        this.mLayoutState.f1631f = i;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(zVar, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z2 = i == 1;
        c cVar = this.mLayoutState;
        int i3 = z2 ? iMax2 : iMax;
        cVar.f1633h = i3;
        if (!z2) {
            iMax = iMax2;
        }
        cVar.i = iMax;
        if (z2) {
            cVar.f1633h = i3 + this.mOrientationHelper.j();
            View childClosestToEnd = getChildClosestToEnd();
            c cVar2 = this.mLayoutState;
            cVar2.f1630e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(childClosestToEnd);
            c cVar3 = this.mLayoutState;
            cVar2.f1629d = position + cVar3.f1630e;
            cVar3.b = this.mOrientationHelper.d(childClosestToEnd);
            iM = this.mOrientationHelper.d(childClosestToEnd) - this.mOrientationHelper.i();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.f1633h += this.mOrientationHelper.m();
            c cVar4 = this.mLayoutState;
            cVar4.f1630e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(childClosestToStart);
            c cVar5 = this.mLayoutState;
            cVar4.f1629d = position2 + cVar5.f1630e;
            cVar5.b = this.mOrientationHelper.g(childClosestToStart);
            iM = (-this.mOrientationHelper.g(childClosestToStart)) + this.mOrientationHelper.m();
        }
        c cVar6 = this.mLayoutState;
        cVar6.c = i2;
        if (z) {
            cVar6.c = i2 - iM;
        }
        cVar6.f1632g = iM;
    }

    private void updateLayoutStateToFillEnd(a aVar) {
        updateLayoutStateToFillEnd(aVar.b, aVar.c);
    }

    private void updateLayoutStateToFillStart(a aVar) {
        updateLayoutStateToFillStart(aVar.b, aVar.c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    protected void calculateExtraLayoutSpace(RecyclerView.z zVar, int[] iArr) {
        int i;
        int extraLayoutSpace = getExtraLayoutSpace(zVar);
        if (this.mLayoutState.f1631f == -1) {
            i = 0;
        } else {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.z zVar, RecyclerView.o.c cVar) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, zVar);
        collectPrefetchPositionsForLayoutState(zVar, this.mLayoutState, cVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void collectInitialPrefetchPositions(int i, RecyclerView.o.c cVar) {
        boolean z;
        int i2;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || !savedState.a()) {
            resolveShouldLayoutReverse();
            z = this.mShouldReverseLayout;
            i2 = this.mPendingScrollPosition;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.mPendingSavedState;
            z = savedState2.c;
            i2 = savedState2.f1622a;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.mInitialPrefetchItemCount && i2 >= 0 && i2 < i; i4++) {
            cVar.a(i2, 0);
            i2 += i3;
        }
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.z zVar, c cVar, RecyclerView.o.c cVar2) {
        int i = cVar.f1629d;
        if (i < 0 || i >= zVar.b()) {
            return;
        }
        cVar2.a(i, Math.max(0, cVar.f1632g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int computeHorizontalScrollExtent(RecyclerView.z zVar) {
        return computeScrollExtent(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int computeHorizontalScrollOffset(RecyclerView.z zVar) {
        return computeScrollOffset(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int computeHorizontalScrollRange(RecyclerView.z zVar) {
        return computeScrollRange(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.y.b
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = (i < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i2, BitmapDescriptorFactory.HUE_RED) : new PointF(BitmapDescriptorFactory.HUE_RED, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int computeVerticalScrollExtent(RecyclerView.z zVar) {
        return computeScrollExtent(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int computeVerticalScrollOffset(RecyclerView.z zVar) {
        return computeScrollOffset(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int computeVerticalScrollRange(RecyclerView.z zVar) {
        return computeScrollRange(zVar);
    }

    int convertFocusDirectionToLayoutDirection(int i) {
        if (i == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i == 17) {
            return this.mOrientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 33) {
            return this.mOrientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i != 66) {
            return (i == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
    }

    c createLayoutState() {
        return new c();
    }

    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    int fill(RecyclerView.v vVar, c cVar, RecyclerView.z zVar, boolean z) {
        int i = cVar.c;
        int i2 = cVar.f1632g;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                cVar.f1632g = i2 + i;
            }
            recycleByLayoutState(vVar, cVar);
        }
        int i3 = cVar.c + cVar.f1633h;
        b bVar = this.mLayoutChunkResult;
        while (true) {
            if ((!cVar.m && i3 <= 0) || !cVar.c(zVar)) {
                break;
            }
            bVar.a();
            layoutChunk(vVar, zVar, cVar, bVar);
            if (!bVar.b) {
                cVar.b += bVar.f1626a * cVar.f1631f;
                if (!bVar.c || cVar.l != null || !zVar.e()) {
                    int i4 = cVar.c;
                    int i5 = bVar.f1626a;
                    cVar.c = i4 - i5;
                    i3 -= i5;
                }
                int i6 = cVar.f1632g;
                if (i6 != Integer.MIN_VALUE) {
                    int i7 = i6 + bVar.f1626a;
                    cVar.f1632g = i7;
                    int i8 = cVar.c;
                    if (i8 < 0) {
                        cVar.f1632g = i7 + i8;
                    }
                    recycleByLayoutState(vVar, cVar);
                }
                if (z && bVar.f1627d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - cVar.c;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findFirstVisibleChildClosestToEnd(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z, z2) : findOneVisibleChild(getChildCount() - 1, -1, z, z2);
    }

    View findFirstVisibleChildClosestToStart(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z, z2) : findOneVisibleChild(0, getChildCount(), z, z2);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        byte b2;
        int i3;
        int i4;
        ensureLayoutState();
        if (i2 > i) {
            b2 = 1;
        } else {
            b2 = i2 < i ? (byte) -1 : (byte) 0;
        }
        if (b2 == 0) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.g(getChildAt(i)) < this.mOrientationHelper.m()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i, i2, i3, i4) : this.mVerticalBoundCheck.a(i, i2, i3, i4);
    }

    View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        ensureLayoutState();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i, i2, i3, i4) : this.mVerticalBoundCheck.a(i, i2, i3, i4);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    View findReferenceChild(RecyclerView.v vVar, RecyclerView.z zVar, boolean z, boolean z2) {
        int childCount;
        int i;
        ensureLayoutState();
        int childCount2 = getChildCount();
        int i2 = -1;
        if (z2) {
            childCount = getChildCount() - 1;
            i = -1;
        } else {
            i2 = childCount2;
            childCount = 0;
            i = 1;
        }
        int iB = zVar.b();
        int iM = this.mOrientationHelper.m();
        int i3 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (childCount != i2) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            int iG = this.mOrientationHelper.g(childAt);
            int iD = this.mOrientationHelper.d(childAt);
            if (position >= 0 && position < iB) {
                if (!((RecyclerView.p) childAt.getLayoutParams()).c()) {
                    boolean z3 = iD <= iM && iG < iM;
                    boolean z4 = iG >= i3 && iD > i3;
                    if (!z3 && !z4) {
                        return childAt;
                    }
                    if (z) {
                        if (z4) {
                            view2 = childAt;
                        } else if (view == null) {
                            view = childAt;
                        }
                    } else if (z3) {
                        view2 = childAt;
                    } else if (view == null) {
                        view = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            childCount += i;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateDefaultLayoutParams() {
        return new RecyclerView.p(-2, -2);
    }

    @Deprecated
    protected int getExtraLayoutSpace(RecyclerView.z zVar) {
        if (zVar.d()) {
            return this.mOrientationHelper.n();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    void layoutChunk(RecyclerView.v vVar, RecyclerView.z zVar, c cVar, b bVar) {
        int i;
        int i2;
        int i3;
        int paddingLeft;
        int iF;
        View viewD = cVar.d(vVar);
        if (viewD == null) {
            bVar.b = true;
            return;
        }
        RecyclerView.p pVar = (RecyclerView.p) viewD.getLayoutParams();
        if (cVar.l == null) {
            if (this.mShouldReverseLayout == (cVar.f1631f == -1)) {
                addView(viewD);
            } else {
                addView(viewD, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (cVar.f1631f == -1)) {
                addDisappearingView(viewD);
            } else {
                addDisappearingView(viewD, 0);
            }
        }
        measureChildWithMargins(viewD, 0, 0);
        bVar.f1626a = this.mOrientationHelper.e(viewD);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                iF = getWidth() - getPaddingRight();
                paddingLeft = iF - this.mOrientationHelper.f(viewD);
            } else {
                paddingLeft = getPaddingLeft();
                iF = this.mOrientationHelper.f(viewD) + paddingLeft;
            }
            if (cVar.f1631f == -1) {
                int i4 = cVar.b;
                i3 = i4;
                i2 = iF;
                i = i4 - bVar.f1626a;
            } else {
                int i5 = cVar.b;
                i = i5;
                i2 = iF;
                i3 = bVar.f1626a + i5;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iF2 = this.mOrientationHelper.f(viewD) + paddingTop;
            if (cVar.f1631f == -1) {
                int i6 = cVar.b;
                i2 = i6;
                i = paddingTop;
                i3 = iF2;
                paddingLeft = i6 - bVar.f1626a;
            } else {
                int i7 = cVar.b;
                i = paddingTop;
                i2 = bVar.f1626a + i7;
                i3 = iF2;
                paddingLeft = i7;
            }
        }
        layoutDecoratedWithMargins(viewD, paddingLeft, i, i2, i3);
        if (pVar.c() || pVar.b()) {
            bVar.c = true;
        }
        bVar.f1627d = viewD.hasFocusable();
    }

    void onAnchorReady(RecyclerView.v vVar, RecyclerView.z zVar, a aVar, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.v vVar) {
        super.onDetachedFromWindow(recyclerView, vVar);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(vVar);
            vVar.c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View onFocusSearchFailed(View view, int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        int iConvertFocusDirectionToLayoutDirection;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.n() * MAX_SCROLL_FACTOR), false, zVar);
        c cVar = this.mLayoutState;
        cVar.f1632g = Integer.MIN_VALUE;
        cVar.f1628a = false;
        fill(vVar, cVar, zVar, true);
        View viewFindPartiallyOrCompletelyInvisibleChildClosestToStart = iConvertFocusDirectionToLayoutDirection == -1 ? findPartiallyOrCompletelyInvisibleChildClosestToStart() : findPartiallyOrCompletelyInvisibleChildClosestToEnd();
        View childClosestToStart = iConvertFocusDirectionToLayoutDirection == -1 ? getChildClosestToStart() : getChildClosestToEnd();
        if (!childClosestToStart.hasFocusable()) {
            return viewFindPartiallyOrCompletelyInvisibleChildClosestToStart;
        }
        if (viewFindPartiallyOrCompletelyInvisibleChildClosestToStart == null) {
            return null;
        }
        return childClosestToStart;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onLayoutChildren(RecyclerView.v vVar, RecyclerView.z zVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int iFixLayoutEndGap;
        int i5;
        View viewFindViewByPosition;
        int iG;
        int i6;
        int i7 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && zVar.b() == 0) {
            removeAndRecycleAllViews(vVar);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.a()) {
            this.mPendingScrollPosition = this.mPendingSavedState.f1622a;
        }
        ensureLayoutState();
        this.mLayoutState.f1628a = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        a aVar = this.mAnchorInfo;
        if (!aVar.f1625e || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            aVar.e();
            a aVar2 = this.mAnchorInfo;
            aVar2.f1624d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(vVar, zVar, aVar2);
            this.mAnchorInfo.f1625e = true;
        } else if (focusedChild != null && (this.mOrientationHelper.g(focusedChild) >= this.mOrientationHelper.i() || this.mOrientationHelper.d(focusedChild) <= this.mOrientationHelper.m())) {
            this.mAnchorInfo.c(focusedChild, getPosition(focusedChild));
        }
        c cVar = this.mLayoutState;
        cVar.f1631f = cVar.k >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(zVar, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.m();
        int iMax2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.j();
        if (zVar.e() && (i5 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(i5)) != null) {
            if (this.mShouldReverseLayout) {
                i6 = this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition);
                iG = this.mPendingScrollPositionOffset;
            } else {
                iG = this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.m();
                i6 = this.mPendingScrollPositionOffset;
            }
            int i8 = i6 - iG;
            if (i8 > 0) {
                iMax += i8;
            } else {
                iMax2 -= i8;
            }
        }
        a aVar3 = this.mAnchorInfo;
        if (!aVar3.f1624d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i7 = 1;
        }
        onAnchorReady(vVar, zVar, aVar3, i7);
        detachAndScrapAttachedViews(vVar);
        this.mLayoutState.m = resolveIsInfinite();
        this.mLayoutState.j = zVar.e();
        this.mLayoutState.i = 0;
        a aVar4 = this.mAnchorInfo;
        if (aVar4.f1624d) {
            updateLayoutStateToFillStart(aVar4);
            c cVar2 = this.mLayoutState;
            cVar2.f1633h = iMax;
            fill(vVar, cVar2, zVar, false);
            c cVar3 = this.mLayoutState;
            i2 = cVar3.b;
            int i9 = cVar3.f1629d;
            int i10 = cVar3.c;
            if (i10 > 0) {
                iMax2 += i10;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            c cVar4 = this.mLayoutState;
            cVar4.f1633h = iMax2;
            cVar4.f1629d += cVar4.f1630e;
            fill(vVar, cVar4, zVar, false);
            c cVar5 = this.mLayoutState;
            i = cVar5.b;
            int i11 = cVar5.c;
            if (i11 > 0) {
                updateLayoutStateToFillStart(i9, i2);
                c cVar6 = this.mLayoutState;
                cVar6.f1633h = i11;
                fill(vVar, cVar6, zVar, false);
                i2 = this.mLayoutState.b;
            }
        } else {
            updateLayoutStateToFillEnd(aVar4);
            c cVar7 = this.mLayoutState;
            cVar7.f1633h = iMax2;
            fill(vVar, cVar7, zVar, false);
            c cVar8 = this.mLayoutState;
            i = cVar8.b;
            int i12 = cVar8.f1629d;
            int i13 = cVar8.c;
            if (i13 > 0) {
                iMax += i13;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            c cVar9 = this.mLayoutState;
            cVar9.f1633h = iMax;
            cVar9.f1629d += cVar9.f1630e;
            fill(vVar, cVar9, zVar, false);
            c cVar10 = this.mLayoutState;
            i2 = cVar10.b;
            int i14 = cVar10.c;
            if (i14 > 0) {
                updateLayoutStateToFillEnd(i12, i);
                c cVar11 = this.mLayoutState;
                cVar11.f1633h = i14;
                fill(vVar, cVar11, zVar, false);
                i = this.mLayoutState.b;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iFixLayoutEndGap2 = fixLayoutEndGap(i, vVar, zVar, true);
                i3 = i2 + iFixLayoutEndGap2;
                i4 = i + iFixLayoutEndGap2;
                iFixLayoutEndGap = fixLayoutStartGap(i3, vVar, zVar, false);
            } else {
                int iFixLayoutStartGap = fixLayoutStartGap(i2, vVar, zVar, true);
                i3 = i2 + iFixLayoutStartGap;
                i4 = i + iFixLayoutStartGap;
                iFixLayoutEndGap = fixLayoutEndGap(i4, vVar, zVar, false);
            }
            i2 = i3 + iFixLayoutEndGap;
            i = i4 + iFixLayoutEndGap;
        }
        layoutForPredictiveAnimations(vVar, zVar, i2, i);
        if (zVar.e()) {
            this.mAnchorInfo.e();
        } else {
            this.mOrientationHelper.s();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onLayoutCompleted(RecyclerView.z zVar) {
        super.onLayoutCompleted(zVar);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.b();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.c = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState.b = this.mOrientationHelper.i() - this.mOrientationHelper.d(childClosestToEnd);
                savedState.f1622a = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState.f1622a = getPosition(childClosestToStart);
                savedState.b = this.mOrientationHelper.g(childClosestToStart) - this.mOrientationHelper.m();
            }
        } else {
            savedState.b();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.g.i
    public void prepareForDrop(View view, View view2, int i, int i2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        byte b2 = position < position2 ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            if (b2 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - (this.mOrientationHelper.g(view2) + this.mOrientationHelper.e(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - this.mOrientationHelper.d(view2));
                return;
            }
        }
        if (b2 == -1) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.g(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.d(view2) - this.mOrientationHelper.e(view));
        }
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.k() == 0 && this.mOrientationHelper.h() == 0;
    }

    int scrollBy(int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f1628a = true;
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        updateLayoutState(i2, iAbs, true, zVar);
        c cVar = this.mLayoutState;
        int iFill = cVar.f1632g + fill(vVar, cVar, zVar, false);
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i = i2 * iFill;
        }
        this.mOrientationHelper.r(-i);
        this.mLayoutState.k = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int scrollHorizontallyBy(int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, vVar, zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.b();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.b();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int scrollVerticallyBy(int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, vVar, zVar);
    }

    public void setInitialPrefetchItemCount(int i) {
        this.mInitialPrefetchItemCount = i;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.mOrientation || this.mOrientationHelper == null) {
            n nVarB = n.b(this, i);
            this.mOrientationHelper = nVarB;
            this.mAnchorInfo.f1623a = nVarB;
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.mSmoothScrollbarEnabled = z;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z) {
            return;
        }
        this.mStackFromEnd = z;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.z zVar, int i) {
        k kVar = new k(recyclerView.getContext());
        kVar.setTargetPosition(i);
        startSmoothScroll(kVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int iG = this.mOrientationHelper.g(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i = 1; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                int position2 = getPosition(childAt);
                int iG2 = this.mOrientationHelper.g(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder sb = new StringBuilder();
                    sb.append("detected invalid position. loc invalid? ");
                    sb.append(iG2 < iG);
                    throw new RuntimeException(sb.toString());
                }
                if (iG2 > iG) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i2 = 1; i2 < getChildCount(); i2++) {
            View childAt2 = getChildAt(i2);
            int position3 = getPosition(childAt2);
            int iG3 = this.mOrientationHelper.g(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("detected invalid position. loc invalid? ");
                sb2.append(iG3 < iG);
                throw new RuntimeException(sb2.toString());
            }
            if (iG3 < iG) {
                logChildren();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i);
        setReverseLayout(z);
    }

    private void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.c = this.mOrientationHelper.i() - i2;
        c cVar = this.mLayoutState;
        cVar.f1630e = this.mShouldReverseLayout ? -1 : 1;
        cVar.f1629d = i;
        cVar.f1631f = 1;
        cVar.b = i2;
        cVar.f1632g = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.c = i2 - this.mOrientationHelper.m();
        c cVar = this.mLayoutState;
        cVar.f1629d = i;
        cVar.f1630e = this.mShouldReverseLayout ? 1 : -1;
        cVar.f1631f = -1;
        cVar.b = i2;
        cVar.f1632g = Integer.MIN_VALUE;
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.o.d properties = RecyclerView.o.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.f1654a);
        setReverseLayout(properties.c);
        setStackFromEnd(properties.f1655d);
    }
}
