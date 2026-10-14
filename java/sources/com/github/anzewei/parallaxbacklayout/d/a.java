package com.github.anzewei.parallaxbacklayout.d;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.github.anzewei.parallaxbacklayout.R;

/* JADX INFO: loaded from: classes5.dex */
public class a extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f11725a;
    private Activity b;
    private Rect c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11726d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f11727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.github.anzewei.parallaxbacklayout.b f11728f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f11729g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.github.anzewei.parallaxbacklayout.c.b f11730h;
    private int i;
    private int j;
    private int k;
    private int l;
    private b m;
    private Drawable n;
    private boolean o;
    private int p;
    private int q;
    private int r;

    public interface b {
        boolean a();

        void draw(Canvas canvas);
    }

    public interface c {
        void a(int i);

        void b(float f2);
    }

    private class d extends com.github.anzewei.parallaxbacklayout.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f11731a;

        private d() {
        }

        @Override // com.github.anzewei.parallaxbacklayout.b.c
        public int a(View view, int i, int i2) {
            int i3 = a.this.c.left;
            if ((a.this.p & 1) != 0) {
                return Math.min(view.getWidth(), Math.max(i, 0));
            }
            return (a.this.p & 2) != 0 ? Math.min(a.this.c.left, Math.max(i, -view.getWidth())) : i3;
        }

        @Override // com.github.anzewei.parallaxbacklayout.b.c
        public int b(View view, int i, int i2) {
            int top = a.this.f11727e.getTop();
            if ((a.this.p & 8) != 0) {
                return Math.min(0, Math.max(i, -view.getHeight()));
            }
            return (a.this.p & 4) != 0 ? Math.min(view.getHeight(), Math.max(i, 0)) : top;
        }

        @Override // com.github.anzewei.parallaxbacklayout.b.c
        public int d(View view) {
            return a.this.r & 3;
        }

        @Override // com.github.anzewei.parallaxbacklayout.b.c
        public int e(View view) {
            return a.this.r & 12;
        }

        @Override // com.github.anzewei.parallaxbacklayout.b.c
        public void j(int i) {
            super.j(i);
            if (a.this.f11729g != null) {
                a.this.f11729g.a(i);
            }
        }

        @Override // com.github.anzewei.parallaxbacklayout.b.c
        public void k(View view, int i, int i2, int i3, int i4) {
            super.k(view, i, i2, i3, i4);
            if ((a.this.p & 1) != 0) {
                this.f11731a = Math.abs((i - a.this.c.left) / a.this.f11727e.getWidth());
            }
            if ((a.this.p & 2) != 0) {
                this.f11731a = Math.abs((i - a.this.c.left) / a.this.f11727e.getWidth());
            }
            if ((a.this.p & 8) != 0) {
                this.f11731a = Math.abs((i2 - a.this.getSystemTop()) / a.this.f11727e.getHeight());
            }
            if ((a.this.p & 4) != 0) {
                this.f11731a = Math.abs(i2 / a.this.f11727e.getHeight());
            }
            a.this.i = i;
            a.this.k = i2;
            a.this.invalidate();
            if (a.this.f11729g != null) {
                a.this.f11729g.b(this.f11731a);
            }
            if (this.f11731a < 0.999f || a.this.b.isFinishing()) {
                return;
            }
            a.this.b.finish();
            a.this.b.overridePendingTransition(0, R.anim.parallax_exit);
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00c3 A[PHI: r1
          0x00c3: PHI (r1v6 boolean) = (r1v5 boolean), (r1v8 boolean), (r1v8 boolean) binds: [B:30:0x009d, B:35:0x00b1, B:38:0x00bf] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.github.anzewei.parallaxbacklayout.b.c
        public void l(View view, float f2, float f3) {
            int i;
            boolean z;
            int i2;
            int width = view.getWidth();
            int height = view.getHeight();
            int i3 = a.this.c.left;
            int systemTop = 0;
            if ((a.this.p & 1) != 0) {
                z = Math.abs(f2) > ((float) a.this.q);
                i = (f2 < BitmapDescriptorFactory.HUE_RED || (!z && this.f11731a <= a.this.f11725a)) ? a.this.c.left : a.this.c.left + width;
            } else {
                i = i3;
                z = false;
            }
            if ((a.this.p & 2) != 0) {
                if (Math.abs(f2) > a.this.q) {
                    z = true;
                }
                i = (f2 > BitmapDescriptorFactory.HUE_RED || (!z && this.f11731a <= a.this.f11725a)) ? a.this.c.left : (-width) + a.this.c.left;
            }
            if ((a.this.p & 4) == 0) {
                i2 = 0;
            } else {
                if (Math.abs(f3) > a.this.q) {
                    z = true;
                }
                if (f3 < BitmapDescriptorFactory.HUE_RED || (!z && this.f11731a <= a.this.f11725a)) {
                    i2 = 0;
                } else {
                    i2 = height;
                }
            }
            if ((a.this.p & 8) != 0) {
                boolean z2 = Math.abs(f3) <= ((float) a.this.q) ? z : true;
                if (f3 <= BitmapDescriptorFactory.HUE_RED && (z2 || this.f11731a > a.this.f11725a)) {
                    systemTop = (-height) + a.this.getSystemTop();
                }
                i2 = systemTop;
            }
            a.this.f11728f.I(i, i2);
            a.this.invalidate();
        }

        @Override // com.github.anzewei.parallaxbacklayout.b.c
        public boolean m(View view, int i) {
            boolean zD;
            boolean zX = a.this.f11728f.x(a.this.r, i);
            if (zX) {
                a aVar = a.this;
                aVar.p = aVar.r;
            }
            boolean z = false;
            if (a.this.r != 1 && a.this.r != 2) {
                if (a.this.r == 8 || a.this.r == 4) {
                    zD = a.this.f11728f.d(1, i);
                }
                return zX & z;
            }
            zD = a.this.f11728f.d(2, i);
            z = !zD;
            return zX & z;
        }
    }

    public a(Context context) {
        super(context);
        this.f11725a = 0.5f;
        this.c = new Rect();
        this.f11726d = true;
        this.j = 1;
        this.l = 1;
        this.q = 30;
        this.r = -1;
        this.f11728f = com.github.anzewei.parallaxbacklayout.b.m(this, new d());
        setEdgeFlag(1);
    }

    private void m() {
        Rect rect = this.c;
        if (rect == null) {
            return;
        }
        if (this.j == 0) {
            this.f11728f.G(Math.max(getWidth(), getHeight()));
            return;
        }
        int i = this.r;
        if (i == 4) {
            com.github.anzewei.parallaxbacklayout.b bVar = this.f11728f;
            bVar.G(rect.top + bVar.t());
        } else if (i == 8) {
            com.github.anzewei.parallaxbacklayout.b bVar2 = this.f11728f;
            bVar2.G(rect.bottom + bVar2.t());
        } else if (i == 1) {
            com.github.anzewei.parallaxbacklayout.b bVar3 = this.f11728f;
            bVar3.G(bVar3.t() + this.c.left);
        } else {
            com.github.anzewei.parallaxbacklayout.b bVar4 = this.f11728f;
            bVar4.G(bVar4.t() + this.c.right);
        }
    }

    private void o(Canvas canvas, View view) {
        Drawable drawable;
        if ((this.i == 0 && this.k == 0) || (drawable = this.n) == null) {
            return;
        }
        int i = this.r;
        if (i == 1) {
            drawable.setBounds(view.getLeft() - this.n.getIntrinsicWidth(), view.getTop(), view.getLeft(), view.getBottom());
            this.n.setAlpha(((getWidth() - view.getLeft()) * 255) / getWidth());
        } else if (i == 2) {
            drawable.setBounds(view.getRight(), view.getTop(), view.getRight() + this.n.getIntrinsicWidth(), view.getBottom());
            this.n.setAlpha((view.getRight() * 255) / getWidth());
        } else if (i == 8) {
            drawable.setBounds(view.getLeft(), view.getBottom(), view.getRight(), view.getBottom() + this.n.getIntrinsicHeight());
            this.n.setAlpha((view.getBottom() * 255) / getHeight());
        } else if (i == 4) {
            drawable.setBounds(view.getLeft(), (view.getTop() - this.n.getIntrinsicHeight()) + getSystemTop(), view.getRight(), view.getTop() + getSystemTop());
            this.n.setAlpha(((getHeight() - view.getTop()) * 255) / getHeight());
        }
        this.n.draw(canvas);
    }

    private void p(Canvas canvas, View view) {
        if (this.i == 0 && this.k == 0) {
            return;
        }
        int iSave = canvas.save();
        this.f11730h.a(canvas, this, view);
        this.m.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    private void setContentView(View view) {
        this.f11727e = view;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f11728f.l(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        Log.d("View", "drawChild");
        boolean z = view == this.f11727e;
        if (this.f11726d) {
            p(canvas, view);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (this.f11726d && z && this.f11728f.v() != 0) {
            o(canvas, view);
        }
        return zDrawChild;
    }

    public int getEdgeFlag() {
        return this.r;
    }

    public int getLayoutType() {
        return this.l;
    }

    public int getSystemLeft() {
        return this.c.left;
    }

    public int getSystemTop() {
        return this.c.top;
    }

    public void n(Activity activity) {
        this.b = activity;
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
        viewGroup.removeView(viewGroup2);
        addView(viewGroup2, -1, -1);
        setContentView(viewGroup2);
        viewGroup.addView(this);
    }

    @Override // android.view.View
    @TargetApi(20)
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        int systemWindowInsetTop = windowInsets.getSystemWindowInsetTop();
        if (this.f11727e.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f11727e.getLayoutParams();
            this.c.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin + systemWindowInsetTop, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
        m();
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f11726d && this.m.a()) {
            try {
                return this.f11728f.J(motionEvent);
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.o = true;
        m();
        if (this.f11727e != null) {
            int i5 = this.i;
            int i6 = this.k;
            Log.d("View", "left = " + i + " top = " + i2);
            ViewGroup.LayoutParams layoutParams = this.f11727e.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                i5 += marginLayoutParams.leftMargin;
                i6 += marginLayoutParams.topMargin;
            }
            View view = this.f11727e;
            view.layout(i5, i6, view.getMeasuredWidth() + i5, this.f11727e.getMeasuredHeight() + i6);
        }
        this.o = false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f11726d || !this.m.a()) {
            return false;
        }
        this.f11728f.A(motionEvent);
        return true;
    }

    public void q(int i, com.github.anzewei.parallaxbacklayout.c.b bVar) {
        this.l = i;
        if (i == -1) {
            this.f11730h = bVar;
            return;
        }
        if (i == 0) {
            this.f11730h = new com.github.anzewei.parallaxbacklayout.c.a();
        } else if (i == 1) {
            this.f11730h = new com.github.anzewei.parallaxbacklayout.c.c();
        } else {
            if (i != 2) {
                return;
            }
            this.f11730h = new com.github.anzewei.parallaxbacklayout.c.d();
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.o) {
            return;
        }
        super.requestLayout();
    }

    public void setBackgroundView(b bVar) {
        this.m = bVar;
    }

    @TargetApi(16)
    public void setEdgeFlag(int i) {
        if (this.r == i) {
            return;
        }
        this.r = i;
        this.f11728f.H(i);
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.LEFT_RIGHT;
        if (i == 1) {
            orientation = GradientDrawable.Orientation.RIGHT_LEFT;
        } else if (i == 4) {
            orientation = GradientDrawable.Orientation.BOTTOM_TOP;
        } else if (i != 2 && i == 8) {
            orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        }
        if (Build.VERSION.SDK_INT < 16) {
            this.n = null;
        }
        Drawable drawable = this.n;
        if (drawable == null) {
            com.github.anzewei.parallaxbacklayout.d.b bVar = new com.github.anzewei.parallaxbacklayout.d.b(orientation, new int[]{1711276032, 285212672, 0});
            bVar.setGradientRadius(90.0f);
            bVar.setSize(50, 50);
            this.n = bVar;
        } else if (drawable instanceof com.github.anzewei.parallaxbacklayout.d.b) {
            ((com.github.anzewei.parallaxbacklayout.d.b) drawable).setOrientation(orientation);
        }
        m();
    }

    public void setEdgeMode(int i) {
        this.j = i;
        m();
    }

    public void setEnableGesture(boolean z) {
        this.f11726d = z;
    }

    public void setScrollThresHold(float f2) {
        if (f2 >= 1.0f || f2 <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Threshold value should be between 0 and 1.0");
        }
        this.f11725a = f2;
    }

    public void setShadowDrawable(Drawable drawable) {
        this.n = drawable;
    }

    public void setSlideCallback(c cVar) {
        this.f11729g = cVar;
    }

    public void setVelocity(int i) {
        this.q = i;
    }
}
