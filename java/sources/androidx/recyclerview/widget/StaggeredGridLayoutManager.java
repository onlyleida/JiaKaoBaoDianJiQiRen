package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.o implements RecyclerView.y.b {
    d[] b;
    n c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    n f1680d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1682f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j f1683g;
    private BitSet j;
    private boolean o;
    private boolean p;
    private SavedState q;
    private int r;
    private int[] w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1679a = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f1684h = false;
    boolean i = false;
    int k = -1;
    int l = Integer.MIN_VALUE;
    LazySpanLookup m = new LazySpanLookup();
    private int n = 2;
    private final Rect s = new Rect();
    private final b t = new b();
    private boolean u = false;
    private boolean v = true;
    private final Runnable x = new a();

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1688a;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int[] f1689d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1690e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int[] f1691f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        List<LazySpanLookup.FullSpanItem> f1692g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f1693h;
        boolean i;
        boolean j;

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

        void a() {
            this.f1689d = null;
            this.c = 0;
            this.f1688a = -1;
            this.b = -1;
        }

        void b() {
            this.f1689d = null;
            this.c = 0;
            this.f1690e = 0;
            this.f1691f = null;
            this.f1692g = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1688a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            if (this.c > 0) {
                parcel.writeIntArray(this.f1689d);
            }
            parcel.writeInt(this.f1690e);
            if (this.f1690e > 0) {
                parcel.writeIntArray(this.f1691f);
            }
            parcel.writeInt(this.f1693h ? 1 : 0);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeList(this.f1692g);
        }

        SavedState(Parcel parcel) {
            this.f1688a = parcel.readInt();
            this.b = parcel.readInt();
            int i = parcel.readInt();
            this.c = i;
            if (i > 0) {
                int[] iArr = new int[i];
                this.f1689d = iArr;
                parcel.readIntArray(iArr);
            }
            int i2 = parcel.readInt();
            this.f1690e = i2;
            if (i2 > 0) {
                int[] iArr2 = new int[i2];
                this.f1691f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f1693h = parcel.readInt() == 1;
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.f1692g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.c = savedState.c;
            this.f1688a = savedState.f1688a;
            this.b = savedState.b;
            this.f1689d = savedState.f1689d;
            this.f1690e = savedState.f1690e;
            this.f1691f = savedState.f1691f;
            this.f1693h = savedState.f1693h;
            this.i = savedState.i;
            this.j = savedState.j;
            this.f1692g = savedState.f1692g;
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.g();
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1695a;
        int b;
        boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1696d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f1697e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int[] f1698f;

        b() {
            c();
        }

        void a() {
            this.b = this.c ? StaggeredGridLayoutManager.this.c.i() : StaggeredGridLayoutManager.this.c.m();
        }

        void b(int i) {
            if (this.c) {
                this.b = StaggeredGridLayoutManager.this.c.i() - i;
            } else {
                this.b = StaggeredGridLayoutManager.this.c.m() + i;
            }
        }

        void c() {
            this.f1695a = -1;
            this.b = Integer.MIN_VALUE;
            this.c = false;
            this.f1696d = false;
            this.f1697e = false;
            int[] iArr = this.f1698f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void d(d[] dVarArr) {
            int length = dVarArr.length;
            int[] iArr = this.f1698f;
            if (iArr == null || iArr.length < length) {
                this.f1698f = new int[StaggeredGridLayoutManager.this.b.length];
            }
            for (int i = 0; i < length; i++) {
                this.f1698f[i] = dVarArr[i].r(Integer.MIN_VALUE);
            }
        }
    }

    public static class c extends RecyclerView.p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d f1700e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f1701f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public boolean e() {
            return this.f1701f;
        }

        public void f(boolean z) {
            this.f1701f = z;
        }

        public c(int i, int i2) {
            super(i, i2);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ArrayList<View> f1702a = new ArrayList<>();
        int b = Integer.MIN_VALUE;
        int c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1703d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f1704e;

        d(int i) {
            this.f1704e = i;
        }

        void a(View view) {
            c cVarP = p(view);
            cVarP.f1700e = this;
            this.f1702a.add(view);
            this.c = Integer.MIN_VALUE;
            if (this.f1702a.size() == 1) {
                this.b = Integer.MIN_VALUE;
            }
            if (cVarP.c() || cVarP.b()) {
                this.f1703d += StaggeredGridLayoutManager.this.c.e(view);
            }
        }

        void b(boolean z, int i) {
            int iN = z ? n(Integer.MIN_VALUE) : r(Integer.MIN_VALUE);
            e();
            if (iN == Integer.MIN_VALUE) {
                return;
            }
            if (!z || iN >= StaggeredGridLayoutManager.this.c.i()) {
                if (z || iN <= StaggeredGridLayoutManager.this.c.m()) {
                    if (i != Integer.MIN_VALUE) {
                        iN += i;
                    }
                    this.c = iN;
                    this.b = iN;
                }
            }
        }

        void c() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            ArrayList<View> arrayList = this.f1702a;
            View view = arrayList.get(arrayList.size() - 1);
            c cVarP = p(view);
            this.c = StaggeredGridLayoutManager.this.c.d(view);
            if (cVarP.f1701f && (fullSpanItemF = StaggeredGridLayoutManager.this.m.f(cVarP.a())) != null && fullSpanItemF.b == 1) {
                this.c += fullSpanItemF.a(this.f1704e);
            }
        }

        void d() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            View view = this.f1702a.get(0);
            c cVarP = p(view);
            this.b = StaggeredGridLayoutManager.this.c.g(view);
            if (cVarP.f1701f && (fullSpanItemF = StaggeredGridLayoutManager.this.m.f(cVarP.a())) != null && fullSpanItemF.b == -1) {
                this.b -= fullSpanItemF.a(this.f1704e);
            }
        }

        void e() {
            this.f1702a.clear();
            s();
            this.f1703d = 0;
        }

        public int f() {
            return StaggeredGridLayoutManager.this.f1684h ? j(this.f1702a.size() - 1, -1, true) : j(0, this.f1702a.size(), true);
        }

        public int g() {
            return StaggeredGridLayoutManager.this.f1684h ? j(0, this.f1702a.size(), true) : j(this.f1702a.size() - 1, -1, true);
        }

        public int h() {
            return StaggeredGridLayoutManager.this.f1684h ? k(0, this.f1702a.size(), false) : k(this.f1702a.size() - 1, -1, false);
        }

        int i(int i, int i2, boolean z, boolean z2, boolean z3) {
            int iM = StaggeredGridLayoutManager.this.c.m();
            int i3 = StaggeredGridLayoutManager.this.c.i();
            int i4 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f1702a.get(i);
                int iG = StaggeredGridLayoutManager.this.c.g(view);
                int iD = StaggeredGridLayoutManager.this.c.d(view);
                boolean z4 = false;
                boolean z5 = !z3 ? iG >= i3 : iG > i3;
                if (!z3 ? iD > iM : iD >= iM) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (iG >= iM && iD <= i3) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (iG < iM || iD > i3) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i += i4;
            }
            return -1;
        }

        int j(int i, int i2, boolean z) {
            return i(i, i2, false, false, z);
        }

        int k(int i, int i2, boolean z) {
            return i(i, i2, z, true, false);
        }

        public int l() {
            return this.f1703d;
        }

        int m() {
            int i = this.c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            c();
            return this.c;
        }

        int n(int i) {
            int i2 = this.c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f1702a.size() == 0) {
                return i;
            }
            c();
            return this.c;
        }

        public View o(int i, int i2) {
            View view = null;
            if (i2 != -1) {
                int size = this.f1702a.size() - 1;
                while (size >= 0) {
                    View view2 = this.f1702a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f1684h && staggeredGridLayoutManager.getPosition(view2) >= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f1684h && staggeredGridLayoutManager2.getPosition(view2) <= i) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f1702a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = this.f1702a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f1684h && staggeredGridLayoutManager3.getPosition(view3) <= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f1684h && staggeredGridLayoutManager4.getPosition(view3) >= i) || !view3.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        c p(View view) {
            return (c) view.getLayoutParams();
        }

        int q() {
            int i = this.b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            d();
            return this.b;
        }

        int r(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f1702a.size() == 0) {
                return i;
            }
            d();
            return this.b;
        }

        void s() {
            this.b = Integer.MIN_VALUE;
            this.c = Integer.MIN_VALUE;
        }

        void t(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                this.b = i2 + i;
            }
            int i3 = this.c;
            if (i3 != Integer.MIN_VALUE) {
                this.c = i3 + i;
            }
        }

        void u() {
            int size = this.f1702a.size();
            View viewRemove = this.f1702a.remove(size - 1);
            c cVarP = p(viewRemove);
            cVarP.f1700e = null;
            if (cVarP.c() || cVarP.b()) {
                this.f1703d -= StaggeredGridLayoutManager.this.c.e(viewRemove);
            }
            if (size == 1) {
                this.b = Integer.MIN_VALUE;
            }
            this.c = Integer.MIN_VALUE;
        }

        void v() {
            View viewRemove = this.f1702a.remove(0);
            c cVarP = p(viewRemove);
            cVarP.f1700e = null;
            if (this.f1702a.size() == 0) {
                this.c = Integer.MIN_VALUE;
            }
            if (cVarP.c() || cVarP.b()) {
                this.f1703d -= StaggeredGridLayoutManager.this.c.e(viewRemove);
            }
            this.b = Integer.MIN_VALUE;
        }

        void w(View view) {
            c cVarP = p(view);
            cVarP.f1700e = this;
            this.f1702a.add(0, view);
            this.b = Integer.MIN_VALUE;
            if (this.f1702a.size() == 1) {
                this.c = Integer.MIN_VALUE;
            }
            if (cVarP.c() || cVarP.b()) {
                this.f1703d += StaggeredGridLayoutManager.this.c.e(view);
            }
        }

        void x(int i) {
            this.b = i;
            this.c = i;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.o.d properties = RecyclerView.o.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.f1654a);
        Q(properties.b);
        setReverseLayout(properties.c);
        this.f1683g = new j();
        k();
    }

    private d A(j jVar) {
        int i;
        int i2;
        int i3 = -1;
        if (I(jVar.f1782e)) {
            i = this.f1679a - 1;
            i2 = -1;
        } else {
            i = 0;
            i3 = this.f1679a;
            i2 = 1;
        }
        d dVar = null;
        if (jVar.f1782e == 1) {
            int i4 = Integer.MAX_VALUE;
            int iM = this.c.m();
            while (i != i3) {
                d dVar2 = this.b[i];
                int iN = dVar2.n(iM);
                if (iN < i4) {
                    dVar = dVar2;
                    i4 = iN;
                }
                i += i2;
            }
            return dVar;
        }
        int i5 = Integer.MIN_VALUE;
        int i6 = this.c.i();
        while (i != i3) {
            d dVar3 = this.b[i];
            int iR = dVar3.r(i6);
            if (iR > i5) {
                dVar = dVar3;
                i5 = iR;
            }
            i += i2;
        }
        return dVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0025  */
    /* JADX WARN: Code duplicated, block: B:17:0x0028 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0044  */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:27:0x004d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0053  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    private void C(int i, int i2, int i3) {
        int i4;
        int i5;
        int iV;
        int iV2 = this.i ? v() : u();
        if (i3 == 8) {
            if (i < i2) {
                i4 = i2 + 1;
            } else {
                i4 = i + 1;
                i5 = i2;
            }
            this.m.h(i5);
            if (i3 != 1) {
                this.m.j(i, i2);
            } else if (i3 != 2) {
                this.m.k(i, i2);
            } else if (i3 == 8) {
                this.m.k(i, 1);
                this.m.j(i2, 1);
            }
            if (i4 <= iV2) {
                return;
            }
            if (this.i) {
                iV = u();
            } else {
                iV = v();
            }
            if (i5 <= iV) {
                requestLayout();
            }
        }
        i4 = i + i2;
        i5 = i;
        this.m.h(i5);
        if (i3 != 1) {
            this.m.j(i, i2);
        } else if (i3 != 2) {
            this.m.k(i, i2);
        } else if (i3 == 8) {
            this.m.k(i, 1);
            this.m.j(i2, 1);
        }
        if (i4 <= iV2) {
            return;
        }
        if (this.i) {
            iV = u();
        } else {
            iV = v();
        }
        if (i5 <= iV) {
            requestLayout();
        }
    }

    private void F(View view, int i, int i2, boolean z) {
        calculateItemDecorationsForChild(view, this.s);
        c cVar = (c) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        Rect rect = this.s;
        int iY = Y(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) cVar).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        Rect rect2 = this.s;
        int iY2 = Y(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) cVar).bottomMargin + rect2.bottom);
        if (z ? shouldReMeasureChild(view, iY, iY2, cVar) : shouldMeasureChild(view, iY, iY2, cVar)) {
            view.measure(iY, iY2);
        }
    }

    private void G(View view, c cVar, boolean z) {
        if (cVar.f1701f) {
            if (this.f1681e == 1) {
                F(view, this.r, RecyclerView.o.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z);
                return;
            } else {
                F(view, RecyclerView.o.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) cVar).width, true), this.r, z);
                return;
            }
        }
        if (this.f1681e == 1) {
            F(view, RecyclerView.o.getChildMeasureSpec(this.f1682f, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) cVar).width, false), RecyclerView.o.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z);
        } else {
            F(view, RecyclerView.o.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) cVar).width, true), RecyclerView.o.getChildMeasureSpec(this.f1682f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) cVar).height, false), z);
        }
    }

    /* JADX WARN: Code duplicated, block: B:89:0x015a  */
    private void H(RecyclerView.v vVar, RecyclerView.z zVar, boolean z) {
        boolean z2;
        SavedState savedState;
        b bVar = this.t;
        if (!(this.q == null && this.k == -1) && zVar.b() == 0) {
            removeAndRecycleAllViews(vVar);
            bVar.c();
            return;
        }
        boolean z3 = (bVar.f1697e && this.k == -1 && this.q == null) ? false : true;
        if (z3) {
            bVar.c();
            if (this.q != null) {
                b(bVar);
            } else {
                resolveShouldLayoutReverse();
                bVar.c = this.i;
            }
            U(zVar, bVar);
            bVar.f1697e = true;
        }
        if (this.q == null && this.k == -1 && (bVar.c != this.o || isLayoutRTL() != this.p)) {
            this.m.b();
            bVar.f1696d = true;
        }
        if (getChildCount() > 0 && ((savedState = this.q) == null || savedState.c < 1)) {
            if (bVar.f1696d) {
                for (int i = 0; i < this.f1679a; i++) {
                    this.b[i].e();
                    int i2 = bVar.b;
                    if (i2 != Integer.MIN_VALUE) {
                        this.b[i].x(i2);
                    }
                }
            } else if (z3 || this.t.f1698f == null) {
                for (int i3 = 0; i3 < this.f1679a; i3++) {
                    this.b[i3].b(this.i, bVar.b);
                }
                this.t.d(this.b);
            } else {
                for (int i4 = 0; i4 < this.f1679a; i4++) {
                    d dVar = this.b[i4];
                    dVar.e();
                    dVar.x(this.t.f1698f[i4]);
                }
            }
        }
        detachAndScrapAttachedViews(vVar);
        this.f1683g.f1780a = false;
        this.u = false;
        W(this.f1680d.n());
        V(bVar.f1695a, zVar);
        if (bVar.c) {
            P(-1);
            l(vVar, this.f1683g, zVar);
            P(1);
            j jVar = this.f1683g;
            jVar.c = bVar.f1695a + jVar.f1781d;
            l(vVar, jVar, zVar);
        } else {
            P(1);
            l(vVar, this.f1683g, zVar);
            P(-1);
            j jVar2 = this.f1683g;
            jVar2.c = bVar.f1695a + jVar2.f1781d;
            l(vVar, jVar2, zVar);
        }
        O();
        if (getChildCount() > 0) {
            if (this.i) {
                s(vVar, zVar, true);
                t(vVar, zVar, false);
            } else {
                t(vVar, zVar, true);
                s(vVar, zVar, false);
            }
        }
        if (z && !zVar.e()) {
            if (this.n != 0 && getChildCount() > 0 && (this.u || D() != null)) {
                removeCallbacks(this.x);
                z2 = g();
            }
        }
        if (zVar.e()) {
            this.t.c();
        }
        this.o = bVar.c;
        this.p = isLayoutRTL();
        if (z2) {
            this.t.c();
            H(vVar, zVar, false);
        }
    }

    private boolean I(int i) {
        if (this.f1681e == 0) {
            return (i == -1) != this.i;
        }
        return ((i == -1) == this.i) == isLayoutRTL();
    }

    private void K(View view) {
        for (int i = this.f1679a - 1; i >= 0; i--) {
            this.b[i].w(view);
        }
    }

    private void L(RecyclerView.v vVar, j jVar) {
        int iMin;
        if (!jVar.f1780a || jVar.i) {
            return;
        }
        if (jVar.b == 0) {
            if (jVar.f1782e == -1) {
                M(vVar, jVar.f1784g);
                return;
            } else {
                N(vVar, jVar.f1783f);
                return;
            }
        }
        if (jVar.f1782e == -1) {
            int i = jVar.f1783f;
            int iX = i - x(i);
            M(vVar, iX < 0 ? jVar.f1784g : jVar.f1784g - Math.min(iX, jVar.b));
        } else {
            int iY = y(jVar.f1784g) - jVar.f1784g;
            if (iY < 0) {
                iMin = jVar.f1783f;
            } else {
                iMin = Math.min(iY, jVar.b) + jVar.f1783f;
            }
            N(vVar, iMin);
        }
    }

    private void M(RecyclerView.v vVar, int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.c.g(childAt) < i || this.c.q(childAt) < i) {
                return;
            }
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.f1701f) {
                for (int i2 = 0; i2 < this.f1679a; i2++) {
                    if (this.b[i2].f1702a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.f1679a; i3++) {
                    this.b[i3].u();
                }
            } else if (cVar.f1700e.f1702a.size() == 1) {
                return;
            } else {
                cVar.f1700e.u();
            }
            removeAndRecycleView(childAt, vVar);
        }
    }

    private void N(RecyclerView.v vVar, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.c.d(childAt) > i || this.c.p(childAt) > i) {
                return;
            }
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.f1701f) {
                for (int i2 = 0; i2 < this.f1679a; i2++) {
                    if (this.b[i2].f1702a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.f1679a; i3++) {
                    this.b[i3].v();
                }
            } else if (cVar.f1700e.f1702a.size() == 1) {
                return;
            } else {
                cVar.f1700e.v();
            }
            removeAndRecycleView(childAt, vVar);
        }
    }

    private void O() {
        if (this.f1680d.k() == 1073741824) {
            return;
        }
        float fMax = BitmapDescriptorFactory.HUE_RED;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            float fE = this.f1680d.e(childAt);
            if (fE >= fMax) {
                if (((c) childAt.getLayoutParams()).e()) {
                    fE = (fE * 1.0f) / this.f1679a;
                }
                fMax = Math.max(fMax, fE);
            }
        }
        int i2 = this.f1682f;
        int iRound = Math.round(fMax * this.f1679a);
        if (this.f1680d.k() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.f1680d.n());
        }
        W(iRound);
        if (this.f1682f == i2) {
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            c cVar = (c) childAt2.getLayoutParams();
            if (!cVar.f1701f) {
                if (isLayoutRTL() && this.f1681e == 1) {
                    int i4 = this.f1679a;
                    int i5 = cVar.f1700e.f1704e;
                    childAt2.offsetLeftAndRight(((-((i4 - 1) - i5)) * this.f1682f) - ((-((i4 - 1) - i5)) * i2));
                } else {
                    int i6 = cVar.f1700e.f1704e;
                    int i7 = this.f1682f * i6;
                    int i8 = i6 * i2;
                    if (this.f1681e == 1) {
                        childAt2.offsetLeftAndRight(i7 - i8);
                    } else {
                        childAt2.offsetTopAndBottom(i7 - i8);
                    }
                }
            }
        }
    }

    private void P(int i) {
        j jVar = this.f1683g;
        jVar.f1782e = i;
        jVar.f1781d = this.i != (i == -1) ? -1 : 1;
    }

    private void R(int i, int i2) {
        for (int i3 = 0; i3 < this.f1679a; i3++) {
            if (!this.b[i3].f1702a.isEmpty()) {
                X(this.b[i3], i, i2);
            }
        }
    }

    private boolean S(RecyclerView.z zVar, b bVar) {
        bVar.f1695a = this.o ? q(zVar.b()) : m(zVar.b());
        bVar.b = Integer.MIN_VALUE;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0036  */
    /* JADX WARN: Code duplicated, block: B:18:0x004d  */
    private void V(int i, RecyclerView.z zVar) {
        int iN;
        int iN2;
        int iC;
        j jVar = this.f1683g;
        boolean z = false;
        jVar.b = 0;
        jVar.c = i;
        if (isSmoothScrolling() && (iC = zVar.c()) != -1) {
            if (this.i == (iC < i)) {
                iN = this.c.n();
            } else {
                iN2 = this.c.n();
                iN = 0;
            }
            if (getClipToPadding()) {
                this.f1683g.f1783f = this.c.m() - iN2;
                this.f1683g.f1784g = this.c.i() + iN;
            } else {
                this.f1683g.f1784g = this.c.h() + iN;
                this.f1683g.f1783f = -iN2;
            }
            j jVar2 = this.f1683g;
            jVar2.f1785h = false;
            jVar2.f1780a = true;
            if (this.c.k() == 0 && this.c.h() == 0) {
                z = true;
            }
            jVar2.i = z;
        }
        iN = 0;
        iN2 = 0;
        if (getClipToPadding()) {
            this.f1683g.f1783f = this.c.m() - iN2;
            this.f1683g.f1784g = this.c.i() + iN;
        } else {
            this.f1683g.f1784g = this.c.h() + iN;
            this.f1683g.f1783f = -iN2;
        }
        j jVar3 = this.f1683g;
        jVar3.f1785h = false;
        jVar3.f1780a = true;
        if (this.c.k() == 0) {
            z = true;
        }
        jVar3.i = z;
    }

    private void X(d dVar, int i, int i2) {
        int iL = dVar.l();
        if (i == -1) {
            if (dVar.q() + iL <= i2) {
                this.j.set(dVar.f1704e, false);
            }
        } else if (dVar.m() - iL >= i2) {
            this.j.set(dVar.f1704e, false);
        }
    }

    private int Y(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    private void a(View view) {
        for (int i = this.f1679a - 1; i >= 0; i--) {
            this.b[i].a(view);
        }
    }

    private void b(b bVar) {
        SavedState savedState = this.q;
        int i = savedState.c;
        if (i > 0) {
            if (i == this.f1679a) {
                for (int i2 = 0; i2 < this.f1679a; i2++) {
                    this.b[i2].e();
                    SavedState savedState2 = this.q;
                    int i3 = savedState2.f1689d[i2];
                    if (i3 != Integer.MIN_VALUE) {
                        i3 += savedState2.i ? this.c.i() : this.c.m();
                    }
                    this.b[i2].x(i3);
                }
            } else {
                savedState.b();
                SavedState savedState3 = this.q;
                savedState3.f1688a = savedState3.b;
            }
        }
        SavedState savedState4 = this.q;
        this.p = savedState4.j;
        setReverseLayout(savedState4.f1693h);
        resolveShouldLayoutReverse();
        SavedState savedState5 = this.q;
        int i4 = savedState5.f1688a;
        if (i4 != -1) {
            this.k = i4;
            bVar.c = savedState5.i;
        } else {
            bVar.c = this.i;
        }
        if (savedState5.f1690e > 1) {
            LazySpanLookup lazySpanLookup = this.m;
            lazySpanLookup.f1685a = savedState5.f1691f;
            lazySpanLookup.b = savedState5.f1692g;
        }
    }

    private int computeScrollExtent(RecyclerView.z zVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return q.a(zVar, this.c, o(!this.v), n(!this.v), this, this.v);
    }

    private int computeScrollOffset(RecyclerView.z zVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return q.b(zVar, this.c, o(!this.v), n(!this.v), this, this.v, this.i);
    }

    private int computeScrollRange(RecyclerView.z zVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return q.c(zVar, this.c, o(!this.v), n(!this.v), this, this.v);
    }

    private int convertFocusDirectionToLayoutDirection(int i) {
        if (i == 1) {
            return (this.f1681e != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.f1681e != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i == 17) {
            return this.f1681e == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 33) {
            return this.f1681e == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i != 66) {
            return (i == 130 && this.f1681e == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f1681e == 0 ? 1 : Integer.MIN_VALUE;
    }

    private void e(View view, c cVar, j jVar) {
        if (jVar.f1782e == 1) {
            if (cVar.f1701f) {
                a(view);
                return;
            } else {
                cVar.f1700e.a(view);
                return;
            }
        }
        if (cVar.f1701f) {
            K(view);
        } else {
            cVar.f1700e.w(view);
        }
    }

    private int f(int i) {
        if (getChildCount() == 0) {
            return this.i ? 1 : -1;
        }
        return (i < u()) != this.i ? -1 : 1;
    }

    private boolean h(d dVar) {
        if (this.i) {
            if (dVar.m() < this.c.i()) {
                ArrayList<View> arrayList = dVar.f1702a;
                return !dVar.p(arrayList.get(arrayList.size() - 1)).f1701f;
            }
        } else if (dVar.q() > this.c.m()) {
            return !dVar.p(dVar.f1702a.get(0)).f1701f;
        }
        return false;
    }

    private LazySpanLookup.FullSpanItem i(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.c = new int[this.f1679a];
        for (int i2 = 0; i2 < this.f1679a; i2++) {
            fullSpanItem.c[i2] = i - this.b[i2].n(i);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem j(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.c = new int[this.f1679a];
        for (int i2 = 0; i2 < this.f1679a; i2++) {
            fullSpanItem.c[i2] = this.b[i2].r(i) - i;
        }
        return fullSpanItem;
    }

    private void k() {
        this.c = n.b(this, this.f1681e);
        this.f1680d = n.b(this, 1 - this.f1681e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    private int l(RecyclerView.v vVar, j jVar, RecyclerView.z zVar) {
        int i;
        int iW;
        d dVarA;
        int iE;
        int i2;
        int iE2;
        int iE3;
        ?? r9 = 0;
        this.j.set(0, this.f1679a, true);
        if (this.f1683g.i) {
            i = jVar.f1782e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i = jVar.f1782e == 1 ? jVar.f1784g + jVar.b : jVar.f1783f - jVar.b;
        }
        R(jVar.f1782e, i);
        int i3 = this.i ? this.c.i() : this.c.m();
        boolean z = false;
        while (jVar.a(zVar) && (this.f1683g.i || !this.j.isEmpty())) {
            View viewB = jVar.b(vVar);
            c cVar = (c) viewB.getLayoutParams();
            int iA = cVar.a();
            int iG = this.m.g(iA);
            boolean z2 = iG == -1;
            if (z2) {
                dVarA = cVar.f1701f ? this.b[r9] : A(jVar);
                this.m.n(iA, dVarA);
            } else {
                dVarA = this.b[iG];
            }
            d dVar = dVarA;
            cVar.f1700e = dVar;
            if (jVar.f1782e == 1) {
                addView(viewB);
            } else {
                addView(viewB, r9);
            }
            G(viewB, cVar, r9);
            if (jVar.f1782e == 1) {
                int iW2 = cVar.f1701f ? w(i3) : dVar.n(i3);
                int iE4 = this.c.e(viewB) + iW2;
                if (z2 && cVar.f1701f) {
                    LazySpanLookup.FullSpanItem fullSpanItemI = i(iW2);
                    fullSpanItemI.b = -1;
                    fullSpanItemI.f1686a = iA;
                    this.m.a(fullSpanItemI);
                }
                i2 = iE4;
                iE = iW2;
            } else {
                int iZ = cVar.f1701f ? z(i3) : dVar.r(i3);
                iE = iZ - this.c.e(viewB);
                if (z2 && cVar.f1701f) {
                    LazySpanLookup.FullSpanItem fullSpanItemJ = j(iZ);
                    fullSpanItemJ.b = 1;
                    fullSpanItemJ.f1686a = iA;
                    this.m.a(fullSpanItemJ);
                }
                i2 = iZ;
            }
            if (cVar.f1701f && jVar.f1781d == -1) {
                if (z2) {
                    this.u = true;
                } else {
                    if (!(jVar.f1782e == 1 ? c() : d())) {
                        LazySpanLookup.FullSpanItem fullSpanItemF = this.m.f(iA);
                        if (fullSpanItemF != null) {
                            fullSpanItemF.f1687d = true;
                        }
                        this.u = true;
                    }
                }
            }
            e(viewB, cVar, jVar);
            if (isLayoutRTL() && this.f1681e == 1) {
                int i4 = cVar.f1701f ? this.f1680d.i() : this.f1680d.i() - (((this.f1679a - 1) - dVar.f1704e) * this.f1682f);
                iE3 = i4;
                iE2 = i4 - this.f1680d.e(viewB);
            } else {
                int iM = cVar.f1701f ? this.f1680d.m() : (dVar.f1704e * this.f1682f) + this.f1680d.m();
                iE2 = iM;
                iE3 = this.f1680d.e(viewB) + iM;
            }
            if (this.f1681e == 1) {
                layoutDecoratedWithMargins(viewB, iE2, iE, iE3, i2);
            } else {
                layoutDecoratedWithMargins(viewB, iE, iE2, i2, iE3);
            }
            if (cVar.f1701f) {
                R(this.f1683g.f1782e, i);
            } else {
                X(dVar, this.f1683g.f1782e, i);
            }
            L(vVar, this.f1683g);
            if (this.f1683g.f1785h && viewB.hasFocusable()) {
                if (cVar.f1701f) {
                    this.j.clear();
                } else {
                    this.j.set(dVar.f1704e, false);
                }
            }
            z = true;
            r9 = 0;
        }
        if (!z) {
            L(vVar, this.f1683g);
        }
        if (this.f1683g.f1782e == -1) {
            iW = this.c.m() - z(this.c.m());
        } else {
            iW = w(this.c.i()) - this.c.i();
        }
        if (iW > 0) {
            return Math.min(jVar.b, iW);
        }
        return 0;
    }

    private int m(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int position = getPosition(getChildAt(i2));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    private int q(int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    private void resolveShouldLayoutReverse() {
        if (this.f1681e == 1 || !isLayoutRTL()) {
            this.i = this.f1684h;
        } else {
            this.i = !this.f1684h;
        }
    }

    private void s(RecyclerView.v vVar, RecyclerView.z zVar, boolean z) {
        int i;
        int iW = w(Integer.MIN_VALUE);
        if (iW != Integer.MIN_VALUE && (i = this.c.i() - iW) > 0) {
            int i2 = i - (-scrollBy(-i, vVar, zVar));
            if (!z || i2 <= 0) {
                return;
            }
            this.c.r(i2);
        }
    }

    private void t(RecyclerView.v vVar, RecyclerView.z zVar, boolean z) {
        int iM;
        int iZ = z(Integer.MAX_VALUE);
        if (iZ != Integer.MAX_VALUE && (iM = iZ - this.c.m()) > 0) {
            int iScrollBy = iM - scrollBy(iM, vVar, zVar);
            if (!z || iScrollBy <= 0) {
                return;
            }
            this.c.r(-iScrollBy);
        }
    }

    private int w(int i) {
        int iN = this.b[0].n(i);
        for (int i2 = 1; i2 < this.f1679a; i2++) {
            int iN2 = this.b[i2].n(i);
            if (iN2 > iN) {
                iN = iN2;
            }
        }
        return iN;
    }

    private int x(int i) {
        int iR = this.b[0].r(i);
        for (int i2 = 1; i2 < this.f1679a; i2++) {
            int iR2 = this.b[i2].r(i);
            if (iR2 > iR) {
                iR = iR2;
            }
        }
        return iR;
    }

    private int y(int i) {
        int iN = this.b[0].n(i);
        for (int i2 = 1; i2 < this.f1679a; i2++) {
            int iN2 = this.b[i2].n(i);
            if (iN2 < iN) {
                iN = iN2;
            }
        }
        return iN;
    }

    private int z(int i) {
        int iR = this.b[0].r(i);
        for (int i2 = 1; i2 < this.f1679a; i2++) {
            int iR2 = this.b[i2].r(i);
            if (iR2 < iR) {
                iR = iR2;
            }
        }
        return iR;
    }

    public int B() {
        return this.f1679a;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x008a  */
    View D() {
        int i;
        int i2;
        boolean z;
        int childCount = getChildCount() - 1;
        BitSet bitSet = new BitSet(this.f1679a);
        bitSet.set(0, this.f1679a, true);
        byte b2 = (this.f1681e == 1 && isLayoutRTL()) ? (byte) 1 : (byte) -1;
        if (this.i) {
            i = -1;
        } else {
            i = childCount + 1;
            childCount = 0;
        }
        int i3 = childCount < i ? 1 : -1;
        while (childCount != i) {
            View childAt = getChildAt(childCount);
            c cVar = (c) childAt.getLayoutParams();
            if (bitSet.get(cVar.f1700e.f1704e)) {
                if (h(cVar.f1700e)) {
                    return childAt;
                }
                bitSet.clear(cVar.f1700e.f1704e);
            }
            if (!cVar.f1701f && (i2 = childCount + i3) != i) {
                View childAt2 = getChildAt(i2);
                if (this.i) {
                    int iD = this.c.d(childAt);
                    int iD2 = this.c.d(childAt2);
                    if (iD < iD2) {
                        return childAt;
                    }
                    if (iD == iD2) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    int iG = this.c.g(childAt);
                    int iG2 = this.c.g(childAt2);
                    if (iG > iG2) {
                        return childAt;
                    }
                    if (iG == iG2) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    if ((cVar.f1700e.f1704e - ((c) childAt2.getLayoutParams()).f1700e.f1704e < 0) != (b2 < 0)) {
                        return childAt;
                    }
                } else {
                    continue;
                }
            }
            childCount += i3;
        }
        return null;
    }

    public void E() {
        this.m.b();
        requestLayout();
    }

    void J(int i, RecyclerView.z zVar) {
        int iU;
        int i2;
        if (i > 0) {
            iU = v();
            i2 = 1;
        } else {
            iU = u();
            i2 = -1;
        }
        this.f1683g.f1780a = true;
        V(iU, zVar);
        P(i2);
        j jVar = this.f1683g;
        jVar.c = iU + jVar.f1781d;
        jVar.b = Math.abs(i);
    }

    public void Q(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.f1679a) {
            E();
            this.f1679a = i;
            this.j = new BitSet(this.f1679a);
            this.b = new d[this.f1679a];
            for (int i2 = 0; i2 < this.f1679a; i2++) {
                this.b[i2] = new d(i2);
            }
            requestLayout();
        }
    }

    boolean T(RecyclerView.z zVar, b bVar) {
        int i;
        if (!zVar.e() && (i = this.k) != -1) {
            if (i >= 0 && i < zVar.b()) {
                SavedState savedState = this.q;
                if (savedState == null || savedState.f1688a == -1 || savedState.c < 1) {
                    View viewFindViewByPosition = findViewByPosition(this.k);
                    if (viewFindViewByPosition != null) {
                        bVar.f1695a = this.i ? v() : u();
                        if (this.l != Integer.MIN_VALUE) {
                            if (bVar.c) {
                                bVar.b = (this.c.i() - this.l) - this.c.d(viewFindViewByPosition);
                            } else {
                                bVar.b = (this.c.m() + this.l) - this.c.g(viewFindViewByPosition);
                            }
                            return true;
                        }
                        if (this.c.e(viewFindViewByPosition) > this.c.n()) {
                            bVar.b = bVar.c ? this.c.i() : this.c.m();
                            return true;
                        }
                        int iG = this.c.g(viewFindViewByPosition) - this.c.m();
                        if (iG < 0) {
                            bVar.b = -iG;
                            return true;
                        }
                        int i2 = this.c.i() - this.c.d(viewFindViewByPosition);
                        if (i2 < 0) {
                            bVar.b = i2;
                            return true;
                        }
                        bVar.b = Integer.MIN_VALUE;
                    } else {
                        int i3 = this.k;
                        bVar.f1695a = i3;
                        int i4 = this.l;
                        if (i4 == Integer.MIN_VALUE) {
                            bVar.c = f(i3) == 1;
                            bVar.a();
                        } else {
                            bVar.b(i4);
                        }
                        bVar.f1696d = true;
                    }
                } else {
                    bVar.b = Integer.MIN_VALUE;
                    bVar.f1695a = this.k;
                }
                return true;
            }
            this.k = -1;
            this.l = Integer.MIN_VALUE;
        }
        return false;
    }

    void U(RecyclerView.z zVar, b bVar) {
        if (T(zVar, bVar) || S(zVar, bVar)) {
            return;
        }
        bVar.a();
        bVar.f1695a = 0;
    }

    void W(int i) {
        this.f1682f = i / this.f1679a;
        this.r = View.MeasureSpec.makeMeasureSpec(i, this.f1680d.k());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void assertNotInLayoutOrScroll(String str) {
        if (this.q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    boolean c() {
        int iN = this.b[0].n(Integer.MIN_VALUE);
        for (int i = 1; i < this.f1679a; i++) {
            if (this.b[i].n(Integer.MIN_VALUE) != iN) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean canScrollHorizontally() {
        return this.f1681e == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean canScrollVertically() {
        return this.f1681e == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean checkLayoutParams(RecyclerView.p pVar) {
        return pVar instanceof c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.z zVar, RecyclerView.o.c cVar) {
        int iN;
        int iR;
        if (this.f1681e != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        J(i, zVar);
        int[] iArr = this.w;
        if (iArr == null || iArr.length < this.f1679a) {
            this.w = new int[this.f1679a];
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f1679a; i4++) {
            j jVar = this.f1683g;
            if (jVar.f1781d == -1) {
                iN = jVar.f1783f;
                iR = this.b[i4].r(iN);
            } else {
                iN = this.b[i4].n(jVar.f1784g);
                iR = this.f1683g.f1784g;
            }
            int i5 = iN - iR;
            if (i5 >= 0) {
                this.w[i3] = i5;
                i3++;
            }
        }
        Arrays.sort(this.w, 0, i3);
        for (int i6 = 0; i6 < i3 && this.f1683g.a(zVar); i6++) {
            cVar.a(this.f1683g.c, this.w[i6]);
            j jVar2 = this.f1683g;
            jVar2.c += jVar2.f1781d;
        }
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
        int iF = f(i);
        PointF pointF = new PointF();
        if (iF == 0) {
            return null;
        }
        if (this.f1681e == 0) {
            pointF.x = iF;
            pointF.y = BitmapDescriptorFactory.HUE_RED;
        } else {
            pointF.x = BitmapDescriptorFactory.HUE_RED;
            pointF.y = iF;
        }
        return pointF;
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

    boolean d() {
        int iR = this.b[0].r(Integer.MIN_VALUE);
        for (int i = 1; i < this.f1679a; i++) {
            if (this.b[i].r(Integer.MIN_VALUE) != iR) {
                return false;
            }
        }
        return true;
    }

    boolean g() {
        int iU;
        int iV;
        if (getChildCount() == 0 || this.n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.i) {
            iU = v();
            iV = u();
        } else {
            iU = u();
            iV = v();
        }
        if (iU == 0 && D() != null) {
            this.m.b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.u) {
            return false;
        }
        int i = this.i ? -1 : 1;
        int i2 = iV + 1;
        LazySpanLookup.FullSpanItem fullSpanItemE = this.m.e(iU, i2, i, true);
        if (fullSpanItemE == null) {
            this.u = false;
            this.m.d(i2);
            return false;
        }
        LazySpanLookup.FullSpanItem fullSpanItemE2 = this.m.e(iU, fullSpanItemE.f1686a, i * (-1), true);
        if (fullSpanItemE2 == null) {
            this.m.d(fullSpanItemE.f1686a);
        } else {
            this.m.d(fullSpanItemE2.f1686a + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateDefaultLayoutParams() {
        return this.f1681e == 0 ? new c(-2, -1) : new c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean isAutoMeasureEnabled() {
        return this.n != 0;
    }

    boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    View n(boolean z) {
        int iM = this.c.m();
        int i = this.c.i();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iG = this.c.g(childAt);
            int iD = this.c.d(childAt);
            if (iD > iM && iG < i) {
                if (iD <= i || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    View o(boolean z) {
        int iM = this.c.m();
        int i = this.c.i();
        int childCount = getChildCount();
        View view = null;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int iG = this.c.g(childAt);
            if (this.c.d(childAt) > iM && iG < i) {
                if (iG >= iM || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.f1679a; i2++) {
            this.b[i2].t(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.f1679a; i2++) {
            this.b[i2].t(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        this.m.b();
        for (int i = 0; i < this.f1679a; i++) {
            this.b[i].e();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.v vVar) {
        super.onDetachedFromWindow(recyclerView, vVar);
        removeCallbacks(this.x);
        for (int i = 0; i < this.f1679a; i++) {
            this.b[i].e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View onFocusSearchFailed(View view, int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        View viewFindContainingItemView;
        View viewO;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        resolveShouldLayoutReverse();
        int iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i);
        if (iConvertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        c cVar = (c) viewFindContainingItemView.getLayoutParams();
        boolean z = cVar.f1701f;
        d dVar = cVar.f1700e;
        int iV = iConvertFocusDirectionToLayoutDirection == 1 ? v() : u();
        V(iV, zVar);
        P(iConvertFocusDirectionToLayoutDirection);
        j jVar = this.f1683g;
        jVar.c = jVar.f1781d + iV;
        jVar.b = (int) (this.c.n() * 0.33333334f);
        j jVar2 = this.f1683g;
        jVar2.f1785h = true;
        jVar2.f1780a = false;
        l(vVar, jVar2, zVar);
        this.o = this.i;
        if (!z && (viewO = dVar.o(iV, iConvertFocusDirectionToLayoutDirection)) != null && viewO != viewFindContainingItemView) {
            return viewO;
        }
        if (I(iConvertFocusDirectionToLayoutDirection)) {
            for (int i2 = this.f1679a - 1; i2 >= 0; i2--) {
                View viewO2 = this.b[i2].o(iV, iConvertFocusDirectionToLayoutDirection);
                if (viewO2 != null && viewO2 != viewFindContainingItemView) {
                    return viewO2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.f1679a; i3++) {
                View viewO3 = this.b[i3].o(iV, iConvertFocusDirectionToLayoutDirection);
                if (viewO3 != null && viewO3 != viewFindContainingItemView) {
                    return viewO3;
                }
            }
        }
        boolean z2 = (this.f1684h ^ true) == (iConvertFocusDirectionToLayoutDirection == -1);
        if (!z) {
            View viewFindViewByPosition = findViewByPosition(z2 ? dVar.f() : dVar.g());
            if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                return viewFindViewByPosition;
            }
        }
        if (I(iConvertFocusDirectionToLayoutDirection)) {
            for (int i4 = this.f1679a - 1; i4 >= 0; i4--) {
                if (i4 != dVar.f1704e) {
                    View viewFindViewByPosition2 = findViewByPosition(z2 ? this.b[i4].f() : this.b[i4].g());
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i5 = 0; i5 < this.f1679a; i5++) {
                View viewFindViewByPosition3 = findViewByPosition(z2 ? this.b[i5].f() : this.b[i5].g());
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewO = o(false);
            View viewN = n(false);
            if (viewO == null || viewN == null) {
                return;
            }
            int position = getPosition(viewO);
            int position2 = getPosition(viewN);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        C(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsChanged(RecyclerView recyclerView) {
        this.m.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        C(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        C(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        C(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onLayoutChildren(RecyclerView.v vVar, RecyclerView.z zVar) {
        H(vVar, zVar, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onLayoutCompleted(RecyclerView.z zVar) {
        super.onLayoutCompleted(zVar);
        this.k = -1;
        this.l = Integer.MIN_VALUE;
        this.q = null;
        this.t.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.q = savedState;
            if (this.k != -1) {
                savedState.a();
                this.q.b();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public Parcelable onSaveInstanceState() {
        int iR;
        int iM;
        int[] iArr;
        if (this.q != null) {
            return new SavedState(this.q);
        }
        SavedState savedState = new SavedState();
        savedState.f1693h = this.f1684h;
        savedState.i = this.o;
        savedState.j = this.p;
        LazySpanLookup lazySpanLookup = this.m;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f1685a) == null) {
            savedState.f1690e = 0;
        } else {
            savedState.f1691f = iArr;
            savedState.f1690e = iArr.length;
            savedState.f1692g = lazySpanLookup.b;
        }
        if (getChildCount() > 0) {
            savedState.f1688a = this.o ? v() : u();
            savedState.b = p();
            int i = this.f1679a;
            savedState.c = i;
            savedState.f1689d = new int[i];
            for (int i2 = 0; i2 < this.f1679a; i2++) {
                if (this.o) {
                    iR = this.b[i2].n(Integer.MIN_VALUE);
                    if (iR != Integer.MIN_VALUE) {
                        iM = this.c.i();
                        iR -= iM;
                    }
                } else {
                    iR = this.b[i2].r(Integer.MIN_VALUE);
                    if (iR != Integer.MIN_VALUE) {
                        iM = this.c.m();
                        iR -= iM;
                    }
                }
                savedState.f1689d[i2] = iR;
            }
        } else {
            savedState.f1688a = -1;
            savedState.b = -1;
            savedState.c = 0;
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            g();
        }
    }

    int p() {
        View viewN = this.i ? n(true) : o(true);
        if (viewN == null) {
            return -1;
        }
        return getPosition(viewN);
    }

    public int[] r(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f1679a];
        } else if (iArr.length < this.f1679a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f1679a + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.f1679a; i++) {
            iArr[i] = this.b[i].h();
        }
        return iArr;
    }

    int scrollBy(int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        J(i, zVar);
        int iL = l(vVar, this.f1683g, zVar);
        if (this.f1683g.b >= iL) {
            i = i < 0 ? -iL : iL;
        }
        this.c.r(-i);
        this.o = this.i;
        j jVar = this.f1683g;
        jVar.b = 0;
        L(vVar, jVar);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int scrollHorizontallyBy(int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        return scrollBy(i, vVar, zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void scrollToPosition(int i) {
        SavedState savedState = this.q;
        if (savedState != null && savedState.f1688a != i) {
            savedState.a();
        }
        this.k = i;
        this.l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int scrollVerticallyBy(int i, RecyclerView.v vVar, RecyclerView.z zVar) {
        return scrollBy(i, vVar, zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int iChooseSize;
        int iChooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f1681e == 1) {
            iChooseSize2 = RecyclerView.o.chooseSize(i2, rect.height() + paddingTop, getMinimumHeight());
            iChooseSize = RecyclerView.o.chooseSize(i, (this.f1682f * this.f1679a) + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.o.chooseSize(i, rect.width() + paddingLeft, getMinimumWidth());
            iChooseSize2 = RecyclerView.o.chooseSize(i2, (this.f1682f * this.f1679a) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i == this.f1681e) {
            return;
        }
        this.f1681e = i;
        n nVar = this.c;
        this.c = this.f1680d;
        this.f1680d = nVar;
        requestLayout();
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.q;
        if (savedState != null && savedState.f1693h != z) {
            savedState.f1693h = z;
        }
        this.f1684h = z;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.z zVar, int i) {
        k kVar = new k(recyclerView.getContext());
        kVar.setTargetPosition(i);
        startSmoothScroll(kVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean supportsPredictiveItemAnimations() {
        return this.q == null;
    }

    int u() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    int v() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    static class LazySpanLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int[] f1685a;
        List<FullSpanItem> b;

        LazySpanLookup() {
        }

        private int i(int i) {
            if (this.b == null) {
                return -1;
            }
            FullSpanItem fullSpanItemF = f(i);
            if (fullSpanItemF != null) {
                this.b.remove(fullSpanItemF);
            }
            int size = this.b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (this.b.get(i2).f1686a >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.b.get(i2);
            this.b.remove(i2);
            return fullSpanItem.f1686a;
        }

        private void l(int i, int i2) {
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                int i3 = fullSpanItem.f1686a;
                if (i3 >= i) {
                    fullSpanItem.f1686a = i3 + i2;
                }
            }
        }

        private void m(int i, int i2) {
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return;
            }
            int i3 = i + i2;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                int i4 = fullSpanItem.f1686a;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.b.remove(size);
                    } else {
                        fullSpanItem.f1686a = i4 - i2;
                    }
                }
            }
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.b.get(i);
                if (fullSpanItem2.f1686a == fullSpanItem.f1686a) {
                    this.b.remove(i);
                }
                if (fullSpanItem2.f1686a >= fullSpanItem.f1686a) {
                    this.b.add(i, fullSpanItem);
                    return;
                }
            }
            this.b.add(fullSpanItem);
        }

        void b() {
            int[] iArr = this.f1685a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.b = null;
        }

        void c(int i) {
            int[] iArr = this.f1685a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f1685a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[o(i)];
                this.f1685a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f1685a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        int d(int i) {
            List<FullSpanItem> list = this.b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.b.get(size).f1686a >= i) {
                        this.b.remove(size);
                    }
                }
            }
            return h(i);
        }

        public FullSpanItem e(int i, int i2, int i3, boolean z) {
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.b.get(i4);
                int i5 = fullSpanItem.f1686a;
                if (i5 >= i2) {
                    return null;
                }
                if (i5 >= i && (i3 == 0 || fullSpanItem.b == i3 || (z && fullSpanItem.f1687d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem f(int i) {
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                if (fullSpanItem.f1686a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        int g(int i) {
            int[] iArr = this.f1685a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        int h(int i) {
            int[] iArr = this.f1685a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int i2 = i(i);
            if (i2 == -1) {
                int[] iArr2 = this.f1685a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f1685a.length;
            }
            int iMin = Math.min(i2 + 1, this.f1685a.length);
            Arrays.fill(this.f1685a, i, iMin, -1);
            return iMin;
        }

        void j(int i, int i2) {
            int[] iArr = this.f1685a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            c(i3);
            int[] iArr2 = this.f1685a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f1685a, i, i3, -1);
            l(i, i2);
        }

        void k(int i, int i2) {
            int[] iArr = this.f1685a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            c(i3);
            int[] iArr2 = this.f1685a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f1685a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m(i, i2);
        }

        void n(int i, d dVar) {
            c(i);
            this.f1685a[i] = dVar.f1704e;
        }

        int o(int i) {
            int length = this.f1685a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        @SuppressLint({"BanParcelableUsage"})
        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f1686a;
            int b;
            int[] c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            boolean f1687d;

            class a implements Parcelable.Creator<FullSpanItem> {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            FullSpanItem(Parcel parcel) {
                this.f1686a = parcel.readInt();
                this.b = parcel.readInt();
                this.f1687d = parcel.readInt() == 1;
                int i = parcel.readInt();
                if (i > 0) {
                    int[] iArr = new int[i];
                    this.c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            int a(int i) {
                int[] iArr = this.c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f1686a + ", mGapDir=" + this.b + ", mHasUnwantedGapAfter=" + this.f1687d + ", mGapPerSpan=" + Arrays.toString(this.c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f1686a);
                parcel.writeInt(this.b);
                parcel.writeInt(this.f1687d ? 1 : 0);
                int[] iArr = this.c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.c);
                }
            }

            FullSpanItem() {
            }
        }
    }
}
