package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes5.dex */
public class m extends k {
    private static final PointF o = new PointF();
    private final a j;
    private PointF k;
    private PointF l;
    private PointF m;
    private PointF n;

    public interface a {
        boolean a(m mVar);

        void b(m mVar);

        boolean c(m mVar);
    }

    public m(Context context, a aVar) {
        super(context);
        this.m = new PointF();
        this.n = new PointF();
        this.j = aVar;
    }

    @Override // com.amap.api.mapcore.util.k
    protected void c(int i, MotionEvent motionEvent) {
        if (i != 1) {
            if (i == 2) {
                e(motionEvent);
                if (this.f10951e / this.f10952f <= 0.67f || motionEvent.getPointerCount() > 1 || !this.j.c(this)) {
                    return;
                }
                this.c.recycle();
                this.c = MotionEvent.obtain(motionEvent);
                return;
            }
            if (i != 3) {
                return;
            }
        }
        this.j.b(this);
        a();
    }

    @Override // com.amap.api.mapcore.util.k
    protected void d(int i, MotionEvent motionEvent, int i2, int i3) {
        if (i == 0) {
            a();
            this.c = MotionEvent.obtain(motionEvent);
            this.f10953g = 0L;
            e(motionEvent);
            return;
        }
        if (i == 2) {
            this.b = this.j.a(this);
            return;
        }
        if (i != 5) {
            return;
        }
        MotionEvent motionEvent2 = this.c;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
        }
        this.c = MotionEvent.obtain(motionEvent);
        e(motionEvent);
    }

    @Override // com.amap.api.mapcore.util.k
    protected void e(MotionEvent motionEvent) {
        PointF pointF;
        super.e(motionEvent);
        MotionEvent motionEvent2 = this.c;
        this.k = k.g(motionEvent);
        this.l = k.g(motionEvent2);
        boolean z = this.c.getPointerCount() != motionEvent.getPointerCount();
        if (z) {
            pointF = o;
        } else {
            PointF pointF2 = this.k;
            float f2 = pointF2.x;
            PointF pointF3 = this.l;
            pointF = new PointF(f2 - pointF3.x, pointF2.y - pointF3.y);
        }
        this.n = pointF;
        if (z) {
            this.c.recycle();
            this.c = MotionEvent.obtain(motionEvent);
        }
        PointF pointF4 = this.m;
        float f3 = pointF4.x;
        PointF pointF5 = this.n;
        pointF4.x = f3 + pointF5.x;
        pointF4.y += pointF5.y;
    }

    public PointF j() {
        return this.n;
    }
}
