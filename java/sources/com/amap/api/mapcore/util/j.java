package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j extends k {
    private final float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float p;

    public j(Context context) {
        super(context);
        this.m = BitmapDescriptorFactory.HUE_RED;
        this.n = BitmapDescriptorFactory.HUE_RED;
        this.o = BitmapDescriptorFactory.HUE_RED;
        this.p = BitmapDescriptorFactory.HUE_RED;
        this.j = ViewConfiguration.get(context).getScaledEdgeSlop();
    }

    protected static float j(MotionEvent motionEvent, int i, int i2) {
        return i < motionEvent.getPointerCount() ? motionEvent.getX(i) + ((i2 + motionEvent.getX()) - motionEvent.getRawX()) : BitmapDescriptorFactory.HUE_RED;
    }

    protected static float l(MotionEvent motionEvent, int i, int i2) {
        return i < motionEvent.getPointerCount() ? motionEvent.getY(i) + ((i2 + motionEvent.getY()) - motionEvent.getRawY()) : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.amap.api.mapcore.util.k
    protected void e(MotionEvent motionEvent) {
        super.e(motionEvent);
        MotionEvent motionEvent2 = this.c;
        int pointerCount = motionEvent2.getPointerCount();
        int pointerCount2 = motionEvent.getPointerCount();
        if (pointerCount2 == 2 && pointerCount2 == pointerCount) {
            float x = motionEvent2.getX(0);
            float y = motionEvent2.getY(0);
            float x2 = motionEvent2.getX(1);
            float y2 = motionEvent2.getY(1);
            float x3 = motionEvent.getX(0);
            float y3 = motionEvent.getY(0);
            float x4 = motionEvent.getX(1);
            float y4 = motionEvent.getY(1);
            this.m = x3 - x;
            this.n = y3 - y;
            this.o = x4 - x2;
            this.p = y4 - y2;
        }
    }

    public PointF k(int i) {
        return i == 0 ? new PointF(this.m, this.n) : new PointF(this.o, this.p);
    }

    protected boolean m(MotionEvent motionEvent, int i, int i2) {
        int i3;
        int i4 = this.f10954h;
        if (i4 == 0 || (i3 = this.i) == 0) {
            DisplayMetrics displayMetrics = this.f10949a.getResources().getDisplayMetrics();
            float f2 = displayMetrics.widthPixels;
            float f3 = this.j;
            this.k = f2 - f3;
            this.l = displayMetrics.heightPixels - f3;
        } else {
            float f4 = this.j;
            this.k = i4 - f4;
            this.l = i3 - f4;
        }
        float f5 = this.j;
        float f6 = this.k;
        float f7 = this.l;
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float fJ = j(motionEvent, 1, i);
        float fL = l(motionEvent, 1, i2);
        boolean z = rawX < f5 || rawY < f5 || rawX > f6 || rawY > f7;
        boolean z2 = fJ < f5 || fL < f5 || fJ > f6 || fL > f7;
        return (z && z2) || z || z2;
    }
}
