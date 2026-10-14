package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class z3 extends View {
    public static final int b = Color.argb(255, 235, 235, 235);
    public static final int c = Color.argb(255, 21, 21, 21);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f11432a;

    public z3(Context context) {
        super(context);
        Paint paint = new Paint();
        this.f11432a = paint;
        paint.setAntiAlias(true);
        this.f11432a.setColor(b);
    }

    public void a(int i) {
        Paint paint = this.f11432a;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    public void b(boolean z) {
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.f11432a);
    }
}
