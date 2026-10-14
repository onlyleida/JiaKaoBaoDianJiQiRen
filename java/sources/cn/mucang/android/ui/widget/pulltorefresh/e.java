package cn.mucang.android.ui.widget.pulltorefresh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public abstract class e extends FrameLayout implements c {
    static final Interpolator v = new LinearInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FrameLayout f9053a;
    protected final ImageView b;
    protected final ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final ProgressBar f9054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextView f9056f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TextView f9057g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TextView f9058h;
    protected final PullToRefreshBase.Mode i;
    protected final PullToRefreshBase.Orientation j;
    private CharSequence k;
    private CharSequence l;
    private CharSequence m;
    private CharSequence n;
    private boolean o;
    private int p;
    private int q;
    private String[] r;
    private int[] s;
    private int[] t;
    private int u;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9059a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            b = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[PullToRefreshBase.Orientation.values().length];
            f9059a = iArr2;
            try {
                iArr2[PullToRefreshBase.Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9059a[PullToRefreshBase.Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public e(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable;
        String[] strArr;
        int[] iArr;
        super(context);
        this.o = false;
        this.i = mode;
        this.j = orientation;
        int i = R.styleable.PullToRefresh_ptr_header_layout_id;
        if (typedArray.hasValue(i)) {
            int resourceId = typedArray.getResourceId(i, -1);
            if (resourceId < 0) {
                throw new NullPointerException("not fond layout resource");
            }
            LayoutInflater.from(context).inflate(resourceId, this);
        } else if (a.f9059a[orientation.ordinal()] != 1) {
            LayoutInflater.from(context).inflate(R.layout.ui__pull_to_refresh_header_vertical, this);
        } else {
            LayoutInflater.from(context).inflate(R.layout.ui__pull_to_refresh_header_horizontal, this);
        }
        this.f9053a = (FrameLayout) findViewById(R.id.fl_inner);
        TextView textView = (TextView) findViewById(R.id.pull_to_refresh_slogan);
        this.f9058h = textView;
        this.f9056f = (TextView) this.f9053a.findViewById(R.id.pull_to_refresh_text);
        this.f9054d = (ProgressBar) this.f9053a.findViewById(R.id.pull_to_refresh_progress);
        this.f9057g = (TextView) this.f9053a.findViewById(R.id.pull_to_refresh_sub_text);
        this.b = (ImageView) this.f9053a.findViewById(R.id.pull_to_refresh_image);
        this.c = (ImageView) this.f9053a.findViewById(R.id.pull_to_refresh_static_image);
        boolean z = typedArray.getBoolean(R.styleable.PullToRefresh_ptrShowSlogan, false);
        this.o = z;
        if (!z || textView == null) {
            this.o = false;
        } else {
            this.p = typedArray.getResourceId(R.styleable.PullToRefresh_ptrSloganLabels, -1);
            int resourceId2 = typedArray.getResourceId(R.styleable.PullToRefresh_ptrSloganWeights, -1);
            this.q = resourceId2;
            if (resourceId2 != -1) {
                int[] intArray = context.getResources().getIntArray(this.q);
                this.s = intArray;
                if (intArray != null && intArray.length > 0) {
                    this.t = new int[intArray.length];
                }
                int i2 = 0;
                while (true) {
                    int[] iArr2 = this.s;
                    if (i2 >= iArr2.length) {
                        break;
                    }
                    int i3 = this.u + iArr2[i2];
                    this.u = i3;
                    this.t[i2] = i3;
                    i2++;
                }
            }
            if (this.p != -1) {
                this.r = context.getResources().getStringArray(this.p);
            }
            boolean z2 = (!this.o || (strArr = this.r) == null || (iArr = this.s) == null || strArr == null || iArr.length != strArr.length) ? false : true;
            this.o = z2;
            if (z2) {
                this.f9058h.setVisibility(0);
            }
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f9053a.getLayoutParams();
        int[] iArr3 = a.b;
        if (iArr3[mode.ordinal()] != 1) {
            layoutParams.gravity = orientation == PullToRefreshBase.Orientation.VERTICAL ? 80 : 5;
            this.k = context.getString(R.string.pull_to_refresh_pull_label);
            this.l = context.getString(R.string.pull_to_refresh_refreshing_label);
            this.m = context.getString(R.string.pull_to_refresh_release_label);
        } else {
            layoutParams.gravity = orientation == PullToRefreshBase.Orientation.VERTICAL ? 48 : 3;
            this.k = context.getString(R.string.pull_to_refresh_from_bottom_pull_label);
            this.l = context.getString(R.string.pull_to_refresh_from_bottom_refreshing_label);
            this.m = context.getString(R.string.pull_to_refresh_from_bottom_release_label);
        }
        int i4 = R.styleable.PullToRefresh_ptrHeaderBackground;
        if (typedArray.hasValue(i4) && (drawable = typedArray.getDrawable(i4)) != null) {
            k.b(this, drawable);
        }
        int i5 = R.styleable.PullToRefresh_ptrHeaderTextAppearance;
        if (typedArray.hasValue(i5)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i5, typedValue);
            setTextAppearance(typedValue.data);
        }
        int i6 = R.styleable.PullToRefresh_ptrSubHeaderTextAppearance;
        if (typedArray.hasValue(i6)) {
            TypedValue typedValue2 = new TypedValue();
            typedArray.getValue(i6, typedValue2);
            setSubTextAppearance(typedValue2.data);
        }
        int i7 = R.styleable.PullToRefresh_ptrHeaderTextColor;
        if (typedArray.hasValue(i7) && (colorStateList2 = typedArray.getColorStateList(i7)) != null) {
            setTextColor(colorStateList2);
        }
        int i8 = R.styleable.PullToRefresh_ptrHeaderSubTextColor;
        if (typedArray.hasValue(i8) && (colorStateList = typedArray.getColorStateList(i8)) != null) {
            setSubTextColor(colorStateList);
        }
        int i9 = R.styleable.PullToRefresh_ptrDrawable;
        Drawable drawable2 = typedArray.hasValue(i9) ? typedArray.getDrawable(i9) : null;
        if (iArr3[mode.ordinal()] != 1) {
            int i10 = R.styleable.PullToRefresh_ptrDrawableStart;
            if (typedArray.hasValue(i10)) {
                drawable2 = typedArray.getDrawable(i10);
            } else {
                int i11 = R.styleable.PullToRefresh_ptrDrawableTop;
                if (typedArray.hasValue(i11)) {
                    j.a("ptrDrawableTop", "ptrDrawableStart");
                    drawable2 = typedArray.getDrawable(i11);
                }
            }
        } else {
            int i12 = R.styleable.PullToRefresh_ptrDrawableEnd;
            if (typedArray.hasValue(i12)) {
                drawable2 = typedArray.getDrawable(i12);
            } else {
                int i13 = R.styleable.PullToRefresh_ptrDrawableBottom;
                if (typedArray.hasValue(i13)) {
                    j.a("ptrDrawableBottom", "ptrDrawableEnd");
                    drawable2 = typedArray.getDrawable(i13);
                }
            }
        }
        setLoadingDrawable(drawable2 == null ? context.getResources().getDrawable(getDefaultDrawableResId()) : drawable2);
        l();
    }

    private void setSubHeaderText(CharSequence charSequence) {
        if (this.f9057g != null) {
            if (TextUtils.isEmpty(charSequence)) {
                this.f9057g.setVisibility(8);
                return;
            }
            this.f9057g.setText(charSequence);
            if (8 == this.f9057g.getVisibility()) {
                this.f9057g.setVisibility(0);
            }
        }
    }

    private void setSubTextAppearance(int i) {
        TextView textView = this.f9057g;
        if (textView != null) {
            textView.setTextAppearance(getContext(), i);
        }
    }

    private void setSubTextColor(ColorStateList colorStateList) {
        TextView textView = this.f9057g;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    private void setTextAppearance(int i) {
        TextView textView = this.f9056f;
        if (textView != null) {
            textView.setTextAppearance(getContext(), i);
        }
        TextView textView2 = this.f9057g;
        if (textView2 != null) {
            textView2.setTextAppearance(getContext(), i);
        }
    }

    private void setTextColor(ColorStateList colorStateList) {
        TextView textView = this.f9056f;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
        TextView textView2 = this.f9057g;
        if (textView2 != null) {
            textView2.setTextColor(colorStateList);
        }
    }

    public final void a() {
        if (this.f9056f.getVisibility() == 0) {
            this.f9056f.setVisibility(4);
        }
        if (this.f9054d.getVisibility() == 0) {
            this.f9054d.setVisibility(4);
        }
        if (this.b.getVisibility() == 0) {
            this.b.setVisibility(4);
        }
        ImageView imageView = this.c;
        if (imageView != null && imageView.getVisibility() == 0) {
            this.c.setVisibility(4);
        }
        if (this.f9057g.getVisibility() == 0) {
            this.f9057g.setVisibility(4);
        }
    }

    public boolean b() {
        return this.o;
    }

    protected abstract void c(Drawable drawable);

    public final void d(float f2) {
        if (this.f9055e) {
            return;
        }
        e(f2);
    }

    protected abstract void e(float f2);

    public final void f() {
        TextView textView = this.f9056f;
        if (textView != null) {
            textView.setText(this.k);
        }
        g();
    }

    protected abstract void g();

    public final int getContentSize() {
        return a.f9059a[this.j.ordinal()] != 1 ? this.f9053a.getHeight() : this.f9053a.getWidth();
    }

    protected abstract int getDefaultDrawableResId();

    public final void h() {
        TextView textView = this.f9056f;
        if (textView != null) {
            textView.setText(this.l);
        }
        if (this.f9055e) {
            ((AnimationDrawable) this.b.getDrawable()).start();
        } else {
            i();
        }
    }

    protected abstract void i();

    public final void j() {
        TextView textView = this.f9056f;
        if (textView != null) {
            textView.setText(this.m);
        }
        k();
    }

    protected abstract void k();

    public final void l() {
        TextView textView = this.f9056f;
        if (textView != null) {
            textView.setText(this.k);
        }
        this.b.setVisibility(0);
        ImageView imageView = this.c;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        if (this.f9055e) {
            ((AnimationDrawable) this.b.getDrawable()).stop();
        } else {
            m();
        }
        TextView textView2 = this.f9057g;
        if (textView2 != null) {
            if (TextUtils.isEmpty(textView2.getText())) {
                this.f9057g.setVisibility(8);
            } else {
                this.f9057g.setVisibility(0);
            }
        }
    }

    protected abstract void m();

    public final void n() {
        if (4 == this.f9056f.getVisibility()) {
            this.f9056f.setVisibility(0);
        }
        if (4 == this.f9054d.getVisibility()) {
            this.f9054d.setVisibility(0);
        }
        if (4 == this.b.getVisibility()) {
            this.b.setVisibility(0);
        }
        ImageView imageView = this.c;
        if (imageView != null && 4 == imageView.getVisibility()) {
            this.c.setVisibility(0);
        }
        if (4 == this.f9057g.getVisibility()) {
            this.f9057g.setVisibility(0);
        }
    }

    public void o() {
        int iRandom = ((int) (Math.random() * 10000.0d)) % this.u;
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            if (iRandom < this.t[i]) {
                this.n = this.r[i];
                break;
            }
        }
        this.f9058h.setText(this.n);
    }

    public final void setHeight(int i) {
        getLayoutParams().height = i;
        requestLayout();
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setLastUpdatedLabel(CharSequence charSequence) {
        setSubHeaderText(charSequence);
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public final void setLoadingDrawable(Drawable drawable) {
        this.b.setImageDrawable(drawable);
        this.f9055e = drawable instanceof AnimationDrawable;
        c(drawable);
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setPullLabel(CharSequence charSequence) {
        this.k = charSequence;
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setRefreshingLabel(CharSequence charSequence) {
        this.l = charSequence;
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setReleaseLabel(CharSequence charSequence) {
        this.m = charSequence;
    }

    public void setShowSlogan(boolean z) {
        this.o = z;
    }

    public void setTextTypeface(Typeface typeface) {
        this.f9056f.setTypeface(typeface);
    }

    public final void setWidth(int i) {
        getLayoutParams().width = i;
        requestLayout();
    }
}
