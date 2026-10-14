package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class p extends j {
    private static final PointF w = new PointF();
    private final a q;
    private boolean r;
    private PointF s;
    private PointF t;
    private PointF u;
    private PointF v;

    public interface a {
        void a(p pVar);

        boolean b(p pVar);
    }

    public static class b implements a {
        @Override // com.amap.api.mapcore.util.p.a
        public boolean b(p pVar) {
            return true;
        }
    }

    public p(Context context, a aVar) {
        super(context);
        this.u = new PointF();
        this.v = new PointF();
        this.q = aVar;
    }

    @Override // com.amap.api.mapcore.util.k
    protected void a() {
        super.a();
        this.r = false;
        PointF pointF = this.u;
        pointF.x = BitmapDescriptorFactory.HUE_RED;
        PointF pointF2 = this.v;
        pointF2.x = BitmapDescriptorFactory.HUE_RED;
        pointF.y = BitmapDescriptorFactory.HUE_RED;
        pointF2.y = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.amap.api.mapcore.util.k
    protected void c(int i, MotionEvent motionEvent) {
        if (i == 3) {
            a();
        } else {
            if (i != 6) {
                return;
            }
            e(motionEvent);
            if (!this.r) {
                this.q.a(this);
            }
            a();
        }
    }

    @Override // com.amap.api.mapcore.util.k
    protected void d(int i, MotionEvent motionEvent, int i2, int i3) {
        if (i != 5) {
            return;
        }
        a();
        this.c = MotionEvent.obtain(motionEvent);
        this.f10953g = 0L;
        e(motionEvent);
        boolean zM = m(motionEvent, i2, i3);
        this.r = zM;
        if (zM) {
            return;
        }
        this.b = this.q.b(this);
    }

    @Override // com.amap.api.mapcore.util.j, com.amap.api.mapcore.util.k
    protected void e(MotionEvent motionEvent) {
        PointF pointF;
        super.e(motionEvent);
        MotionEvent motionEvent2 = this.c;
        this.s = k.g(motionEvent);
        this.t = k.g(motionEvent2);
        if (this.c.getPointerCount() != motionEvent.getPointerCount()) {
            pointF = w;
        } else {
            PointF pointF2 = this.s;
            float f2 = pointF2.x;
            PointF pointF3 = this.t;
            pointF = new PointF(f2 - pointF3.x, pointF2.y - pointF3.y);
        }
        this.v = pointF;
        PointF pointF4 = this.u;
        pointF4.x += pointF.x;
        pointF4.y += pointF.y;
    }

    public float n() {
        return this.u.x;
    }

    public float o() {
        return this.u.y;
    }
}
