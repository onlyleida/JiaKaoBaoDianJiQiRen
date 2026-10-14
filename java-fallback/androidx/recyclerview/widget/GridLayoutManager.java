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
        public a() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int e(int r1, int r2) {
            return r1 % r2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int r1) {
            return 1;
        }
    }

    public static class b extends RecyclerView.p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1618e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1619f;

        public b(Context r1, AttributeSet r2) {
            super(r1, r2);
            this.f1618e = -1;
            this.f1619f = 0;
        }

        public int e() {
            return this.f1618e;
        }

        public int f() {
            return this.f1619f;
        }

        public b(int r1, int r2) {
            super(r1, r2);
            this.f1618e = -1;
            this.f1619f = 0;
        }

        public b(ViewGroup.MarginLayoutParams r1) {
            super(r1);
            this.f1618e = -1;
            this.f1619f = 0;
        }

        public b(ViewGroup.LayoutParams r1) {
            super(r1);
            this.f1618e = -1;
            this.f1619f = 0;
        }
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final SparseIntArray f1620a;
        final SparseIntArray b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1621d;

        public c() {
            this.f1620a = new SparseIntArray();
            this.b = new SparseIntArray();
            this.c = false;
            this.f1621d = false;
        }

        static int a(SparseIntArray r4, int r5) {
            int r0 = r4.size() - 1;
            int r1 = 0;
        L3:
            if (r1 > r0) goto L8;
            int r2 = (r1 + r0) >>> 1;
            if (r4.keyAt(r2) < r5) goto L6;
            r0 = r2 - 1;
            goto L3
        L6:
            r1 = r2 + 1;
            goto L3
        L8:
            int r3 = r1 - 1;
            if (r3 >= 0) goto L11;
            return -1;
        L11:
            if (r3 < r4.size()) goto L13;
            return -1;
        L13:
            return r4.keyAt(r3);
        }

        int b(int r3, int r4) {
            if (this.f1621d == false) goto L5;
            int r0 = this.b.get(r3, -1);
            if (r0 == (-1)) goto L9;
            return r0;
        L9:
            int r5 = d(r3, r4);
            this.b.put(r3, r5);
            return r5;
        L5:
            return d(r3, r4);
        }

        int c(int r3, int r4) {
            if (this.c == false) goto L5;
            int r0 = this.f1620a.get(r3, -1);
            if (r0 == (-1)) goto L9;
            return r0;
        L9:
            int r5 = e(r3, r4);
            this.f1620a.put(r3, r5);
            return r5;
        L5:
            return e(r3, r4);
        }

        public int d(int r7, int r8) {
            if (this.f1621d == false) goto L9;
            int r0 = a(this.b, r7);
            if (r0 == (-1)) goto L9;
            int r2 = this.b.get(r0);
            int r3 = r0 + 1;
            int r4 = c(r0, r8) + f(r0);
            if (r4 != r8) goto L11;
            r2 = r2 + 1;
        L10:
            r4 = 0;
        L11:
            int r1 = f(r7);
        L12:
            if (r3 >= r7) goto L20;
            int r5 = f(r3);
            r4 = r4 + r5;
            if (r4 != r8) goto L16;
            r2 = r2 + 1;
            r4 = 0;
        L18:
            r3 = r3 + 1;
            goto L12
        L16:
            if (r4 <= r8) goto L18;
            r2 = r2 + 1;
            r4 = r5;
            goto L18
        L20:
            if ((r4 + r1) > r8) goto L22;
            return r2;
        L22:
            return r2 + 1;
        L9:
            r2 = 0;
            r3 = 0;
            goto L10
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:17:0x0030). Please report as a decompilation issue!!! */
        public int e(int r6, int r7) {
            int r0 = f(r6);
            if (r0 != r7) goto L6;
            return 0;
        L6:
            if (this.c == false) goto L10;
            int r2 = a(this.f1620a, r6);
            if (r2 < 0) goto L10;
            int r3 = this.f1620a.get(r2) + f(r2);
        L17:
            r2 = r2 + 1;
        L11:
            if (r2 >= r6) goto L19;
            int r4 = f(r2);
            r3 = r3 + r4;
            if (r3 != r7) goto L15;
            r3 = 0;
            goto L17
        L15:
            if (r3 <= r7) goto L17;
            r3 = r4;
            goto L17
        L19:
            if ((r0 + r3) > r7) goto L21;
            return r3;
        L21:
            return 0;
        L10:
            r2 = 0;
            r3 = 0;
            goto L11
        }

        public abstract int f(int r1);

        public void g() {
            this.b.clear();
        }

        public void h() {
            this.f1620a.clear();
        }
    }

    public GridLayoutManager(Context r2, AttributeSet r3, int r4, int r5) {
        super(r2, r3, r4, r5);
        this.f1612a = false;
        this.b = -1;
        this.f1614e = new SparseIntArray();
        this.f1615f = new SparseIntArray();
        this.f1616g = new a();
        this.f1617h = new Rect();
        r(RecyclerView.o.getProperties(r2, r3, r4, r5).b);
    }

    private void a(RecyclerView.v r5, RecyclerView.z r6, int r7, boolean r8) {
        int r0 = 0;
        int r1 = -1;
        if (r8 == false) goto L5;
        r1 = r7;
        int r9 = 0;
        int r10 = 1;
    L6:
        if (r9 == r1) goto L8;
        View r2 = this.f1613d[r9];
        b r3 = (b) r2.getLayoutParams();
        int r4 = n(r5, r6, getPosition(r2));
        r3.f1619f = r4;
        r3.f1618e = r0;
        r0 = r0 + r4;
        r9 = r9 + r10;
        goto L6
    L8:
        return;
    L5:
        r9 = r7 - 1;
        r10 = -1;
        goto L6
    }

    private void b() {
        int r0 = getChildCount();
        int r1 = 0;
    L3:
        if (r1 >= r0) goto L5;
        b r2 = (b) getChildAt(r1).getLayoutParams();
        int r3 = r2.a();
        this.f1614e.put(r3, r2.f());
        this.f1615f.put(r3, r2.e());
        r1 = r1 + 1;
        goto L3
    }

    private void c(int r3) {
        this.c = d(this.c, this.b, r3);
    }

    static int[] d(int[] r5, int r6, int r7) {
        int r0 = 1;
        if (r5 != null) goto L5;
    L8:
        r5 = new int[r6 + 1];
    L9:
        int r1 = 0;
        r5[0] = 0;
        int r2 = r7 / r6;
        int r8 = r7 % r6;
        int r3 = 0;
    L10:
        if (r0 > r6) goto L18;
        r1 = r1 + r8;
        if (r1 > 0) goto L14;
    L16:
        int r4 = r2;
    L17:
        r3 = r3 + r4;
        r5[r0] = r3;
        r0 = r0 + 1;
        goto L10
    L14:
        if ((r6 - r1) >= r8) goto L16;
        r4 = r2 + 1;
        r1 = r1 - r6;
        goto L17
    L18:
        return r5;
    L5:
        if (r5.length != (r6 + 1)) goto L8;
        if (r5[r5.length - 1] == r7) goto L9;
        goto L8
    }

    private void e() {
        this.f1614e.clear();
        this.f1615f.clear();
    }

    private int f(RecyclerView.z r10) {
        if (getChildCount() != 0) goto L5;
    L19:
        return 0;
    L5:
        if (r10.b() == 0) goto L19;
        ensureLayoutState();
        boolean r0 = isSmoothScrollbarEnabled();
        View r2 = findFirstVisibleChildClosestToStart(!r0, true);
        View r4 = findFirstVisibleChildClosestToEnd(!r0, true);
        if (r2 == null) goto L19;
        if (r4 == null) goto L19;
        int r5 = this.f1616g.b(getPosition(r2), this.b);
        int r6 = this.f1616g.b(getPosition(r4), this.b);
        int r7 = Math.min(r5, r6);
        int r8 = Math.max(r5, r6);
        int r11 = this.f1616g.b(r10.b() - 1, this.b) + 1;
        if (this.mShouldReverseLayout == false) goto L14;
        int r12 = Math.max(0, (r11 - r8) - 1);
    L15:
        if (r0 == true) goto L18;
        return r12;
    L18:
        return Math.round((r12 * (Math.abs(this.mOrientationHelper.d(r4) - this.mOrientationHelper.g(r2)) / ((this.f1616g.b(getPosition(r4), this.b) - this.f1616g.b(getPosition(r2), this.b)) + 1))) + (this.mOrientationHelper.m() - this.mOrientationHelper.g(r2)));
    L14:
        r12 = Math.max(0, r7);
        goto L15
    }

    private int g(RecyclerView.z r7) {
        if (getChildCount() != 0) goto L5;
    L17:
        return 0;
    L5:
        if (r7.b() == 0) goto L17;
        ensureLayoutState();
        View r0 = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
        View r3 = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
        if (r0 == null) goto L17;
        if (r3 == null) goto L17;
        if (isSmoothScrollbarEnabled() == false) goto L14;
        int r1 = this.mOrientationHelper.d(r3) - this.mOrientationHelper.g(r0);
        int r2 = this.f1616g.b(getPosition(r0), this.b);
        return (int) ((r1 / ((this.f1616g.b(getPosition(r3), this.b) - r2) + 1)) * (this.f1616g.b(r7.b() - 1, this.b) + 1));
    L14:
        return this.f1616g.b(r7.b() - 1, this.b) + 1;
    }

    private void h(RecyclerView.v r5, RecyclerView.z r6, LinearLayoutManager.a r7, int r8) {
        if (r8 != 1) goto L5;
        boolean r9 = true;
    L6:
        int r1 = m(r5, r6, r7.b);
        if (r9 == false) goto L12;
    L8:
        if (r1 <= 0) goto L23;
        int r10 = r7.b;
        if (r10 <= 0) goto L24;
        int r11 = r10 - 1;
        r7.b = r11;
        r1 = m(r5, r6, r11);
        goto L8
    L24:
        return;
    L23:
        return;
    L12:
        int r12 = r6.b() - 1;
        int r0 = r7.b;
    L13:
        if (r0 >= r12) goto L17;
        int r2 = r0 + 1;
        int r3 = m(r5, r6, r2);
        if (r3 <= r1) goto L17;
        r0 = r2;
        r1 = r3;
    L17:
        r7.b = r0;
        return;
    L5:
        r9 = false;
        goto L6
    }

    private void i() {
        View[] r0 = this.f1613d;
        if (r0 != null) goto L5;
    L6:
        this.f1613d = new View[this.b];
        return;
    L5:
        if (r0.length != this.b) goto L6;
    }

    private int l(RecyclerView.v r1, RecyclerView.z r2, int r3) {
        if (r2.e() == false) goto L5;
        int r4 = r1.f(r3);
        if (r4 != (-1)) goto L11;
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + r3);
        return 0;
    L11:
        return this.f1616g.b(r4, this.b);
    L5:
        return this.f1616g.b(r3, this.b);
    }

    private int m(RecyclerView.v r2, RecyclerView.z r3, int r4) {
        if (r3.e() == false) goto L5;
        int r5 = this.f1615f.get(r4, -1);
        if (r5 == (-1)) goto L9;
        return r5;
    L9:
        int r6 = r2.f(r4);
        if (r6 != (-1)) goto L14;
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + r4);
        return 0;
    L14:
        return this.f1616g.c(r6, this.b);
    L5:
        return this.f1616g.c(r4, this.b);
    }

    private int n(RecyclerView.v r2, RecyclerView.z r3, int r4) {
        if (r3.e() == false) goto L5;
        int r5 = this.f1614e.get(r4, -1);
        if (r5 == (-1)) goto L9;
        return r5;
    L9:
        int r6 = r2.f(r4);
        if (r6 != (-1)) goto L14;
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + r4);
        return 1;
    L14:
        return this.f1616g.f(r6);
    L5:
        return this.f1616g.f(r4);
    }

    private void o(float r2, int r3) {
        c(Math.max(Math.round(r2 * this.b), r3));
    }

    private void p(View r9, int r10, boolean r11) {
        b r0 = (b) r9.getLayoutParams();
        Rect r1 = r0.b;
        int r2 = ((r1.top + r1.bottom) + ((ViewGroup.MarginLayoutParams) r0).topMargin) + ((ViewGroup.MarginLayoutParams) r0).bottomMargin;
        int r3 = ((r1.left + r1.right) + ((ViewGroup.MarginLayoutParams) r0).leftMargin) + ((ViewGroup.MarginLayoutParams) r0).rightMargin;
        int r4 = j(r0.f1618e, r0.f1619f);
        if (this.mOrientation != 1) goto L5;
        int r12 = RecyclerView.o.getChildMeasureSpec(r4, r10, r3, ((ViewGroup.MarginLayoutParams) r0).width, false);
        int r5 = RecyclerView.o.getChildMeasureSpec(this.mOrientationHelper.n(), getHeightMode(), r2, ((ViewGroup.MarginLayoutParams) r0).height, true);
    L6:
        q(r9, r12, r5, r11);
        return;
    L5:
        int r13 = RecyclerView.o.getChildMeasureSpec(r4, r10, r2, ((ViewGroup.MarginLayoutParams) r0).height, false);
        int r6 = RecyclerView.o.getChildMeasureSpec(this.mOrientationHelper.n(), getWidthMode(), r3, ((ViewGroup.MarginLayoutParams) r0).width, true);
        r5 = r13;
        r12 = r6;
        goto L6
    }

    private void q(View r2, int r3, int r4, boolean r5) {
        RecyclerView.p r0 = (RecyclerView.p) r2.getLayoutParams();
        if (r5 == false) goto L5;
        boolean r6 = shouldReMeasureChild(r2, r3, r4, r0);
    L6:
        if (r6 == false) goto L9;
        r2.measure(r3, r4);
        return;
    L9:
        return;
    L5:
        r6 = shouldMeasureChild(r2, r3, r4, r0);
        goto L6
    }

    private void t() {
        if (getOrientation() != 1) goto L5;
        int r0 = getWidth() - getPaddingRight();
        int r1 = getPaddingLeft();
    L6:
        c(r0 - r1);
        return;
    L5:
        r0 = getHeight() - getPaddingBottom();
        r1 = getPaddingTop();
        goto L6
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean checkLayoutParams(RecyclerView.p r1) {
        return r1 instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void collectPrefetchPositionsForLayoutState(RecyclerView.z r6, LinearLayoutManager.c r7, RecyclerView.o.c r8) {
        int r0 = this.b;
        int r2 = 0;
    L4:
        if (r2 >= this.b) goto L9;
        if (r7.c(r6) == false) goto L13;
        if (r0 <= 0) goto L14;
        int r3 = r7.f1629d;
        r8.a(r3, Math.max(0, r7.f1632g));
        r0 = r0 - this.f1616g.f(r3);
        r7.f1629d += r7.f1630e;
        r2 = r2 + 1;
        goto L4
    L14:
        return;
    L13:
        return;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int computeHorizontalScrollOffset(RecyclerView.z r2) {
        if (this.i == false) goto L7;
        return f(r2);
    L7:
        return super.computeHorizontalScrollOffset(r2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int computeHorizontalScrollRange(RecyclerView.z r2) {
        if (this.i == false) goto L7;
        return g(r2);
    L7:
        return super.computeHorizontalScrollRange(r2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int computeVerticalScrollOffset(RecyclerView.z r2) {
        if (this.i == false) goto L7;
        return f(r2);
    L7:
        return super.computeVerticalScrollOffset(r2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int computeVerticalScrollRange(RecyclerView.z r2) {
        if (this.i == false) goto L7;
        return g(r2);
    L7:
        return super.computeVerticalScrollRange(r2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View findReferenceChild(RecyclerView.v r9, RecyclerView.z r10, boolean r11, boolean r12) {
        int r13 = getChildCount();
        int r0 = -1;
        int r1 = 1;
        if (r12 == false) goto L5;
        int r14 = getChildCount() - 1;
        r1 = -1;
    L6:
        int r15 = r10.b();
        ensureLayoutState();
        int r2 = this.mOrientationHelper.m();
        int r3 = this.mOrientationHelper.i();
        View r4 = null;
        View r5 = null;
    L7:
        if (r14 == r0) goto L27;
        View r6 = getChildAt(r14);
        int r7 = getPosition(r6);
        if (r7 < 0) goto L26;
        if (r7 >= r15) goto L26;
        if (m(r9, r10, r7) != 0) goto L26;
        if (((RecyclerView.p) r6.getLayoutParams()).c() == false) goto L19;
        if (r5 != null) goto L26;
        r5 = r6;
        goto L26
    L19:
        if (this.mOrientationHelper.g(r6) < r3) goto L21;
    L24:
        if (r4 != null) goto L26;
        r4 = r6;
        goto L26
    L21:
        if (this.mOrientationHelper.d(r6) < r2) goto L24;
        return r6;
    L26:
        r14 = r14 + r1;
        goto L7
    L27:
        if (r4 == null) goto L30;
        return r4;
    L30:
        return r5;
    L5:
        r0 = r13;
        r14 = 0;
        goto L6
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateDefaultLayoutParams() {
        if (this.mOrientation != 0) goto L7;
        return new b(-2, -1);
    L7:
        return new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateLayoutParams(Context r2, AttributeSet r3) {
        return new b(r2, r3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int getColumnCountForAccessibility(RecyclerView.v r3, RecyclerView.z r4) {
        if (this.mOrientation != 1) goto L7;
        return this.b;
    L7:
        if (r4.b() >= 1) goto L11;
        return 0;
    L11:
        return l(r3, r4, r4.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int getRowCountForAccessibility(RecyclerView.v r3, RecyclerView.z r4) {
        if (this.mOrientation != 0) goto L7;
        return this.b;
    L7:
        if (r4.b() >= 1) goto L11;
        return 0;
    L11:
        return l(r3, r4, r4.b() - 1) + 1;
    }

    int j(int r4, int r5) {
        if (this.mOrientation == 1) goto L5;
    L8:
        int[] r0 = this.c;
        return r0[r5 + r4] - r0[r4];
    L5:
        if (isLayoutRTL() == false) goto L8;
        int[] r1 = this.c;
        int r2 = this.b;
        return r1[r2 - r4] - r1[(r2 - r4) - r5];
    }

    public int k() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v19 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void layoutChunk(RecyclerView.v r18, RecyclerView.z r19, LinearLayoutManager.c r20, LinearLayoutManager.b r21) {
        int r3 = this.mOrientationHelper.l();
        ?? r5 = 0;
        if (r3 == 1073741824) goto L5;
        boolean r9 = true;
    L7:
        if (getChildCount() <= 0) goto L9;
        int r10 = this.c[this.b];
    L10:
        if (r9 == false) goto L13;
        t();
    L13:
        if (r20.f1630e != 1) goto L15;
        boolean r11 = true;
    L16:
        int r12 = this.b;
        if (r11 == true) goto L19;
        r12 = m(r18, r19, r20.f1629d) + n(r18, r19, r20.f1629d);
    L19:
        int r13 = 0;
    L21:
        if (r13 >= this.b) goto L36;
        if (r20.c(r19) == false) goto L36;
        if (r12 <= 0) goto L36;
        int r14 = r20.f1629d;
        int r15 = n(r18, r19, r14);
        if (r15 > this.b) goto L35;
        r12 = r12 - r15;
        if (r12 < 0) goto L36;
        View r4 = r20.d(r18);
        if (r4 == null) goto L36;
        this.f1613d[r13] = r4;
        r13 = r13 + 1;
        goto L21
    L35:
        throw new IllegalArgumentException("Item at position " + r14 + " requires " + r15 + " spans but GridLayoutManager has only " + this.b + " spans.");
    L36:
        if (r13 != 0) goto L39;
        r21.b = true;
        return;
    L39:
        float r6 = BitmapDescriptorFactory.HUE_RED;
        a(r18, r19, r13, r11);
        int r0 = 0;
        int r1 = 0;
    L40:
        if (r0 >= r13) goto L56;
        View r16 = this.f1613d[r0];
        if (r20.l != null) goto L46;
        if (r11 == false) goto L45;
        addView(r16);
    L49:
        calculateItemDecorationsForChild(r16, this.f1617h);
        p(r16, r3, r5);
        int r17 = this.mOrientationHelper.e(r16);
        if (r17 <= r1) goto L52;
        r1 = r17;
    L52:
        float r7 = (this.mOrientationHelper.f(r16) * 1.0f) / ((b) r16.getLayoutParams()).f1619f;
        if (r7 <= r6) goto L55;
        r6 = r7;
    L55:
        r0 = r0 + 1;
        r5 = 0;
        goto L40
    L45:
        addView(r16, r5);
        goto L49
    L46:
        if (r11 == false) goto L48;
        addDisappearingView(r16);
        goto L49
    L48:
        addDisappearingView(r16, r5);
        goto L49
    L56:
        if (r9 == false) goto L63;
        o(r6, r10);
        int r2 = 0;
        r1 = 0;
    L58:
        if (r2 >= r13) goto L63;
        View r8 = this.f1613d[r2];
        p(r8, 1073741824, true);
        int r22 = this.mOrientationHelper.e(r8);
        if (r22 <= r1) goto L62;
        r1 = r22;
    L62:
        r2 = r2 + 1;
    L63:
        int r23 = 0;
    L64:
        if (r23 >= r13) goto L74;
        View r24 = this.f1613d[r23];
        if (this.mOrientationHelper.e(r24) == r1) goto L73;
        b r25 = (b) r24.getLayoutParams();
        Rect r26 = r25.b;
        int r27 = ((r26.top + r26.bottom) + ((ViewGroup.MarginLayoutParams) r25).topMargin) + ((ViewGroup.MarginLayoutParams) r25).bottomMargin;
        int r110 = ((r26.left + r26.right) + ((ViewGroup.MarginLayoutParams) r25).leftMargin) + ((ViewGroup.MarginLayoutParams) r25).rightMargin;
        int r28 = j(r25.f1618e, r25.f1619f);
        if (this.mOrientation != 1) goto L70;
        int r29 = RecyclerView.o.getChildMeasureSpec(r28, 1073741824, r110, ((ViewGroup.MarginLayoutParams) r25).width, false);
        int r30 = View.MeasureSpec.makeMeasureSpec(r1 - r27, 1073741824);
    L71:
        q(r24, r29, r30, true);
        goto L73
    L70:
        int r111 = View.MeasureSpec.makeMeasureSpec(r1 - r110, 1073741824);
        r30 = RecyclerView.o.getChildMeasureSpec(r28, 1073741824, r27, ((ViewGroup.MarginLayoutParams) r25).height, false);
        r29 = r111;
    L73:
        r23 = r23 + 1;
        goto L64
    L74:
        int r112 = 0;
        r21.f1626a = r1;
        if (this.mOrientation != 1) goto L82;
        if (r20.f1631f != (-1)) goto L79;
        int r31 = r20.b;
        int r32 = r31 - r1;
    L80:
        int r33 = 0;
        int r34 = 0;
    L85:
        if (r112 >= r13) goto L100;
        View r35 = this.f1613d[r112];
        b r113 = (b) r35.getLayoutParams();
        if (this.mOrientation == 1) goto L89;
        int r36 = getPaddingTop() + this.c[r113.f1618e];
        int r114 = r36;
        int r115 = r33;
        int r116 = r34;
        r31 = this.mOrientationHelper.f(r35) + r36;
    L94:
        layoutDecoratedWithMargins(r35, r116, r114, r115, r31);
        if (r113.c() == false) goto L97;
    L98:
        r21.c = true;
    L99:
        r21.f1627d |= r35.hasFocusable();
        r112 = r112 + 1;
        r31 = r31;
        r33 = r115;
        r34 = r116;
        r32 = r114;
        goto L85
    L97:
        if (r113.b() == false) goto L99;
    L89:
        if (isLayoutRTL() == false) goto L91;
        int r37 = getPaddingLeft() + this.c[this.b - r113.f1618e];
        r115 = r37;
        r116 = r37 - this.mOrientationHelper.f(r35);
    L92:
        r114 = r32;
        goto L94
    L91:
        int r38 = getPaddingLeft() + this.c[r113.f1618e];
        r116 = r38;
        r115 = this.mOrientationHelper.f(r35) + r38;
        goto L92
    L100:
        Arrays.fill(this.f1613d, null);
        return;
    L79:
        int r39 = r20.b;
        r32 = r39;
        r31 = r1 + r39;
        goto L80
    L82:
        if (r20.f1631f != (-1)) goto L84;
        int r40 = r20.b;
        r34 = r40 - r1;
        r32 = 0;
        r33 = r40;
        r31 = 0;
        goto L85
    L84:
        int r41 = r20.b;
        r33 = r1 + r41;
        r34 = r41;
        r31 = 0;
        r32 = 0;
        goto L85
    L15:
        r11 = false;
        goto L16
    L9:
        r10 = 0;
        goto L10
    L5:
        r9 = false;
        goto L7
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView.v r2, RecyclerView.z r3, LinearLayoutManager.a r4, int r5) {
        super.onAnchorReady(r2, r3, r4, r5);
        t();
        if (r3.b() > 0) goto L5;
    L7:
        i();
        return;
    L5:
        if (r3.e() == true) goto L7;
        h(r2, r3, r4, r5);
        goto L7
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public View onFocusSearchFailed(View r24, int r25, RecyclerView.v r26, RecyclerView.z r27) {
        RecyclerView.v r1 = r26;
        RecyclerView.z r2 = r27;
        View r3 = findContainingItemView(r24);
        View r4 = null;
        if (r3 != null) goto L5;
        return null;
    L5:
        b r5 = (b) r3.getLayoutParams();
        int r6 = r5.f1618e;
        int r7 = r5.f1619f + r6;
        if (super.onFocusSearchFailed(r24, r25, r26, r27) != null) goto L9;
        return null;
    L9:
        if (convertFocusDirectionToLayoutDirection(r25) != 1) goto L11;
        boolean r8 = true;
    L13:
        if (r8 == this.mShouldReverseLayout) goto L15;
        boolean r9 = true;
    L17:
        if (r9 == false) goto L19;
        int r10 = getChildCount() - 1;
        int r11 = -1;
        int r12 = -1;
    L21:
        if (this.mOrientation == 1) goto L23;
    L25:
        boolean r13 = false;
    L26:
        int r14 = l(r1, r2, r10);
        int r15 = r10;
        int r16 = 0;
        int r17 = -1;
        int r18 = -1;
        int r19 = 0;
        View r20 = null;
    L27:
        if (r15 == r11) goto L85;
        int r21 = l(r1, r2, r15);
        View r22 = getChildAt(r15);
        if (r22 == r3) goto L85;
        if (r22.hasFocusable() == false) goto L37;
        if (r21 == r14) goto L37;
        if (r4 != null) goto L85;
        View r110 = r3;
        View r23 = r20;
        int r111 = r16;
        int r28 = r11;
        int r29 = r18;
        int r30 = r19;
    L83:
        r18 = r29;
        r19 = r30;
        r16 = r111;
        r20 = r23;
    L84:
        r15 = r15 + r12;
        r1 = r26;
        r2 = r27;
        r3 = r110;
        r11 = r28;
    L37:
        b r31 = (b) r22.getLayoutParams();
        int r32 = r31.f1618e;
        r110 = r3;
        int r33 = r31.f1619f + r32;
        if (r22.hasFocusable() == false) goto L43;
        if (r32 != r6) goto L43;
        if (r33 != r7) goto L43;
        return r22;
    L43:
        if (r22.hasFocusable() == false) goto L46;
        if (r4 != null) goto L46;
    L48:
        r23 = r20;
    L49:
        r111 = r16;
        r28 = r11;
        r29 = r18;
        r30 = r19;
    L50:
        boolean r112 = true;
    L78:
        if (r112 == false) goto L83;
        if (r22.hasFocusable() == false) goto L82;
        r17 = r31.f1618e;
        r18 = r29;
        r19 = r30;
        r20 = r23;
        r4 = r22;
        r16 = Math.min(r33, r7) - Math.max(r32, r6);
        goto L84
    L82:
        int r34 = r31.f1618e;
        r19 = Math.min(r33, r7) - Math.max(r32, r6);
        r18 = r34;
        r16 = r111;
        r20 = r22;
    L46:
        if (r22.hasFocusable() == true) goto L51;
        if (r20 == null) goto L48;
    L51:
        r23 = r20;
        int r35 = Math.min(r33, r7) - Math.max(r32, r6);
        if (r22.hasFocusable() == false) goto L61;
        if (r35 > r16) goto L49;
        if (r35 != r16) goto L75;
        if (r32 <= r17) goto L58;
        boolean r36 = true;
    L59:
        if (r13 != r36) goto L75;
    L58:
        r36 = false;
    L75:
        r111 = r16;
        r28 = r11;
    L76:
        r29 = r18;
        r30 = r19;
    L77:
        r112 = false;
        goto L78
    L61:
        if (r4 != null) goto L75;
        r111 = r16;
        r28 = r11;
        r112 = true;
        if (isViewPartiallyVisible(r22, false, true) == false) goto L76;
        r30 = r19;
        if (r35 <= r30) goto L67;
        r29 = r18;
        goto L78
    L67:
        if (r35 != r30) goto L74;
        r29 = r18;
        if (r32 > r29) goto L72;
        r112 = false;
    L72:
        if (r13 != r112) goto L77;
    L74:
        r29 = r18;
    L85:
        View r210 = r20;
        if (r4 == null) goto L89;
        return r4;
    L89:
        return r210;
    L23:
        if (isLayoutRTL() == false) goto L25;
        r13 = true;
        goto L26
    L19:
        r11 = getChildCount();
        r10 = 0;
        r12 = 1;
        goto L21
    L15:
        r9 = false;
        goto L17
    L11:
        r8 = false;
        goto L13
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.v r8, RecyclerView.z r9, View r10, AccessibilityNodeInfoCompat r11) {
        ViewGroup.LayoutParams r0 = r10.getLayoutParams();
        if ((r0 instanceof b) == true) goto L6;
        super.onInitializeAccessibilityNodeInfoForItem(r10, r11);
        return;
    L6:
        b r1 = (b) r0;
        int r12 = l(r8, r9, r1.a());
        if (this.mOrientation != 0) goto L9;
        r11.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(r1.e(), r1.f(), r12, 1, false, false));
        return;
    L9:
        r11.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(r12, 1, r1.e(), r1.f(), false, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsAdded(RecyclerView r1, int r2, int r3) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsChanged(RecyclerView r1) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsMoved(RecyclerView r1, int r2, int r3, int r4) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsRemoved(RecyclerView r1, int r2, int r3) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsUpdated(RecyclerView r1, int r2, int r3, Object r4) {
        this.f1616g.h();
        this.f1616g.g();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void onLayoutChildren(RecyclerView.v r2, RecyclerView.z r3) {
        if (r3.e() == false) goto L5;
        b();
    L5:
        super.onLayoutChildren(r2, r3);
        e();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void onLayoutCompleted(RecyclerView.z r1) {
        super.onLayoutCompleted(r1);
        this.f1612a = false;
    }

    public void r(int r4) {
        if (r4 != this.b) goto L5;
        return;
    L5:
        this.f1612a = true;
        if (r4 < 1) goto L10;
        this.b = r4;
        this.f1616g.h();
        requestLayout();
        return;
    L10:
        throw new IllegalArgumentException("Span count should be at least 1. Provided " + r4);
    }

    public void s(c r1) {
        this.f1616g = r1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int scrollHorizontallyBy(int r1, RecyclerView.v r2, RecyclerView.z r3) {
        t();
        i();
        return super.scrollHorizontallyBy(r1, r2, r3);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int scrollVerticallyBy(int r1, RecyclerView.v r2, RecyclerView.z r3) {
        t();
        i();
        return super.scrollVerticallyBy(r1, r2, r3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void setMeasuredDimension(Rect r5, int r6, int r7) {
        if (this.c != null) goto L5;
        super.setMeasuredDimension(r5, r6, r7);
    L5:
        int r0 = getPaddingLeft() + getPaddingRight();
        int r1 = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation != 1) goto L8;
        int r8 = RecyclerView.o.chooseSize(r7, r5.height() + r1, getMinimumHeight());
        int[] r9 = this.c;
        int r10 = RecyclerView.o.chooseSize(r6, r9[r9.length - 1] + r0, getMinimumWidth());
    L9:
        setMeasuredDimension(r10, r8);
        return;
    L8:
        r10 = RecyclerView.o.chooseSize(r6, r5.width() + r0, getMinimumWidth());
        int[] r11 = this.c;
        r8 = RecyclerView.o.chooseSize(r7, r11[r11.length - 1] + r1, getMinimumHeight());
        goto L9
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean r2) {
        if (r2 == true) goto L6;
        super.setStackFromEnd(false);
        return;
    L6:
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public boolean supportsPredictiveItemAnimations() {
        if (this.mPendingSavedState == null) goto L5;
    L7:
        return false;
    L5:
        if (this.f1612a == true) goto L7;
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateLayoutParams(ViewGroup.LayoutParams r2) {
        if ((r2 instanceof ViewGroup.MarginLayoutParams) == false) goto L7;
        return new b((ViewGroup.MarginLayoutParams) r2);
    L7:
        return new b(r2);
    }

    public GridLayoutManager(Context r1, int r2) {
        super(r1);
        this.f1612a = false;
        this.b = -1;
        this.f1614e = new SparseIntArray();
        this.f1615f = new SparseIntArray();
        this.f1616g = new a();
        this.f1617h = new Rect();
        r(r2);
    }

    public GridLayoutManager(Context r1, int r2, int r3, boolean r4) {
        super(r1, r3, r4);
        this.f1612a = false;
        this.b = -1;
        this.f1614e = new SparseIntArray();
        this.f1615f = new SparseIntArray();
        this.f1616g = new a();
        this.f1617h = new Rect();
        r(r2);
    }
}
