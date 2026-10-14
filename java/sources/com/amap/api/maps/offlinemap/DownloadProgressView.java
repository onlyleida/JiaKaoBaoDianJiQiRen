package com.amap.api.maps.offlinemap;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import com.amap.api.mapcore.util.a;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadProgressView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11541a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f11542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f11543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextPaint f11544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextPaint f11545g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f11546h;
    private float i;

    public DownloadProgressView(Context context) {
        super(context);
        this.b = -65536;
        this.c = -65536;
        this.f11542d = BitmapDescriptorFactory.HUE_RED;
        this.f11543e = 0.6f;
        a(null, 0);
    }

    private void a(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.f10427a, i, 0);
        this.f11541a = typedArrayObtainStyledAttributes.getString(0);
        this.b = typedArrayObtainStyledAttributes.getColor(3, this.b);
        this.f11542d = typedArrayObtainStyledAttributes.getDimension(1, this.f11542d);
        this.c = typedArrayObtainStyledAttributes.getColor(2, this.c);
        typedArrayObtainStyledAttributes.recycle();
        TextPaint textPaint = new TextPaint();
        this.f11544f = textPaint;
        textPaint.setFlags(1);
        this.f11544f.setTextAlign(Paint.Align.RIGHT);
        TextPaint textPaint2 = new TextPaint();
        this.f11545g = textPaint2;
        textPaint2.setStyle(Paint.Style.FILL);
        a();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int width = (getWidth() - paddingLeft) - paddingRight;
        int height = (getHeight() - paddingTop) - paddingBottom;
        double d2 = height * 0.8f;
        float f2 = width;
        String str = String.valueOf((int) (this.f11543e * 100.0f)) + "%";
        canvas.drawRect(new Rect(0, (int) d2, (int) (f2 * this.f11543e), height), this.f11545g);
        canvas.drawText(str, (int) (this.f11543e * f2), (int) (d2 - 3.0d), this.f11544f);
    }

    public void setProgress(int i) {
        if (i > 100 || i < 0) {
            return;
        }
        this.f11543e = i / 100.0f;
        invalidate();
    }

    public DownloadProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = -65536;
        this.c = -65536;
        this.f11542d = BitmapDescriptorFactory.HUE_RED;
        this.f11543e = 0.6f;
        a(attributeSet, 0);
    }

    public DownloadProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = -65536;
        this.c = -65536;
        this.f11542d = BitmapDescriptorFactory.HUE_RED;
        this.f11543e = 0.6f;
        a(attributeSet, i);
    }

    private void a() {
        this.f11544f.setTextSize(this.f11542d);
        this.f11544f.setColor(this.b);
        this.f11545g.setColor(this.c);
        this.f11546h = this.f11544f.measureText(this.f11541a);
        this.i = this.f11544f.getFontMetrics().bottom;
    }
}
