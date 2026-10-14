package cn.mucang.android.ui.framework.widget.loading;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import androidx.core.view.ViewCompat;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class ProgressWheelLoadingView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f8982a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f8984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f8985f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f8986g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f8987h;
    private long i;
    private int j;
    private int k;
    private Paint l;
    private Paint m;
    private RectF n;
    private float o;
    private long p;
    private boolean q;
    private float r;
    private float s;
    private boolean t;
    private b u;

    static class WheelSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f8988a;
        float b;
        boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f8989d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f8990e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f8991f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f8992g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f8993h;
        int i;
        boolean j;
        boolean k;

        class a implements Parcelable.Creator<WheelSavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public WheelSavedState createFromParcel(Parcel parcel) {
                return new WheelSavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public WheelSavedState[] newArray(int i) {
                return new WheelSavedState[i];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f8988a);
            parcel.writeFloat(this.b);
            parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.f8989d);
            parcel.writeInt(this.f8990e);
            parcel.writeInt(this.f8991f);
            parcel.writeInt(this.f8992g);
            parcel.writeInt(this.f8993h);
            parcel.writeInt(this.i);
            parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        }

        WheelSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private WheelSavedState(Parcel parcel) {
            super(parcel);
            this.f8988a = parcel.readFloat();
            this.b = parcel.readFloat();
            this.c = parcel.readByte() != 0;
            this.f8989d = parcel.readFloat();
            this.f8990e = parcel.readInt();
            this.f8991f = parcel.readInt();
            this.f8992g = parcel.readInt();
            this.f8993h = parcel.readInt();
            this.i = parcel.readInt();
            this.j = parcel.readByte() != 0;
            this.k = parcel.readByte() != 0;
        }
    }

    public interface b {
        void a(float f2);
    }

    public ProgressWheelLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8982a = 28;
        this.b = 4;
        this.c = 4;
        this.f8983d = false;
        this.f8984e = 0.0d;
        this.f8985f = 460.0d;
        this.f8986g = BitmapDescriptorFactory.HUE_RED;
        this.f8987h = true;
        this.i = 0L;
        this.j = -1442840576;
        this.k = ViewCompat.MEASURED_SIZE_MASK;
        this.l = new Paint();
        this.m = new Paint();
        this.n = new RectF();
        this.o = 230.0f;
        this.p = 0L;
        this.r = BitmapDescriptorFactory.HUE_RED;
        this.s = BitmapDescriptorFactory.HUE_RED;
        this.t = false;
        a(context.obtainStyledAttributes(attributeSet, R.styleable.ProgressWheel));
    }

    private void a(TypedArray typedArray) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.b = (int) TypedValue.applyDimension(1, this.b, displayMetrics);
        this.c = (int) TypedValue.applyDimension(1, this.c, displayMetrics);
        int iApplyDimension = (int) TypedValue.applyDimension(1, this.f8982a, displayMetrics);
        this.f8982a = iApplyDimension;
        this.f8982a = (int) typedArray.getDimension(R.styleable.ProgressWheel_matProg_circleRadius, iApplyDimension);
        this.f8983d = typedArray.getBoolean(R.styleable.ProgressWheel_matProg_fillRadius, false);
        this.b = (int) typedArray.getDimension(R.styleable.ProgressWheel_matProg_barWidth, this.b);
        this.c = (int) typedArray.getDimension(R.styleable.ProgressWheel_matProg_rimWidth, this.c);
        this.o = typedArray.getFloat(R.styleable.ProgressWheel_matProg_spinSpeed, this.o / 360.0f) * 360.0f;
        this.f8985f = typedArray.getInt(R.styleable.ProgressWheel_matProg_barSpinCycleTime, (int) this.f8985f);
        this.j = typedArray.getColor(R.styleable.ProgressWheel_matProg_barColor, this.j);
        this.k = typedArray.getColor(R.styleable.ProgressWheel_matProg_rimColor, this.k);
        this.q = typedArray.getBoolean(R.styleable.ProgressWheel_matProg_linearProgress, false);
        if (typedArray.getBoolean(R.styleable.ProgressWheel_matProg_progressIndeterminate, false)) {
            f();
        }
        typedArray.recycle();
    }

    private void b() {
        if (this.u != null) {
            this.u.a(Math.round((this.r * 100.0f) / 360.0f) / 100.0f);
        }
    }

    private void c(float f2) {
        b bVar = this.u;
        if (bVar != null) {
            bVar.a(f2);
        }
    }

    private void d(int i, int i2) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (this.f8983d) {
            int i3 = this.b;
            this.n = new RectF(paddingLeft + i3, paddingTop + i3, (i - paddingRight) - i3, (i2 - paddingBottom) - i3);
            return;
        }
        int i4 = (i - paddingLeft) - paddingRight;
        int iMin = Math.min(Math.min(i4, (i2 - paddingBottom) - paddingTop), (this.f8982a * 2) - (this.b * 2));
        int i5 = ((i4 - iMin) / 2) + paddingLeft;
        int i6 = ((((i2 - paddingTop) - paddingBottom) - iMin) / 2) + paddingTop;
        int i7 = this.b;
        this.n = new RectF(i5 + i7, i6 + i7, (i5 + iMin) - i7, (i6 + iMin) - i7);
    }

    private void e() {
        this.l.setColor(this.j);
        this.l.setAntiAlias(true);
        this.l.setStyle(Paint.Style.STROKE);
        this.l.setStrokeWidth(this.b);
        this.m.setColor(this.k);
        this.m.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setStrokeWidth(this.c);
    }

    private void g(long j) {
        long j2 = this.i;
        if (j2 < 200) {
            this.i = j2 + j;
            return;
        }
        double d2 = this.f8984e + j;
        this.f8984e = d2;
        double d3 = this.f8985f;
        if (d2 > d3) {
            this.f8984e = d2 - d3;
            this.i = 0L;
            this.f8987h = !this.f8987h;
        }
        float fCos = (((float) Math.cos(((this.f8984e / d3) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
        if (this.f8987h) {
            this.f8986g = fCos * 254.0f;
            return;
        }
        float f2 = (1.0f - fCos) * 254.0f;
        this.r += this.f8986g - f2;
        this.f8986g = f2;
    }

    public void f() {
        this.p = SystemClock.uptimeMillis();
        this.t = true;
        invalidate();
    }

    public int getBarColor() {
        return this.j;
    }

    public int getBarWidth() {
        return this.b;
    }

    public int getCircleRadius() {
        return this.f8982a;
    }

    public float getProgress() {
        if (this.t) {
            return -1.0f;
        }
        return this.r / 360.0f;
    }

    public int getRimColor() {
        return this.k;
    }

    public int getRimWidth() {
        return this.c;
    }

    public float getSpinSpeed() {
        return this.o / 360.0f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f2;
        float f3;
        super.onDraw(canvas);
        canvas.drawArc(this.n, 360.0f, 360.0f, false, this.m);
        boolean z = this.t;
        float fPow = BitmapDescriptorFactory.HUE_RED;
        boolean z2 = true;
        if (z) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.p;
            float f4 = (jUptimeMillis * this.o) / 1000.0f;
            g(jUptimeMillis);
            float f5 = this.r + f4;
            this.r = f5;
            if (f5 > 360.0f) {
                this.r = f5 - 360.0f;
                c(-1.0f);
            }
            this.p = SystemClock.uptimeMillis();
            float f6 = this.r - 90.0f;
            float f7 = this.f8986g + 16.0f;
            if (isInEditMode()) {
                f2 = BitmapDescriptorFactory.HUE_RED;
                f3 = 135.0f;
            } else {
                f2 = f6;
                f3 = f7;
            }
            canvas.drawArc(this.n, f2, f3, false, this.l);
        } else {
            float f8 = this.r;
            if (f8 != this.s) {
                this.r = Math.min(this.r + (((SystemClock.uptimeMillis() - this.p) / 1000.0f) * this.o), this.s);
                this.p = SystemClock.uptimeMillis();
            } else {
                z2 = false;
            }
            if (f8 != this.r) {
                b();
            }
            float fPow2 = this.r;
            if (!this.q) {
                fPow = ((float) (1.0d - Math.pow(1.0f - (fPow2 / 360.0f), 4.0f))) * 360.0f;
                fPow2 = ((float) (1.0d - Math.pow(1.0f - (this.r / 360.0f), 2.0f))) * 360.0f;
            }
            canvas.drawArc(this.n, fPow - 90.0f, isInEditMode() ? 360.0f : fPow2, false, this.l);
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingLeft = this.f8982a + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.f8982a + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            paddingLeft = size;
        } else if (mode == Integer.MIN_VALUE) {
            paddingLeft = Math.min(paddingLeft, size);
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            paddingTop = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            paddingTop = Math.min(paddingTop, size2);
        }
        setMeasuredDimension(paddingLeft, paddingTop);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WheelSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        WheelSavedState wheelSavedState = (WheelSavedState) parcelable;
        super.onRestoreInstanceState(wheelSavedState.getSuperState());
        this.r = wheelSavedState.f8988a;
        this.s = wheelSavedState.b;
        this.t = wheelSavedState.c;
        this.o = wheelSavedState.f8989d;
        this.b = wheelSavedState.f8990e;
        this.j = wheelSavedState.f8991f;
        this.c = wheelSavedState.f8992g;
        this.k = wheelSavedState.f8993h;
        this.f8982a = wheelSavedState.i;
        this.q = wheelSavedState.j;
        this.f8983d = wheelSavedState.k;
        this.p = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.f8988a = this.r;
        wheelSavedState.b = this.s;
        wheelSavedState.c = this.t;
        wheelSavedState.f8989d = this.o;
        wheelSavedState.f8990e = this.b;
        wheelSavedState.f8991f = this.j;
        wheelSavedState.f8992g = this.c;
        wheelSavedState.f8993h = this.k;
        wheelSavedState.i = this.f8982a;
        wheelSavedState.j = this.q;
        wheelSavedState.k = this.f8983d;
        return wheelSavedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        d(i, i2);
        e();
        invalidate();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.p = SystemClock.uptimeMillis();
        }
    }

    public void setBarColor(int i) {
        this.j = i;
        e();
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setBarWidth(int i) {
        this.b = i;
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setCallback(b bVar) {
        this.u = bVar;
        if (this.t) {
            return;
        }
        b();
    }

    public void setCircleRadius(int i) {
        this.f8982a = i;
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setInstantProgress(float f2) {
        if (this.t) {
            this.r = BitmapDescriptorFactory.HUE_RED;
            this.t = false;
        }
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        } else if (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        if (f2 == this.s) {
            return;
        }
        float fMin = Math.min(f2 * 360.0f, 360.0f);
        this.s = fMin;
        this.r = fMin;
        this.p = SystemClock.uptimeMillis();
        invalidate();
    }

    public void setLinearProgress(boolean z) {
        this.q = z;
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setProgress(float f2) {
        if (this.t) {
            this.r = BitmapDescriptorFactory.HUE_RED;
            this.t = false;
            b();
        }
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        } else if (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        float f3 = this.s;
        if (f2 == f3) {
            return;
        }
        if (this.r == f3) {
            this.p = SystemClock.uptimeMillis();
        }
        this.s = Math.min(f2 * 360.0f, 360.0f);
        invalidate();
    }

    public void setRimColor(int i) {
        this.k = i;
        e();
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setRimWidth(int i) {
        this.c = i;
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setSpinSpeed(float f2) {
        this.o = f2 * 360.0f;
    }
}
