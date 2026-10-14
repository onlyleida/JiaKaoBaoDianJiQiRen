package androidx.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class a0 implements c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f1811a;

    static class a extends ViewGroup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewGroup f1812a;
        View b;
        ArrayList<Drawable> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        a0 f1813d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f1814e;

        static {
            try {
                Class cls = Integer.TYPE;
                ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, a0 a0Var) {
            super(context);
            this.c = null;
            this.f1812a = viewGroup;
            this.b = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f1813d = a0Var;
        }

        private void c() {
            if (this.f1814e) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        private void d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.c;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f1814e = true;
                    this.f1812a.removeView(this);
                }
            }
        }

        private void e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f1812a.getLocationOnScreen(iArr2);
            this.b.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        public void a(Drawable drawable) {
            c();
            if (this.c == null) {
                this.c = new ArrayList<>();
            }
            if (this.c.contains(drawable)) {
                return;
            }
            this.c.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void b(View view) {
            c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f1812a && viewGroup.getParent() != null && ViewCompat.isAttachedToWindow(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f1812a.getLocationOnScreen(iArr2);
                    ViewCompat.offsetLeftAndRight(view, iArr[0] - iArr2[0]);
                    ViewCompat.offsetTopAndBottom(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f1812a.getLocationOnScreen(iArr);
            this.b.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.b.getWidth(), this.b.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.c;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.c.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public void f(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.c;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                d();
            }
        }

        public void g(View view) {
            super.removeView(view);
            d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f1812a == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (!(this.f1812a instanceof ViewGroup)) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            e(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.c) != null && arrayList.contains(drawable));
        }
    }

    a0(Context context, ViewGroup viewGroup, View view) {
        this.f1811a = new a(context, viewGroup, view, this);
    }

    static a0 a(View view) {
        ViewGroup viewGroupB = b(view);
        if (viewGroupB == null) {
            return null;
        }
        int childCount = viewGroupB.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroupB.getChildAt(i);
            if (childAt instanceof a) {
                return ((a) childAt).f1813d;
            }
        }
        return new v(viewGroupB.getContext(), viewGroupB, view);
    }

    static ViewGroup b(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    @Override // androidx.transition.c0
    public void add(Drawable drawable) {
        this.f1811a.a(drawable);
    }

    @Override // androidx.transition.c0
    public void remove(Drawable drawable) {
        this.f1811a.f(drawable);
    }
}
