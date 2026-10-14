package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final ThreadLocal<f> f1751e = new ThreadLocal<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static Comparator<c> f1752f = new a();
    long b;
    long c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<RecyclerView> f1753a = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<c> f1754d = new ArrayList<>();

    class a implements Comparator<c> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            RecyclerView recyclerView = cVar.f1758d;
            if ((recyclerView == null) != (cVar2.f1758d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z = cVar.f1757a;
            if (z != cVar2.f1757a) {
                return z ? -1 : 1;
            }
            int i = cVar2.b - cVar.b;
            if (i != 0) {
                return i;
            }
            int i2 = cVar.c - cVar2.c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    }

    @SuppressLint({"VisibleForTests"})
    static class b implements RecyclerView.o.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1755a;
        int b;
        int[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1756d;

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o.c
        public void a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f1756d * 2;
            int[] iArr = this.c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i3 >= iArr.length) {
                int[] iArr3 = new int[i3 * 2];
                this.c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.c;
            iArr4[i3] = i;
            iArr4[i3 + 1] = i2;
            this.f1756d++;
        }

        void b() {
            int[] iArr = this.c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f1756d = 0;
        }

        void c(RecyclerView recyclerView, boolean z) {
            this.f1756d = 0;
            int[] iArr = this.c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.o oVar = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || oVar == null || !oVar.isItemPrefetchEnabled()) {
                return;
            }
            if (z) {
                if (!recyclerView.mAdapterHelper.p()) {
                    oVar.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                oVar.collectAdjacentPrefetchPositions(this.f1755a, this.b, recyclerView.mState, this);
            }
            int i = this.f1756d;
            if (i > oVar.mPrefetchMaxCountObserved) {
                oVar.mPrefetchMaxCountObserved = i;
                oVar.mPrefetchMaxObservedInInitialPrefetch = z;
                recyclerView.mRecycler.K();
            }
        }

        boolean d(int i) {
            if (this.c != null) {
                int i2 = this.f1756d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.c[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }

        void e(int i, int i2) {
            this.f1755a = i;
            this.b = i2;
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1757a;
        public int b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f1758d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1759e;

        c() {
        }

        public void a() {
            this.f1757a = false;
            this.b = 0;
            this.c = 0;
            this.f1758d = null;
            this.f1759e = 0;
        }
    }

    f() {
    }

    private void b() {
        c cVar;
        int size = this.f1753a.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f1753a.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.c(recyclerView, false);
                i += recyclerView.mPrefetchRegistry.f1756d;
            }
        }
        this.f1754d.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f1753a.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(bVar.f1755a) + Math.abs(bVar.b);
                for (int i5 = 0; i5 < bVar.f1756d * 2; i5 += 2) {
                    if (i3 >= this.f1754d.size()) {
                        cVar = new c();
                        this.f1754d.add(cVar);
                    } else {
                        cVar = this.f1754d.get(i3);
                    }
                    int[] iArr = bVar.c;
                    int i6 = iArr[i5 + 1];
                    cVar.f1757a = i6 <= iAbs;
                    cVar.b = iAbs;
                    cVar.c = i6;
                    cVar.f1758d = recyclerView2;
                    cVar.f1759e = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.f1754d, f1752f);
    }

    private void c(c cVar, long j) {
        RecyclerView.c0 c0VarI = i(cVar.f1758d, cVar.f1759e, cVar.f1757a ? Long.MAX_VALUE : j);
        if (c0VarI == null || c0VarI.mNestedRecyclerView == null || !c0VarI.isBound() || c0VarI.isInvalid()) {
            return;
        }
        h(c0VarI.mNestedRecyclerView.get(), j);
    }

    private void d(long j) {
        for (int i = 0; i < this.f1754d.size(); i++) {
            c cVar = this.f1754d.get(i);
            if (cVar.f1758d == null) {
                return;
            }
            c(cVar, j);
            cVar.a();
        }
    }

    static boolean e(RecyclerView recyclerView, int i) {
        int iJ = recyclerView.mChildHelper.j();
        for (int i2 = 0; i2 < iJ; i2++) {
            RecyclerView.c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.i(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void h(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.j() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        b bVar = recyclerView.mPrefetchRegistry;
        bVar.c(recyclerView, true);
        if (bVar.f1756d != 0) {
            try {
                androidx.core.os.h.a("RV Nested Prefetch");
                recyclerView.mState.f(recyclerView.mAdapter);
                for (int i = 0; i < bVar.f1756d * 2; i += 2) {
                    i(recyclerView, bVar.c[i], j);
                }
                androidx.core.os.h.b();
            } catch (Throwable th) {
                androidx.core.os.h.b();
                throw th;
            }
        }
    }

    private RecyclerView.c0 i(RecyclerView recyclerView, int i, long j) {
        if (e(recyclerView, i)) {
            return null;
        }
        RecyclerView.v vVar = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.c0 c0VarI = vVar.I(i, false, j);
            if (c0VarI != null) {
                if (!c0VarI.isBound() || c0VarI.isInvalid()) {
                    vVar.a(c0VarI, false);
                } else {
                    vVar.B(c0VarI.itemView);
                }
            }
            return c0VarI;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f1753a.add(recyclerView);
    }

    void f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.b == 0) {
            this.b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.e(i, i2);
    }

    void g(long j) {
        b();
        d(j);
    }

    public void j(RecyclerView recyclerView) {
        this.f1753a.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            androidx.core.os.h.a("RV Prefetch");
            if (!this.f1753a.isEmpty()) {
                int size = this.f1753a.size();
                long jMax = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = this.f1753a.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    g(TimeUnit.MILLISECONDS.toNanos(jMax) + this.c);
                }
            }
        } finally {
            this.b = 0L;
            androidx.core.os.h.b();
        }
    }
}
