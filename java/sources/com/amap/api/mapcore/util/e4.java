package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.GL3DModel;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.ae.gmap.listener.AMapWidgetListener;
import com.autonavi.base.amap.api.mapcore.BaseOverlayImp;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.IGLSurfaceView;
import com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.MapConfig;

/* JADX INFO: loaded from: classes5.dex */
public class e4 extends ViewGroup implements IInfoWindowAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f10728a;
    private Context b;
    private h4 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d4 f10729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b4 f10730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g4 f10731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private z3 f10732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c4 f10733h;
    private i4 i;
    private View j;
    private BaseOverlayImp k;
    private Drawable l;
    private boolean m;
    private View n;
    private boolean o;
    f4 p;
    private boolean q;
    private boolean r;
    s s;

    class a implements AMapWidgetListener {

        /* JADX INFO: renamed from: com.amap.api.mapcore.util.e4$a$a, reason: collision with other inner class name */
        class RunnableC0188a implements Runnable {
            RunnableC0188a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e4.this.f10731f.e();
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e4.this.f10730e.c();
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ float f10737a;

            c(float f2) {
                this.f10737a = f2;
            }

            @Override // java.lang.Runnable
            public void run() {
                e4.this.i.c(this.f10737a);
            }
        }

        a() {
        }

        @Override // com.autonavi.base.ae.gmap.listener.AMapWidgetListener
        public void invalidateCompassView() {
            if (e4.this.f10730e == null) {
                return;
            }
            e4.this.f10730e.post(new b());
        }

        @Override // com.autonavi.base.ae.gmap.listener.AMapWidgetListener
        public void invalidateScaleView() {
            if (e4.this.f10731f == null) {
                return;
            }
            e4.this.f10731f.post(new RunnableC0188a());
        }

        @Override // com.autonavi.base.ae.gmap.listener.AMapWidgetListener
        public void invalidateZoomController(float f2) {
            if (e4.this.i == null) {
                return;
            }
            e4.this.i.post(new c(f2));
        }

        @Override // com.autonavi.base.ae.gmap.listener.AMapWidgetListener
        public void setFrontViewVisibility(boolean z) {
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e4.this.j != null) {
                e4.this.j.clearFocus();
                e4 e4Var = e4.this;
                e4Var.removeView(e4Var.j);
                r3.I(e4.this.j.getBackground());
                r3.I(e4.this.l);
                e4.this.j = null;
            }
        }
    }

    public static class c extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public FPoint f10739a;
        public int b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f10740d;

        public c(int i, int i2, FPoint fPoint, int i3, int i4, int i5) {
            super(i, i2);
            this.f10739a = null;
            this.b = 0;
            this.c = 0;
            this.f10740d = 51;
            this.f10739a = fPoint;
            this.b = i3;
            this.c = i4;
            this.f10740d = i5;
        }
    }

    public e4(Context context, IAMapDelegate iAMapDelegate) {
        super(context);
        this.l = null;
        int i = 1;
        this.m = true;
        this.q = true;
        this.r = true;
        try {
            this.f10728a = iAMapDelegate;
            this.b = context;
            this.p = new f4();
            this.f10732g = new z3(context);
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (this.f10728a.getGLMapView() != null) {
                addView(this.f10728a.getGLMapView(), 0, layoutParams);
            } else {
                i = 0;
            }
            addView(this.f10732g, i, layoutParams);
            if (this.q) {
                return;
            }
            f(context);
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
        }
    }

    private void V() {
        g4 g4Var = this.f10731f;
        if (g4Var == null) {
            this.p.b(this, new Object[0]);
        } else {
            if (g4Var == null || g4Var.getVisibility() != 0) {
                return;
            }
            this.f10731f.postInvalidate();
        }
    }

    private View d(BaseOverlayImp baseOverlayImp) throws RemoteException {
        View viewD;
        View viewD2;
        View view = null;
        if (baseOverlayImp instanceof w1) {
            Marker marker = new Marker((w1) baseOverlayImp);
            try {
                if (this.l == null) {
                    this.l = g3.c(this.b, "infowindow_bg.9.png");
                }
            } catch (Throwable th) {
                e6.r(th, "MapOverlayViewGroup", "showInfoWindow decodeDrawableFromAsset");
                th.printStackTrace();
            }
            try {
                if (this.o) {
                    viewD2 = this.s.d(marker);
                    if (viewD2 == null) {
                        try {
                            viewD2 = this.s.o(marker);
                        } catch (Throwable th2) {
                            th = th2;
                            view = viewD2;
                            e6.r(th, "MapOverlayViewGroup", "getInfoWindow or getInfoContents");
                            th.printStackTrace();
                        }
                    }
                    this.n = viewD2;
                    this.o = false;
                } else {
                    viewD2 = this.n;
                }
                if (viewD2 == null) {
                    if (!this.s.l()) {
                        return null;
                    }
                    viewD2 = this.s.d(marker);
                }
                view = viewD2;
                if (view != null && view.getBackground() == null) {
                    view.setBackground(this.l);
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            try {
                if (this.l == null) {
                    this.l = g3.c(this.b, "infowindow_bg.9.png");
                }
            } catch (Throwable th4) {
                e6.r(th4, "MapOverlayViewGroup", "showInfoWindow decodeDrawableFromAsset");
                th4.printStackTrace();
            }
            try {
                GL3DModel gL3DModel = new GL3DModel((t1) baseOverlayImp);
                if (this.o) {
                    viewD = this.s.d(gL3DModel);
                    if (viewD == null) {
                        try {
                            viewD = this.s.o(gL3DModel);
                        } catch (Throwable th5) {
                            th = th5;
                            view = viewD;
                            e6.r(th, "MapOverlayViewGroup", "getInfoWindow or getInfoContents");
                            th.printStackTrace();
                            return view;
                        }
                    }
                    this.n = viewD;
                    this.o = false;
                } else {
                    viewD = this.n;
                }
                if (viewD == null) {
                    if (!this.s.l()) {
                        return null;
                    }
                    viewD = this.s.d(gL3DModel);
                }
                view = viewD;
                if (view.getBackground() == null) {
                    view.setBackground(this.l);
                }
                return view;
            } catch (Throwable th6) {
                th = th6;
            }
        }
        return view;
    }

    private void f(Context context) {
        h4 h4Var = new h4(context, this.f10728a);
        this.c = h4Var;
        h4Var.n(this.r);
        this.f10731f = new g4(context, this.f10728a);
        this.f10733h = new c4(context);
        this.i = new i4(context, this.f10728a);
        this.f10729d = new d4(context, this.f10728a);
        this.f10730e = new b4(context, this.f10728a);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        addView(this.c, layoutParams);
        addView(this.f10731f, layoutParams);
        addView(this.f10733h, new ViewGroup.LayoutParams(-2, -2));
        addView(this.i, new c(-2, -2, new FPoint(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED), 0, 0, 83));
        addView(this.f10729d, new c(-2, -2, FPoint.obtain(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED), 0, 0, 83));
        addView(this.f10730e, new c(-2, -2, FPoint.obtain(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED), 0, 0, 51));
        this.f10730e.setVisibility(8);
        this.f10728a.setMapWidgetListener(new a());
        try {
            if (this.f10728a.getUiSettings().isMyLocationButtonEnabled()) {
                return;
            }
            this.f10729d.setVisibility(8);
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImpGLSurfaceView", "locationView gone");
            th.printStackTrace();
        }
    }

    private void h(View view, int i, int i2) throws RemoteException {
        int i3;
        int i4;
        if (view == null) {
            return;
        }
        View view2 = this.j;
        if (view2 != null) {
            if (view == view2) {
                return;
            }
            view2.clearFocus();
            removeView(this.j);
        }
        this.j = view;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        this.j.setDrawingCacheEnabled(true);
        this.j.setDrawingCacheQuality(0);
        this.k.getRect();
        if (layoutParams != null) {
            int i5 = layoutParams.width;
            i4 = layoutParams.height;
            i3 = i5;
        } else {
            i3 = -2;
            i4 = -2;
        }
        addView(this.j, new c(i3, i4, this.k.getGeoPosition(), i, i2, 81));
    }

    private void i(View view, int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7 = i5 & 7;
        int i8 = i5 & 112;
        if (i7 == 5) {
            i3 -= i;
        } else if (i7 == 1) {
            i3 -= i / 2;
        }
        if (i8 == 80) {
            i4 -= i2;
        } else {
            if (i8 == 17) {
                i6 = i2 / 2;
            } else if (i8 == 16) {
                i4 /= 2;
                i6 = i2 / 2;
            }
            i4 -= i6;
        }
        view.layout(i3, i4, i3 + i, i4 + i2);
        if (view instanceof IGLSurfaceView) {
            this.f10728a.changeSize(i, i2);
        }
    }

    private void j(View view, int i, int i2, int[] iArr) {
        View view2;
        if ((view instanceof ListView) && (view2 = (View) view.getParent()) != null) {
            iArr[0] = view2.getWidth();
            iArr[1] = view2.getHeight();
        }
        if (i <= 0 || i2 <= 0) {
            view.measure(0, 0);
        }
        if (i == -2) {
            iArr[0] = view.getMeasuredWidth();
        } else if (i == -1) {
            iArr[0] = getMeasuredWidth();
        } else {
            iArr[0] = i;
        }
        if (i2 == -2) {
            iArr[1] = view.getMeasuredHeight();
        } else if (i2 == -1) {
            iArr[1] = getMeasuredHeight();
        } else {
            iArr[1] = i2;
        }
    }

    private void k(View view, ViewGroup.LayoutParams layoutParams) {
        int[] iArr = new int[2];
        j(view, layoutParams.width, layoutParams.height, iArr);
        if (view instanceof c4) {
            i(view, iArr[0], iArr[1], 20, (this.f10728a.getWaterMarkerPositon().y - 80) - iArr[1], 51);
        } else {
            i(view, iArr[0], iArr[1], 0, 0, 51);
        }
    }

    private void l(View view, c cVar) {
        int[] iArr = new int[2];
        j(view, ((ViewGroup.LayoutParams) cVar).width, ((ViewGroup.LayoutParams) cVar).height, iArr);
        if (view instanceof i4) {
            i(view, iArr[0], iArr[1], getWidth() - iArr[0], getHeight(), cVar.f10740d);
            return;
        }
        if (view instanceof d4) {
            i(view, iArr[0], iArr[1], getWidth() - iArr[0], iArr[1], cVar.f10740d);
            return;
        }
        if (view instanceof b4) {
            i(view, iArr[0], iArr[1], 0, 0, cVar.f10740d);
            return;
        }
        if (cVar.f10739a != null) {
            IPoint iPointObtain = IPoint.obtain();
            MapConfig mapConfig = this.f10728a.getMapConfig();
            GLMapState mapProjection = this.f10728a.getMapProjection();
            if (mapConfig != null && mapProjection != null) {
                FPoint fPointObtain = FPoint.obtain();
                FPoint fPoint = cVar.f10739a;
                mapProjection.p20ToScreenPoint((int) ((PointF) fPoint).x, (int) ((PointF) fPoint).y, fPointObtain);
                ((Point) iPointObtain).x = (int) ((PointF) fPointObtain).x;
                ((Point) iPointObtain).y = (int) ((PointF) fPointObtain).y;
                fPointObtain.recycle();
            }
            int i = ((Point) iPointObtain).x + cVar.b;
            ((Point) iPointObtain).x = i;
            int i2 = ((Point) iPointObtain).y + cVar.c;
            ((Point) iPointObtain).y = i2;
            i(view, iArr[0], iArr[1], i, i2, cVar.f10740d);
            iPointObtain.recycle();
        }
    }

    public void A(Boolean bool) {
        if (this.f10729d == null) {
            this.p.b(this, bool);
        } else if (bool.booleanValue()) {
            this.f10729d.setVisibility(0);
        } else {
            this.f10729d.setVisibility(8);
        }
    }

    public void B(Integer num) {
        h4 h4Var = this.c;
        if (h4Var == null) {
            this.p.b(this, num);
        } else if (h4Var != null) {
            h4Var.i(num.intValue());
            V();
        }
    }

    public z3 D() {
        return this.f10732g;
    }

    public void E(Boolean bool) {
        b4 b4Var = this.f10730e;
        if (b4Var == null) {
            this.p.b(this, bool);
        } else {
            b4Var.b(bool.booleanValue());
        }
    }

    public void F(Integer num) {
        h4 h4Var = this.c;
        if (h4Var == null) {
            this.p.b(this, num);
        } else if (h4Var != null) {
            h4Var.m(num.intValue());
            V();
        }
    }

    public c4 H() {
        return this.f10733h;
    }

    public void I(Boolean bool) {
        g4 g4Var = this.f10731f;
        if (g4Var == null) {
            this.p.b(this, bool);
        } else {
            g4Var.d(bool.booleanValue());
        }
    }

    public d4 J() {
        return this.f10729d;
    }

    public void K(Boolean bool) {
        h4 h4Var = this.c;
        if (h4Var == null) {
            this.p.b(this, bool);
        } else {
            h4Var.setVisibility(bool.booleanValue() ? 0 : 8);
        }
    }

    public h4 L() {
        return this.c;
    }

    public void M(Boolean bool) {
        h4 h4Var = this.c;
        if (h4Var == null) {
            this.p.b(this, bool);
            return;
        }
        if (h4Var != null && bool.booleanValue()) {
            this.c.f(true);
            return;
        }
        h4 h4Var2 = this.c;
        if (h4Var2 != null) {
            h4Var2.f(false);
        }
    }

    public void N() {
        i4 i4Var = this.i;
        if (i4Var != null) {
            i4Var.b();
        }
        g4 g4Var = this.f10731f;
        if (g4Var != null) {
            g4Var.a();
        }
        h4 h4Var = this.c;
        if (h4Var != null) {
            h4Var.b();
        }
        d4 d4Var = this.f10729d;
        if (d4Var != null) {
            d4Var.a();
        }
        b4 b4Var = this.f10730e;
        if (b4Var != null) {
            b4Var.a();
        }
        c4 c4Var = this.f10733h;
        if (c4Var != null) {
            c4Var.n();
        }
    }

    public void O(Boolean bool) {
        d4 d4Var = this.f10729d;
        if (d4Var == null) {
            this.p.b(this, bool);
        } else {
            d4Var.b(bool.booleanValue());
        }
    }

    public void P() {
        hideInfoWindow();
        r3.I(this.l);
        N();
        removeAllViews();
        this.n = null;
    }

    public void Q(Boolean bool) {
        c4 c4Var = this.f10733h;
        if (c4Var == null) {
            this.p.b(this, bool);
        } else {
            c4Var.j(bool.booleanValue());
        }
    }

    public void R() {
    }

    public void S(Boolean bool) {
        if (this.c == null) {
            this.p.b(this, bool);
        } else {
            bool.booleanValue();
            this.c.setVisibility(4);
        }
    }

    public void T() {
        b4 b4Var = this.f10730e;
        if (b4Var == null) {
            this.p.b(this, new Object[0]);
        } else {
            b4Var.c();
        }
    }

    public void U() {
        Context context;
        if (!this.q || (context = this.b) == null) {
            return;
        }
        f(context);
        f4 f4Var = this.p;
        if (f4Var != null) {
            f4Var.a();
        }
    }

    public float a(int i) {
        if (this.c == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        V();
        return this.c.o(i);
    }

    public Point b() {
        h4 h4Var = this.c;
        if (h4Var == null) {
            return null;
        }
        return h4Var.l();
    }

    public void g(Canvas canvas) {
        Bitmap drawingCache;
        View view = this.j;
        if (view == null || this.k == null || (drawingCache = view.getDrawingCache(true)) == null) {
            return;
        }
        canvas.drawBitmap(drawingCache, this.j.getLeft(), this.j.getTop(), new Paint());
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public void hideInfoWindow() {
        IAMapDelegate iAMapDelegate = this.f10728a;
        if (iAMapDelegate == null || iAMapDelegate.getMainHandler() == null) {
            return;
        }
        this.f10728a.getMainHandler().post(new b());
        BaseOverlayImp baseOverlayImp = this.k;
        if (baseOverlayImp != null) {
            baseOverlayImp.setInfoWindowShown(false);
        }
        this.k = null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public boolean isInfoWindowShown() {
        return false;
    }

    public void m(c4.d dVar) {
        c4 c4Var = this.f10733h;
        if (c4Var == null) {
            this.p.b(this, dVar);
        } else {
            c4Var.h(dVar);
            Log.d("MapOverlayViewGroup", "setOnIndoorFloorSwitchListener");
        }
    }

    public void n(CameraPosition cameraPosition) {
        if (this.c == null) {
            this.p.b(this, cameraPosition);
            return;
        }
        if (this.f10728a.getUiSettings().isLogoEnable()) {
            if (MapsInitializer.isLoadWorldGridMap() && cameraPosition.zoom >= 6.0f) {
                LatLng latLng = cameraPosition.target;
                if (!k3.a(latLng.latitude, latLng.longitude)) {
                    this.c.setVisibility(8);
                    return;
                }
            }
            if (this.f10728a.getMaskLayerType() == -1) {
                this.c.setVisibility(0);
            }
        }
    }

    public void o(Boolean bool) {
        c4 c4Var = this.f10733h;
        if (c4Var == null) {
            this.p.b(this, bool);
        } else if (c4Var != null && bool.booleanValue() && this.f10728a.canShowIndoorSwitch()) {
            this.f10733h.j(true);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public boolean onInfoWindowTap(MotionEvent motionEvent) {
        return (this.j == null || this.k == null || !r3.M(new Rect(this.j.getLeft(), this.j.getTop(), this.j.getRight(), this.j.getBottom()), (int) motionEvent.getX(), (int) motionEvent.getY())) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        try {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt != null) {
                    if (childAt.getLayoutParams() instanceof c) {
                        l(childAt, (c) childAt.getLayoutParams());
                    } else {
                        k(childAt, childAt.getLayoutParams());
                    }
                }
            }
            h4 h4Var = this.c;
            if (h4Var != null) {
                h4Var.p();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void p(Float f2) {
        i4 i4Var = this.i;
        if (i4Var == null) {
            this.p.b(this, f2);
        } else if (i4Var != null) {
            i4Var.c(f2.floatValue());
        }
    }

    public void q(Integer num) {
        i4 i4Var = this.i;
        if (i4Var == null) {
            this.p.b(this, num);
        } else if (i4Var != null) {
            i4Var.d(num.intValue());
        }
    }

    public void r(Integer num, Float f2) {
        h4 h4Var = this.c;
        if (h4Var != null) {
            this.p.b(this, num, f2);
        } else if (h4Var != null) {
            h4Var.d(num.intValue(), f2.floatValue());
            V();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public void redrawInfoWindow() {
        try {
            BaseOverlayImp baseOverlayImp = this.k;
            if (baseOverlayImp == null || !baseOverlayImp.checkInBounds()) {
                View view = this.j;
                if (view == null || view.getVisibility() != 0) {
                    return;
                }
                this.j.setVisibility(8);
                return;
            }
            if (this.m) {
                int realInfoWindowOffsetX = this.k.getRealInfoWindowOffsetX() + this.k.getInfoWindowOffsetX();
                int realInfoWindowOffsetY = this.k.getRealInfoWindowOffsetY() + this.k.getInfoWindowOffsetY() + 2;
                View viewD = d(this.k);
                if (viewD == null) {
                    return;
                }
                h(viewD, realInfoWindowOffsetX, realInfoWindowOffsetY);
                View view2 = this.j;
                if (view2 != null) {
                    c cVar = (c) view2.getLayoutParams();
                    if (cVar != null) {
                        cVar.f10739a = FPoint.obtain(((PointF) this.k.getGeoPosition()).x, ((PointF) this.k.getGeoPosition()).y);
                        cVar.b = realInfoWindowOffsetX;
                        cVar.c = realInfoWindowOffsetY;
                    }
                    onLayout(false, 0, 0, 0, 0);
                    if (this.s.l()) {
                        this.s.k(this.k.getTitle(), this.k.getSnippet());
                    }
                    if (this.j.getVisibility() == 8) {
                        this.j.setVisibility(0);
                    }
                }
            }
        } catch (Throwable th) {
            e6.r(th, "MapOverlayViewGroup", "redrawInfoWindow");
            th.printStackTrace();
        }
    }

    public void s(String str, Boolean bool, Integer num) {
        if (this.c == null) {
            this.p.b(this, str, bool, num);
            return;
        }
        if (num.intValue() == 2) {
            this.c.j(bool.booleanValue());
        } else {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.c.e(str, num.intValue());
            this.c.q(bool.booleanValue());
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public void setInfoWindowAdapterManager(s sVar) {
        this.s = sVar;
    }

    @Override // com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction
    public void showInfoWindow(BaseOverlayImp baseOverlayImp) {
        if (baseOverlayImp == null) {
            return;
        }
        try {
            s sVar = this.s;
            if (!(sVar != null && sVar.l() && baseOverlayImp.getTitle() == null && baseOverlayImp.getSnippet() == null) && baseOverlayImp.isInfoWindowEnable()) {
                BaseOverlayImp baseOverlayImp2 = this.k;
                if (baseOverlayImp2 != null && !baseOverlayImp2.getId().equals(baseOverlayImp.getId())) {
                    hideInfoWindow();
                }
                if (this.s != null) {
                    this.k = baseOverlayImp;
                    baseOverlayImp.setInfoWindowShown(true);
                    this.o = true;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void t(boolean z) {
        h4 h4Var = this.c;
        if (h4Var != null) {
            h4Var.n(z);
        }
        this.r = z;
    }

    public void v(Boolean bool) {
        i4 i4Var = this.i;
        if (i4Var == null) {
            this.p.b(this, bool);
        } else {
            i4Var.e(bool.booleanValue());
        }
    }

    public void w(Integer num) {
        h4 h4Var = this.c;
        if (h4Var == null) {
            this.p.b(this, num);
        } else if (h4Var != null) {
            h4Var.c(num.intValue());
            this.c.postInvalidate();
            V();
        }
    }

    public boolean x() {
        h4 h4Var = this.c;
        if (h4Var != null) {
            return h4Var.r();
        }
        return false;
    }

    public void z() {
        h4 h4Var = this.c;
        if (h4Var == null) {
            this.p.b(this, new Object[0]);
        } else if (h4Var != null) {
            h4Var.p();
        }
    }
}
