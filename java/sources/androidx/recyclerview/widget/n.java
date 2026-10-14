package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final RecyclerView.o f1789a;
    private int b;
    final Rect c;

    class a extends n {
        a(RecyclerView.o oVar) {
            super(oVar, null);
        }

        @Override // androidx.recyclerview.widget.n
        public int d(View view) {
            return this.f1789a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.p) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.n
        public int e(View view) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return this.f1789a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) pVar).leftMargin + ((ViewGroup.MarginLayoutParams) pVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.n
        public int f(View view) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return this.f1789a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) pVar).topMargin + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.n
        public int g(View view) {
            return this.f1789a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.p) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.n
        public int h() {
            return this.f1789a.getWidth();
        }

        @Override // androidx.recyclerview.widget.n
        public int i() {
            return this.f1789a.getWidth() - this.f1789a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.n
        public int j() {
            return this.f1789a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.n
        public int k() {
            return this.f1789a.getWidthMode();
        }

        @Override // androidx.recyclerview.widget.n
        public int l() {
            return this.f1789a.getHeightMode();
        }

        @Override // androidx.recyclerview.widget.n
        public int m() {
            return this.f1789a.getPaddingLeft();
        }

        @Override // androidx.recyclerview.widget.n
        public int n() {
            return (this.f1789a.getWidth() - this.f1789a.getPaddingLeft()) - this.f1789a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.n
        public int p(View view) {
            this.f1789a.getTransformedBoundingBox(view, true, this.c);
            return this.c.right;
        }

        @Override // androidx.recyclerview.widget.n
        public int q(View view) {
            this.f1789a.getTransformedBoundingBox(view, true, this.c);
            return this.c.left;
        }

        @Override // androidx.recyclerview.widget.n
        public void r(int i) {
            this.f1789a.offsetChildrenHorizontal(i);
        }
    }

    class b extends n {
        b(RecyclerView.o oVar) {
            super(oVar, null);
        }

        @Override // androidx.recyclerview.widget.n
        public int d(View view) {
            return this.f1789a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.p) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.n
        public int e(View view) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return this.f1789a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) pVar).topMargin + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.n
        public int f(View view) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return this.f1789a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) pVar).leftMargin + ((ViewGroup.MarginLayoutParams) pVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.n
        public int g(View view) {
            return this.f1789a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.p) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.n
        public int h() {
            return this.f1789a.getHeight();
        }

        @Override // androidx.recyclerview.widget.n
        public int i() {
            return this.f1789a.getHeight() - this.f1789a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.n
        public int j() {
            return this.f1789a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.n
        public int k() {
            return this.f1789a.getHeightMode();
        }

        @Override // androidx.recyclerview.widget.n
        public int l() {
            return this.f1789a.getWidthMode();
        }

        @Override // androidx.recyclerview.widget.n
        public int m() {
            return this.f1789a.getPaddingTop();
        }

        @Override // androidx.recyclerview.widget.n
        public int n() {
            return (this.f1789a.getHeight() - this.f1789a.getPaddingTop()) - this.f1789a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.n
        public int p(View view) {
            this.f1789a.getTransformedBoundingBox(view, true, this.c);
            return this.c.bottom;
        }

        @Override // androidx.recyclerview.widget.n
        public int q(View view) {
            this.f1789a.getTransformedBoundingBox(view, true, this.c);
            return this.c.top;
        }

        @Override // androidx.recyclerview.widget.n
        public void r(int i) {
            this.f1789a.offsetChildrenVertical(i);
        }
    }

    /* synthetic */ n(RecyclerView.o oVar, a aVar) {
        this(oVar);
    }

    public static n a(RecyclerView.o oVar) {
        return new a(oVar);
    }

    public static n b(RecyclerView.o oVar, int i) {
        if (i == 0) {
            return a(oVar);
        }
        if (i == 1) {
            return c(oVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static n c(RecyclerView.o oVar) {
        return new b(oVar);
    }

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f(View view);

    public abstract int g(View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public int o() {
        if (Integer.MIN_VALUE == this.b) {
            return 0;
        }
        return n() - this.b;
    }

    public abstract int p(View view);

    public abstract int q(View view);

    public abstract void r(int i);

    public void s() {
        this.b = n();
    }

    private n(RecyclerView.o oVar) {
        this.b = Integer.MIN_VALUE;
        this.c = new Rect();
        this.f1789a = oVar;
    }
}
