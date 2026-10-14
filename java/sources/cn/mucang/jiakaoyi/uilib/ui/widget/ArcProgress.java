package cn.mucang.jiakaoyi.uilib.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes5.dex */
public class ArcProgress extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f10285a;
    protected Paint b;
    private RectF c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f10286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f10287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f10288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f10289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f10290h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private float n;
    private String o;
    private float p;
    private float q;
    private final int r;
    private final int s;
    private final float t;
    private final float u;
    private final float v;
    private final float w;
    private final String x;
    private float y;
    private final int z;

    public ArcProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public int a(float f2) {
        return (int) ((f2 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    protected void b(TypedArray typedArray) {
        this.l = typedArray.getColor(R.styleable.ArcProgress_arc_finished_color, -1);
        this.m = typedArray.getColor(R.styleable.ArcProgress_arc_unfinished_color, this.r);
        this.i = typedArray.getColor(R.styleable.ArcProgress_arc_text_color, this.s);
        this.f10290h = typedArray.getDimension(R.styleable.ArcProgress_arc_text_size, this.y);
        this.n = typedArray.getFloat(R.styleable.ArcProgress_arc_angle, 288.0f);
        setMax(typedArray.getInt(R.styleable.ArcProgress_arc_max, 100));
        setProgress(typedArray.getInt(R.styleable.ArcProgress_arc_progress, 0));
        this.f10286d = typedArray.getDimension(R.styleable.ArcProgress_arc_stroke_width, this.w);
        this.f10287e = typedArray.getDimension(R.styleable.ArcProgress_arc_suffix_text_size, this.t);
        int i = R.styleable.ArcProgress_arc_suffix_text;
        this.o = TextUtils.isEmpty(typedArray.getString(i)) ? this.x : typedArray.getString(i);
        this.p = typedArray.getDimension(R.styleable.ArcProgress_arc_suffix_text_padding, this.u);
        this.f10288f = typedArray.getDimension(R.styleable.ArcProgress_arc_bottom_text_size, this.v);
        this.f10289g = typedArray.getString(R.styleable.ArcProgress_arc_bottom_text);
    }

    protected void c() {
        TextPaint textPaint = new TextPaint();
        this.b = textPaint;
        textPaint.setColor(this.i);
        this.b.setTextSize(this.f10290h);
        this.b.setAntiAlias(true);
        Paint paint = new Paint();
        this.f10285a = paint;
        paint.setColor(this.r);
        this.f10285a.setAntiAlias(true);
        this.f10285a.setStrokeWidth(this.f10286d);
        this.f10285a.setStyle(Paint.Style.STROKE);
        this.f10285a.setStrokeCap(Paint.Cap.ROUND);
    }

    public float getArcAngle() {
        return this.n;
    }

    public String getBottomText() {
        return this.f10289g;
    }

    public float getBottomTextSize() {
        return this.f10288f;
    }

    public int getFinishedStrokeColor() {
        return this.l;
    }

    public int getMax() {
        return this.k;
    }

    public int getProgress() {
        return this.j;
    }

    public float getStrokeWidth() {
        return this.f10286d;
    }

    public String getSuffixText() {
        return this.o;
    }

    public float getSuffixTextPadding() {
        return this.p;
    }

    public float getSuffixTextSize() {
        return this.f10287e;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return this.z;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return this.z;
    }

    public int getTextColor() {
        return this.i;
    }

    public float getTextSize() {
        return this.f10290h;
    }

    public int getUnfinishedStrokeColor() {
        return this.m;
    }

    @Override // android.view.View
    public void invalidate() {
        c();
        super.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f2 = 270.0f - (this.n / 2.0f);
        float max = (this.j / getMax()) * this.n;
        float f3 = this.j == 0 ? 0.01f : f2;
        this.f10285a.setColor(this.m);
        canvas.drawArc(this.c, f2, this.n, false, this.f10285a);
        this.f10285a.setColor(this.l);
        canvas.drawArc(this.c, f3, max, false, this.f10285a);
        String strValueOf = String.valueOf(getProgress());
        if (!TextUtils.isEmpty(strValueOf)) {
            this.b.setColor(this.i);
            this.b.setTextSize(this.f10290h);
            float fDescent = this.b.descent() + this.b.ascent();
            float height = (getHeight() - fDescent) / 2.0f;
            canvas.drawText(strValueOf, (getWidth() - this.b.measureText(strValueOf)) / 2.0f, height, this.b);
            this.b.setTextSize(this.f10287e);
            canvas.drawText(this.o, (getWidth() / 2.0f) + this.b.measureText(strValueOf) + this.p, (height + fDescent) - (this.b.descent() + this.b.ascent()), this.b);
        }
        if (this.q == BitmapDescriptorFactory.HUE_RED) {
            this.q = (getWidth() / 2.0f) * ((float) (1.0d - Math.cos(((double) (((360.0f - this.n) / 2.0f) / 180.0f)) * 3.141592653589793d)));
        }
        if (TextUtils.isEmpty(getBottomText())) {
            return;
        }
        this.b.setTextSize(this.f10288f);
        canvas.drawText(getBottomText(), (getWidth() - this.b.measureText(getBottomText())) / 2.0f, (getHeight() - this.q) - ((this.b.descent() + this.b.ascent()) / 2.0f), this.b);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(i, i2);
        int size = View.MeasureSpec.getSize(i);
        RectF rectF = this.c;
        float f2 = this.f10286d;
        float f3 = size;
        rectF.set(f2 / 2.0f, f2 / 2.0f, f3 - (f2 / 2.0f), View.MeasureSpec.getSize(i2) - (this.f10286d / 2.0f));
        this.q = (f3 / 2.0f) * ((float) (1.0d - Math.cos(((double) (((360.0f - this.n) / 2.0f) / 180.0f)) * 3.141592653589793d)));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.f10286d = bundle.getFloat("stroke_width");
        this.f10287e = bundle.getFloat("suffix_text_size");
        this.p = bundle.getFloat("suffix_text_padding");
        this.f10288f = bundle.getFloat("bottom_text_size");
        this.f10289g = bundle.getString("bottom_text");
        this.f10290h = bundle.getFloat("text_size");
        this.i = bundle.getInt("text_color");
        setMax(bundle.getInt("max"));
        setProgress(bundle.getInt("progress"));
        this.l = bundle.getInt("finished_stroke_color");
        this.m = bundle.getInt("unfinished_stroke_color");
        this.o = bundle.getString("suffix");
        c();
        super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putFloat("stroke_width", getStrokeWidth());
        bundle.putFloat("suffix_text_size", getSuffixTextSize());
        bundle.putFloat("suffix_text_padding", getSuffixTextPadding());
        bundle.putFloat("bottom_text_size", getBottomTextSize());
        bundle.putString("bottom_text", getBottomText());
        bundle.putFloat("text_size", getTextSize());
        bundle.putInt("text_color", getTextColor());
        bundle.putInt("progress", getProgress());
        bundle.putInt("max", getMax());
        bundle.putInt("finished_stroke_color", getFinishedStrokeColor());
        bundle.putInt("unfinished_stroke_color", getUnfinishedStrokeColor());
        bundle.putFloat("arc_angle", getArcAngle());
        bundle.putString("suffix", getSuffixText());
        return bundle;
    }

    public void setArcAngle(float f2) {
        this.n = f2;
        invalidate();
    }

    public void setBottomText(String str) {
        this.f10289g = str;
        invalidate();
    }

    public void setBottomTextSize(float f2) {
        this.f10288f = f2;
        invalidate();
    }

    public void setFinishedStrokeColor(int i) {
        this.l = i;
        invalidate();
    }

    public void setMax(int i) {
        if (i > 0) {
            this.k = i;
            invalidate();
        }
    }

    public void setProgress(int i) {
        this.j = i;
        if (i > getMax()) {
            this.j %= getMax();
        }
        invalidate();
    }

    public void setStrokeWidth(float f2) {
        this.f10286d = f2;
        invalidate();
    }

    public void setSuffixText(String str) {
        this.o = str;
        invalidate();
    }

    public void setSuffixTextPadding(float f2) {
        this.p = f2;
        invalidate();
    }

    public void setSuffixTextSize(float f2) {
        this.f10287e = f2;
        invalidate();
    }

    public void setTextColor(int i) {
        this.i = i;
        invalidate();
    }

    public void setTextSize(float f2) {
        this.f10290h = f2;
        invalidate();
    }

    public void setUnfinishedStrokeColor(int i) {
        this.m = i;
        invalidate();
    }

    public ArcProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new RectF();
        this.j = 0;
        this.o = "%";
        this.r = Color.rgb(72, 106, 176);
        this.s = Color.rgb(66, l.Receive_GEAR_DATA2, l.RECEIVE_FAULT_CODE_CLEAR_RET);
        this.y = a(18.0f);
        this.z = a(100.0f);
        this.y = a(40.0f);
        this.t = a(15.0f);
        this.u = a(4.0f);
        this.x = "%";
        this.v = a(10.0f);
        this.w = a(4.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ArcProgress, i, 0);
        b(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        c();
    }
}
