package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amap.api.maps.model.LatLng;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;

/* JADX INFO: loaded from: classes5.dex */
public class d4 extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Bitmap f10648a;
    Bitmap b;
    Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Bitmap f10649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Bitmap f10650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Bitmap f10651f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ImageView f10652g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    IAMapDelegate f10653h;
    boolean i;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!d4.this.i) {
                return false;
            }
            if (motionEvent.getAction() == 0) {
                d4 d4Var = d4.this;
                d4Var.f10652g.setImageBitmap(d4Var.b);
            } else if (motionEvent.getAction() == 1) {
                try {
                    d4 d4Var2 = d4.this;
                    d4Var2.f10652g.setImageBitmap(d4Var2.f10648a);
                    d4.this.f10653h.setMyLocationEnabled(true);
                    Location myLocation = d4.this.f10653h.getMyLocation();
                    if (myLocation == null) {
                        return false;
                    }
                    LatLng latLng = new LatLng(myLocation.getLatitude(), myLocation.getLongitude());
                    d4.this.f10653h.showMyLocationOverlay(myLocation);
                    IAMapDelegate iAMapDelegate = d4.this.f10653h;
                    iAMapDelegate.moveCamera(h.h(latLng, iAMapDelegate.getZoomLevel()));
                } catch (Throwable th) {
                    e6.r(th, "LocationView", "onTouch");
                    th.printStackTrace();
                }
            }
            return false;
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public d4(Context context, IAMapDelegate iAMapDelegate) {
        super(context);
        this.i = false;
        this.f10653h = iAMapDelegate;
        try {
            Bitmap bitmapO = r3.o(context, "location_selected.png");
            this.f10649d = bitmapO;
            this.f10648a = r3.p(bitmapO, x9.f11344a);
            Bitmap bitmapO2 = r3.o(context, "location_pressed.png");
            this.f10650e = bitmapO2;
            this.b = r3.p(bitmapO2, x9.f11344a);
            Bitmap bitmapO3 = r3.o(context, "location_unselected.png");
            this.f10651f = bitmapO3;
            this.c = r3.p(bitmapO3, x9.f11344a);
            ImageView imageView = new ImageView(context);
            this.f10652g = imageView;
            imageView.setImageBitmap(this.f10648a);
            this.f10652g.setClickable(true);
            this.f10652g.setPadding(0, 20, 20, 0);
            this.f10652g.setOnTouchListener(new a());
            addView(this.f10652g);
        } catch (Throwable th) {
            e6.r(th, "LocationView", "create");
            th.printStackTrace();
        }
    }

    public void a() {
        try {
            removeAllViews();
            Bitmap bitmap = this.f10648a;
            if (bitmap != null) {
                r3.g0(bitmap);
            }
            Bitmap bitmap2 = this.b;
            if (bitmap2 != null) {
                r3.g0(bitmap2);
            }
            if (this.b != null) {
                r3.g0(this.c);
            }
            this.f10648a = null;
            this.b = null;
            this.c = null;
            Bitmap bitmap3 = this.f10649d;
            if (bitmap3 != null) {
                r3.g0(bitmap3);
                this.f10649d = null;
            }
            Bitmap bitmap4 = this.f10650e;
            if (bitmap4 != null) {
                r3.g0(bitmap4);
                this.f10650e = null;
            }
            Bitmap bitmap5 = this.f10651f;
            if (bitmap5 != null) {
                r3.g0(bitmap5);
                this.f10651f = null;
            }
        } catch (Throwable th) {
            e6.r(th, "LocationView", "destroy");
            th.printStackTrace();
        }
    }

    public void b(boolean z) {
        this.i = z;
        try {
            if (z) {
                this.f10652g.setImageBitmap(this.f10648a);
            } else {
                this.f10652g.setImageBitmap(this.c);
            }
            this.f10652g.invalidate();
        } catch (Throwable th) {
            e6.r(th, "LocationView", "showSelect");
            th.printStackTrace();
        }
    }
}
