package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f1612a;
    int b;
    int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View[] f1613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final SparseIntArray f1614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final SparseIntArray f1615f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    c f1616g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Rect f1617h;
    private boolean i;

    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int e(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i) {
            return 1;
        }
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final SparseIntArray f1620a = new SparseIntArray();
        final SparseIntArray b = new SparseIntArray();
        private boolean c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1621d = false;

        static int a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        int b(int i, int i2) {
            if (!this.f1621d) {
                return d(i, i2);
            }
            int i3 = this.b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int iD = d(i, i2);
            this.b.put(i, iD);
            return iD;
        }

        int c(int i, int i2) {
            if (!this.c) {
                return e(i, i2);
            }
            int i3 = this.f1620a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int iE = e(i, i2);
            this.f1620a.put(i, iE);
            return iE;
        }

        /* JADX WARN: Code duplicated, block: B:13:0x002d  */
        /* JADX WARN: Code duplicated, block: B:15:0x0034  */
        /* JADX WARN: Code duplicated, block: B:16:0x0038 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:17:0x003a  */
        /* JADX WARN: Code duplicated, block: B:21:0x0043  */
        /* JADX WARN: Code duplicated, block: B:26:0x003d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
        public int d(int i, int i2) {
            int i3;
            int iC;
            int i4;
            int iF;
            int iF2;
            int iA;
            if (this.f1621d && (iA = a(this.b, i)) != -1) {
                i4 = this.b.get(iA);
                i3 = iA + 1;
                iC = c(iA, i2) + f(iA);
                i4 = iC == i2 ? i4 + 1 : 0;
                iF = f(i);
                while (i3 < i) {
                    iF2 = f(i3);
                    iC += iF2;
                    if (iC == i2) {
                        i4++;
                        iC = 0;
                    } else if (iC > i2) {
                        i4++;
                        iC = iF2;
                    }
                    i3++;
                }
                if (iC + iF > i2) {
                    return i4 + 1;
                }
                return i4;
            }
            i3 = 0;
            iC = 0;
            iF = f(i);
            while (i3 < i) {
                iF2 = f(i3);
                iC += iF2;
                if (iC == i2) {
                    i4++;
                    iC = 0;
                } else if (iC > i2) {
                    i4++;
                    iC = iF2;
                }
                i3++;
            }
            if (iC + iF > i2) {
                return i4 + 1;
            }
            return i4;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0024  */
        /* JADX WARN: Code duplicated, block: B:14:0x002b  */
        /* JADX WARN: Code duplicated, block: B:15:0x002d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:16:0x002f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:17:0x0030). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public int e(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.f(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.c
                if (r2 == 0) goto L20
                android.util.SparseIntArray r2 = r5.f1620a
                int r2 = a(r2, r6)
                if (r2 < 0) goto L20
                android.util.SparseIntArray r3 = r5.f1620a
                int r3 = r3.get(r2)
                int r4 = r5.f(r2)
                int r3 = r3 + r4
                goto L30
            L20:
                r2 = 0
                r3 = 0
            L22:
                if (r2 >= r6) goto L33
                int r4 = r5.f(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L2d
                r3 = 0
                goto L30
            L2d:
                if (r3 <= r7) goto L30
                r3 = r4
            L30:
                int r2 = r2 + 1
                goto L22
            L33:
                int r0 = r0 + r3
                if (r0 > r7) goto L37
                return r3
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.c.e(int, int):int");
        }

        public abstract int f(int i);

        public void g() {
            this.b.clear();
        }

        public void h() {
            this.f1620a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f1612a = false;
        this.b = -1;
        this.f1614e = new SparseIntArray();
        this.f1615f = new SparseIntArray();
        this.f1616g = new a();
        this.f1617h = new Rect();
        r(RecyclerView.o.getProperties(context, attributeSet, i, i2).b);
    }

    private void a(RecyclerView.v vVar, RecyclerView.z zVar, int i, boolean z) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = -1;
        if (z) {
            i5 = i;
            i2 = 0;
            i3 = 1;
        } else {
            i2 = i - 1;
            i3 = -1;
        }
        while (i2 != i5) {
            View view = this.f1613d[i2];
            b bVar = (b) view.getLayoutParams();
            int iN = n(vVar, zVar, getPosition(view));
            bVar.f1619f = iN;
            bVar.f1618e = i4;
            i4 += iN;
            i2 += i3;
        }
    }

    private void b() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            b bVar = (b) getChildAt(i).getLayoutParams();
            int iA = bVar.a();
            this.f1614e.put(iA, bVar.f());
            this.f1615f.put(iA, bVar.e());
        }
    }

    private void c(int i) {
        this.c = d(this.c, this.b, i);
    }

    static int[] d(int[] iArr, int i, int i2) {
        int i3;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    private void e() {
        this.f1614e.clear();
        this.f1615f.clear();
    }

    private int f(RecyclerView.z zVar) {
        if (getChildCount() != 0 && zVar.b() != 0) {
            ensureLayoutState();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!zIsSmoothScrollbarEnabled, true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!zIsSmoothScrollbarEnabled, true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                int iB = this.f1616g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.b);
                int iB2 = this.f1616g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.b);
                int iMax = this.mShouldReverseLayout ? Math.max(0, ((this.f1616g.b(zVar.b() - 1, this.b) + 1) - Math.max(iB, iB2)) - 1) : Math.max(0, Math.min(iB, iB2));
                if (zIsSmoothScrollbarEnabled) {
                    return Math.round((iMax * (Math.abs(this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.f1616g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.b) - this.f1616g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.b)) + 1))) + (this.mOrientationHelper.m() - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)));
                }
                return iMax;
            }
        }
        return 0;
    }

    private int g(RecyclerView.z zVar) {
        if (getChildCount() != 0 && zVar.b() != 0) {
            ensureLayoutState();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.f1616g.b(zVar.b() - 1, this.b) + 1;
                }
                return (int) (((this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.f1616g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.b) - this.f1616g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.b)) + 1)) * (this.f1616g.b(zVar.b() - 1, this.b) + 1));
            }
        }
        return 0;
    }

    private void h(RecyclerView.v vVar, RecyclerView.z zVar, LinearLayoutManager.a aVar, int i) {
        boolean z = i == 1;
        int iM = m(vVar, zVar, aVar.b);
        if (z) {
            while (iM > 0) {
                int i2 = aVar.b;
                if (i2 <= 0) {
                    return;
                }
                int i3 = i2 - 1;
                aVar.b = i3;
                iM = m(vVar, zVar, i3);
            }
            return;
        }
        int iB = zVar.b() - 1;
        int i4 = aVar.b;
        while (i4 < iB) {
            int i5 = i4 + 1;
            int iM2 = m(vVar, zVar, i5);
            if (iM2 <= iM) {
                break;
            }
            i4 = i5;
            iM = iM2;
        }
        aVar.b = i4;
    }

    private void i() {
        View[] viewArr = this.f1613d;
        if (viewArr == null || viewArr.length != this.b) {
            this.f1613d = new View[this.b];
        }
    }

    private int l(RecyclerView.v vVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.f1616g.b(i, this.b);
        }
        int iF = vVar.f(i);
        if (iF != -1) {
            return this.f1616g.b(iF, this.b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    private int m(RecyclerView.v vVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.f1616g.c(i, this.b);
        }
        int i2 = this.f1615f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iF = vVar.f(i);
        if (iF != -1) {
            return this.f1616g.c(iF, this.b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    private int n(RecyclerView.v vVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.f1616g.f(i);
        }
        int i2 = this.f1614e.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iF = vVar.f(i);
        if (iF != -1) {
            return this.f1616g.f(iF);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    private void o(float f2, int i) {
        c(Math.max(Math.round(f2 * this.b), i));
    }

    private void p(View view, int i, boolean z) {
        int childMeasureSpec;
        int childMeasureSpec2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.b;
        int i2 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i3 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iJ = j(bVar.f1618e, bVar.f1619f);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = RecyclerView.o.getChildMeasureSpec(iJ, i, i3, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            childMeasureSpec = RecyclerView.o.getChildMeasureSpec(this.mOrientationHelper.n(), getHeightMode(), i2, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int childMeasureSpec3 = RecyclerView.o.getChildMeasureSpec(iJ, i, i2, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int childMeasureSpec4 = RecyclerView.o.getChildMeasureSpec(this.mOrientationHelper.n(), getWidthMode(), i3, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        q(view, childMeasureSpec2, childMeasureSpec, z);
    }

    private void q(View view, int i, int i2, boolean z) {
        RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
        if (z ? shouldReMeasureChild(view, i, i2, pVar) : shouldMeasureChild(view, i, i2, pVar)) {
            view.measure(i, i2);
        }
    }

    private void t() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        c(height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean checkLayoutParams(RecyclerView.p pVar) {
        return pVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void collectPrefetchPositionsForLayoutState(RecyclerView.z zVar, LinearLayoutManager.c cVar, RecyclerView.o.c cVar2) {
        int iF = this.b;
        for (int i = 0; i < this.b && cVar.c(zVar) && iF > 0; i++) {
            int i2 = cVar.f1629d;
            cVar2.a(i2, Math.max(0, cVar.f1632g));
            iF -= this.f1616g.f(i2);
            cVar.f1629d += cVar.f1630e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int computeHorizontalScrollOffset(RecyclerView.z zVar) {
        return this.i ? f(zVar) : super.computeHorizontalScrollOffset(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int computeHorizontalScrollRange(RecyclerView.z zVar) {
        return this.i ? g(zVar) : super.computeHorizontalScrollRange(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int computeVerticalScrollOffset(RecyclerView.z zVar) {
        return this.i ? f(zVar) : super.computeVerticalScrollOffset(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int computeVerticalScrollRange(RecyclerView.z zVar) {
        return this.i ? g(zVar) : super.computeVerticalScrollRange(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View findReferenceChild(RecyclerView.v vVar, RecyclerView.z zVar, boolean z, boolean z2) {
        int childCount;
        int childCount2 = getChildCount();
        int i = -1;
        int i2 = 1;
        if (z2) {
            childCount = getChildCount() - 1;
            i2 = -1;
        } else {
            i = childCount2;
            childCount = 0;
        }
        int iB = zVar.b();
        ensureLayoutState();
        int iM = this.mOrientationHelper.m();
        int i3 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        while (childCount != i) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < iB && m(vVar, zVar, position) == 0) {
                if (((RecyclerView.p) childAt.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.g(childAt) < i3 && this.mOrientationHelper.d(childAt) >= iM) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i2;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int getColumnCountForAccessibility(RecyclerView.v vVar, RecyclerView.z zVar) {
        if (this.mOrientation == 1) {
            return this.b;
        }
        if (zVar.b() < 1) {
            return 0;
        }
        return l(vVar, zVar, zVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int getRowCountForAccessibility(RecyclerView.v vVar, RecyclerView.z zVar) {
        if (this.mOrientation == 0) {
            return this.b;
        }
        if (zVar.b() < 1) {
            return 0;
        }
        return l(vVar, zVar, zVar.b() - 1) + 1;
    }

    int j(int i, int i2) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.c;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.c;
        int i3 = this.b;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    public int k() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v19 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void layoutChunk(RecyclerView.v vVar, RecyclerView.z zVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int i2;
        int iF;
        int i3;
        int i4;
        int iF2;
        int iF3;
        int childMeasureSpec;
        int childMeasureSpec2;
        View viewD;
        int iL = this.mOrientationHelper.l();
        ?? r5 = 0;
        boolean z = iL != 1073741824;
        int i5 = getChildCount() > 0 ? this.c[this.b] : 0;
        if (z) {
            t();
        }
        boolean z2 = cVar.f1630e == 1;
        int iM = this.b;
        if (!z2) {
            iM = m(vVar, zVar, cVar.f1629d) + n(vVar, zVar, cVar.f1629d);
        }
        int i6 = 0;
        while (i6 < this.b && cVar.c(zVar) && iM > 0) {
            int i7 = cVar.f1629d;
            int iN = n(vVar, zVar, i7);
            if (iN > this.b) {
                throw new IllegalArgumentException("Item at position " + i7 + " requires " + iN + " spans but GridLayoutManager has only " + this.b + " spans.");
            }
            iM -= iN;
            if (iM < 0 || (viewD = cVar.d(vVar)) == null) {
                break;
            }
            this.f1613d[i6] = viewD;
            i6++;
        }
        if (i6 == 0) {
            bVar.b = true;
            return;
        }
        float f2 = BitmapDescriptorFactory.HUE_RED;
        a(vVar, zVar, i6, z2);
        int i8 = 0;
        int i9 = 0;
        while (i8 < i6) {
            View view = this.f1613d[i8];
            if (cVar.l == null) {
                if (z2) {
                    addView(view);
                } else {
                    addView(view, r5);
                }
            } else if (z2) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, r5);
            }
            calculateItemDecorationsForChild(view, this.f1617h);
            p(view, iL, r5);
            int iE = this.mOrientationHelper.e(view);
            if (iE > i9) {
                i9 = iE;
            }
            float f3 = (this.mOrientationHelper.f(view) * 1.0f) / ((b) view.getLayoutParams()).f1619f;
            if (f3 > f2) {
                f2 = f3;
            }
            i8++;
            r5 = 0;
        }
        if (z) {
            o(f2, i5);
            i9 = 0;
            for (int i10 = 0; i10 < i6; i10++) {
                View view2 = this.f1613d[i10];
                p(view2, 1073741824, true);
                int iE2 = this.mOrientationHelper.e(view2);
                if (iE2 > i9) {
                    i9 = iE2;
                }
            }
        }
        for (int i11 = 0; i11 < i6; i11++) {
            View view3 = this.f1613d[i11];
            if (this.mOrientationHelper.e(view3) != i9) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.b;
                int i12 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin;
                int i13 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin;
                int iJ = j(bVar2.f1618e, bVar2.f1619f);
                if (this.mOrientation == 1) {
                    childMeasureSpec2 = RecyclerView.o.getChildMeasureSpec(iJ, 1073741824, i13, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - i12, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - i13, 1073741824);
                    childMeasureSpec = RecyclerView.o.getChildMeasureSpec(iJ, 1073741824, i12, ((ViewGroup.MarginLayoutParams) bVar2).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                q(view3, childMeasureSpec2, childMeasureSpec, true);
            }
        }
        int i14 = 0;
        bVar.f1626a = i9;
        if (this.mOrientation == 1) {
            if (cVar.f1631f == -1) {
                iF = cVar.b;
                i3 = iF - i9;
            } else {
                int i15 = cVar.b;
                i3 = i15;
                iF = i9 + i15;
            }
            i = 0;
            i2 = 0;
        } else if (cVar.f1631f == -1) {
            int i16 = cVar.b;
            i2 = i16 - i9;
            i3 = 0;
            i = i16;
            iF = 0;
        } else {
            int i17 = cVar.b;
            i = i9 + i17;
            i2 = i17;
            iF = 0;
            i3 = 0;
        }
        while (i14 < i6) {
            View view4 = this.f1613d[i14];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    int paddingLeft = getPaddingLeft() + this.c[this.b - bVar3.f1618e];
                    iF2 = paddingLeft;
                    iF3 = paddingLeft - this.mOrientationHelper.f(view4);
                } else {
                    int paddingLeft2 = getPaddingLeft() + this.c[bVar3.f1618e];
                    iF3 = paddingLeft2;
                    iF2 = this.mOrientationHelper.f(view4) + paddingLeft2;
                }
                i4 = i3;
            } else {
                int paddingTop = getPaddingTop() + this.c[bVar3.f1618e];
                i4 = paddingTop;
                iF2 = i;
                iF3 = i2;
                iF = this.mOrientationHelper.f(view4) + paddingTop;
            }
            layoutDecoratedWithMargins(view4, iF3, i4, iF2, iF);
            if (bVar3.c() || bVar3.b()) {
                bVar.c = true;
            }
            bVar.f1627d |= view4.hasFocusable();
            i14++;
            iF = iF;
            i = iF2;
            i2 = iF3;
            i3 = i4;
        }
        Arrays.fill(this.f1613d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView.v vVar, RecyclerView.z zVar, LinearLayoutManager.a aVar, int i) {
        super.onAnchorReady(vVar, zVar, aVar, i);
        t();
        if (zVar.b() > 0 && !zVar.e()) {
            h(vVar, zVar, aVar, i);
        }
        i();
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0107  */
    /* JADX WARN: Code duplicated, block: B:81:0x010d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0123  */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d6, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r24, int r25, androidx.recyclerview.widget.RecyclerView.v r26, androidx.recyclerview.widget.RecyclerView.z r27) {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.RecyclerView$z):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.v vVar, RecyclerView.z zVar, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        b bVar = (b) layoutParams;
        int iL = l(vVar, zVar, bVar.a());
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(bVar.e(), bVar.f(), iL, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(iL, 1, bVar.e(), bVar.f(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void onLayoutChildren(RecyclerView.v vVar, RecyclerView.z zVar) {
        if (zVar.e()) {
            b();
        }
        super.onLayoutChildren(vVar, zVar);
        e();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void onLayoutCompleted(RecyclerView.z zVar) {
        super.onLayoutCompleted(zVar);
        this.f1612a = false;
    }

    public void r(int i) {
        if (i == this.b) {
            return;
        }
        this.f1612a = true;
        if (i >= 1) {
            this.b = i;
            this.f1616g.h();
            requestLayout();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    public void s(c cVar) {
        this.f1616g = cVar;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int scrollHorizontallyBy(int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        t();
        i();
        return super.scrollHorizontallyBy(i, vVar, zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int scrollVerticallyBy(int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        t();
        i();
        return super.scrollVerticallyBy(i, vVar, zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int iChooseSize;
        int iChooseSize2;
        if (this.c == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView.o.chooseSize(i2, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.c;
            iChooseSize = RecyclerView.o.chooseSize(i, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.o.chooseSize(i, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.c;
            iChooseSize2 = RecyclerView.o.chooseSize(i2, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.f1612a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public static class b extends RecyclerView.p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1618e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1619f;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1618e = -1;
            this.f1619f = 0;
        }

        public int e() {
            return this.f1618e;
        }

        public int f() {
            return this.f1619f;
        }

        public b(int i, int i2) {
            super(i, i2);
            this.f1618e = -1;
            this.f1619f = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1618e = -1;
            this.f1619f = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1618e = -1;
            this.f1619f = 0;
        }
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.f1612a = false;
        this.b = -1;
        this.f1614e = new SparseIntArray();
        this.f1615f = new SparseIntArray();
        this.f1616g = new a();
        this.f1617h = new Rect();
        r(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.f1612a = false;
        this.b = -1;
        this.f1614e = new SparseIntArray();
        this.f1615f = new SparseIntArray();
        this.f1616g = new a();
        this.f1617h = new Rect();
        r(i);
    }
}
