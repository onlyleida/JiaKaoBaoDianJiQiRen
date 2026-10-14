package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public class CardView extends FrameLayout {
    private static final int[] COLOR_BACKGROUND_ATTR = {R.attr.colorBackground};
    private static final e IMPL;
    private final d mCardViewDelegate;
    private boolean mCompatPadding;
    final Rect mContentPadding;
    private boolean mPreventCornerOverlap;
    final Rect mShadowBounds;
    int mUserSetMinHeight;
    int mUserSetMinWidth;

    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable f544a;

        a() {
        }

        @Override // androidx.cardview.widget.d
        public void a(Drawable drawable) {
            this.f544a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // androidx.cardview.widget.d
        public boolean b() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // androidx.cardview.widget.d
        public Drawable c() {
            return this.f544a;
        }

        @Override // androidx.cardview.widget.d
        public void d(int i, int i2) {
            CardView cardView = CardView.this;
            if (i > cardView.mUserSetMinWidth) {
                CardView.super.setMinimumWidth(i);
            }
            CardView cardView2 = CardView.this;
            if (i2 > cardView2.mUserSetMinHeight) {
                CardView.super.setMinimumHeight(i2);
            }
        }

        @Override // androidx.cardview.widget.d
        public boolean e() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // androidx.cardview.widget.d
        public View f() {
            return CardView.this;
        }

        @Override // androidx.cardview.widget.d
        public void setShadowPadding(int i, int i2, int i3, int i4) {
            CardView.this.mShadowBounds.set(i, i2, i3, i4);
            CardView cardView = CardView.this;
            Rect rect = cardView.mContentPadding;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            IMPL = new b();
        } else if (i >= 17) {
            IMPL = new androidx.cardview.widget.a();
        } else {
            IMPL = new c();
        }
        IMPL.l();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public ColorStateList getCardBackgroundColor() {
        return IMPL.e(this.mCardViewDelegate);
    }

    public float getCardElevation() {
        return IMPL.i(this.mCardViewDelegate);
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return IMPL.d(this.mCardViewDelegate);
    }

    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    public float getRadius() {
        return IMPL.b(this.mCardViewDelegate);
    }

    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        e eVar = IMPL;
        if (eVar instanceof b) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(eVar.m(this.mCardViewDelegate)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(eVar.f(this.mCardViewDelegate)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        IMPL.n(this.mCardViewDelegate, ColorStateList.valueOf(i));
    }

    public void setCardElevation(float f2) {
        IMPL.c(this.mCardViewDelegate, f2);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.mContentPadding.set(i, i2, i3, i4);
        IMPL.k(this.mCardViewDelegate);
    }

    public void setMaxCardElevation(float f2) {
        IMPL.o(this.mCardViewDelegate, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.mUserSetMinHeight = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.mUserSetMinWidth = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.mPreventCornerOverlap) {
            this.mPreventCornerOverlap = z;
            IMPL.g(this.mCardViewDelegate);
        }
    }

    public void setRadius(float f2) {
        IMPL.a(this.mCardViewDelegate, f2);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.mCompatPadding != z) {
            this.mCompatPadding = z;
            IMPL.j(this.mCardViewDelegate);
        }
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.cardview.R.attr.cardViewStyle);
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        IMPL.n(this.mCardViewDelegate, colorStateList);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        int color;
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i);
        Rect rect = new Rect();
        this.mContentPadding = rect;
        this.mShadowBounds = new Rect();
        a aVar = new a();
        this.mCardViewDelegate = aVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.cardview.R.styleable.CardView, i, androidx.cardview.R.style.CardView);
        int i2 = androidx.cardview.R.styleable.CardView_cardBackgroundColor;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(i2);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
            int color2 = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(androidx.cardview.R.color.cardview_light_background);
            } else {
                color = getResources().getColor(androidx.cardview.R.color.cardview_dark_background);
            }
            colorStateListValueOf = ColorStateList.valueOf(color);
        }
        ColorStateList colorStateList = colorStateListValueOf;
        float dimension = typedArrayObtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardCornerRadius, BitmapDescriptorFactory.HUE_RED);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardElevation, BitmapDescriptorFactory.HUE_RED);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardMaxElevation, BitmapDescriptorFactory.HUE_RED);
        this.mCompatPadding = typedArrayObtainStyledAttributes.getBoolean(androidx.cardview.R.styleable.CardView_cardUseCompatPadding, false);
        this.mPreventCornerOverlap = typedArrayObtainStyledAttributes.getBoolean(androidx.cardview.R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPadding, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        float f2 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.mUserSetMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_android_minWidth, 0);
        this.mUserSetMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_android_minHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
        IMPL.h(aVar, context, colorStateList, dimension, dimension2, f2);
    }
}
