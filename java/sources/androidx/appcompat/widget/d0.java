package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class d0 implements androidx.appcompat.view.menu.p {
    private static Method F;
    private static Method G;
    private static Method H;
    final Handler A;
    private final Rect B;
    private Rect C;
    private boolean D;
    PopupWindow E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f407a;
    private ListAdapter b;
    a0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f408d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f410f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f411g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f412h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    private boolean m;
    private boolean n;
    int o;
    private View p;
    private int q;
    private DataSetObserver r;
    private View s;
    private Drawable t;
    private AdapterView.OnItemClickListener u;
    private AdapterView.OnItemSelectedListener v;
    final f w;
    private final e x;
    private final d y;
    private final b z;

    class a implements AdapterView.OnItemSelectedListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            a0 a0Var;
            if (i == -1 || (a0Var = d0.this.c) == null) {
                return;
            }
            a0Var.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.p();
        }
    }

    private class c extends DataSetObserver {
        c() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (d0.this.a()) {
                d0.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            d0.this.dismiss();
        }
    }

    private class d implements AbsListView.OnScrollListener {
        d() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || d0.this.y() || d0.this.E.getContentView() == null) {
                return;
            }
            d0 d0Var = d0.this;
            d0Var.A.removeCallbacks(d0Var.w);
            d0.this.w.run();
        }
    }

    private class e implements View.OnTouchListener {
        e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = d0.this.E) != null && popupWindow.isShowing() && x >= 0 && x < d0.this.E.getWidth() && y >= 0 && y < d0.this.E.getHeight()) {
                d0 d0Var = d0.this;
                d0Var.A.postDelayed(d0Var.w, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            d0 d0Var2 = d0.this;
            d0Var2.A.removeCallbacks(d0Var2.w);
            return false;
        }
    }

    private class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0 a0Var = d0.this.c;
            if (a0Var == null || !ViewCompat.isAttachedToWindow(a0Var) || d0.this.c.getCount() <= d0.this.c.getChildCount()) {
                return;
            }
            int childCount = d0.this.c.getChildCount();
            d0 d0Var = d0.this;
            if (childCount <= d0Var.o) {
                d0Var.E.setInputMethodMode(2);
                d0.this.show();
            }
        }
    }

    static {
        Class cls = Boolean.TYPE;
        int i = Build.VERSION.SDK_INT;
        if (i <= 28) {
            try {
                F = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                H = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (i <= 23) {
            try {
                G = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public d0(Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    private void A() {
        View view = this.p;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.p);
            }
        }
    }

    private void M(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.E.setIsClippedToScreen(z);
            return;
        }
        Method method = F;
        if (method != null) {
            try {
                method.invoke(this.E, Boolean.valueOf(z));
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }

    private int o() {
        int measuredHeight;
        int i;
        int iMakeMeasureSpec;
        View view;
        int i2;
        if (this.c == null) {
            Context context = this.f407a;
            a0 a0VarQ = q(context, !this.D);
            this.c = a0VarQ;
            Drawable drawable = this.t;
            if (drawable != null) {
                a0VarQ.setSelector(drawable);
            }
            this.c.setAdapter(this.b);
            this.c.setOnItemClickListener(this.u);
            this.c.setFocusable(true);
            this.c.setFocusableInTouchMode(true);
            this.c.setOnItemSelectedListener(new a());
            this.c.setOnScrollListener(this.y);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.v;
            if (onItemSelectedListener != null) {
                this.c.setOnItemSelectedListener(onItemSelectedListener);
            }
            a0 a0Var = this.c;
            View view2 = this.p;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i3 = this.q;
                if (i3 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(a0Var, layoutParams);
                } else if (i3 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.q);
                } else {
                    linearLayout.addView(a0Var, layoutParams);
                    linearLayout.addView(view2);
                }
                int i4 = this.f409e;
                if (i4 >= 0) {
                    i2 = Integer.MIN_VALUE;
                } else {
                    i4 = 0;
                    i2 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i4, i2), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
                view = a0Var;
            }
            this.E.setContentView(view);
        } else {
            View view3 = this.p;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.E.getBackground();
        if (background != null) {
            background.getPadding(this.B);
            Rect rect = this.B;
            int i5 = rect.top;
            i = rect.bottom + i5;
            if (!this.i) {
                this.f411g = -i5;
            }
        } else {
            this.B.setEmpty();
            i = 0;
        }
        int iS = s(r(), this.f411g, this.E.getInputMethodMode() == 2);
        if (this.m || this.f408d == -1) {
            return iS + i;
        }
        int i6 = this.f409e;
        if (i6 == -2) {
            int i7 = this.f407a.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.B;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i6 != -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        } else {
            int i8 = this.f407a.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.B;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8 - (rect3.left + rect3.right), 1073741824);
        }
        int iD = this.c.d(iMakeMeasureSpec, 0, -1, iS - measuredHeight, -1);
        if (iD > 0) {
            measuredHeight += i + this.c.getPaddingTop() + this.c.getPaddingBottom();
        }
        return iD + measuredHeight;
    }

    private int s(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.E.getMaxAvailableHeight(view, i, z);
        }
        Method method = G;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.E, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.E.getMaxAvailableHeight(view, i);
    }

    public void B(View view) {
        this.s = view;
    }

    public void C(int i) {
        this.E.setAnimationStyle(i);
    }

    public void D(int i) {
        Drawable background = this.E.getBackground();
        if (background == null) {
            P(i);
            return;
        }
        background.getPadding(this.B);
        Rect rect = this.B;
        this.f409e = rect.left + rect.right + i;
    }

    public void E(int i) {
        this.l = i;
    }

    public void F(Rect rect) {
        this.C = rect != null ? new Rect(rect) : null;
    }

    public void G(int i) {
        if (i < 0 && -2 != i && -1 != i) {
            throw new IllegalArgumentException("Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT.");
        }
        this.f408d = i;
    }

    public void H(int i) {
        this.E.setInputMethodMode(i);
    }

    public void I(boolean z) {
        this.D = z;
        this.E.setFocusable(z);
    }

    public void J(PopupWindow.OnDismissListener onDismissListener) {
        this.E.setOnDismissListener(onDismissListener);
    }

    public void K(AdapterView.OnItemClickListener onItemClickListener) {
        this.u = onItemClickListener;
    }

    public void L(boolean z) {
        this.k = true;
        this.j = z;
    }

    public void N(int i) {
        this.q = i;
    }

    public void O(int i) {
        a0 a0Var = this.c;
        if (!a() || a0Var == null) {
            return;
        }
        a0Var.setListSelectionHidden(false);
        a0Var.setSelection(i);
        if (a0Var.getChoiceMode() != 0) {
            a0Var.setItemChecked(i, true);
        }
    }

    public void P(int i) {
        this.f409e = i;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return this.E.isShowing();
    }

    public int b() {
        return this.f410f;
    }

    public void d(int i) {
        this.f410f = i;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        this.E.dismiss();
        A();
        this.E.setContentView(null);
        this.c = null;
        this.A.removeCallbacks(this.w);
    }

    public Drawable f() {
        return this.E.getBackground();
    }

    public void h(int i) {
        this.f411g = i;
        this.i = true;
    }

    public int k() {
        if (this.i) {
            return this.f411g;
        }
        return 0;
    }

    public void l(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.r;
        if (dataSetObserver == null) {
            this.r = new c();
        } else {
            ListAdapter listAdapter2 = this.b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.r);
        }
        a0 a0Var = this.c;
        if (a0Var != null) {
            a0Var.setAdapter(this.b);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView n() {
        return this.c;
    }

    public void p() {
        a0 a0Var = this.c;
        if (a0Var != null) {
            a0Var.setListSelectionHidden(true);
            a0Var.requestLayout();
        }
    }

    a0 q(Context context, boolean z) {
        return new a0(context, z);
    }

    public View r() {
        return this.s;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.E.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        int iO = o();
        boolean zY = y();
        androidx.core.widget.h.b(this.E, this.f412h);
        if (this.E.isShowing()) {
            if (ViewCompat.isAttachedToWindow(r())) {
                int width = this.f409e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = r().getWidth();
                }
                int i = this.f408d;
                if (i == -1) {
                    if (!zY) {
                        iO = -1;
                    }
                    if (zY) {
                        this.E.setWidth(this.f409e == -1 ? -1 : 0);
                        this.E.setHeight(0);
                    } else {
                        this.E.setWidth(this.f409e == -1 ? -1 : 0);
                        this.E.setHeight(-1);
                    }
                } else if (i != -2) {
                    iO = i;
                }
                this.E.setOutsideTouchable((this.n || this.m) ? false : true);
                this.E.update(r(), this.f410f, this.f411g, width < 0 ? -1 : width, iO < 0 ? -1 : iO);
                return;
            }
            return;
        }
        int width2 = this.f409e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = r().getWidth();
        }
        int i2 = this.f408d;
        if (i2 == -1) {
            iO = -1;
        } else if (i2 != -2) {
            iO = i2;
        }
        this.E.setWidth(width2);
        this.E.setHeight(iO);
        M(true);
        this.E.setOutsideTouchable((this.n || this.m) ? false : true);
        this.E.setTouchInterceptor(this.x);
        if (this.k) {
            androidx.core.widget.h.a(this.E, this.j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = H;
            if (method != null) {
                try {
                    method.invoke(this.E, this.C);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            this.E.setEpicenterBounds(this.C);
        }
        androidx.core.widget.h.c(this.E, r(), this.f410f, this.f411g, this.l);
        this.c.setSelection(-1);
        if (!this.D || this.c.isInTouchMode()) {
            p();
        }
        if (this.D) {
            return;
        }
        this.A.post(this.z);
    }

    public Object t() {
        if (a()) {
            return this.c.getSelectedItem();
        }
        return null;
    }

    public long u() {
        if (a()) {
            return this.c.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int v() {
        if (a()) {
            return this.c.getSelectedItemPosition();
        }
        return -1;
    }

    public View w() {
        if (a()) {
            return this.c.getSelectedView();
        }
        return null;
    }

    public int x() {
        return this.f409e;
    }

    public boolean y() {
        return this.E.getInputMethodMode() == 2;
    }

    public boolean z() {
        return this.D;
    }

    public d0(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public d0(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f408d = -2;
        this.f409e = -2;
        this.f412h = 1002;
        this.l = 0;
        this.m = false;
        this.n = false;
        this.o = Integer.MAX_VALUE;
        this.q = 0;
        this.w = new f();
        this.x = new e();
        this.y = new d();
        this.z = new b();
        this.B = new Rect();
        this.f407a = context;
        this.A = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i, i2);
        this.f410f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f411g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        m mVar = new m(context, attributeSet, i, i2);
        this.E = mVar;
        mVar.setInputMethodMode(1);
    }
}
