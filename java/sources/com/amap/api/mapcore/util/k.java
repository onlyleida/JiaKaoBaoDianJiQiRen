package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.PointF;
import android.os.Build;
import android.view.MotionEvent;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f10949a;
    protected boolean b;
    protected MotionEvent c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected MotionEvent f10950d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected float f10951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected float f10952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected long f10953g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f10954h = 0;
    protected int i = 0;

    public k(Context context) {
        this.f10949a = context;
    }

    public static PointF g(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        float x = BitmapDescriptorFactory.HUE_RED;
        float y = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < pointerCount; i++) {
            x += motionEvent.getX(i);
            y += motionEvent.getY(i);
        }
        float f2 = pointerCount;
        return new PointF(x / f2, y / f2);
    }

    protected void a() {
        MotionEvent motionEvent = this.c;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.c = null;
        }
        MotionEvent motionEvent2 = this.f10950d;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.f10950d = null;
        }
        this.b = false;
    }

    public void b(int i, int i2) {
        this.f10954h = i;
        this.i = i2;
    }

    protected abstract void c(int i, MotionEvent motionEvent);

    protected abstract void d(int i, MotionEvent motionEvent, int i2, int i3);

    protected void e(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = this.c;
        MotionEvent motionEvent3 = this.f10950d;
        if (motionEvent3 != null) {
            motionEvent3.recycle();
            this.f10950d = null;
        }
        this.f10950d = MotionEvent.obtain(motionEvent);
        this.f10953g = motionEvent.getEventTime() - motionEvent2.getEventTime();
        if (Build.VERSION.SDK_INT >= 8) {
            this.f10951e = motionEvent.getPressure(motionEvent.getActionIndex());
            this.f10952f = motionEvent2.getPressure(motionEvent2.getActionIndex());
        } else {
            this.f10951e = motionEvent.getPressure(0);
            this.f10952f = motionEvent2.getPressure(0);
        }
    }

    public long f() {
        return this.f10953g;
    }

    public MotionEvent h() {
        return this.f10950d;
    }

    public boolean i(MotionEvent motionEvent, int i, int i2) {
        int action = motionEvent.getAction() & 255;
        if (this.b) {
            c(action, motionEvent);
            return true;
        }
        d(action, motionEvent, i, i2);
        return true;
    }
}
