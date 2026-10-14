package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
public class j0 extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Runnable f442a;
    private c b;
    LinearLayoutCompat c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Spinner f443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f446g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f447h;
    private int i;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f448a;

        a(View view) {
            this.f448a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            j0.this.smoothScrollTo(this.f448a.getLeft() - ((j0.this.getWidth() - this.f448a.getWidth()) / 2), 0);
            j0.this.f442a = null;
        }
    }

    private class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return j0.this.c.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((d) j0.this.c.getChildAt(i)).b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return j0.this.c((androidx.appcompat.app.a.c) getItem(i), true);
            }
            ((d) view).a((androidx.appcompat.app.a.c) getItem(i));
            return view;
        }
    }

    private class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).b().e();
            int childCount = j0.this.c.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = j0.this.c.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    private class d extends LinearLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f451a;
        private androidx.appcompat.app.a.c b;
        private TextView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f452d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f453e;

        /* JADX WARN: Illegal instructions before constructor call */
        public d(Context context, androidx.appcompat.app.a.c cVar, boolean z) {
            int i = R.attr.actionBarTabStyle;
            super(context, null, i);
            int[] iArr = {android.R.attr.background};
            this.f451a = iArr;
            this.b = cVar;
            q0 q0VarV = q0.v(context, null, iArr, i, 0);
            if (q0VarV.s(0)) {
                setBackgroundDrawable(q0VarV.g(0));
            }
            q0VarV.w();
            if (z) {
                setGravity(8388627);
            }
            c();
        }

        public void a(androidx.appcompat.app.a.c cVar) {
            this.b = cVar;
            c();
        }

        public androidx.appcompat.app.a.c b() {
            return this.b;
        }

        public void c() {
            androidx.appcompat.app.a.c cVar = this.b;
            View viewB = cVar.b();
            if (viewB != null) {
                ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.f453e = viewB;
                TextView textView = this.c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f452d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f452d.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f453e;
            if (view != null) {
                removeView(view);
                this.f453e = null;
            }
            Drawable drawableC = cVar.c();
            CharSequence charSequenceD = cVar.d();
            if (drawableC != null) {
                if (this.f452d == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f452d = appCompatImageView;
                }
                this.f452d.setImageDrawable(drawableC);
                this.f452d.setVisibility(0);
            } else {
                ImageView imageView2 = this.f452d;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f452d.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequenceD);
            if (z) {
                if (this.c == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.c = appCompatTextView;
                }
                this.c.setText(charSequenceD);
                this.c.setVisibility(0);
            } else {
                TextView textView2 = this.c;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.c.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f452d;
            if (imageView3 != null) {
                imageView3.setContentDescription(cVar.a());
            }
            s0.a(this, z ? null : cVar.a());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (j0.this.f445f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = j0.this.f445f;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    static {
        new DecelerateInterpolator();
    }

    private Spinner b() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    private boolean d() {
        Spinner spinner = this.f443d;
        return spinner != null && spinner.getParent() == this;
    }

    private void e() {
        if (d()) {
            return;
        }
        if (this.f443d == null) {
            this.f443d = b();
        }
        removeView(this.c);
        addView(this.f443d, new ViewGroup.LayoutParams(-2, -1));
        if (this.f443d.getAdapter() == null) {
            this.f443d.setAdapter((SpinnerAdapter) new b());
        }
        Runnable runnable = this.f442a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f442a = null;
        }
        this.f443d.setSelection(this.i);
    }

    private boolean f() {
        if (!d()) {
            return false;
        }
        removeView(this.f443d);
        addView(this.c, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f443d.getSelectedItemPosition());
        return false;
    }

    public void a(int i) {
        View childAt = this.c.getChildAt(i);
        Runnable runnable = this.f442a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        a aVar = new a(childAt);
        this.f442a = aVar;
        post(aVar);
    }

    d c(androidx.appcompat.app.a.c cVar, boolean z) {
        d dVar = new d(getContext(), cVar, z);
        if (z) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f447h));
        } else {
            dVar.setFocusable(true);
            if (this.b == null) {
                this.b = new c();
            }
            dVar.setOnClickListener(this.b);
        }
        return dVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f442a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.d.a aVarB = androidx.appcompat.d.a.b(getContext());
        setContentHeight(aVarB.f());
        this.f446g = aVarB.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f442a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((d) view).b().e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f445f = -1;
        } else {
            if (childCount > 2) {
                this.f445f = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f445f = View.MeasureSpec.getSize(i) / 2;
            }
            this.f445f = Math.min(this.f445f, this.f446g);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f447h, 1073741824);
        if (!z && this.f444e) {
            this.c.measure(0, iMakeMeasureSpec);
            if (this.c.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                e();
            } else {
                f();
            }
        } else {
            f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f444e = z;
    }

    public void setContentHeight(int i) {
        this.f447h = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.i = i;
        int childCount = this.c.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.c.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                a(i);
            }
            i2++;
        }
        Spinner spinner = this.f443d;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
