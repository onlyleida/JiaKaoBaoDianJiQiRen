package cn.mucang.android.wuhan.widget.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class CirclePageIndicator extends View implements ViewPager.OnPageChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected float f9091a;
    protected final Paint b;
    protected final Paint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Paint f9092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected ViewPager f9093e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected ViewPager.OnPageChangeListener f9094f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f9095g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f9096h;
    protected float i;
    protected int j;
    protected int k;
    protected boolean l;
    protected boolean m;
    protected int n;
    protected float o;
    protected int p;
    protected boolean q;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f9097a;

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

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f9097a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f9097a = parcel.readInt();
        }
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.vpiCirclePageIndicatorStyle);
    }

    private int a(int i) {
        ViewPager viewPager;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824 || (viewPager = this.f9093e) == null) {
            return size;
        }
        int count = viewPager.getAdapter().getCount();
        float paddingLeft = getPaddingLeft() + getPaddingRight();
        float f2 = this.f9091a;
        int i2 = (int) (paddingLeft + (count * 2 * f2) + ((count - 1) * f2) + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(i2, size) : i2;
    }

    private int b(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = (int) ((this.f9091a * 2.0f) + getPaddingTop() + getPaddingBottom() + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
    }

    public void c(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }

    public int getFillColor() {
        return this.f9092d.getColor();
    }

    public int getOrientation() {
        return this.k;
    }

    public int getPageColor() {
        return this.b.getColor();
    }

    public float getRadius() {
        return this.f9091a;
    }

    public int getStrokeColor() {
        return this.c.getColor();
    }

    public float getStrokeWidth() {
        return this.c.getStrokeWidth();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        int height;
        int paddingTop;
        int paddingBottom;
        int paddingLeft;
        float f2;
        float f3;
        super.onDraw(canvas);
        ViewPager viewPager = this.f9093e;
        if (viewPager == null || (count = viewPager.getAdapter().getCount()) == 0) {
            return;
        }
        if (this.f9095g >= count) {
            setCurrentItem(count - 1);
            return;
        }
        if (this.k == 0) {
            height = getWidth();
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
            paddingLeft = getPaddingTop();
        } else {
            height = getHeight();
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
            paddingLeft = getPaddingLeft();
        }
        float strokeWidth = this.f9091a;
        float f4 = 3.0f * strokeWidth;
        float f5 = paddingLeft + strokeWidth;
        float f6 = paddingTop + strokeWidth;
        if (this.l) {
            f6 += (((height - paddingTop) - paddingBottom) / 2.0f) - ((count * f4) / 2.0f);
        }
        if (this.c.getStrokeWidth() > BitmapDescriptorFactory.HUE_RED) {
            strokeWidth -= this.c.getStrokeWidth() / 2.0f;
        }
        for (int i = 0; i < count; i++) {
            float f7 = (i * f4) + f6;
            if (this.k == 0) {
                f3 = f5;
            } else {
                f3 = f7;
                f7 = f5;
            }
            if (this.b.getAlpha() > 0) {
                canvas.drawCircle(f7, f3, strokeWidth, this.b);
            }
            float f8 = this.f9091a;
            if (strokeWidth != f8) {
                canvas.drawCircle(f7, f3, f8, this.c);
            }
        }
        boolean z = this.m;
        float f9 = (z ? this.f9096h : this.f9095g) * f4;
        if (!z) {
            f9 += this.i * f4;
        }
        if (this.k == 0) {
            float f10 = f6 + f9;
            f2 = f5;
            f5 = f10;
        } else {
            f2 = f6 + f9;
        }
        canvas.drawCircle(f5, f2, this.f9091a, this.f9092d);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.k == 0) {
            setMeasuredDimension(a(i), b(i2));
        } else {
            setMeasuredDimension(b(i), a(i2));
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.j = i;
        ViewPager.OnPageChangeListener onPageChangeListener = this.f9094f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f2, int i2) {
        this.f9095g = i;
        this.i = f2;
        invalidate();
        ViewPager.OnPageChangeListener onPageChangeListener = this.f9094f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f2, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        if (this.m || this.j == 0) {
            this.f9095g = i;
            this.f9096h = i;
            invalidate();
        }
        ViewPager.OnPageChangeListener onPageChangeListener = this.f9094f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i = savedState.f9097a;
        this.f9095g = i;
        this.f9096h = i;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f9097a = this.f9095g;
        return savedState;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00fa  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int count;
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f9093e;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.p = MotionEventCompat.getPointerId(motionEvent, 0);
            this.o = motionEvent.getX();
        } else if (action == 1) {
            if (!this.q) {
                count = this.f9093e.getAdapter().getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                if (this.f9095g <= 0 && motionEvent.getX() < f2 - f3) {
                    if (action != 3) {
                        this.f9093e.setCurrentItem(this.f9095g - 1);
                    }
                    return true;
                }
                if (this.f9095g < count - 1 && motionEvent.getX() > f2 + f3) {
                    if (action != 3) {
                        this.f9093e.setCurrentItem(this.f9095g + 1);
                    }
                    return true;
                }
            }
            this.q = false;
            this.p = -1;
            if (this.f9093e.isFakeDragging()) {
                this.f9093e.endFakeDrag();
            }
        } else if (action == 2) {
            float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.p));
            float f4 = x - this.o;
            if (!this.q && Math.abs(f4) > this.n) {
                this.q = true;
            }
            if (this.q) {
                this.o = x;
                if (this.f9093e.isFakeDragging() || this.f9093e.beginFakeDrag()) {
                    this.f9093e.fakeDragBy(f4);
                }
            }
        } else if (action == 3) {
            if (!this.q) {
                count = this.f9093e.getAdapter().getCount();
                float width2 = getWidth();
                float f5 = width2 / 2.0f;
                float f6 = width2 / 6.0f;
                if (this.f9095g <= 0) {
                }
                if (this.f9095g < count - 1) {
                    if (action != 3) {
                        this.f9093e.setCurrentItem(this.f9095g + 1);
                    }
                    return true;
                }
            }
            this.q = false;
            this.p = -1;
            if (this.f9093e.isFakeDragging()) {
                this.f9093e.endFakeDrag();
            }
        } else if (action == 5) {
            int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
            this.o = MotionEventCompat.getX(motionEvent, actionIndex);
            this.p = MotionEventCompat.getPointerId(motionEvent, actionIndex);
        } else if (action == 6) {
            int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
            if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.p) {
                this.p = MotionEventCompat.getPointerId(motionEvent, actionIndex2 == 0 ? 1 : 0);
            }
            this.o = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.p));
        }
        return true;
    }

    public void setCentered(boolean z) {
        this.l = z;
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f9093e;
        if (viewPager == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        viewPager.setCurrentItem(i);
        this.f9095g = i;
        invalidate();
    }

    public void setFillColor(int i) {
        this.f9092d.setColor(i);
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f9094f = onPageChangeListener;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
        }
        this.k = i;
        requestLayout();
    }

    public void setPageColor(int i) {
        this.b.setColor(i);
        invalidate();
    }

    public void setRadius(float f2) {
        this.f9091a = f2;
        invalidate();
    }

    public void setSnap(boolean z) {
        this.m = z;
        invalidate();
    }

    public void setStrokeColor(int i) {
        this.c.setColor(i);
        invalidate();
    }

    public void setStrokeWidth(float f2) {
        this.c.setStrokeWidth(f2);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f9093e;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f9093e = viewPager;
        viewPager.setOnPageChangeListener(this);
        invalidate();
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.b = paint;
        Paint paint2 = new Paint(1);
        this.c = paint2;
        Paint paint3 = new Paint(1);
        this.f9092d = paint3;
        this.o = -1.0f;
        this.p = -1;
        if (isInEditMode()) {
            return;
        }
        Resources resources = getResources();
        int color = resources.getColor(R.color.default_circle_indicator_page_color);
        int color2 = resources.getColor(R.color.default_circle_indicator_fill_color);
        int integer = resources.getInteger(R.integer.default_circle_indicator_orientation);
        int color3 = resources.getColor(R.color.default_circle_indicator_stroke_color);
        float dimension = resources.getDimension(R.dimen.default_circle_indicator_stroke_width);
        float dimension2 = resources.getDimension(R.dimen.default_circle_indicator_radius);
        boolean z = resources.getBoolean(R.bool.default_circle_indicator_centered);
        boolean z2 = resources.getBoolean(R.bool.default_circle_indicator_snap);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CirclePageIndicator, i, 0);
        this.l = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CirclePageIndicator_centered, z);
        this.k = typedArrayObtainStyledAttributes.getInt(R.styleable.CirclePageIndicator_android_orientation, integer);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.CirclePageIndicator_pageColor, color));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.CirclePageIndicator_strokeColor, color3));
        paint2.setStrokeWidth(typedArrayObtainStyledAttributes.getDimension(R.styleable.CirclePageIndicator_strokeWidth, dimension));
        paint3.setStyle(Paint.Style.FILL);
        paint3.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.CirclePageIndicator_fillColor, color2));
        this.f9091a = typedArrayObtainStyledAttributes.getDimension(R.styleable.CirclePageIndicator_vpiRadius, dimension2);
        this.m = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CirclePageIndicator_snap, z2);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.CirclePageIndicator_android_background);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.n = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }
}
