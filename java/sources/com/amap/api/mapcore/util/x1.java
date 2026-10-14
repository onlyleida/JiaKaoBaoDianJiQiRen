package com.amap.api.mapcore.util;

import android.animation.Animator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.Circle;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.MyLocationStyle;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;

/* JADX INFO: loaded from: classes5.dex */
public class x1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f11329a;
    private Marker b;
    private Circle c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LatLng f11331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f11332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f11333g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.amap.api.mapcore.util.b f11334h;
    ValueAnimator q;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MyLocationStyle f11330d = new MyLocationStyle();
    private int i = 4;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private boolean o = false;
    c p = null;
    Animator.AnimatorListener r = new a();
    ValueAnimator.AnimatorUpdateListener s = new b();

    class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            x1.this.w();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            try {
                if (x1.this.c != null) {
                    LatLng latLng = (LatLng) valueAnimator.getAnimatedValue();
                    x1.this.c.setCenter(latLng);
                    x1.this.b.setPosition(latLng);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static class c implements TypeEvaluator {
        @Override // android.animation.TypeEvaluator
        public Object evaluate(float f2, Object obj, Object obj2) {
            LatLng latLng = (LatLng) obj;
            LatLng latLng2 = (LatLng) obj2;
            double d2 = latLng.latitude;
            double d3 = f2;
            double d4 = d2 + ((latLng2.latitude - d2) * d3);
            double d5 = latLng.longitude;
            return new LatLng(d4, d5 + (d3 * (latLng2.longitude - d5)));
        }
    }

    public x1(IAMapDelegate iAMapDelegate, Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f11333g = applicationContext;
        this.f11329a = iAMapDelegate;
        this.f11334h = new com.amap.api.mapcore.util.b(applicationContext, iAMapDelegate);
        d(4, true);
    }

    private void d(int i, boolean z) {
        this.i = i;
        this.j = false;
        this.l = false;
        this.k = false;
        this.n = false;
        this.o = false;
        if (i == 1) {
            this.k = true;
            this.l = true;
            this.m = true;
        } else if (i == 2) {
            this.k = true;
            this.m = true;
        } else if (i == 3) {
            this.k = true;
            this.o = true;
        } else if (i == 4) {
            this.k = true;
            this.n = true;
        } else if (i == 5) {
            this.n = true;
        } else if (i == 7) {
            this.o = true;
        }
        if (!this.n && !this.o) {
            Marker marker = this.b;
            if (marker != null) {
                marker.setFlat(false);
            }
            v();
            u();
            t();
            return;
        }
        if (this.o) {
            this.f11334h.g(true);
            if (!z) {
                try {
                    this.f11329a.moveCamera(h.b(17.0f));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            l(45.0f);
        } else {
            this.f11334h.g(false);
        }
        this.f11334h.e();
        Marker marker2 = this.b;
        if (marker2 != null) {
            marker2.setFlat(true);
        }
    }

    private void g(LatLng latLng) {
        LatLng position = this.b.getPosition();
        if (position == null) {
            position = new LatLng(0.0d, 0.0d);
        }
        if (this.p == null) {
            this.p = new c();
        }
        ValueAnimator valueAnimator = this.q;
        if (valueAnimator == null) {
            ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new c(), position, latLng);
            this.q = valueAnimatorOfObject;
            valueAnimatorOfObject.addListener(this.r);
            this.q.addUpdateListener(this.s);
        } else {
            valueAnimator.setObjectValues(position, latLng);
            this.q.setEvaluator(this.p);
        }
        if (position.latitude == 0.0d && position.longitude == 0.0d) {
            this.q.setDuration(1L);
        } else {
            this.q.setDuration(1000L);
        }
        this.q.start();
    }

    private void l(float f2) {
        IAMapDelegate iAMapDelegate = this.f11329a;
        if (iAMapDelegate == null) {
            return;
        }
        try {
            iAMapDelegate.moveCamera(h.p(f2));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void o(float f2) {
        IAMapDelegate iAMapDelegate = this.f11329a;
        if (iAMapDelegate == null) {
            return;
        }
        try {
            iAMapDelegate.moveCamera(h.q(f2));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void q(float f2) {
        if (this.m) {
            float f3 = f2 % 360.0f;
            if (f3 > 180.0f) {
                f3 -= 360.0f;
            } else if (f3 < -180.0f) {
                f3 += 360.0f;
            }
            Marker marker = this.b;
            if (marker != null) {
                marker.setRotateAngle(-f3);
            }
        }
    }

    private void t() {
        this.f11334h.i();
    }

    private void u() {
        l(BitmapDescriptorFactory.HUE_RED);
    }

    private void v() {
        o(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.f11331e != null && this.k) {
            if (this.l && this.j) {
                return;
            }
            this.j = true;
            try {
                IPoint iPointObtain = IPoint.obtain();
                LatLng latLng = this.f11331e;
                GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
                this.f11329a.animateCamera(h.e(iPointObtain));
            } catch (Throwable th) {
                e6.r(th, "MyLocationOverlay", "moveMapToLocation");
                th.printStackTrace();
            }
        }
    }

    private void x() {
        MyLocationStyle myLocationStyle = this.f11330d;
        if (myLocationStyle == null) {
            MyLocationStyle myLocationStyle2 = new MyLocationStyle();
            this.f11330d = myLocationStyle2;
            myLocationStyle2.myLocationIcon(BitmapDescriptorFactory.fromAsset("location_map_gps_locked.png"));
            z();
            return;
        }
        if (myLocationStyle.getMyLocationIcon() == null || this.f11330d.getMyLocationIcon().getBitmap() == null) {
            this.f11330d.myLocationIcon(BitmapDescriptorFactory.fromAsset("location_map_gps_locked.png"));
        }
        z();
    }

    private void y() {
        Circle circle = this.c;
        if (circle != null) {
            try {
                this.f11329a.removeGLOverlay(circle.getId());
            } catch (Throwable th) {
                e6.r(th, "MyLocationOverlay", "locationIconRemove");
                th.printStackTrace();
            }
            this.c = null;
        }
        Marker marker = this.b;
        if (marker != null) {
            marker.remove();
            this.b = null;
            this.f11334h.f(null);
        }
    }

    private void z() {
        try {
            if (this.c == null) {
                this.c = this.f11329a.addCircle(new CircleOptions().zIndex(1.0f));
            }
            Circle circle = this.c;
            if (circle != null) {
                if (circle.getStrokeWidth() != this.f11330d.getStrokeWidth()) {
                    this.c.setStrokeWidth(this.f11330d.getStrokeWidth());
                }
                if (this.c.getFillColor() != this.f11330d.getRadiusFillColor()) {
                    this.c.setFillColor(this.f11330d.getRadiusFillColor());
                }
                if (this.c.getStrokeColor() != this.f11330d.getStrokeColor()) {
                    this.c.setStrokeColor(this.f11330d.getStrokeColor());
                }
                LatLng latLng = this.f11331e;
                if (latLng != null) {
                    this.c.setCenter(latLng);
                }
                this.c.setRadius(this.f11332f);
                this.c.setVisible(true);
            }
            if (this.b == null) {
                this.b = this.f11329a.addMarker(new MarkerOptions().visible(false));
            }
            Marker marker = this.b;
            if (marker != null) {
                if (marker.getAnchorU() != this.f11330d.getAnchorU() || this.b.getAnchorV() != this.f11330d.getAnchorV()) {
                    this.b.setAnchor(this.f11330d.getAnchorU(), this.f11330d.getAnchorV());
                }
                if (this.b.getIcons() == null || this.b.getIcons().size() == 0) {
                    this.b.setIcon(this.f11330d.getMyLocationIcon());
                } else if (this.f11330d.getMyLocationIcon() != null && !this.b.getIcons().get(0).equals(this.f11330d.getMyLocationIcon())) {
                    this.b.setIcon(this.f11330d.getMyLocationIcon());
                }
                LatLng latLng2 = this.f11331e;
                if (latLng2 != null) {
                    this.b.setPosition(latLng2);
                    this.b.setVisible(true);
                }
            }
            w();
            this.f11334h.f(this.b);
        } catch (Throwable th) {
            e6.r(th, "MyLocationOverlay", "myLocStyle");
            th.printStackTrace();
        }
    }

    public MyLocationStyle a() {
        return this.f11330d;
    }

    public void b(float f2) {
        Marker marker = this.b;
        if (marker != null) {
            marker.setRotateAngle(f2);
        }
    }

    public void c(int i) {
        d(i, false);
    }

    public void e(Location location) {
        if (location == null) {
            return;
        }
        i(this.f11330d.isMyLocationShowing());
        if (this.f11330d.isMyLocationShowing()) {
            this.f11331e = new LatLng(location.getLatitude(), location.getLongitude());
            this.f11332f = location.getAccuracy();
            if (this.b == null && this.c == null) {
                x();
            }
            Circle circle = this.c;
            if (circle != null) {
                try {
                    double d2 = this.f11332f;
                    if (d2 != -1.0d) {
                        circle.setRadius(d2);
                    }
                } catch (Throwable th) {
                    e6.r(th, "MyLocationOverlay", "setCentAndRadius");
                    th.printStackTrace();
                }
            }
            q(location.getBearing());
            if (this.f11331e.equals(this.b.getPosition())) {
                w();
            } else {
                g(this.f11331e);
            }
        }
    }

    public void h(MyLocationStyle myLocationStyle) {
        try {
            this.f11330d = myLocationStyle;
            i(myLocationStyle.isMyLocationShowing());
            if (!this.f11330d.isMyLocationShowing()) {
                this.f11334h.g(false);
                this.i = this.f11330d.getMyLocationType();
                return;
            }
            x();
            Marker marker = this.b;
            if (marker == null && this.c == null) {
                return;
            }
            this.f11334h.f(marker);
            c(this.f11330d.getMyLocationType());
        } catch (Throwable th) {
            e6.r(th, "MyLocationOverlay", "setMyLocationStyle");
            th.printStackTrace();
        }
    }

    public void i(boolean z) {
        Circle circle = this.c;
        if (circle != null && circle.isVisible() != z) {
            this.c.setVisible(z);
        }
        Marker marker = this.b;
        if (marker == null || marker.isVisible() == z) {
            return;
        }
        this.b.setVisible(z);
    }

    public void k() {
        com.amap.api.mapcore.util.b bVar;
        if (this.i != 3 || (bVar = this.f11334h) == null) {
            return;
        }
        bVar.e();
    }

    public void n() throws RemoteException {
        y();
        if (this.f11334h != null) {
            t();
            this.f11334h = null;
        }
    }

    public String p() {
        Marker marker = this.b;
        if (marker != null) {
            return marker.getId();
        }
        return null;
    }

    public String r() throws RemoteException {
        Circle circle = this.c;
        if (circle != null) {
            return circle.getId();
        }
        return null;
    }

    public void s() {
        this.c = null;
        this.b = null;
    }
}
