package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;

/* JADX INFO: loaded from: classes5.dex */
class i4 extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap f10902a;
    private Bitmap b;
    private Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f10903d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Bitmap f10904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f10905f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f10906g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap f10907h;
    private Bitmap i;
    private Bitmap j;
    private Bitmap k;
    private Bitmap l;
    private ImageView m;
    private ImageView n;
    private IAMapDelegate o;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (i4.this.o.getZoomLevel() < i4.this.o.getMaxZoomLevel() && i4.this.o.isMaploaded()) {
                    if (motionEvent.getAction() == 0) {
                        i4.this.m.setImageBitmap(i4.this.f10904e);
                    } else if (motionEvent.getAction() == 1) {
                        i4.this.m.setImageBitmap(i4.this.f10902a);
                        try {
                            i4.this.o.animateCamera(h.a());
                        } catch (RemoteException e2) {
                            e6.r(e2, "ZoomControllerView", "zoomin ontouch");
                            e2.printStackTrace();
                        }
                    }
                    return false;
                }
                return false;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (i4.this.o.getZoomLevel() > i4.this.o.getMinZoomLevel() && i4.this.o.isMaploaded()) {
                    if (motionEvent.getAction() == 0) {
                        i4.this.n.setImageBitmap(i4.this.f10905f);
                    } else if (motionEvent.getAction() == 1) {
                        i4.this.n.setImageBitmap(i4.this.c);
                        i4.this.o.animateCamera(h.l());
                    }
                    return false;
                }
                return false;
            } catch (Throwable th) {
                e6.r(th, "ZoomControllerView", "zoomout ontouch");
                th.printStackTrace();
            }
        }
    }

    public i4(Context context, IAMapDelegate iAMapDelegate) {
        super(context);
        this.o = iAMapDelegate;
        try {
            Bitmap bitmapO = r3.o(context, "zoomin_selected.png");
            this.f10906g = bitmapO;
            this.f10902a = r3.p(bitmapO, x9.f11344a);
            Bitmap bitmapO2 = r3.o(context, "zoomin_unselected.png");
            this.f10907h = bitmapO2;
            this.b = r3.p(bitmapO2, x9.f11344a);
            Bitmap bitmapO3 = r3.o(context, "zoomout_selected.png");
            this.i = bitmapO3;
            this.c = r3.p(bitmapO3, x9.f11344a);
            Bitmap bitmapO4 = r3.o(context, "zoomout_unselected.png");
            this.j = bitmapO4;
            this.f10903d = r3.p(bitmapO4, x9.f11344a);
            Bitmap bitmapO5 = r3.o(context, "zoomin_pressed.png");
            this.k = bitmapO5;
            this.f10904e = r3.p(bitmapO5, x9.f11344a);
            Bitmap bitmapO6 = r3.o(context, "zoomout_pressed.png");
            this.l = bitmapO6;
            this.f10905f = r3.p(bitmapO6, x9.f11344a);
            ImageView imageView = new ImageView(context);
            this.m = imageView;
            imageView.setImageBitmap(this.f10902a);
            this.m.setClickable(true);
            ImageView imageView2 = new ImageView(context);
            this.n = imageView2;
            imageView2.setImageBitmap(this.c);
            this.n.setClickable(true);
            this.m.setOnTouchListener(new a());
            this.n.setOnTouchListener(new b());
            this.m.setPadding(0, 0, 20, -2);
            this.n.setPadding(0, 0, 20, 20);
            setOrientation(1);
            addView(this.m);
            addView(this.n);
        } catch (Throwable th) {
            e6.r(th, "ZoomControllerView", "create");
            th.printStackTrace();
        }
    }

    public void b() {
        try {
            removeAllViews();
            r3.g0(this.f10902a);
            r3.g0(this.b);
            r3.g0(this.c);
            r3.g0(this.f10903d);
            r3.g0(this.f10904e);
            r3.g0(this.f10905f);
            this.f10902a = null;
            this.b = null;
            this.c = null;
            this.f10903d = null;
            this.f10904e = null;
            this.f10905f = null;
            Bitmap bitmap = this.f10906g;
            if (bitmap != null) {
                r3.g0(bitmap);
                this.f10906g = null;
            }
            Bitmap bitmap2 = this.f10907h;
            if (bitmap2 != null) {
                r3.g0(bitmap2);
                this.f10907h = null;
            }
            Bitmap bitmap3 = this.i;
            if (bitmap3 != null) {
                r3.g0(bitmap3);
                this.i = null;
            }
            Bitmap bitmap4 = this.j;
            if (bitmap4 != null) {
                r3.g0(bitmap4);
                this.f10906g = null;
            }
            Bitmap bitmap5 = this.k;
            if (bitmap5 != null) {
                r3.g0(bitmap5);
                this.k = null;
            }
            Bitmap bitmap6 = this.l;
            if (bitmap6 != null) {
                r3.g0(bitmap6);
                this.l = null;
            }
            this.m = null;
            this.n = null;
        } catch (Throwable th) {
            e6.r(th, "ZoomControllerView", "destory");
            th.printStackTrace();
        }
    }

    public void c(float f2) {
        try {
            if (f2 < this.o.getMaxZoomLevel() && f2 > this.o.getMinZoomLevel()) {
                this.m.setImageBitmap(this.f10902a);
                this.n.setImageBitmap(this.c);
            } else if (f2 == this.o.getMinZoomLevel()) {
                this.n.setImageBitmap(this.f10903d);
                this.m.setImageBitmap(this.f10902a);
            } else if (f2 == this.o.getMaxZoomLevel()) {
                this.m.setImageBitmap(this.b);
                this.n.setImageBitmap(this.c);
            }
        } catch (Throwable th) {
            e6.r(th, "ZoomControllerView", "setZoomBitmap");
            th.printStackTrace();
        }
    }

    public void d(int i) {
        try {
            e4.c cVar = (e4.c) getLayoutParams();
            if (i == 1) {
                cVar.f10740d = 16;
            } else if (i == 2) {
                cVar.f10740d = 80;
            }
            setLayoutParams(cVar);
        } catch (Throwable th) {
            e6.r(th, "ZoomControllerView", "setZoomPosition");
            th.printStackTrace();
        }
    }

    public void e(boolean z) {
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }
}
