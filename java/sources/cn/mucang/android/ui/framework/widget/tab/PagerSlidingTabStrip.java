package cn.mucang.android.ui.framework.widget.tab;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.ui.framework.widget.tab.animation.IndicatorAnimMode;
import cn.mucang.android.ui.framework.widget.tab.container.FakePagerContainer;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class PagerSlidingTabStrip extends HorizontalScrollView {
    private static final int[] k0 = {R.attr.textSize, R.attr.textColor};
    private int A;
    private int B;
    private int C;
    private boolean D;
    private boolean E;
    private boolean F;
    private TabMode G;
    private FocusMode H;
    private IndicatorAnimMode I;
    private int K;
    private int M;
    private ColorStateList N;
    private Typeface Q;
    private int T;
    private Drawable U;
    private Locale V;
    private d W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f9009a;
    private e a0;
    private final c b;
    private h b0;
    private LinearLayout.LayoutParams c;
    private Path c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout.LayoutParams f9010d;
    private RectF d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RelativeLayout f9011e;
    private float[] e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f9012f;
    private float f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private i f9013g;
    private cn.mucang.android.ui.framework.widget.tab.animation.d g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.ui.framework.widget.tab.d f9014h;
    private Interpolator h0;
    private int i;
    private Interpolator i0;
    private int j;
    private boolean j0;
    private float k;
    private int l;
    private Paint m;
    private Paint n;
    private boolean o;
    private int p;
    private int q;
    private int r;
    private boolean s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    private enum FocusMode {
        FIRST,
        INIT_TAB,
        CENTER,
        CUSTOM
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f9015a;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f9015a);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f9015a = parcel.readInt();
        }
    }

    private enum TabMode {
        FIXED,
        SCROLLABLE,
        CENTER
    }

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @SuppressLint({"NewApi"})
        public void onGlobalLayout() {
            PagerSlidingTabStrip.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            PagerSlidingTabStrip pagerSlidingTabStrip = PagerSlidingTabStrip.this;
            pagerSlidingTabStrip.j = pagerSlidingTabStrip.f9014h.getCurrentItem();
            PagerSlidingTabStrip.this.k = BitmapDescriptorFactory.HUE_RED;
            PagerSlidingTabStrip.this.w();
            PagerSlidingTabStrip pagerSlidingTabStrip2 = PagerSlidingTabStrip.this;
            pagerSlidingTabStrip2.t(pagerSlidingTabStrip2.j, 0);
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9017a;

        static {
            int[] iArr = new int[FocusMode.values().length];
            f9017a = iArr;
            try {
                iArr[FocusMode.FIRST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9017a[FocusMode.INIT_TAB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9017a[FocusMode.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9017a[FocusMode.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private class c implements cn.mucang.android.ui.framework.widget.tab.e.a {
        private c() {
        }

        @Override // cn.mucang.android.ui.framework.widget.tab.e.a
        public void onPageSelected(int i) {
            if (PagerSlidingTabStrip.this.f9014h.getAdapter().getCount() <= i) {
                return;
            }
            PagerSlidingTabStrip.this.j = i;
            PagerSlidingTabStrip.this.t(i, 0);
            PagerSlidingTabStrip.this.u(i);
            PagerSlidingTabStrip.this.invalidate();
        }

        /* synthetic */ c(PagerSlidingTabStrip pagerSlidingTabStrip, a aVar) {
            this();
        }
    }

    public interface d {
        void a(int i, View view);
    }

    public interface e {
        void a(int i, View view, boolean z);
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CharSequence f9020a;
        private View b;
        private View c;

        public g(String str) {
        }

        static /* synthetic */ void b(h hVar, int i, d dVar, cn.mucang.android.ui.framework.widget.tab.d dVar2, View view) {
            if (hVar != null) {
                try {
                    hVar.a(i, view);
                } catch (Throwable th) {
                    t.c("Exception", th);
                    return;
                }
            }
            if (dVar != null) {
                dVar.a(i, view);
            }
            if (dVar2.getCurrentItem() != i) {
                dVar2.setCurrentItem(i);
            }
        }

        View a(Context context, final int i, final cn.mucang.android.ui.framework.widget.tab.d dVar, final d dVar2, final h hVar) {
            View view = this.b;
            if (view != null) {
                this.c = view;
            } else {
                TextView textView = new TextView(context);
                this.c = textView;
                TextView textView2 = textView;
                textView2.setText(this.f9020a);
                textView2.setFocusable(true);
                textView2.setGravity(17);
                textView2.setSingleLine();
            }
            this.c.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.ui.framework.widget.tab.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PagerSlidingTabStrip.g.b(hVar, i, dVar2, dVar, view2);
                }
            });
            return this.c;
        }

        public g(String str, CharSequence charSequence) {
            this(str);
            this.f9020a = charSequence;
        }
    }

    public interface h {
        void a(int i, View view) throws Exception;
    }

    public interface i {
        g a(int i);
    }

    public PagerSlidingTabStrip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void i(int i2, g gVar) {
        View viewA = gVar.a(getContext(), i2, this.f9014h, this.W, this.b0);
        if (i2 == this.l) {
            viewA.setSelected(true);
        }
        this.f9012f.addView(viewA, i2);
    }

    private void j(Canvas canvas, int i2, float f2, float f3) {
        Path path;
        float fC = f2 - (this.g0.c() / 2.0f);
        float fC2 = f3 + (this.g0.c() / 2.0f);
        if (!this.F || (path = this.c0) == null) {
            int i3 = i2 - this.u;
            int i4 = this.z;
            canvas.drawRect(fC, i3 - i4, fC2, i2 - i4, this.m);
            return;
        }
        path.reset();
        RectF rectF = this.d0;
        rectF.left = fC;
        int i5 = i2 - this.u;
        int i6 = this.z;
        rectF.top = i5 - i6;
        rectF.right = fC2;
        rectF.bottom = i2 - i6;
        this.c0.addRoundRect(rectF, this.e0, Path.Direction.CW);
        canvas.drawPath(this.c0, this.m);
    }

    private int k(View view) {
        if (!this.D) {
            int i2 = this.v;
            return i2 == 0 ? view.getWidth() : i2;
        }
        float fL = l(view);
        if (this.j + 1 < this.f9012f.getChildCount()) {
            fL += (l(this.f9012f.getChildAt(this.j + 1)) - fL) * this.k;
        }
        return (int) fL;
    }

    private float l(View view) {
        TextView textView;
        if (view instanceof TextView) {
            textView = (TextView) view;
        } else {
            View viewFindViewById = view.findViewById(R.id.text1);
            textView = viewFindViewById instanceof TextView ? (TextView) viewFindViewById : null;
        }
        if (textView != null) {
            return textView.getPaint().measureText(textView.getText().toString());
        }
        return view.getMeasuredWidth();
    }

    private void m(View view) {
        TextView textView;
        if (view instanceof TextView) {
            textView = (TextView) view;
        } else {
            textView = (view == null || !(view.findViewById(R.id.text1) instanceof TextView)) ? null : (TextView) view.findViewById(R.id.text1);
        }
        if (textView == null) {
            return;
        }
        if (!view.isSelected()) {
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            textView.setTypeface(Typeface.defaultFromStyle(0));
        } else {
            if (this.E) {
                view.setScaleX(1.2f);
                view.setScaleY(1.2f);
            } else {
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
            }
            textView.setTypeface(Typeface.defaultFromStyle(1));
        }
    }

    private void n() {
        if (this.F) {
            this.c0 = new Path();
            this.d0 = new RectF();
            float f2 = this.u;
            this.e0 = new float[]{f2, f2, f2, f2, f2, f2, f2, f2};
        }
        if (this.j0) {
            o();
        }
        cn.mucang.android.ui.framework.widget.tab.animation.d dVarA = cn.mucang.android.ui.framework.widget.tab.animation.a.a(this.I);
        this.g0 = dVarA;
        dVarA.b(new cn.mucang.android.ui.framework.widget.tab.animation.c() { // from class: cn.mucang.android.ui.framework.widget.tab.a
            @Override // cn.mucang.android.ui.framework.widget.tab.animation.c
            public final void a() {
                this.f9021a.invalidate();
            }
        });
    }

    private void p(Context context) {
        if (this.G != TabMode.CENTER) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.f9012f = linearLayout;
            linearLayout.setOrientation(0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.bottomMargin = this.w;
            this.f9012f.setLayoutParams(layoutParams);
            addView(this.f9012f);
            return;
        }
        this.f9011e = new RelativeLayout(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.bottomMargin = this.w;
        this.f9011e.setLayoutParams(layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.f9012f = linearLayout2;
        linearLayout2.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams3.addRule(13);
        this.f9012f.setLayoutParams(layoutParams3);
        this.f9011e.addView(this.f9012f);
        addView(this.f9011e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r() {
        t(this.l, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(int i2, int i3) {
        if (this.i == 0) {
            return;
        }
        int left = this.f9012f.getChildAt(i2).getLeft() + i3;
        if (i2 > 0 || i3 > 0) {
            left -= this.t;
        }
        scrollTo(left, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(int i2) {
        int i3 = this.l;
        if (i3 != i2 && i2 < this.i && i2 >= 0) {
            View childAt = this.f9012f.getChildAt(i3);
            if (childAt != null) {
                childAt.setSelected(false);
                e eVar = this.a0;
                if (eVar != null) {
                    eVar.a(this.l, childAt, false);
                }
            }
            this.l = i2;
            View childAt2 = this.f9012f.getChildAt(i2);
            if (childAt2 != null) {
                childAt2.setSelected(true);
                e eVar2 = this.a0;
                if (eVar2 != null) {
                    eVar2.a(this.l, childAt2, true);
                }
            }
            m(childAt);
            m(childAt2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        int i2 = b.f9017a[this.H.ordinal()];
        int i3 = 0;
        if (i2 != 1) {
            if (i2 == 2) {
                int i4 = this.j;
                if (i4 > 0 && i4 < this.i) {
                    int measuredWidth = getMeasuredWidth();
                    this.t = 0;
                    while (i3 < this.j) {
                        int measuredWidth2 = this.f9012f.getChildAt(i3).getMeasuredWidth();
                        i3++;
                        int measuredWidth3 = this.f9012f.getChildAt(i3).getMeasuredWidth();
                        int i5 = this.t + measuredWidth2;
                        this.t = i5;
                        if (measuredWidth3 + i5 > measuredWidth) {
                            this.t = i5 - measuredWidth2;
                            break;
                        }
                    }
                } else if (i4 == 0 && this.f9012f.getChildCount() > 0) {
                    this.t = this.f9012f.getChildAt(0).getMeasuredWidth();
                }
            } else if (i2 == 3) {
                this.t = (getMeasuredWidth() - (this.f9012f.getChildCount() > 0 ? this.f9012f.getChildAt(0).getMeasuredWidth() : 0)) / 2;
            }
        } else if (this.f9012f.getChildCount() > 0) {
            this.t = this.f9012f.getChildAt(0).getMeasuredWidth();
        }
        this.f0 = this.f9012f.getLeft();
    }

    private void x() {
        for (int i2 = 0; i2 < this.i; i2++) {
            View childAt = this.f9012f.getChildAt(i2);
            if (this.G == TabMode.FIXED) {
                childAt.setLayoutParams(this.f9010d);
            } else {
                childAt.setLayoutParams(this.c);
            }
            childAt.setBackgroundResource(this.T);
            Drawable drawable = this.U;
            if (drawable != null) {
                childAt.setBackground(drawable);
            }
            int i3 = this.y;
            childAt.setPadding(i3, 0, i3, 0);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.B);
                textView.setTypeface(this.Q, this.M);
                ColorStateList colorStateList = this.N;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                } else {
                    textView.setTextColor(this.C);
                }
                if (this.s) {
                    textView.setAllCaps(true);
                }
            }
        }
        this.o = false;
    }

    public int getCurrentSelectedPosition() {
        return this.l;
    }

    public int getDividerColor() {
        return this.r;
    }

    public int getDividerPadding() {
        return this.x;
    }

    public int getIndicatorColor() {
        return this.p;
    }

    public int getIndicatorHeight() {
        return this.u;
    }

    public int getIndicatorPaddingBottom() {
        return this.z;
    }

    public int getTabBackground() {
        return this.T;
    }

    public int getTabPaddingLeftRight() {
        return this.y;
    }

    public int getTextColor() {
        return this.C;
    }

    public int getTextSize() {
        return this.B;
    }

    public void o() {
        this.h0 = new AccelerateInterpolator(2.0f);
        this.i0 = new DecelerateInterpolator(2.0f);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        x();
        post(new Runnable() { // from class: cn.mucang.android.ui.framework.widget.tab.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f9026a.r();
            }
        });
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i2;
        super.onDraw(canvas);
        if (isInEditMode() || this.i == 0) {
            return;
        }
        int height = getHeight();
        this.m.setColor(this.q);
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, height - this.w, this.f9012f.getWidth(), height, this.m);
        this.m.setColor(this.p);
        View childAt = this.f9012f.getChildAt(this.j);
        int iK = k(childAt);
        float left = childAt.getLeft() + ((childAt.getWidth() - iK) / 2.0f);
        float right = childAt.getRight() - ((childAt.getWidth() - iK) / 2.0f);
        TabMode tabMode = this.G;
        TabMode tabMode2 = TabMode.CENTER;
        if (tabMode == tabMode2) {
            float f2 = this.f0;
            left += f2;
            right += f2;
        }
        if (this.k > BitmapDescriptorFactory.HUE_RED && (i2 = this.j) < this.i - 1) {
            View childAt2 = this.f9012f.getChildAt(i2 + 1);
            float left2 = childAt2.getLeft() + ((childAt2.getWidth() - iK) / 2.0f);
            float right2 = childAt2.getRight() - ((childAt2.getWidth() - iK) / 2.0f);
            if (this.G == tabMode2) {
                float f3 = this.f0;
                left2 += f3;
                right2 += f3;
            }
            float interpolation = this.k;
            Interpolator interpolator = this.h0;
            float interpolation2 = interpolator != null ? interpolator.getInterpolation(interpolation) : interpolation;
            Interpolator interpolator2 = this.i0;
            if (interpolator2 != null) {
                interpolation = interpolator2.getInterpolation(interpolation);
            }
            left = (left2 * interpolation2) + ((1.0f - interpolation2) * left);
            right = (right2 * interpolation) + ((1.0f - interpolation) * right);
        }
        j(canvas, height, left, right);
        this.n.setColor(this.r);
        for (int i3 = 0; i3 < this.i - 1; i3++) {
            View childAt3 = this.f9012f.getChildAt(i3);
            canvas.drawLine(childAt3.getRight(), this.x, childAt3.getRight(), height - this.x, this.n);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        if (this.G != TabMode.FIXED || this.o || View.MeasureSpec.getMode(i2) == 0) {
            super.onMeasure(i2, i3);
            return;
        }
        if (this.K > 0) {
            for (int i4 = 0; i4 < this.i; i4++) {
                this.f9012f.getChildAt(i4).setMinimumWidth(this.K);
            }
        }
        if (!this.o) {
            super.onMeasure(i2, i3);
        }
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = 0;
        for (int i5 = 0; i5 < this.i; i5++) {
            measuredWidth2 += this.f9012f.getChildAt(i5).getMeasuredWidth();
        }
        if (measuredWidth2 <= 0 || measuredWidth <= 0) {
            return;
        }
        w();
        if (measuredWidth2 <= measuredWidth) {
            if (this.K > 0) {
                int i6 = (measuredWidth - measuredWidth2) / 2;
                this.f9012f.setPadding(i6, 0, i6, 0);
            } else {
                int i7 = measuredWidth - measuredWidth2;
                int i8 = this.i;
                int i9 = (i7 / i8) / 2;
                int i10 = (i7 - ((i8 * i9) * 2)) / 2;
                this.f9012f.setPadding(i10, 0, i10, 0);
                for (int i11 = 0; i11 < this.i; i11++) {
                    View childAt = this.f9012f.getChildAt(i11);
                    childAt.setPadding(childAt.getPaddingLeft() + i9, childAt.getPaddingTop(), childAt.getPaddingRight() + i9, childAt.getPaddingBottom());
                }
            }
            super.onMeasure(i2, i3);
        }
        this.o = true;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.j = savedState.f9015a;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f9015a = this.j;
        return savedState;
    }

    public void s() {
        this.f9012f.removeAllViews();
        this.i = this.f9014h.getAdapter().getCount();
        for (int i2 = 0; i2 < this.i; i2++) {
            i iVar = this.f9013g;
            if (iVar == null || iVar.a(i2) == null) {
                i(i2, new g(Integer.toString(i2), this.f9014h.getAdapter().getPageTitle(i2)));
            } else {
                i(i2, this.f9013g.a(i2));
            }
        }
        x();
        u(this.f9014h.getCurrentItem());
    }

    public void setAllTabEnabled(boolean z) {
        for (int i2 = 0; i2 < this.f9012f.getChildCount(); i2++) {
            this.f9012f.getChildAt(i2).setEnabled(z);
        }
    }

    public void setDividerColor(int i2) {
        this.r = i2;
        invalidate();
    }

    public void setDividerColorResource(int i2) {
        this.r = getResources().getColor(i2);
        invalidate();
    }

    public void setDividerPadding(int i2) {
        this.x = i2;
        invalidate();
    }

    public void setIndicatorColor(int i2) {
        this.p = i2;
        invalidate();
    }

    public void setIndicatorColorResource(int i2) {
        this.p = getResources().getColor(i2);
        invalidate();
    }

    public void setIndicatorHeight(int i2) {
        this.u = i2;
        invalidate();
    }

    public void setIndicatorPaddingBottom(int i2) {
        this.z = i2;
        x();
    }

    public void setIndicatorWidth(int i2) {
        this.v = i2;
        invalidate();
    }

    public void setInterceptor(h hVar) {
        this.b0 = hVar;
    }

    public void setOnTabClickListener(d dVar) {
        this.W = dVar;
    }

    public void setOnTabSelectChangeListener(e eVar) {
        this.a0 = eVar;
    }

    public void setTabBackground(int i2) {
        this.T = i2;
        x();
    }

    public void setTabItemMinWidth(int i2) {
        this.K = i2;
    }

    public void setTabPaddingLeftRight(int i2) {
        this.y = i2;
        x();
    }

    public void setTextColor(int i2) {
        this.C = i2;
        x();
    }

    public void setTextColorResource(int i2) {
        this.C = getResources().getColor(i2);
        x();
    }

    public void setTextColorStateList(int i2) {
        this.N = getResources().getColorStateList(i2);
        x();
    }

    public void setTextSize(int i2) {
        this.B = i2;
        x();
    }

    public void setViewPager(cn.mucang.android.ui.framework.widget.tab.d dVar) {
        v(dVar, dVar.getAdapter() instanceof i ? (i) dVar.getAdapter() : null);
    }

    public void v(cn.mucang.android.ui.framework.widget.tab.d dVar, i iVar) {
        this.f9014h = dVar;
        this.f9013g = iVar;
        if (dVar.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        cn.mucang.android.ui.framework.widget.tab.d dVar2 = this.f9014h;
        if (dVar2 instanceof FakePagerContainer) {
            ((FakePagerContainer) dVar2).a(this.b);
        } else if (dVar2 instanceof cn.mucang.android.ui.framework.widget.tab.container.a) {
            ((cn.mucang.android.ui.framework.widget.tab.container.a) dVar2).a(this.f9009a);
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
        s();
    }

    private class f implements cn.mucang.android.ui.framework.widget.tab.e.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f9019a;

        private f() {
            this.f9019a = false;
        }

        private void a(int i) {
            long j;
            int iAbs = Math.abs(i - PagerSlidingTabStrip.this.j);
            if (this.f9019a) {
                j = 200;
                this.f9019a = false;
            } else {
                j = iAbs * 100;
                if (iAbs == 1) {
                    j += 50;
                }
            }
            PagerSlidingTabStrip.this.g0.a(j);
        }

        @Override // cn.mucang.android.ui.framework.widget.tab.e.a
        public void onPageSelected(int i) {
            if (PagerSlidingTabStrip.this.f9014h.getAdapter().getCount() <= i) {
                return;
            }
            PagerSlidingTabStrip.this.u(i);
            PagerSlidingTabStrip.this.invalidate();
            a(i);
        }

        /* synthetic */ f(PagerSlidingTabStrip pagerSlidingTabStrip, a aVar) {
            this();
        }
    }

    public PagerSlidingTabStrip(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a aVar = null;
        this.f9009a = new f(this, aVar);
        this.b = new c(this, aVar);
        this.j = 0;
        this.k = BitmapDescriptorFactory.HUE_RED;
        this.l = -1;
        this.o = false;
        this.p = -10066330;
        this.q = 436207616;
        this.r = 436207616;
        this.s = true;
        this.t = 0;
        this.u = 8;
        this.v = 0;
        this.w = 2;
        this.x = 12;
        this.y = 24;
        this.z = 0;
        this.A = 1;
        this.B = 12;
        this.C = -10066330;
        this.E = true;
        this.K = 0;
        this.M = 0;
        this.Q = null;
        this.T = 0;
        this.U = null;
        this.f0 = BitmapDescriptorFactory.HUE_RED;
        setFillViewport(true);
        setWillNotDraw(false);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.u = (int) TypedValue.applyDimension(1, this.u, displayMetrics);
        this.w = (int) TypedValue.applyDimension(1, this.w, displayMetrics);
        this.x = (int) TypedValue.applyDimension(1, this.x, displayMetrics);
        this.y = (int) TypedValue.applyDimension(1, this.y, displayMetrics);
        this.z = (int) TypedValue.applyDimension(1, this.z, displayMetrics);
        this.A = (int) TypedValue.applyDimension(1, this.A, displayMetrics);
        this.B = (int) TypedValue.applyDimension(1, this.B, displayMetrics);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k0);
        this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, this.B);
        this.C = typedArrayObtainStyledAttributes.getColor(1, this.C);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip);
        this.p = typedArrayObtainStyledAttributes2.getColor(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pIndicatorColor, this.p);
        this.q = typedArrayObtainStyledAttributes2.getColor(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pUnderlineColor, this.q);
        this.r = typedArrayObtainStyledAttributes2.getColor(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pDividerColor, this.r);
        this.u = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pIndicatorHeight, this.u);
        this.w = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pUnderlineHeight, this.w);
        this.v = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pIndicatorWidth, this.v);
        this.x = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTabDividerPadding, this.x);
        this.y = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTabPaddingLeftRight, this.y);
        this.z = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pIndicatorPaddingBottom, this.z);
        this.T = typedArrayObtainStyledAttributes2.getResourceId(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTabBackground, this.T);
        this.t = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pScrollOffset, this.t);
        this.s = typedArrayObtainStyledAttributes2.getBoolean(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTabTextAllCaps, this.s);
        this.N = typedArrayObtainStyledAttributes2.getColorStateList(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTabTextColor);
        this.B = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTabTextSize, this.B);
        this.K = typedArrayObtainStyledAttributes2.getDimensionPixelSize(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTabItemMinWidth, this.K);
        this.D = typedArrayObtainStyledAttributes2.getBoolean(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pIndicatorMatchTextWidth, false);
        this.F = typedArrayObtainStyledAttributes2.getBoolean(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pIndicatorCorner, false);
        this.j0 = typedArrayObtainStyledAttributes2.getBoolean(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pIsTabScrollGradient, false);
        this.G = TabMode.values()[typedArrayObtainStyledAttributes2.getInt(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTabMode, 0)];
        this.H = FocusMode.values()[typedArrayObtainStyledAttributes2.getInt(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pFocusMode, 0)];
        this.I = IndicatorAnimMode.values()[typedArrayObtainStyledAttributes2.getInt(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pIndicatorAnimMode, 0)];
        this.E = typedArrayObtainStyledAttributes2.getBoolean(cn.mucang.android.framework.core.R.styleable.PagerSlidingTabStrip_pTextSelectedBigger, this.E);
        typedArrayObtainStyledAttributes2.recycle();
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.n = paint2;
        paint2.setAntiAlias(true);
        this.n.setStrokeWidth(this.A);
        this.c = new LinearLayout.LayoutParams(-2, -1);
        this.f9010d = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.V == null) {
            this.V = getResources().getConfiguration().locale;
        }
        p(context);
        n();
    }

    public void setTabBackground(Drawable drawable) {
        this.U = drawable;
        x();
    }

    public void setTextColorStateList(ColorStateList colorStateList) {
        this.N = colorStateList;
        x();
    }
}
