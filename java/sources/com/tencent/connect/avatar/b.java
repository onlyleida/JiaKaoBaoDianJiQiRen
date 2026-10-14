package com.tencent.connect.avatar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class b extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Rect f14005a;
    private Paint b;

    public b(Context context) {
        super(context);
        b();
    }

    private void b() {
        this.b = new Paint();
    }

    public Rect a() {
        if (this.f14005a == null) {
            this.f14005a = new Rect();
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            int iMin = Math.min(Math.min((measuredHeight - 60) - 80, measuredWidth), 640);
            int i = (measuredWidth - iMin) / 2;
            int i2 = (measuredHeight - iMin) / 2;
            this.f14005a.set(i, i2, i + iMin, iMin + i2);
        }
        return this.f14005a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Rect rectA = a();
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.b.setStyle(Paint.Style.FILL);
        this.b.setColor(Color.argb(100, 0, 0, 0));
        float f2 = measuredWidth;
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, rectA.top, this.b);
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, rectA.bottom, f2, measuredHeight, this.b);
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, rectA.top, rectA.left, rectA.bottom, this.b);
        canvas.drawRect(rectA.right, rectA.top, f2, rectA.bottom, this.b);
        canvas.drawColor(Color.argb(100, 0, 0, 0));
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setColor(-1);
        canvas.drawRect(rectA.left, rectA.top, rectA.right - 1, rectA.bottom, this.b);
    }
}
