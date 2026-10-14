package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdate;
import com.amap.api.maps.CustomRenderer;
import com.amap.api.maps.InfoWindowAnimationManager;
import com.amap.api.maps.LocationSource;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.Projection;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.AMapCameraInfo;
import com.amap.api.maps.model.AMapGestureListener;
import com.amap.api.maps.model.Arc;
import com.amap.api.maps.model.ArcOptions;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.BuildingOverlay;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.Circle;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.CrossOverlay;
import com.amap.api.maps.model.CrossOverlayOptions;
import com.amap.api.maps.model.CustomMapStyleOptions;
import com.amap.api.maps.model.GL3DModel;
import com.amap.api.maps.model.GL3DModelOptions;
import com.amap.api.maps.model.GroundOverlay;
import com.amap.api.maps.model.GroundOverlayOptions;
import com.amap.api.maps.model.HeatMapLayer;
import com.amap.api.maps.model.HeatMapLayerOptions;
import com.amap.api.maps.model.HeatmapTileProvider;
import com.amap.api.maps.model.IndoorBuildingInfo;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.MultiPointOverlay;
import com.amap.api.maps.model.MultiPointOverlayOptions;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.maps.model.MyTrafficStyle;
import com.amap.api.maps.model.NavigateArrow;
import com.amap.api.maps.model.NavigateArrowOptions;
import com.amap.api.maps.model.Poi;
import com.amap.api.maps.model.Polygon;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.amap.api.maps.model.RouteOverlay;
import com.amap.api.maps.model.Text;
import com.amap.api.maps.model.TextOptions;
import com.amap.api.maps.model.TileOverlay;
import com.amap.api.maps.model.TileOverlayOptions;
import com.amap.api.maps.model.TileProvider;
import com.amap.api.maps.model.animation.Animation;
import com.amap.api.maps.model.particle.ParticleOverlay;
import com.amap.api.maps.model.particle.ParticleOverlayOptions;
import com.autonavi.amap.api.mapcore.IGLMapState;
import com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate;
import com.autonavi.amap.api.mapcore.overlays.IParticleLatyer;
import com.autonavi.amap.mapcore.AbstractCameraUpdateMessage;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.VirtualEarthProjection;
import com.autonavi.amap.mapcore.animation.GLAlphaAnimation;
import com.autonavi.amap.mapcore.interfaces.IHeatMapLayer;
import com.autonavi.amap.mapcore.interfaces.IMarkerAction;
import com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay;
import com.autonavi.base.ae.gmap.GLMapEngine;
import com.autonavi.base.ae.gmap.GLMapRender;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.ae.gmap.gesture.EAMapPlatformGestureInfo;
import com.autonavi.base.ae.gmap.glinterface.MapLabelItem;
import com.autonavi.base.ae.gmap.gloverlay.BaseMapOverlay;
import com.autonavi.base.ae.gmap.gloverlay.CrossVectorOverlay;
import com.autonavi.base.ae.gmap.gloverlay.GLOverlayBundle;
import com.autonavi.base.ae.gmap.gloverlay.GLTextureProperty;
import com.autonavi.base.ae.gmap.listener.AMapWidgetListener;
import com.autonavi.base.ae.gmap.style.StyleItem;
import com.autonavi.base.amap.api.mapcore.BaseOverlayImp;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.IGLSurfaceView;
import com.autonavi.base.amap.api.mapcore.IProjectionDelegate;
import com.autonavi.base.amap.api.mapcore.IUiSettingsDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IArcDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.ICircleDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IGroundOverlayDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IMarkerDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.INavigateArrowDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IPolygonDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IPolylineDelegate;
import com.autonavi.base.amap.mapcore.AMapNativeRenderer;
import com.autonavi.base.amap.mapcore.AeUtil;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.FileUtil;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.autonavi.base.amap.mapcore.Rectangle;
import com.autonavi.base.amap.mapcore.interfaces.IAMapListener;
import com.autonavi.base.amap.mapcore.message.AbstractGestureMapMessage;
import com.autonavi.base.amap.mapcore.tools.GLConvertUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes5.dex */
public class c1 implements com.amap.api.mapcore.util.b0.a, l2.a, IAMapDelegate, IAMapListener {
    private List<AMap.onMapPrintScreenListener> A;
    private l2 A0;
    private com.amap.api.mapcore.util.q A1;
    private List<AMap.OnMapScreenShotListener> B;
    i3 B0;
    float[] B1;
    private AMapGestureListener C;
    protected Context C0;
    float[] C1;
    private com.amap.api.mapcore.util.s D;
    private a5 D0;
    float[] D1;
    private d2 E;
    protected GLMapEngine E0;
    private UiSettings F;
    private GLMapRender F0;
    private IProjectionDelegate G;
    private aa G0;
    private final com.amap.api.mapcore.util.c H;
    private boolean H0;
    protected boolean I;
    public int I0;
    private boolean J;
    public int J0;
    private final IGLSurfaceView K;
    private float K0;
    private e4 L;
    private float L0;
    private ab M;
    private float M0;
    private Object N;
    private boolean N0;
    protected final com.amap.api.mapcore.util.u O;
    private boolean O0;
    private final com.amap.api.mapcore.util.r P;
    private boolean P0;
    private boolean Q;
    private int Q0;
    private int R;
    private volatile boolean R0;
    private boolean S;
    private volatile boolean S0;
    private z9 T;
    private boolean T0;
    private List<AMapWidgetListener> U;
    private boolean U0;
    private boolean V;
    private Lock V0;
    protected MapConfig W;
    private int W0;
    private boolean X;
    private int X0;
    private boolean Y;
    private int Y0;
    protected com.amap.api.mapcore.util.q Z;
    private n0 Z0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AMap.OnMarkerClickListener f10544a;
    private x1 a0;
    private h2 a1;
    private AMap.OnPolylineClickListener b;
    private LocationSource b0;
    private da b1;
    private AMap.OnMarkerDragListener c;
    private boolean c0;
    private com.amap.api.mapcore.util.z c1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMap.OnMapLoadedListener f10545d;
    private Marker d0;
    private com.amap.api.mapcore.util.b0 d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AMap.OnCameraChangeListener f10546e;
    private BaseOverlayImp e0;
    private long e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AMap.OnMapClickListener f10547f;
    private boolean f0;
    protected final Handler f1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AMap.OnMapTouchListener f10548g;
    private boolean g0;
    private m0 g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AMap.OnPOIClickListener f10549h;
    private boolean h0;
    private m0 h1;
    private AMap.OnMapLongClickListener i;
    private boolean i0;
    private m0 i1;
    private AMap.OnInfoWindowClickListener j;
    private boolean j0;
    private m0 j1;
    private AMap.OnIndoorBuildingActiveListener k;
    private boolean k0;
    private m0 k1;
    private AMap.OnMyLocationChangeListener l;
    private Rect l0;
    private m0 l1;
    private a6 m;
    private int m0;
    private m0 m1;
    private AMapWidgetListener n;
    private MyTrafficStyle n0;
    private m0 n1;
    private List<AMap.OnMarkerClickListener> o;
    private Thread o0;
    private m0 o1;
    private List<AMap.OnPolylineClickListener> p;
    private Thread p0;
    private m0 p1;
    private List<AMap.OnMarkerDragListener> q;
    private boolean q0;
    private Runnable q1;
    private List<AMap.OnMapLoadedListener> r;
    private boolean r0;
    private m0 r1;
    private List<AMap.OnCameraChangeListener> s;
    private boolean s0;
    private m0 s1;
    private List<AMap.OnMapClickListener> t;
    private int t0;
    private s8 t1;
    private List<AMap.OnMapTouchListener> u;
    private CustomRenderer u0;
    private String u1;
    private List<AMap.OnPOIClickListener> v;
    private final fa v0;
    private String v1;
    private List<AMap.OnMapLongClickListener> w;
    private int w0;
    private EAMapPlatformGestureInfo w1;
    private List<AMap.OnInfoWindowClickListener> x;
    private int x0;
    Point x1;
    private List<AMap.OnIndoorBuildingActiveListener> y;
    private List<ha> y0;
    Rect y1;
    private List<AMap.OnMyLocationChangeListener> z;
    private j2 z0;
    private long z1;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MotionEvent f10550a;

        a(MotionEvent motionEvent) {
            this.f10550a = motionEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Message messageObtain = Message.obtain();
            messageObtain.what = 19;
            messageObtain.arg1 = (int) this.f10550a.getX();
            messageObtain.arg2 = (int) this.f10550a.getY();
            c1.this.f1.sendMessage(messageObtain);
        }
    }

    class a0 extends m0 {
        a0() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            c1.this.setMapCustomEnable(this.b);
        }
    }

    class b extends m0 {
        b() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            try {
                c1.this.setTrafficEnabled(this.b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class b0 extends m0 {
        b0() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            c1.this.l(this.f10573f, this.b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z3 f10551a;

        c(z3 z3Var) {
            this.f10551a = z3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c1.this.V) {
                return;
            }
            try {
                c1 c1Var = c1.this;
                com.amap.api.mapcore.util.q qVar = c1Var.Z;
                if (qVar != null) {
                    c1Var.setIndoorBuildingInfo(qVar);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            this.f10551a.b(false);
        }
    }

    class c0 extends m0 {
        c0() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            try {
                c1.this.setMapTextEnable(this.b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10552a;

        d(int i) {
            this.f10552a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLMapEngine gLMapEngine;
            if (!c1.this.R0 || (gLMapEngine = c1.this.E0) == null) {
                return;
            }
            gLMapEngine.setHighlightSubwayEnable(this.f10552a, false);
        }
    }

    class d0 extends m0 {
        d0() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            try {
                c1.this.setRoadArrowEnable(this.b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10553a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f10554d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f10555e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f10556f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ StyleItem[] f10557g;

        e(int i, int i2, int i3, int i4, boolean z, boolean z2, StyleItem[] styleItemArr) {
            this.f10553a = i;
            this.b = i2;
            this.c = i3;
            this.f10554d = i4;
            this.f10555e = z;
            this.f10556f = z2;
            this.f10557g = styleItemArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1.this.E0.setMapModeAndStyle(this.f10553a, this.b, this.c, this.f10554d, this.f10555e, this.f10556f, this.f10557g);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class e0 extends m0 {
        e0() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            try {
                c1.this.setNaviLabelEnable(this.b, this.f10574g, this.f10575h);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10559a;

        f(int i) {
            this.f10559a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1.this.E0.clearAllMessages(this.f10559a);
                c1.this.E0.clearAnimations(this.f10559a, true);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class f0 extends m0 {
        f0() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            try {
                c1.this.setIndoorEnabled(this.b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10560a;
        final /* synthetic */ boolean b;

        g(int i, boolean z) {
            this.f10560a = i;
            this.b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1.this.E0.setBuildingEnable(this.f10560a, this.b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class g0 implements Runnable {
        g0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h4 h4VarL;
            if (c1.this.L == null || (h4VarL = c1.this.L.L()) == null) {
                return;
            }
            h4VarL.p();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10562a;
        final /* synthetic */ int b;

        h(boolean z, int i) {
            this.f10562a = z;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLMapEngine gLMapEngine = c1.this.E0;
            if (gLMapEngine != null) {
                if (this.f10562a) {
                    gLMapEngine.setAllContentEnable(this.b, true);
                } else {
                    gLMapEngine.setAllContentEnable(this.b, false);
                }
                c1.this.E0.setSimple3DEnable(this.b, false);
            }
        }
    }

    class h0 extends m0 {
        h0() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            c1.this.W(this.f10573f, this.b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10563a;
        final /* synthetic */ int b;

        i(boolean z, int i) {
            this.f10563a = z;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f10563a) {
                    c1.this.E0.setBuildingTextureEnable(this.b, true);
                } else {
                    c1.this.E0.setBuildingTextureEnable(this.b, false);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class i0 extends m0 {
        i0() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            try {
                c1 c1Var = c1.this;
                c1Var.setMyTrafficStyle(c1Var.n0);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c1 c1Var = c1.this;
            if (c1Var.E0 == null || c1Var.S) {
                return;
            }
            c1 c1Var2 = c1.this;
            c1Var2.E0.removeNativeAllOverlay(c1Var2.R);
        }
    }

    class j0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10565a;

        j0(int i) {
            this.f10565a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1.this.E0.clearAllMessages(this.f10565a);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class k extends Handler {
        k(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message == null || c1.this.S) {
                return;
            }
            try {
                int i = message.what;
                if (i == 2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Key验证失败：[");
                    Object obj = message.obj;
                    if (obj != null) {
                        sb.append(obj);
                    } else {
                        sb.append(d5.b);
                    }
                    sb.append("]");
                    Log.w("amapsdk", sb.toString());
                    return;
                }
                boolean z = true;
                int i2 = 0;
                switch (i) {
                    case 10:
                        CameraPosition cameraPosition = (CameraPosition) message.obj;
                        if (cameraPosition != null) {
                            try {
                                if (c1.this.s != null && c1.this.s.size() > 0) {
                                    Iterator it = c1.this.s.iterator();
                                    while (it.hasNext()) {
                                        ((AMap.OnCameraChangeListener) it.next()).onCameraChange(cameraPosition);
                                    }
                                }
                            } catch (Throwable th) {
                                r3.J(th);
                            }
                        }
                        c1.this.W.addChangedCounter();
                        return;
                    case 11:
                        try {
                            CameraPosition cameraPosition2 = c1.this.getCameraPosition();
                            if (cameraPosition2 != null && c1.this.L != null) {
                                c1.this.L.n(cameraPosition2);
                            }
                            c1.this.q(cameraPosition2);
                            if (c1.this.P0) {
                                c1.this.P0 = false;
                                if (c1.this.M != null) {
                                    c1.this.M.h(false);
                                }
                                c1.this.x(true);
                            }
                            if (c1.this.i0) {
                                c1.this.redrawInfoWindow();
                                c1.this.i0 = false;
                            }
                            c1.this.y(true, cameraPosition2);
                            return;
                        } catch (Throwable th2) {
                            e6.r(th2, "AMapDelegateImp", "CameraUpdateFinish");
                            r3.J(th2);
                            return;
                        }
                    case 12:
                        if (c1.this.L != null) {
                            c1.this.L.p(Float.valueOf(c1.this.getZoomLevel()));
                            return;
                        }
                        return;
                    case 13:
                        if (c1.this.L != null) {
                            c1.this.L.T();
                            return;
                        }
                        return;
                    case 14:
                        try {
                            if (c1.this.u == null || c1.this.u.size() <= 0) {
                                return;
                            }
                            Iterator it2 = c1.this.u.iterator();
                            while (it2.hasNext()) {
                                ((AMap.OnMapTouchListener) it2.next()).onTouch((MotionEvent) message.obj);
                            }
                            return;
                        } catch (Throwable th3) {
                            e6.r(th3, "AMapDelegateImp", "onTouchHandler");
                            th3.printStackTrace();
                            return;
                        }
                    case 15:
                        Bitmap bitmap = (Bitmap) message.obj;
                        int i3 = message.arg1;
                        try {
                            if (bitmap == null || c1.this.L == null) {
                                if (c1.this.A != null && c1.this.A.size() > 0) {
                                    for (int i4 = 0; i4 < c1.this.A.size(); i4++) {
                                        ((AMap.onMapPrintScreenListener) c1.this.A.get(i4)).onMapPrint(null);
                                    }
                                }
                                if (c1.this.B != null && c1.this.B.size() > 0) {
                                    while (i2 < c1.this.B.size()) {
                                        ((AMap.OnMapScreenShotListener) c1.this.B.get(i2)).onMapScreenShot(null);
                                        ((AMap.OnMapScreenShotListener) c1.this.B.get(i2)).onMapScreenShot(null, i3);
                                        i2++;
                                    }
                                }
                            } else {
                                Canvas canvas = new Canvas(bitmap);
                                h4 h4VarL = c1.this.L.L();
                                if (h4VarL != null) {
                                    h4VarL.onDraw(canvas);
                                }
                                c1.this.L.g(canvas);
                                if (c1.this.A != null && c1.this.A.size() > 0) {
                                    for (int i5 = 0; i5 < c1.this.A.size(); i5++) {
                                        ((AMap.onMapPrintScreenListener) c1.this.A.get(i5)).onMapPrint(new BitmapDrawable(c1.this.C0.getResources(), bitmap));
                                    }
                                }
                                if (c1.this.B != null && c1.this.B.size() > 0) {
                                    while (i2 < c1.this.B.size()) {
                                        ((AMap.OnMapScreenShotListener) c1.this.B.get(i2)).onMapScreenShot(bitmap);
                                        ((AMap.OnMapScreenShotListener) c1.this.B.get(i2)).onMapScreenShot(bitmap, i3);
                                        i2++;
                                    }
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        c1 c1Var = c1.this;
                        c1Var.u(c1Var.A);
                        c1 c1Var2 = c1.this;
                        c1Var2.u(c1Var2.B);
                        return;
                    case 16:
                        if (c1.this.r != null) {
                            while (i2 < c1.this.r.size()) {
                                try {
                                    ((AMap.OnMapLoadedListener) c1.this.r.get(i2)).onMapLoaded();
                                    i2++;
                                } catch (Throwable th4) {
                                    e6.r(th4, "AMapDelegateImp", "onMapLoaded");
                                    th4.printStackTrace();
                                    r3.J(th4);
                                }
                                break;
                            }
                        }
                        if (c1.this.L != null) {
                            c1.this.L.U();
                            return;
                        }
                        return;
                    case 17:
                        if (c1.this.E0.isInMapAnimation(1) && c1.this.M != null) {
                            c1.this.M.h(false);
                        }
                        if (c1.this.M != null) {
                            ab abVar = c1.this.M;
                            if (message.arg1 == 0) {
                                z = false;
                            }
                            abVar.f(z);
                            return;
                        }
                        return;
                    case 18:
                        if (c1.this.D == null || !c1.this.Y) {
                            return;
                        }
                        c1.this.D.w();
                        return;
                    case 19:
                        if (c1.this.t != null) {
                            DPoint dPointObtain = DPoint.obtain();
                            c1.this.getPixel2LatLng(message.arg1, message.arg2, dPointObtain);
                            try {
                                Iterator it3 = c1.this.t.iterator();
                                while (it3.hasNext()) {
                                    ((AMap.OnMapClickListener) it3.next()).onMapClick(new LatLng(dPointObtain.y, dPointObtain.x));
                                }
                                dPointObtain.recycle();
                                return;
                            } catch (Throwable th5) {
                                e6.r(th5, "AMapDelegateImp", "OnMapClickListener.onMapClick");
                                th5.printStackTrace();
                                return;
                            }
                        }
                        return;
                    case 20:
                        try {
                            if (c1.this.v == null || c1.this.v.size() <= 0) {
                                return;
                            }
                            while (i2 < c1.this.v.size()) {
                                ((AMap.OnPOIClickListener) c1.this.v.get(i2)).onPOIClick((Poi) message.obj);
                                i2++;
                            }
                            return;
                        } catch (Throwable th6) {
                            e6.r(th6, "AMapDelegateImp", "OnPOIClickListener.onPOIClick");
                            th6.printStackTrace();
                            return;
                        }
                    default:
                        return;
                }
                e6.r(th, "AMapDelegateImp", "handleMessage");
                th.printStackTrace();
            } catch (Throwable th7) {
                e6.r(th7, "AMapDelegateImp", "handleMessage");
                th7.printStackTrace();
            }
        }
    }

    class k0 implements Runnable {
        k0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c1.this.Q0 = 1;
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10568a;
        final /* synthetic */ boolean b;

        l(boolean z, boolean z2) {
            this.f10568a = z;
            this.b = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c1.this.W.isTrafficEnabled() != this.f10568a) {
                    c1.this.W.setTrafficEnabled(this.b);
                    c1.this.F0.setTrafficMode(this.f10568a);
                    c1.this.E0.setTrafficEnable(1, this.f10568a);
                    c1.this.resetRenderTime();
                }
            } catch (Throwable th) {
                th.printStackTrace();
                r3.J(th);
            }
        }
    }

    class l0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MotionEvent f10569a;

        l0(MotionEvent motionEvent) {
            this.f10569a = motionEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Message messageObtain = Message.obtain();
                Poi poiH = null;
                MapConfig mapConfig = c1.this.W;
                if (mapConfig != null && mapConfig.isTouchPoiEnable()) {
                    poiH = c1.this.H((int) this.f10569a.getX(), (int) this.f10569a.getY(), 25);
                }
                if (c1.this.v == null || c1.this.v.size() <= 0 || poiH == null) {
                    c1.this.X(this.f10569a);
                    return;
                }
                messageObtain.what = 20;
                messageObtain.obj = poiH;
                c1.this.f1.sendMessage(messageObtain);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class m extends m0 {
        m() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            try {
                c1 c1Var = c1.this;
                c1Var.setCenterToPixel(c1Var.X0, c1.this.Y0);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10576a;

        n(boolean z) {
            this.f10576a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f10576a) {
                c1.this.showIndoorSwitchControlsEnabled(true);
            } else if (c1.this.L != null) {
                c1.this.L.Q(Boolean.FALSE);
            }
        }
    }

    class n0 {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ c4 f10578a;

            a(n0 n0Var, c4 c4Var) {
                this.f10578a = c4Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f10578a.j(false);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ c4 f10579a;

            b(c4 c4Var) {
                this.f10579a = c4Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f10579a.k(c1.this.Z.floor_names);
                    this.f10579a.i(c1.this.Z.activeFloorName);
                    if (this.f10579a.s()) {
                        return;
                    }
                    this.f10579a.j(true);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        n0() {
        }

        public void a(com.amap.api.mapcore.util.q qVar) {
            com.amap.api.mapcore.util.q qVar2;
            com.amap.api.mapcore.util.q qVar3;
            int[] iArr;
            String[] strArr;
            MapConfig mapConfig = c1.this.W;
            if (mapConfig == null || !mapConfig.isIndoorEnable()) {
                return;
            }
            c4 c4VarH = c1.this.L.H();
            if (qVar == null) {
                try {
                    if (c1.this.y != null && c1.this.y.size() > 0) {
                        for (int i = 0; i < c1.this.y.size(); i++) {
                            ((AMap.OnIndoorBuildingActiveListener) c1.this.y.get(i)).OnIndoorBuilding(qVar);
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                com.amap.api.mapcore.util.q qVar4 = c1.this.Z;
                if (qVar4 != null) {
                    qVar4.f11089e = null;
                }
                if (c4VarH.s()) {
                    c1.this.f1.post(new a(this, c4VarH));
                }
                MapConfig mapConfig2 = c1.this.W;
                mapConfig2.maxZoomLevel = mapConfig2.isSetLimitZoomLevel() ? c1.this.W.getMaxZoomLevel() : 20.0f;
                try {
                    if (!c1.this.H.isZoomControlsEnabled() || c1.this.U == null || c1.this.U.size() <= 0) {
                        return;
                    }
                    for (int i2 = 0; i2 < c1.this.U.size(); i2++) {
                        ((AMapWidgetListener) c1.this.U.get(i2)).invalidateZoomController(c1.this.W.getSZ());
                    }
                    return;
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            if (qVar != null && (iArr = qVar.floor_indexs) != null && (strArr = qVar.floor_names) != null && iArr.length == strArr.length) {
                int i3 = 0;
                while (true) {
                    int[] iArr2 = qVar.floor_indexs;
                    if (i3 >= iArr2.length) {
                        break;
                    }
                    if (qVar.activeFloorIndex == iArr2[i3]) {
                        qVar.activeFloorName = qVar.floor_names[i3];
                        break;
                    }
                    i3++;
                }
            }
            if (qVar == null || (qVar3 = c1.this.Z) == null || qVar3.activeFloorIndex == qVar.activeFloorIndex || !c4VarH.s()) {
                if (qVar != null && ((qVar2 = c1.this.Z) == null || !qVar2.poiid.equals(qVar.poiid) || c1.this.Z.f11089e == null)) {
                    c1 c1Var = c1.this;
                    c1Var.Z = qVar;
                    if (c1Var.W != null) {
                        if (qVar.f11089e == null) {
                            qVar.f11089e = new Point();
                        }
                        DPoint mapGeoCenter = c1.this.W.getMapGeoCenter();
                        if (mapGeoCenter != null) {
                            Point point = c1.this.Z.f11089e;
                            point.x = (int) mapGeoCenter.x;
                            point.y = (int) mapGeoCenter.y;
                        }
                    }
                }
                try {
                    if (c1.this.y != null && c1.this.y.size() > 0) {
                        for (int i4 = 0; i4 < c1.this.y.size(); i4++) {
                            ((AMap.OnIndoorBuildingActiveListener) c1.this.y.get(i4)).OnIndoorBuilding(qVar);
                        }
                    }
                    MapConfig mapConfig3 = c1.this.W;
                    mapConfig3.maxZoomLevel = mapConfig3.isSetLimitZoomLevel() ? c1.this.W.getMaxZoomLevel() : 20.0f;
                    if (c1.this.H.isZoomControlsEnabled() && c1.this.U != null && c1.this.U.size() > 0) {
                        for (int i5 = 0; i5 < c1.this.U.size(); i5++) {
                            ((AMapWidgetListener) c1.this.U.get(i5)).invalidateZoomController(c1.this.W.getSZ());
                        }
                    }
                    if (c1.this.H.isIndoorSwitchEnabled()) {
                        if (!c4VarH.s()) {
                            c1.this.H.setIndoorSwitchEnabled(true);
                        }
                        c1.this.f1.post(new b(c4VarH));
                    } else {
                        if (c1.this.H.isIndoorSwitchEnabled() || !c4VarH.s()) {
                            return;
                        }
                        c1.this.H.setIndoorSwitchEnabled(false);
                    }
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10580a;

        o(boolean z) {
            this.f10580a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLMapEngine gLMapEngine = c1.this.E0;
            if (gLMapEngine != null) {
                gLMapEngine.setOfflineDataEnable(1, this.f10580a);
            }
        }
    }

    private class o0 implements c4.d {
        private o0() {
        }

        @Override // com.amap.api.mapcore.util.c4.d
        public void a(int i) {
            c1 c1Var = c1.this;
            com.amap.api.mapcore.util.q qVar = c1Var.Z;
            if (qVar != null) {
                qVar.activeFloorIndex = qVar.floor_indexs[i];
                qVar.activeFloorName = qVar.floor_names[i];
                try {
                    c1Var.setIndoorBuildingInfo(qVar);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }

        /* synthetic */ o0(c1 c1Var, k kVar) {
            this();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10582a;

        p(boolean z) {
            this.f10582a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1.this.E0.setLabelEnable(1, this.f10582a);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private class p0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f10583a;
        private AMap.OnCacheRemoveListener b;

        public p0(Context context, AMap.OnCacheRemoveListener onCacheRemoveListener) {
            this.f10583a = context;
            this.b = onCacheRemoveListener;
        }

        public boolean equals(Object obj) {
            return obj instanceof p0;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0037  */
        /* JADX WARN: Code duplicated, block: B:21:0x0041  */
        /* JADX WARN: Code duplicated, block: B:24:0x004a A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0002, B:5:0x001b, B:22:0x0042, B:24:0x004a), top: B:52:0x0002 }] */
        @Override // java.lang.Runnable
        public void run() {
            AMap.OnCacheRemoveListener onCacheRemoveListener;
            AMap.OnCacheRemoveListener onCacheRemoveListener2;
            AMap.OnCacheRemoveListener onCacheRemoveListener3;
            boolean z = true;
            try {
                Context applicationContext = this.f10583a.getApplicationContext();
                String strP0 = r3.p0(applicationContext);
                String strY = r3.y(applicationContext);
                File file = new File(strP0);
                boolean z2 = !file.exists() || FileUtil.deleteFile(file);
                if (z2) {
                    try {
                        if (FileUtil.deleteFile(new File(strY))) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        z = !z2 && r3.v0(applicationContext);
                        if (c1.this.M != null) {
                            c1.this.M.p();
                        }
                        if (c1.this.E0 != null && (onCacheRemoveListener3 = this.b) != null) {
                            onCacheRemoveListener3.onRemoveCacheFinish(z);
                        }
                    } catch (Throwable th) {
                        th = th;
                        z = z2;
                        try {
                            r3.J(th);
                            e6.r(th, "AMapDelegateImp", "RemoveCacheRunnable");
                            if (c1.this.E0 != null && (onCacheRemoveListener2 = this.b) != null) {
                                onCacheRemoveListener2.onRemoveCacheFinish(false);
                            }
                        } catch (Throwable th2) {
                            try {
                                if (c1.this.E0 != null && (onCacheRemoveListener = this.b) != null) {
                                    onCacheRemoveListener.onRemoveCacheFinish(z);
                                }
                            } catch (Throwable th3) {
                                th3.printStackTrace();
                            }
                            throw th2;
                        }
                    }
                } else {
                    z2 = false;
                    if (z2) {
                    }
                    if (c1.this.M != null) {
                        c1.this.M.p();
                    }
                    if (c1.this.E0 != null) {
                        onCacheRemoveListener3.onRemoveCacheFinish(z);
                    }
                }
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10584a;

        q(boolean z) {
            this.f10584a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1.this.E0.setRoadArrowEnable(1, this.f10584a);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10585a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        r(boolean z, int i, int i2) {
            this.f10585a = z;
            this.b = i;
            this.c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1.this.E0.setNaviLabelEnable(1, this.f10585a, this.b, this.c);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1 c1Var = c1.this;
                c1Var.E0.setTrafficStyle(1, c1Var.n0.getSmoothColor(), c1.this.n0.getSlowColor(), c1.this.n0.getCongestedColor(), c1.this.n0.getSeriousCongestedColor());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1 c1Var = c1.this;
                c1Var.W.setAnchorX(Math.max(0, Math.min(c1Var.X0, c1.this.I0)));
                c1 c1Var2 = c1.this;
                c1Var2.W.setAnchorY(Math.max(0, Math.min(c1Var2.Y0, c1.this.J0)));
                c1 c1Var3 = c1.this;
                c1Var3.E0.setProjectionCenter(1, c1Var3.W.getAnchorX(), c1.this.W.getAnchorY());
                c1.this.s0 = true;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c1 c1Var = c1.this;
            GLMapEngine gLMapEngine = c1Var.E0;
            if (gLMapEngine != null) {
                com.amap.api.mapcore.util.q qVar = c1Var.Z;
                gLMapEngine.setIndoorBuildingToBeActive(1, qVar.activeFloorName, qVar.activeFloorIndex, qVar.poiid);
            }
        }
    }

    class v extends m0 {
        v() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            c1.this.M(this.f10573f, this.b);
        }
    }

    class w implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10590a;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                w wVar = w.this;
                c1.this.w0 = wVar.f10590a;
                if (c1.this.L != null) {
                    c1.this.L.S(Boolean.TRUE);
                }
            }
        }

        w(int i) {
            this.f10590a = i;
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationEnd() {
            c1.this.f1.post(new a());
        }

        @Override // com.amap.api.maps.model.animation.Animation.AnimationListener
        public void onAnimationStart() {
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c1.this.Z0 != null) {
                c1.this.Z0.a(c1.this.A1);
            }
        }
    }

    class y extends m0 {
        y() {
            super(null);
        }

        @Override // com.amap.api.mapcore.util.c1.m0, java.lang.Runnable
        public void run() {
            super.run();
            c1.this.L(this.f10573f, this.c, this.f10571d, this.f10572e);
        }
    }

    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c1 c1Var = c1.this;
                c1Var.destroySurface(c1Var.R);
            } catch (Throwable th) {
                th.printStackTrace();
                r3.J(th);
            }
        }
    }

    public c1(IGLSurfaceView iGLSurfaceView, Context context, AttributeSet attributeSet) {
        this(iGLSurfaceView, context, attributeSet, false);
    }

    private boolean B(int i2, int i3) {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            return gLMapEngine.getSrvViewStateBoolValue(i2, i3);
        }
        return false;
    }

    private void B0() {
        try {
            LatLngBounds limitLatLngBounds = this.W.getLimitLatLngBounds();
            if (this.E0 != null && F(limitLatLngBounds)) {
                GLMapState gLMapState = new GLMapState(1, this.E0.getNativeInstance());
                IPoint iPointObtain = IPoint.obtain();
                LatLng latLng = limitLatLngBounds.northeast;
                GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
                IPoint iPointObtain2 = IPoint.obtain();
                LatLng latLng2 = limitLatLngBounds.southwest;
                GLMapState.lonlat2Geo(latLng2.longitude, latLng2.latitude, iPointObtain2);
                this.W.setLimitIPoints(new IPoint[]{iPointObtain, iPointObtain2});
                gLMapState.recycle();
                return;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.W.setLimitIPoints(null);
    }

    private void D0() {
        u(this.z);
        u(this.o);
        u(this.p);
        u(this.q);
        u(this.r);
        u(this.s);
        u(this.t);
        u(this.u);
        u(this.v);
        u(this.w);
        u(this.x);
        u(this.y);
        u(this.A);
        u(this.B);
        u(this.U);
        this.m = null;
        this.f10544a = null;
        this.b = null;
        this.c = null;
        this.f10545d = null;
        this.f10546e = null;
        this.f10547f = null;
        this.f10548g = null;
        this.f10549h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
    }

    private boolean F(LatLngBounds latLngBounds) {
        return (latLngBounds == null || latLngBounds.northeast == null || latLngBounds.southwest == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Poi H(int i2, int i3, int i4) {
        if (!this.R0) {
            return null;
        }
        try {
            ArrayList<MapLabelItem> arrayListF = f(1, i2, i3, i4);
            MapLabelItem mapLabelItem = (arrayListF == null || arrayListF.size() <= 0) ? null : arrayListF.get(0);
            if (mapLabelItem != null) {
                DPoint dPointPixelsToLatLong = VirtualEarthProjection.pixelsToLatLong(mapLabelItem.pixel20X, mapLabelItem.pixel20Y, 20);
                Poi poi = new Poi(mapLabelItem.name, new LatLng(dPointPixelsToLatLong.y, dPointPixelsToLatLong.x, false), mapLabelItem.poiid);
                dPointPixelsToLatLong.recycle();
                return poi;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private void N(MotionEvent motionEvent) {
        queueEvent(new l0(motionEvent));
    }

    private <T> void P(List<T> list, T t2) {
        if (list == null || t2 == null) {
            return;
        }
        try {
            if (list.contains(t2)) {
                list.remove(t2);
            }
        } catch (Throwable unused) {
        }
    }

    private void Q(boolean z2) {
        s8 s8Var = this.t1;
        if (s8Var != null) {
            Object objA = s8Var.a("getAbroadEnable");
            if (objA != null && (objA instanceof Boolean)) {
                MapConfig mapConfig = this.W;
                if (mapConfig != null) {
                    mapConfig.setAbroadEnable(z2 && ((Boolean) objA).booleanValue());
                }
                if (z2 && ((Boolean) objA).booleanValue()) {
                    MapsInitializer.setSupportRecycleView(false);
                }
            }
            Object objA2 = this.t1.a("getLogoEnable");
            if (objA2 != null && (objA2 instanceof Boolean)) {
                this.L.t(((Boolean) objA2).booleanValue());
            }
            Object objA3 = this.t1.a("getMapZindex");
            if (objA2 == null || !(objA2 instanceof Integer)) {
                return;
            }
            this.t0 = ((Integer) objA3).intValue();
        }
    }

    private boolean S(CameraPosition cameraPosition) {
        if (cameraPosition.zoom < 6.0f) {
            return false;
        }
        if (cameraPosition.isAbroad) {
            return true;
        }
        MapConfig mapConfig = this.W;
        if (mapConfig == null) {
            return false;
        }
        try {
            return !k3.c(mapConfig.getGeoRectangle().getClipRect());
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(MotionEvent motionEvent) {
        this.f1.post(new a(motionEvent));
    }

    private boolean c0(MotionEvent motionEvent) {
        try {
            List<AMap.OnPolylineClickListener> list = this.p;
            if (list != null && list.size() > 0) {
                DPoint dPointObtain = DPoint.obtain();
                getPixel2LatLng((int) motionEvent.getX(), (int) motionEvent.getY(), dPointObtain);
                LatLng latLng = new LatLng(dPointObtain.y, dPointObtain.x);
                dPointObtain.recycle();
                IOverlayDelegate iOverlayDelegateI = this.P.i(latLng);
                if (iOverlayDelegateI != null) {
                    Iterator<AMap.OnPolylineClickListener> it = this.p.iterator();
                    while (it.hasNext()) {
                        it.next().onPolylineClick(new Polyline((IPolylineDelegate) iOverlayDelegateI));
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private void e0() {
        GLMapState gLMapState;
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine == null || (gLMapState = (GLMapState) gLMapEngine.getNewMapState(1)) == null) {
            return;
        }
        IPoint iPointObtain = IPoint.obtain();
        gLMapState.recalculate();
        gLMapState.getMapGeoCenter(iPointObtain);
        this.W.setSX(((Point) iPointObtain).x);
        this.W.setSY(((Point) iPointObtain).y);
        this.W.setSZ(gLMapState.getMapZoomer());
        this.W.setSC(gLMapState.getCameraDegree());
        this.W.setSR(gLMapState.getMapAngle());
        gLMapState.recycle();
        iPointObtain.recycle();
    }

    private boolean g0(MotionEvent motionEvent) throws RemoteException {
        LatLng realPosition;
        if (this.O.t(motionEvent)) {
            BaseOverlayImp baseOverlayImpX = this.O.x();
            boolean z2 = true;
            if (baseOverlayImpX == null) {
                return true;
            }
            try {
                Marker marker = new Marker((w1) baseOverlayImpX);
                this.O.m((w1) baseOverlayImpX);
                List<AMap.OnMarkerClickListener> list = this.o;
                if (list != null && list.size() > 0) {
                    if (this.o.size() == 1) {
                        boolean zOnMarkerClick = this.o.get(0).onMarkerClick(marker);
                        if (!zOnMarkerClick && this.O.B() > 0) {
                            z2 = zOnMarkerClick;
                        }
                        return true;
                    }
                    Iterator<AMap.OnMarkerClickListener> it = this.o.iterator();
                    boolean zOnMarkerClick2 = false;
                    while (it.hasNext()) {
                        zOnMarkerClick2 |= it.next().onMarkerClick(marker);
                    }
                    if (!zOnMarkerClick2 && this.O.B() > 0) {
                        z2 = zOnMarkerClick2;
                    }
                    return true;
                }
                showInfoWindow((w1) baseOverlayImpX);
                if (!baseOverlayImpX.isViewMode() && (realPosition = baseOverlayImpX.getRealPosition()) != null) {
                    IPoint iPointObtain = IPoint.obtain();
                    latlon2Geo(realPosition.latitude, realPosition.longitude, iPointObtain);
                    moveCamera(com.amap.api.mapcore.util.h.e(iPointObtain));
                }
                return z2;
            } catch (Throwable th) {
                e6.r(th, "AMapDelegateImp", "onMarkerTap");
                th.printStackTrace();
            }
        }
        return false;
    }

    private LatLng h0() {
        MapConfig mapConfig = this.W;
        if (mapConfig == null) {
            return null;
        }
        DPoint dPointPixelsToLatLong = VirtualEarthProjection.pixelsToLatLong(mapConfig.getSX(), this.W.getSY(), 20);
        LatLng latLng = new LatLng(dPointPixelsToLatLong.y, dPointPixelsToLatLong.x, false);
        dPointPixelsToLatLong.recycle();
        return latLng;
    }

    private void k(int i2, GL10 gl10) {
        int i3 = this.x0;
        if (i3 != -1) {
            this.F0.setRenderFps(i3);
            resetRenderTime();
        } else if (this.E0.isInMapAction(i2) || this.O0) {
            this.F0.setRenderFps(40.0f);
        } else if (this.E0.isInMapAnimation(i2)) {
            this.F0.setRenderFps(30.0f);
            this.F0.resetTickCount(15);
        } else {
            this.F0.setRenderFps(15.0f);
        }
        if (this.W.isWorldMapEnable() != MapsInitializer.isLoadWorldGridMap()) {
            x(true);
            this.W.setWorldMapEnable(MapsInitializer.isLoadWorldGridMap());
        }
    }

    private boolean k0(MotionEvent motionEvent) {
        if (this.c1 == null) {
            return false;
        }
        IPoint iPointObtain = IPoint.obtain();
        if (this.E0 != null) {
            getPixel2Geo((int) motionEvent.getX(), (int) motionEvent.getY(), iPointObtain);
        }
        boolean zG = this.c1.g(iPointObtain);
        iPointObtain.recycle();
        return zG;
    }

    private void m(MotionEvent motionEvent) throws RemoteException {
        if (!this.c0 || this.d0 == null || this.e0 == null) {
            return;
        }
        int x2 = (int) motionEvent.getX();
        int y2 = (int) (motionEvent.getY() - 60.0f);
        LatLng realPosition = this.e0.getRealPosition();
        if (realPosition != null) {
            LatLng position = this.e0.getPosition();
            DPoint dPointObtain = DPoint.obtain();
            getPixel2LatLng(x2, y2, dPointObtain);
            LatLng latLng = new LatLng((position.latitude + dPointObtain.y) - realPosition.latitude, (position.longitude + dPointObtain.x) - realPosition.longitude);
            dPointObtain.recycle();
            this.d0.setPosition(latLng);
            try {
                List<AMap.OnMarkerDragListener> list = this.q;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i2 = 0; i2 < this.q.size(); i2++) {
                    this.q.get(i2).onMarkerDrag(this.d0);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private synchronized void m0() {
        synchronized (this.y0) {
            int size = this.y0.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.y0.get(i2).t().recycle();
            }
            this.y0.clear();
        }
    }

    private boolean o0(MotionEvent motionEvent) throws RemoteException {
        try {
            com.amap.api.mapcore.util.s sVar = this.D;
            if (sVar != null && sVar.m(motionEvent)) {
                List<AMap.OnInfoWindowClickListener> list = this.x;
                if (list != null && list.size() > 0) {
                    BaseOverlayImp baseOverlayImpX = this.O.x();
                    if (!baseOverlayImpX.isVisible() && baseOverlayImpX.isInfoWindowEnable()) {
                        return true;
                    }
                    Marker marker = new Marker((w1) baseOverlayImpX);
                    for (int i2 = 0; i2 < this.x.size(); i2++) {
                        this.x.get(i2).onInfoWindowClick(marker);
                    }
                }
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private void p0() {
        try {
            this.W.setMapRect(r3.a0(this, true));
            GLMapState gLMapState = (GLMapState) this.E0.getNewMapState(1);
            if (gLMapState != null) {
                gLMapState.recalculate();
                gLMapState.getPixel20Bound(this.y1, getMapWidth(), getMapHeight());
                this.W.getGeoRectangle().updateRect(this.y1, (int) this.W.getSX(), (int) this.W.getSY());
                this.W.setMapPerPixelUnitLength(gLMapState.getGLUnitWithWin(1));
                gLMapState.recycle();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(CameraPosition cameraPosition) {
        if (!this.W.getMapLanguage().equals(AMap.ENGLISH)) {
            if (this.k0) {
                return;
            }
            this.k0 = true;
            M(1, true);
            return;
        }
        boolean zS = S(cameraPosition);
        if (zS != this.k0) {
            this.k0 = zS;
            M(1, zS);
        }
    }

    private void q0(int i2) {
        if (this.R0) {
            this.G0.b();
            this.H0 = true;
            this.O0 = true;
            try {
                stopAnimation();
            } catch (RemoteException unused) {
            }
            queueEvent(new j0(i2));
        }
    }

    private void r(AbstractCameraUpdateMessage abstractCameraUpdateMessage) {
        boolean z2 = this.X;
        abstractCameraUpdateMessage.isUseAnchor = z2;
        if (z2) {
            abstractCameraUpdateMessage.anchorX = this.W.getAnchorX();
            abstractCameraUpdateMessage.anchorY = this.W.getAnchorY();
        }
        if (abstractCameraUpdateMessage.width == 0) {
            abstractCameraUpdateMessage.width = getMapWidth();
        }
        if (abstractCameraUpdateMessage.height == 0) {
            abstractCameraUpdateMessage.height = getMapHeight();
        }
        abstractCameraUpdateMessage.mapConfig = this.W;
    }

    private void t0() {
        if (!this.Y) {
            this.f1.sendEmptyMessage(16);
            this.Y = true;
            x(true);
        }
        long j2 = this.z1;
        if (j2 < 2) {
            this.z1 = j2 + 1;
            return;
        }
        z3 z3VarD = this.L.D();
        if (z3VarD == null || z3VarD.getVisibility() == 8) {
            return;
        }
        p3.d(this.C0, System.currentTimeMillis() - this.e1);
        this.f1.post(new c(z3VarD));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void u(List<T> list) {
        if (list != null) {
            try {
                list.clear();
            } catch (Throwable unused) {
            }
        }
    }

    private void u0(int i2) {
        this.H0 = true;
        this.O0 = false;
        if (this.g0) {
            this.g0 = false;
        }
        if (this.f0) {
            this.f0 = false;
        }
        if (this.h0) {
            this.h0 = false;
        }
        this.c0 = false;
        List<AMap.OnMarkerDragListener> list = this.q;
        if (list != null && list.size() > 0 && this.d0 != null) {
            for (int i3 = 0; i3 < this.q.size(); i3++) {
                try {
                    this.q.get(i3).onMarkerDragEnd(this.d0);
                } catch (Throwable th) {
                    e6.r(th, "AMapDelegateImp", "OnMarkerDragListener.onMarkerDragEnd");
                    th.printStackTrace();
                }
            }
            this.d0 = null;
        }
        this.K.postDelayed(new k0(), 300L);
    }

    private <T> void v(List<T> list, T t2) {
        if (list == null || t2 == null) {
            return;
        }
        try {
            if (list.contains(t2)) {
                return;
            }
            list.add(t2);
        } catch (Throwable unused) {
        }
    }

    private void v0() {
        if (this.q0) {
            return;
        }
        try {
            this.o0.setName("AuthThread");
            this.o0.start();
            this.q0 = true;
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
        }
    }

    private void w(GL10 gl10) {
        if (this.j0) {
            boolean zCanStopMapRender = this.E0.canStopMapRender(1);
            Message messageObtainMessage = this.f1.obtainMessage(15, r3.n(0, 0, getMapWidth(), getMapHeight()));
            messageObtainMessage.arg1 = zCanStopMapRender ? 1 : 0;
            messageObtainMessage.sendToTarget();
            this.j0 = false;
        }
    }

    private void w0(int i2) {
    }

    private void z0() {
        if (this.r0) {
            return;
        }
        try {
            if (this.p0 == null) {
                this.p0 = new b7(this.C0, this);
            }
            this.p0.setName("AuthProThread");
            this.p0.start();
            this.r0 = true;
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
        }
    }

    protected void A(StyleItem[] styleItemArr, boolean z2) {
        if (!(z2 || (styleItemArr != null && styleItemArr.length > 0))) {
            p3.g(this.C0, false);
        } else {
            i(1, 0, 0, 0, true, true, styleItemArr);
            p3.g(this.C0, true);
        }
    }

    public boolean C(int i2, int i3, int i4) {
        AbstractCameraUpdateMessage abstractCameraUpdateMessageD;
        if (!this.R0 || ((int) b(i2)) >= this.W.getMaxZoomLevel()) {
            return false;
        }
        try {
            if (this.X || this.H.isZoomInByScreenCenter()) {
                abstractCameraUpdateMessageD = com.amap.api.mapcore.util.h.d(1.0f, null);
            } else {
                Point point = this.x1;
                point.x = i3;
                point.y = i4;
                abstractCameraUpdateMessageD = com.amap.api.mapcore.util.h.d(1.0f, point);
            }
            animateCamera(abstractCameraUpdateMessageD);
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "onDoubleTap");
            th.printStackTrace();
        }
        resetRenderTime();
        return true;
    }

    public void J() {
        GLMapRender gLMapRender = this.F0;
        if (gLMapRender != null) {
            gLMapRender.resetTickCount(2);
        }
    }

    public void K(int i2) {
        queueEvent(new d(i2));
    }

    public synchronized void L(int i2, int i3, int i4, int i5) {
        i(i2, i3, i4, i5, false, false, null);
    }

    public void M(int i2, boolean z2) {
        if (this.R0 && this.S0) {
            resetRenderTime();
            queueEvent(new h(z2, i2));
        } else {
            m0 m0Var = this.o1;
            m0Var.b = z2;
            m0Var.f10570a = true;
            m0Var.f10573f = i2;
        }
    }

    public void O(AMapWidgetListener aMapWidgetListener) throws RemoteException {
        P(this.U, aMapWidgetListener);
    }

    public void U() {
        GLMapRender gLMapRender;
        if (!this.R0 || (gLMapRender = this.F0) == null || gLMapRender.isRenderPause()) {
            return;
        }
        requestRender();
    }

    public void V(int i2) {
        GLMapRender gLMapRender = this.F0;
        if (gLMapRender != null) {
            gLMapRender.renderPause();
        }
        j0(i2);
    }

    public void W(int i2, boolean z2) {
        if (this.R0 && this.S0) {
            resetRenderTime();
            queueEvent(new i(z2, i2));
        } else {
            m0 m0Var = this.r1;
            m0Var.b = z2;
            m0Var.f10570a = true;
            m0Var.f10573f = i2;
        }
    }

    @Override // com.amap.api.mapcore.util.b0.a
    public void a(byte[] bArr) {
        s8 s8Var = this.t1;
        if (s8Var != null) {
            s8Var.d("onAbroadStyleComplete", bArr);
        }
    }

    protected void a0() {
        AMapNativeRenderer.nativeDrawLineInit();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void accelerateNetworkInChinese(boolean z2) {
        s8 s8Var = this.t1;
        if (s8Var != null) {
            s8Var.d("accelerateNetworkInChinese", Boolean.valueOf(z2));
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Arc addArc(ArcOptions arcOptions) throws RemoteException {
        try {
            resetRenderTime();
            IArcDelegate iArcDelegateE = this.P.e(arcOptions);
            if (iArcDelegateE != null) {
                return new Arc(iArcDelegateE);
            }
            return null;
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public BuildingOverlay addBuildingOverlay() {
        try {
            IBuildingDelegate iBuildingDelegateB = this.P.b();
            p3.o(this.C0);
            if (iBuildingDelegateB != null) {
                return new BuildingOverlay(iBuildingDelegateB);
            }
            return null;
        } catch (RemoteException e2) {
            r3.J(e2);
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Circle addCircle(CircleOptions circleOptions) throws RemoteException {
        try {
            resetRenderTime();
            ICircleDelegate iCircleDelegateF = this.P.f(circleOptions);
            if (iCircleDelegateF != null) {
                return new Circle(iCircleDelegateF);
            }
            return null;
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public CrossOverlay addCrossVector(CrossOverlayOptions crossOverlayOptions) {
        if (crossOverlayOptions == null || crossOverlayOptions.getRes() == null) {
            return null;
        }
        CrossVectorOverlay crossVectorOverlay = new CrossVectorOverlay(1, getContext(), this);
        if (crossOverlayOptions != null) {
            crossVectorOverlay.setAttribute(crossOverlayOptions.getAttribute());
        }
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            gLMapEngine.getOverlayBundle(1).addOverlay(crossVectorOverlay);
            crossVectorOverlay.resumeMarker(crossOverlayOptions.getRes());
        }
        return new CrossOverlay(crossOverlayOptions, crossVectorOverlay);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public GL3DModel addGLModel(GL3DModelOptions gL3DModelOptions) {
        return this.T.a(gL3DModelOptions);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void addGestureMapMessage(int i2, AbstractGestureMapMessage abstractGestureMapMessage) {
        if (!this.R0 || this.E0 == null) {
            return;
        }
        try {
            abstractGestureMapMessage.isUseAnchor = this.X;
            abstractGestureMapMessage.anchorX = this.W.getAnchorX();
            abstractGestureMapMessage.anchorY = this.W.getAnchorY();
            this.E0.addGestureMessage(i2, abstractGestureMapMessage, this.H.isGestureScaleByMapCenter(), this.W.getAnchorX(), this.W.getAnchorY());
        } catch (RemoteException unused) {
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public GroundOverlay addGroundOverlay(GroundOverlayOptions groundOverlayOptions) throws RemoteException {
        try {
            resetRenderTime();
            IGroundOverlayDelegate iGroundOverlayDelegateG = this.P.g(groundOverlayOptions);
            if (iGroundOverlayDelegateG != null) {
                return new GroundOverlay(iGroundOverlayDelegateG);
            }
            return null;
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public HeatMapLayer addHeatMapLayer(HeatMapLayerOptions heatMapLayerOptions) throws RemoteException {
        try {
            resetRenderTime();
            IHeatMapLayer iHeatMapLayerD = this.P.d(heatMapLayerOptions);
            if (iHeatMapLayerD != null) {
                return new HeatMapLayer(iHeatMapLayerD);
            }
            return null;
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Marker addMarker(MarkerOptions markerOptions) throws RemoteException {
        try {
            resetRenderTime();
            return this.O.a(markerOptions);
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public ArrayList<Marker> addMarkers(ArrayList<MarkerOptions> arrayList, boolean z2) throws RemoteException {
        try {
            resetRenderTime();
            return this.O.e(arrayList, z2);
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public MultiPointOverlay addMultiPointOverlay(MultiPointOverlayOptions multiPointOverlayOptions) throws RemoteException {
        try {
            resetRenderTime();
            IMultiPointOverlay iMultiPointOverlayB = this.c1.b(multiPointOverlayOptions);
            if (iMultiPointOverlayB != null) {
                return new MultiPointOverlay(iMultiPointOverlayB);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public RouteOverlay addNaviRouteOverlay() {
        return null;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public NavigateArrow addNavigateArrow(NavigateArrowOptions navigateArrowOptions) throws RemoteException {
        try {
            resetRenderTime();
            INavigateArrowDelegate iNavigateArrowDelegateH = this.P.h(navigateArrowOptions);
            if (iNavigateArrowDelegateH != null) {
                return new NavigateArrow(iNavigateArrowDelegateH);
            }
            return null;
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnCameraChangeListener(AMap.OnCameraChangeListener onCameraChangeListener) throws RemoteException {
        v(this.s, onCameraChangeListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnIndoorBuildingActiveListener(AMap.OnIndoorBuildingActiveListener onIndoorBuildingActiveListener) throws RemoteException {
        v(this.y, onIndoorBuildingActiveListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnInfoWindowClickListener(AMap.OnInfoWindowClickListener onInfoWindowClickListener) throws RemoteException {
        v(this.x, onInfoWindowClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnMapClickListener(AMap.OnMapClickListener onMapClickListener) throws RemoteException {
        v(this.t, onMapClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnMapLoadedListener(AMap.OnMapLoadedListener onMapLoadedListener) {
        v(this.r, onMapLoadedListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnMapLongClickListener(AMap.OnMapLongClickListener onMapLongClickListener) throws RemoteException {
        v(this.w, onMapLongClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnMapTouchListener(AMap.OnMapTouchListener onMapTouchListener) throws RemoteException {
        v(this.u, onMapTouchListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnMarkerClickListener(AMap.OnMarkerClickListener onMarkerClickListener) throws RemoteException {
        v(this.o, onMarkerClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnMarkerDragListener(AMap.OnMarkerDragListener onMarkerDragListener) {
        v(this.q, onMarkerDragListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnMyLocationChangeListener(AMap.OnMyLocationChangeListener onMyLocationChangeListener) throws RemoteException {
        v(this.z, onMyLocationChangeListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnPOIClickListener(AMap.OnPOIClickListener onPOIClickListener) throws RemoteException {
        v(this.v, onPOIClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void addOnPolylineClickListener(AMap.OnPolylineClickListener onPolylineClickListener) throws RemoteException {
        v(this.p, onPolylineClickListener);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void addOverlayTexture(int i2, GLTextureProperty gLTextureProperty) {
        GLOverlayBundle overlayBundle;
        try {
            GLMapEngine gLMapEngine = this.E0;
            if (gLMapEngine != null && (overlayBundle = gLMapEngine.getOverlayBundle(i2)) != null && gLTextureProperty != null && gLTextureProperty.mBitmap != null) {
                this.E0.addOverlayTexture(i2, gLTextureProperty);
                overlayBundle.addOverlayTextureItem(gLTextureProperty.mId, gLTextureProperty.mAnchor, gLTextureProperty.mXRatio, gLTextureProperty.mYRatio, gLTextureProperty.mBitmap.getWidth(), gLTextureProperty.mBitmap.getHeight());
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public ParticleOverlay addParticleOverlay(ParticleOverlayOptions particleOverlayOptions) {
        try {
            IParticleLatyer iParticleLatyerC = this.P.c(particleOverlayOptions);
            if (iParticleLatyerC == null) {
                return null;
            }
            p3.j(this.C0);
            return new ParticleOverlay(iParticleLatyerC);
        } catch (RemoteException e2) {
            r3.J(e2);
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Polygon addPolygon(PolygonOptions polygonOptions) throws RemoteException {
        try {
            resetRenderTime();
            IPolygonDelegate iPolygonDelegateJ = this.P.j(polygonOptions);
            if (iPolygonDelegateJ != null) {
                return new Polygon(iPolygonDelegateJ);
            }
            return null;
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Polyline addPolyline(PolylineOptions polylineOptions) throws RemoteException {
        try {
            resetRenderTime();
            IPolylineDelegate iPolylineDelegateK = this.P.k(polylineOptions);
            if (iPolylineDelegateK != null) {
                return new Polyline(iPolylineDelegateK);
            }
            return null;
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Text addText(TextOptions textOptions) throws RemoteException {
        try {
            resetRenderTime();
            return this.O.b(textOptions);
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void addTextureItem(ha haVar) {
        if (haVar == null || haVar.u() == 0) {
            return;
        }
        synchronized (this.y0) {
            this.y0.add(haVar);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public TileOverlay addTileOverlay(TileOverlayOptions tileOverlayOptions) throws RemoteException {
        try {
            synchronized (this.N) {
                if (this.M == null) {
                    this.M = new ab(this.C0, this);
                }
            }
            if (this.M == null) {
                return null;
            }
            TileProvider tileProvider = tileOverlayOptions.getTileProvider();
            if (tileProvider != null && (tileProvider instanceof HeatmapTileProvider)) {
                p3.c(this.C0);
            }
            return this.M.a(tileOverlayOptions);
        } catch (Throwable th) {
            r3.J(th);
            return null;
        }
    }

    @Override // com.autonavi.base.amap.mapcore.interfaces.IAMapListener
    public void afterAnimation() {
        redrawInfoWindow();
    }

    @Override // com.autonavi.base.amap.mapcore.interfaces.IAMapListener
    public void afterDrawFrame(int i2, GLMapState gLMapState) {
        float mapZoomer = gLMapState.getMapZoomer();
        GLMapEngine gLMapEngine = this.E0;
        if (!(gLMapEngine != null && (gLMapEngine.isInMapAction(i2) || this.E0.isInMapAnimation(i2)))) {
            int i3 = this.x0;
            if (i3 != -1) {
                this.F0.setRenderFps(i3);
            } else {
                this.F0.setRenderFps(15.0f);
            }
            if (this.Q0 == 1) {
                this.Q0 = 0;
            }
            if (this.K0 != mapZoomer) {
                this.K0 = mapZoomer;
            }
        }
        if (this.U0) {
            return;
        }
        this.U0 = true;
    }

    @Override // com.autonavi.base.amap.mapcore.interfaces.IAMapListener
    public void afterDrawLabel(int i2, GLMapState gLMapState) {
        g();
        s8 s8Var = this.t1;
        if (s8Var != null) {
            s8Var.c(gLMapState, this.W);
        }
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            gLMapEngine.pushRendererState();
        }
        ab abVar = this.M;
        if (abVar != null) {
            abVar.g();
        }
        this.P.r(false, this.t0);
        com.amap.api.mapcore.util.z zVar = this.c1;
        if (zVar != null) {
            zVar.f(this.W, getViewMatrix(), getProjectionMatrix());
        }
        z9 z9Var = this.T;
        if (z9Var != null) {
            z9Var.b();
        }
        com.amap.api.mapcore.util.u uVar = this.O;
        if (uVar != null) {
            uVar.n(false);
        }
        d2 d2Var = this.E;
        if (d2Var != null) {
            d2Var.k(getMapWidth(), getMapHeight());
        }
        GLMapEngine gLMapEngine2 = this.E0;
        if (gLMapEngine2 != null) {
            gLMapEngine2.popRendererState();
        }
    }

    @Override // com.autonavi.base.amap.mapcore.interfaces.IAMapListener
    public void afterRendererOver(int i2, GLMapState gLMapState) {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            gLMapEngine.pushRendererState();
        }
        com.amap.api.mapcore.util.u uVar = this.O;
        if (uVar != null) {
            uVar.n(true);
        }
        GLMapEngine gLMapEngine2 = this.E0;
        if (gLMapEngine2 != null) {
            gLMapEngine2.popRendererState();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void animateCamera(CameraUpdate cameraUpdate) throws RemoteException {
        if (cameraUpdate == null) {
            return;
        }
        animateCamera(cameraUpdate.getCameraUpdateFactoryDelegate());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void animateCameraWithCallback(CameraUpdate cameraUpdate, AMap.CancelableCallback cancelableCallback) throws RemoteException {
        if (cameraUpdate == null) {
            return;
        }
        animateCameraWithDurationAndCallback(cameraUpdate, 250L, cancelableCallback);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void animateCameraWithDurationAndCallback(CameraUpdate cameraUpdate, long j2, AMap.CancelableCallback cancelableCallback) {
        if (cameraUpdate == null) {
            return;
        }
        animateCameraWithDurationAndCallback(cameraUpdate.getCameraUpdateFactoryDelegate(), j2, cancelableCallback);
    }

    public float b(int i2) {
        return this.W != null ? getMapConfig().getSZ() : BitmapDescriptorFactory.HUE_RED;
    }

    public void b0(int i2) {
        j0(i2);
        GLMapRender gLMapRender = this.F0;
        if (gLMapRender != null) {
            gLMapRender.renderResume();
        }
    }

    @Override // com.autonavi.base.amap.mapcore.interfaces.IAMapListener
    public void beforeDrawLabel(int i2, GLMapState gLMapState) {
        g();
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            gLMapEngine.pushRendererState();
        }
        this.P.r(true, this.t0);
        GLMapEngine gLMapEngine2 = this.E0;
        if (gLMapEngine2 != null) {
            gLMapEngine2.popRendererState();
        }
    }

    public int c(int i2, Rect rect, int i3, int i4) {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine == null || i2 < 0 || rect == null) {
            return 0;
        }
        int engineIDWithType = gLMapEngine.getEngineIDWithType(i2);
        if (this.E0.isEngineCreated(engineIDWithType)) {
            h(engineIDWithType, rect.left, rect.top, rect.width(), rect.height(), i3, i4);
            return engineIDWithType;
        }
        int i5 = this.C0.getResources().getDisplayMetrics().densityDpi;
        float f2 = this.C0.getResources().getDisplayMetrics().density;
        this.L0 = GLMapState.calMapZoomScalefactor(i3, i4, i5);
        GLMapEngine.MapViewInitParam mapViewInitParam = new GLMapEngine.MapViewInitParam();
        mapViewInitParam.engineId = engineIDWithType;
        mapViewInitParam.x = rect.left;
        mapViewInitParam.y = rect.top;
        mapViewInitParam.width = rect.width();
        mapViewInitParam.height = rect.height();
        mapViewInitParam.screenWidth = i3;
        mapViewInitParam.screenHeight = i4;
        mapViewInitParam.screenScale = f2;
        mapViewInitParam.textScale = this.M0 * f2;
        mapViewInitParam.mapZoomScale = this.L0;
        this.E0.createAMapEngineWithFrame(mapViewInitParam);
        GLMapState mapState = this.E0.getMapState(engineIDWithType);
        mapState.setMapZoomer(this.W.getSZ());
        mapState.setCameraDegree(this.W.getSC());
        mapState.setMapAngle(this.W.getSR());
        mapState.setMapGeoCenter(this.W.getSX(), this.W.getSY());
        this.E0.setMapState(engineIDWithType, mapState);
        this.E0.setOvelayBundle(engineIDWithType, new GLOverlayBundle<>(engineIDWithType, this));
        return engineIDWithType;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Pair<Float, LatLng> calculateZoomToSpanLevel(int i2, int i3, int i4, int i5, LatLng latLng, LatLng latLng2) {
        if (latLng != null && latLng2 != null && i2 == i3 && i3 == i4 && i4 == i5 && latLng.latitude == latLng2.latitude && latLng.longitude == latLng2.longitude) {
            return new Pair<>(Float.valueOf(getMaxZoomLevel()), latLng);
        }
        MapConfig mapConfig = getMapConfig();
        if (latLng == null || latLng2 == null || !this.R0 || this.S) {
            DPoint dPointObtain = DPoint.obtain();
            GLMapState.geo2LonLat((int) mapConfig.getSX(), (int) mapConfig.getSY(), dPointObtain);
            Pair<Float, LatLng> pair = new Pair<>(Float.valueOf(mapConfig.getSZ()), new LatLng(dPointObtain.y, dPointObtain.x));
            dPointObtain.recycle();
            return pair;
        }
        LatLngBounds.Builder builder = new LatLngBounds.Builder();
        builder.include(latLng);
        builder.include(latLng2);
        GLMapState gLMapState = new GLMapState(1, this.E0.getNativeInstance());
        Pair<Float, IPoint> pairT = r3.t(mapConfig, i2, i3, i4, i5, builder.build(), getMapWidth(), getMapHeight());
        gLMapState.recycle();
        if (pairT == null) {
            return null;
        }
        DPoint dPointObtain2 = DPoint.obtain();
        Object obj = pairT.second;
        GLMapState.geo2LonLat(((Point) ((IPoint) obj)).x, ((Point) ((IPoint) obj)).y, dPointObtain2);
        Pair<Float, LatLng> pair2 = new Pair<>(pairT.first, new LatLng(dPointObtain2.y, dPointObtain2.x));
        dPointObtain2.recycle();
        return pair2;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean canShowIndoorSwitch() {
        com.amap.api.mapcore.util.q qVar;
        if (getZoomLevel() < 17 || (qVar = this.Z) == null || qVar.f11089e == null) {
            return false;
        }
        FPoint fPointObtain = FPoint.obtain();
        Point point = this.Z.f11089e;
        j(point.x, point.y, fPointObtain);
        return this.l0.contains((int) ((PointF) fPointObtain).x, (int) ((PointF) fPointObtain).y);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public boolean canStopMapRender() {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            gLMapEngine.canStopMapRender(1);
        }
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void changeGLOverlayIndex() {
        this.P.y();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void changeLogoIconStyle(String str, boolean z2, int i2) {
        e4 e4Var = this.L;
        if (e4Var != null) {
            e4Var.s(str, Boolean.valueOf(z2), Integer.valueOf(i2));
        }
        com.amap.api.mapcore.util.c cVar = this.H;
        if (cVar != null) {
            cVar.requestRefreshLogo();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void changeMapLogo(int i2, boolean z2) {
        if (this.S) {
            return;
        }
        try {
            List<AMapWidgetListener> list = this.U;
            if (list == null || list.size() <= 0) {
                return;
            }
            this.L.M(Boolean.valueOf(!z2));
        } catch (Throwable unused) {
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void changeSize(int i2, int i3) {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            this.I0 = i2;
            this.J0 = i3;
            mapConfig.setMapWidth(i2);
            this.W.setMapHeight(i3);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void changeSurface(int i2, GL10 gl10, int i3, int i4) {
        WindowManager windowManager;
        this.U0 = false;
        if (!this.R0) {
            createSurface(i2, gl10, null);
        }
        aa aaVar = this.G0;
        if (aaVar != null && this.C0 != null && ((this.I0 != aaVar.g() || this.J0 != this.G0.j()) && (windowManager = (WindowManager) this.C0.getSystemService("window")) != null)) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (defaultDisplay != null) {
                defaultDisplay.getRealMetrics(displayMetrics);
                this.G0.c(displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
        }
        this.I0 = i3;
        this.J0 = i4;
        this.s0 = true;
        this.l0 = new Rect(0, 0, i3, i4);
        this.R = c(i2, new Rect(0, 0, this.I0, this.J0), this.I0, this.J0);
        if (!this.S0) {
            MapConfig mapConfig = this.W;
            if (mapConfig != null) {
                mapConfig.setMapZoomScale(this.L0);
                this.W.setMapWidth(i3);
                this.W.setMapHeight(i4);
            }
            this.E0.setIndoorEnable(this.R, false);
            this.E0.setSimple3DEnable(this.R, false);
            this.E0.initNativeTexture(this.R);
            this.E0.setMapOpenLayer("{\"bounds\" : [{\"x2\" : 235405312,\"x1\" : 188874751,\"y2\" : 85065727,\"y1\" : 122421247}],\"sublyr\" : [{\"type\" : 4,\"sid\" : 9000006,\"zlevel\" : 2}],\"id\" : 9006,\"minzoom\" : 6,\"update_period\" : 90,\"maxzoom\" : 20,\"cachemode\" : 2,\"url\" : \"http://mpsapi.amap.com//ws/mps/lyrdata/ugc/\"}");
        }
        a5 a5Var = this.D0;
        if (a5Var != null) {
            a5Var.b(new ga(153));
        }
        synchronized (this) {
            this.S0 = true;
        }
        if (this.X) {
            this.W.setAnchorX(Math.max(1, Math.min(this.X0, i3 - 1)));
            this.W.setAnchorY(Math.max(1, Math.min(this.Y0, i4 - 1)));
        } else {
            this.W.setAnchorX(i3 >> 1);
            this.W.setAnchorY(i4 >> 1);
        }
        this.E0.setProjectionCenter(this.R, this.W.getAnchorX(), this.W.getAnchorY());
        this.I = true;
        m0 m0Var = this.o1;
        if (m0Var.f10570a) {
            m0Var.run();
        }
        m0 m0Var2 = this.i1;
        if (m0Var2.f10570a) {
            m0Var2.run();
        }
        m0 m0Var3 = this.j1;
        if (m0Var3.f10570a) {
            m0Var3.run();
        }
        m0 m0Var4 = this.g1;
        if (m0Var4.f10570a) {
            m0Var4.run();
        }
        m0 m0Var5 = this.k1;
        if (m0Var5.f10570a) {
            m0Var5.run();
        }
        m0 m0Var6 = this.r1;
        if (m0Var6.f10570a) {
            m0Var6.run();
        }
        m0 m0Var7 = this.l1;
        if (m0Var7.f10570a) {
            m0Var7.run();
        }
        m0 m0Var8 = this.m1;
        if (m0Var8.f10570a) {
            m0Var8.run();
        }
        m0 m0Var9 = this.n1;
        if (m0Var9.f10570a) {
            m0Var9.run();
        }
        m0 m0Var10 = this.p1;
        if (m0Var10.f10570a) {
            m0Var10.run();
        }
        m0 m0Var11 = this.h1;
        if (m0Var11.f10570a) {
            m0Var11.run();
        }
        m0 m0Var12 = this.s1;
        if (m0Var12.f10570a) {
            m0Var12.run();
        }
        CustomRenderer customRenderer = this.u0;
        if (customRenderer != null) {
            customRenderer.onSurfaceChanged(gl10, i3, i4);
        }
        s8 s8Var = this.t1;
        if (s8Var != null) {
            s8Var.e(gl10, i3, i4);
        }
        Handler handler = this.f1;
        if (handler != null) {
            handler.post(this.q1);
        }
        redrawInfoWindow();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void checkMapState(IGLMapState iGLMapState) {
        MapConfig mapConfig = this.W;
        if (mapConfig == null || this.S) {
            return;
        }
        LatLngBounds limitLatLngBounds = mapConfig.getLimitLatLngBounds();
        try {
            if (limitLatLngBounds == null) {
                if (this.W.isSetLimitZoomLevel()) {
                    iGLMapState.setMapZoomer(Math.max(this.W.getMinZoomLevel(), Math.min(iGLMapState.getMapZoomer(), this.W.getMaxZoomLevel())));
                    return;
                }
                return;
            }
            IPoint[] limitIPoints = this.W.getLimitIPoints();
            if (limitIPoints == null) {
                IPoint iPointObtain = IPoint.obtain();
                LatLng latLng = limitLatLngBounds.northeast;
                GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
                IPoint iPointObtain2 = IPoint.obtain();
                LatLng latLng2 = limitLatLngBounds.southwest;
                GLMapState.lonlat2Geo(latLng2.longitude, latLng2.latitude, iPointObtain2);
                IPoint[] iPointArr = {iPointObtain, iPointObtain2};
                this.W.setLimitIPoints(iPointArr);
                limitIPoints = iPointArr;
            }
            float fB0 = r3.b0(this.W, ((Point) limitIPoints[0]).x, ((Point) limitIPoints[0]).y, ((Point) limitIPoints[1]).x, ((Point) limitIPoints[1]).y, getMapWidth(), getMapHeight());
            float mapZoomer = iGLMapState.getMapZoomer();
            if (this.W.isSetLimitZoomLevel()) {
                float maxZoomLevel = this.W.getMaxZoomLevel();
                float minZoomLevel = this.W.getMinZoomLevel();
                float fMax = Math.max(fB0, Math.min(mapZoomer, maxZoomLevel));
                if (fB0 <= maxZoomLevel) {
                    maxZoomLevel = fMax;
                }
                fB0 = maxZoomLevel < minZoomLevel ? minZoomLevel : maxZoomLevel;
            } else if (fB0 <= BitmapDescriptorFactory.HUE_RED || mapZoomer >= fB0) {
                fB0 = mapZoomer;
            }
            iGLMapState.setMapZoomer(fB0);
            IPoint iPointObtain3 = IPoint.obtain();
            iGLMapState.getMapGeoCenter(iPointObtain3);
            int i2 = ((Point) iPointObtain3).x;
            int i3 = ((Point) iPointObtain3).y;
            int[] iArrZ = r3.Z(((Point) limitIPoints[0]).x, ((Point) limitIPoints[0]).y, ((Point) limitIPoints[1]).x, ((Point) limitIPoints[1]).y, this.W, iGLMapState, i2, i3);
            if (iArrZ != null && iArrZ.length == 2) {
                i2 = iArrZ[0];
                i3 = iArrZ[1];
            }
            iGLMapState.setMapGeoCenter(i2, i3);
            iPointObtain3.recycle();
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public int checkMarkerInRect(IMarkerAction iMarkerAction, Rect rect) {
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float checkZoomLevel(float f2) throws RemoteException {
        return r3.f(this.W, f2);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void clear() throws RemoteException {
        try {
            clear(false);
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "clear");
            r3.J(th);
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void clearTileCache() {
        ab abVar = this.M;
        if (abVar != null) {
            abVar.p();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public long createGLOverlay(int i2) {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            return gLMapEngine.createOverlay(1, i2);
        }
        return 0L;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public String createId(String str) {
        com.amap.api.mapcore.util.r rVar = this.P;
        if (rVar != null) {
            return rVar.l(str);
        }
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public synchronized void createSurface(int i2, GL10 gl10, EGLConfig eGLConfig) {
        this.e1 = System.currentTimeMillis();
        if (this.m0 == 3) {
            this.L.D().a(z3.c);
        } else {
            this.L.D().a(z3.b);
        }
        this.S0 = false;
        this.I0 = this.K.getWidth();
        this.J0 = this.K.getHeight();
        this.U0 = false;
        try {
            AeUtil.initCrashHandle(this.C0, AeUtil.loadLib(this.C0));
            this.E0.createAMapInstance(AeUtil.initResource(this.C0));
            w0(i2);
            synchronized (this.N) {
                if (this.M == null) {
                    this.M = new ab(this.C0, this);
                }
            }
            h2 h2Var = new h2();
            this.a1 = h2Var;
            this.P.n(h2Var);
            s8 s8Var = this.t1;
            if (s8Var != null) {
                s8Var.d("setGLShaderManager", this.a1);
            }
            this.R0 = true;
            gl10.glGetString(7937);
        } catch (Throwable th) {
            r3.J(th);
            e6.r(th, "AMapDElegateImp", "createSurface");
        }
        GLMapState mapState = this.E0.getMapState(1);
        if (mapState != null && mapState.getNativeInstance() != 0) {
            mapState.setMapGeoCenter((int) this.W.getSX(), (int) this.W.getSY());
            mapState.setMapAngle(this.W.getSR());
            mapState.setMapZoomer(this.W.getSZ());
            mapState.setCameraDegree(this.W.getSC());
        }
        this.b1.c(this.C0);
        v0();
        CustomRenderer customRenderer = this.u0;
        if (customRenderer != null) {
            customRenderer.onSurfaceCreated(gl10, eGLConfig);
        }
        s8 s8Var2 = this.t1;
        if (s8Var2 != null) {
            s8Var2.f(gl10, eGLConfig);
        }
        a0();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void destroy() {
        this.S = true;
        try {
            a5 a5Var = this.D0;
            if (a5Var != null) {
                a5Var.a();
            }
            com.amap.api.mapcore.util.z zVar = this.c1;
            if (zVar != null) {
                zVar.h();
            }
            LocationSource locationSource = this.b0;
            if (locationSource != null) {
                locationSource.deactivate();
            }
            this.b0 = null;
            this.Z0 = null;
            GLMapRender gLMapRender = this.F0;
            if (gLMapRender != null) {
                gLMapRender.renderPause();
            }
            da daVar = this.b1;
            if (daVar != null) {
                daVar.g();
            }
            aa aaVar = this.G0;
            if (aaVar != null) {
                aaVar.d(null);
                this.G0.m();
                this.G0 = null;
            }
            com.amap.api.mapcore.util.r rVar = this.P;
            if (rVar != null) {
                rVar.x();
            }
            com.amap.api.mapcore.util.u uVar = this.O;
            if (uVar != null) {
                uVar.D();
            }
            ab abVar = this.M;
            if (abVar != null) {
                abVar.n();
            }
            m0();
            Thread thread = this.o0;
            if (thread != null) {
                thread.interrupt();
                this.o0 = null;
            }
            Thread thread2 = this.p0;
            if (thread2 != null) {
                thread2.interrupt();
                this.p0 = null;
            }
            j2 j2Var = this.z0;
            if (j2Var != null) {
                j2Var.a();
                this.z0 = null;
            }
            l2 l2Var = this.A0;
            if (l2Var != null) {
                l2Var.c(null);
                this.A0.b();
                this.A0 = null;
            }
            b3.g();
            GLMapEngine gLMapEngine = this.E0;
            if (gLMapEngine != null) {
                gLMapEngine.setMapListener(null);
                this.E0.releaseNetworkState();
                queueEvent(new z());
                int i2 = 0;
                while (this.E0 != null) {
                    int i3 = i2 + 1;
                    if (i2 >= 50) {
                        break;
                    }
                    try {
                        Thread.sleep(20L);
                    } catch (InterruptedException e2) {
                        r3.J(e2);
                    }
                    i2 = i3;
                    e6.r(th, "AMapDelegateImp", "destroy");
                    r3.J(th);
                    th.printStackTrace();
                }
            }
            z9 z9Var = this.T;
            if (z9Var != null) {
                z9Var.g();
            }
            com.amap.api.mapcore.util.s sVar = this.D;
            if (sVar != null) {
                sVar.r();
            }
            IGLSurfaceView iGLSurfaceView = this.K;
            if (iGLSurfaceView != null) {
                try {
                    iGLSurfaceView.onDetachedGLThread();
                } catch (Exception e3) {
                    e3.printStackTrace();
                    r3.J(e3);
                }
            }
            e4 e4Var = this.L;
            if (e4Var != null) {
                e4Var.P();
                this.L = null;
            }
            x1 x1Var = this.a0;
            if (x1Var != null) {
                x1Var.n();
                this.a0 = null;
            }
            this.b0 = null;
            D0();
            this.n0 = null;
            e6.m();
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "destroy");
            r3.J(th);
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void destroySurface(int i2) {
        this.V0.lock();
        try {
            if (this.R0) {
                if (EGL14.eglGetCurrentContext() != EGL14.EGL_NO_CONTEXT) {
                    da daVar = this.b1;
                    if (daVar != null) {
                        daVar.f();
                    }
                    h2 h2Var = this.a1;
                    if (h2Var != null) {
                        h2Var.c();
                        this.a1 = null;
                    }
                }
                GLMapEngine gLMapEngine = this.E0;
                if (gLMapEngine != null) {
                    if (gLMapEngine.getOverlayBundle(this.R) != null) {
                        this.E0.getOverlayBundle(this.R).removeAll(true);
                    }
                    this.E0.destroyAMapEngine();
                    this.E0 = null;
                }
                if (EGL14.eglGetCurrentContext() != EGL14.EGL_NO_CONTEXT) {
                    this.T.h();
                }
                s8 s8Var = this.t1;
                if (s8Var != null) {
                    s8Var.b();
                }
            }
            this.R0 = false;
            this.S0 = false;
            this.U0 = false;
        } catch (Throwable th) {
            try {
                r3.J(th);
            } finally {
                this.V0.unlock();
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void drawFrame(GL10 gl10) {
        if (this.S || this.E0 == null || EGL14.eglGetCurrentContext() == EGL14.EGL_NO_CONTEXT) {
            return;
        }
        MapConfig mapConfig = this.W;
        if (mapConfig != null && !mapConfig.isMapEnable()) {
            GLES20.glClear(16640);
            return;
        }
        k(1, gl10);
        this.E0.renderAMap();
        this.E0.pushRendererState();
        CustomRenderer customRenderer = this.u0;
        if (customRenderer != null) {
            customRenderer.onDrawFrame(gl10);
        }
        com.amap.api.mapcore.util.b0 b0Var = this.d1;
        if (b0Var != null) {
            b0Var.a();
        }
        w(gl10);
        t0();
        if (!this.T0) {
            this.T0 = true;
        }
        this.E0.popRendererState();
        a5 a5Var = this.D0;
        if (a5Var != null) {
            a5Var.b(new ga(153));
        }
        if (i3.b()) {
            try {
                if (this.K instanceof a4) {
                    if (this.B0 == null) {
                        this.B0 = new i3();
                    }
                    this.B0.i();
                    if (!this.B0.j() || this.B0.h()) {
                        return;
                    }
                    if (this.B0.c(((a4) this.K).getBitmap())) {
                        if (i3.e()) {
                            removecache();
                        }
                        if (i3.g()) {
                            this.B0.k();
                        }
                    }
                }
            } catch (Throwable th) {
                e6.r(th, "AMapDelegateImp", "PureScreenCheckTool.checkBlackScreen");
            }
        }
    }

    public ArrayList<MapLabelItem> f(int i2, int i3, int i4, int i5) {
        if (!this.R0) {
            return null;
        }
        ArrayList<MapLabelItem> arrayList = new ArrayList<>();
        byte[] labelBuffer = this.E0.getLabelBuffer(i2, i3, i4, i5);
        if (labelBuffer == null) {
            return null;
        }
        int i6 = GLConvertUtil.getInt(labelBuffer, 0) >= 1 ? 1 : 0;
        int i7 = 0;
        int i8 = 4;
        while (i7 < i6) {
            MapLabelItem mapLabelItem = new MapLabelItem();
            int i9 = GLConvertUtil.getInt(labelBuffer, i8);
            int i10 = i8 + 4;
            int i11 = GLConvertUtil.getInt(labelBuffer, i10);
            int i12 = i10 + 4;
            mapLabelItem.x = i9;
            mapLabelItem.y = this.K.getHeight() - i11;
            mapLabelItem.pixel20X = GLConvertUtil.getInt(labelBuffer, i12);
            int i13 = i12 + 4;
            mapLabelItem.pixel20Y = GLConvertUtil.getInt(labelBuffer, i13);
            int i14 = i13 + 4;
            mapLabelItem.pixel20Z = GLConvertUtil.getInt(labelBuffer, i14);
            int i15 = i14 + 4;
            mapLabelItem.type = GLConvertUtil.getInt(labelBuffer, i15);
            int i16 = i15 + 4;
            mapLabelItem.mSublayerId = GLConvertUtil.getInt(labelBuffer, i16);
            int i17 = i16 + 4;
            mapLabelItem.timeStamp = GLConvertUtil.getInt(labelBuffer, i17);
            int i18 = i17 + 4;
            mapLabelItem.mIsFouces = labelBuffer[i18] != 0;
            int i19 = i18 + 1;
            if (labelBuffer[i19] == 0) {
                mapLabelItem.poiid = null;
            } else {
                String str = "";
                for (int i20 = 0; i20 < 20; i20++) {
                    int i21 = i20 + i19;
                    if (labelBuffer[i21] == 0) {
                        break;
                    }
                    str = str + ((char) labelBuffer[i21]);
                }
                mapLabelItem.poiid = str;
            }
            int i22 = i19 + 20;
            int i23 = i22 + 1;
            byte b2 = labelBuffer[i22];
            StringBuffer stringBuffer = new StringBuffer();
            for (int i24 = 0; i24 < b2; i24++) {
                stringBuffer.append((char) GLConvertUtil.getShort(labelBuffer, i23));
                i23 += 2;
            }
            mapLabelItem.name = stringBuffer.toString();
            arrayList.add(mapLabelItem);
            i7++;
            i8 = i23;
        }
        return arrayList;
    }

    protected void f0(int i2) {
        e4 e4Var = this.L;
        if (e4Var != null) {
            if (i2 == 0) {
                if (e4Var.x()) {
                    this.L.M(Boolean.FALSE);
                    this.L.z();
                    return;
                }
                return;
            }
            if (e4Var.x()) {
                return;
            }
            this.L.M(Boolean.TRUE);
            this.L.z();
        }
    }

    public void g() {
        List<AMapWidgetListener> list;
        List<AMapWidgetListener> list2;
        List<AMapWidgetListener> list3;
        if (this.W.getMapRect() == null || this.s0) {
            p0();
            this.s0 = false;
        }
        boolean z2 = true;
        this.E0.getCurTileIDs(1, this.W.getCurTileIds());
        GLMapState mapState = this.E0.getMapState(1);
        if (mapState != null) {
            mapState.getViewMatrix(this.W.getViewMatrix());
            mapState.getProjectionMatrix(this.W.getProjectionMatrix());
            this.W.updateFinalMatrix();
            DPoint mapGeoCenter = mapState.getMapGeoCenter();
            this.W.setSX(mapGeoCenter.x);
            this.W.setSY(mapGeoCenter.y);
            this.W.setSZ(mapState.getMapZoomer());
            this.W.setSC(mapState.getCameraDegree());
            this.W.setSR(mapState.getMapAngle());
            if (!this.W.isMapStateChange()) {
                if (!this.O0 && this.E0.getAnimateionsCount() == 0 && this.E0.getStateMessageCount() == 0) {
                    onChangeFinish();
                    return;
                }
                return;
            }
            this.W.setSkyHeight(mapState.getSkyHeight());
            DPoint dPointPixelsToLatLong = VirtualEarthProjection.pixelsToLatLong(mapGeoCenter.x, mapGeoCenter.y, 20);
            CameraPosition cameraPosition = new CameraPosition(new LatLng(dPointPixelsToLatLong.y, dPointPixelsToLatLong.x, false), this.W.getSZ(), this.W.getSC(), this.W.getSR());
            dPointPixelsToLatLong.recycle();
            Message messageObtainMessage = this.f1.obtainMessage();
            messageObtainMessage.what = 10;
            messageObtainMessage.obj = cameraPosition;
            this.f1.sendMessage(messageObtainMessage);
            this.P0 = true;
            redrawInfoWindow();
            p0();
            try {
                if (this.H.isZoomControlsEnabled() && this.W.isNeedUpdateZoomControllerState() && (list3 = this.U) != null && list3.size() > 0) {
                    for (int i2 = 0; i2 < this.U.size(); i2++) {
                        this.U.get(i2).invalidateZoomController(this.W.getSZ());
                    }
                }
                if (this.W.getChangeGridRatio() != 1.0d) {
                    x(true);
                }
                if (!this.H.isCompassEnabled() || (!this.W.isTiltChanged() && !this.W.isBearingChanged())) {
                    z2 = false;
                }
                if (z2 && (list2 = this.U) != null && list2.size() > 0) {
                    for (int i3 = 0; i3 < this.U.size(); i3++) {
                        this.U.get(i3).invalidateCompassView();
                    }
                }
                if (!this.H.isScaleControlsEnabled() || (list = this.U) == null || list.size() <= 0) {
                    return;
                }
                for (int i4 = 0; i4 < this.U.size(); i4++) {
                    this.U.get(i4).invalidateScaleView();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void geo2Latlng(int i2, int i3, DPoint dPoint) {
        DPoint dPointPixelsToLatLong = VirtualEarthProjection.pixelsToLatLong(i2, i3, 20);
        dPoint.x = dPointPixelsToLatLong.x;
        dPoint.y = dPointPixelsToLatLong.y;
        dPointPixelsToLatLong.recycle();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void geo2Map(int i2, int i3, FPoint fPoint) {
        ((PointF) fPoint).x = (int) (((double) i2) - this.W.getSX());
        ((PointF) fPoint).y = (int) (((double) i3) - this.W.getSY());
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public s8 getAMapExtraInterfaceManager() {
        return this.t1;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Projection getAMapProjection() throws RemoteException {
        return new Projection(this.G);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public UiSettings getAMapUiSettings() throws RemoteException {
        if (this.F == null) {
            this.F = new UiSettings(this.H);
        }
        return this.F;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public int getBaseOverlayTextureID() {
        da daVar = this.b1;
        if (daVar != null) {
            return daVar.e();
        }
        return 0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public AMapCameraInfo getCamerInfo() {
        return null;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public float getCameraAngle() {
        return getCameraDegree(this.R);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float getCameraDegree(int i2) {
        MapConfig mapConfig = this.W;
        return mapConfig != null ? mapConfig.getSC() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public CameraPosition getCameraPosition() throws RemoteException {
        return getCameraPositionPrj(this.X);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public CameraPosition getCameraPositionPrj(boolean z2) {
        LatLng latLngH0;
        try {
            if (this.W == null) {
                return null;
            }
            if (!this.R0 || this.V || this.E0 == null) {
                DPoint dPointObtain = DPoint.obtain();
                geo2Latlng((int) this.W.getSX(), (int) this.W.getSY(), dPointObtain);
                LatLng latLng = new LatLng(dPointObtain.y, dPointObtain.x);
                dPointObtain.recycle();
                return CameraPosition.builder().target(latLng).bearing(this.W.getSR()).tilt(this.W.getSC()).zoom(this.W.getSZ()).build();
            }
            if (z2) {
                DPoint dPointObtain2 = DPoint.obtain();
                getPixel2LatLng(this.W.getAnchorX(), this.W.getAnchorY(), dPointObtain2);
                latLngH0 = new LatLng(dPointObtain2.y, dPointObtain2.x, false);
                dPointObtain2.recycle();
            } else {
                latLngH0 = h0();
            }
            return CameraPosition.builder().target(latLngH0).bearing(this.W.getSR()).tilt(this.W.getSC()).zoom(this.W.getSZ()).build();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public Context getContext() {
        return this.C0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public String getCurrentWorldVectorMapStyle() {
        try {
            s8 s8Var = this.t1;
            if (s8Var == null) {
                return "";
            }
            Object objA = s8Var.a("getCurMapStyleKey");
            return objA instanceof String ? (String) objA : "";
        } catch (Throwable th) {
            r3.J(th);
            return "";
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public int getDottedLineTextureID(int i2) {
        da daVar = this.b1;
        if (daVar != null) {
            return daVar.b(i2);
        }
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public int getEngineIDWithGestureInfo(EAMapPlatformGestureInfo eAMapPlatformGestureInfo) {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            return gLMapEngine.getEngineIDWithGestureInfo(eAMapPlatformGestureInfo);
        }
        return 1;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float[] getFinalMatrix() {
        MapConfig mapConfig = this.W;
        return mapConfig != null ? mapConfig.getMvpMatrix() : this.B1;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public GLMapEngine getGLMapEngine() {
        return this.E0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public View getGLMapView() {
        Object obj = this.K;
        if (obj instanceof View) {
            return (View) obj;
        }
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public g2 getGLShader(int i2) {
        h2 h2Var = this.a1;
        if (h2Var == null) {
            return null;
        }
        return h2Var.b(i2);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public h2 getGLShaderManager() {
        return this.a1;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void getGeoCenter(int i2, IPoint iPoint) {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            ((Point) iPoint).x = (int) mapConfig.getSX();
            ((Point) iPoint).y = (int) this.W.getSY();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public long getGlOverlayMgrPtr() {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            return gLMapEngine.getGlOverlayMgrPtr(1);
        }
        return 0L;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public InfoWindowAnimationManager getInfoWindowAnimationManager() {
        return new InfoWindowAnimationManager(this.E);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void getLatLng2Map(double d2, double d3, FPoint fPoint) {
        IPoint iPointObtain = IPoint.obtain();
        latlon2Geo(d2, d3, iPointObtain);
        geo2Map(((Point) iPointObtain).x, ((Point) iPointObtain).y, fPoint);
        iPointObtain.recycle();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void getLatLng2Pixel(double d2, double d3, IPoint iPoint) {
        if (!this.R0 || this.E0 == null) {
            return;
        }
        try {
            Point pointLatLongToPixels = VirtualEarthProjection.latLongToPixels(d2, d3, 20);
            FPoint fPointObtain = FPoint.obtain();
            j(pointLatLongToPixels.x, pointLatLongToPixels.y, fPointObtain);
            float f2 = -10000;
            if (((PointF) fPointObtain).x == f2 && ((PointF) fPointObtain).y == f2) {
                GLMapState gLMapState = (GLMapState) this.E0.getNewMapState(1);
                gLMapState.setCameraDegree(BitmapDescriptorFactory.HUE_RED);
                gLMapState.recalculate();
                gLMapState.p20ToScreenPoint(pointLatLongToPixels.x, pointLatLongToPixels.y, fPointObtain);
                gLMapState.recycle();
            }
            ((Point) iPoint).x = (int) ((PointF) fPointObtain).x;
            ((Point) iPoint).y = (int) ((PointF) fPointObtain).y;
            fPointObtain.recycle();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void getLatLngRect(DPoint[] dPointArr) {
        try {
            Rectangle geoRectangle = this.W.getGeoRectangle();
            if (geoRectangle != null) {
                IPoint[] clipRect = geoRectangle.getClipRect();
                for (int i2 = 0; i2 < 4; i2++) {
                    GLMapState.geo2LonLat(((Point) clipRect[i2]).x, ((Point) clipRect[i2]).y, dPointArr[i2]);
                }
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public int getLineTextureID() {
        da daVar = this.b1;
        if (daVar != null) {
            return daVar.a();
        }
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float getLineTextureRatio() {
        da daVar = this.b1;
        if (daVar != null) {
            return daVar.d();
        }
        return 1.0f;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float getLogoMarginRate(int i2) {
        e4 e4Var = this.L;
        return e4Var != null ? e4Var.a(i2) : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public int getLogoPosition() {
        try {
            return this.H.getLogoPosition();
        } catch (RemoteException e2) {
            e6.r(e2, "AMapDelegateImp", "getLogoPosition");
            e2.printStackTrace();
            return 0;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Handler getMainHandler() {
        return this.f1;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float getMapAngle(int i2) {
        MapConfig mapConfig = this.W;
        return mapConfig != null ? mapConfig.getSR() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public LatLngBounds getMapBounds(LatLng latLng, float f2, float f3, float f4) {
        int mapWidth = getMapWidth();
        int mapHeight = getMapHeight();
        if (mapWidth <= 0 || mapHeight <= 0 || this.S) {
            return null;
        }
        float f5 = r3.f(this.W, f2);
        GLMapState gLMapState = new GLMapState(1, this.E0.getNativeInstance());
        if (latLng != null) {
            IPoint iPointObtain = IPoint.obtain();
            latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain);
            gLMapState.setCameraDegree(f4);
            gLMapState.setMapAngle(f3);
            gLMapState.setMapGeoCenter(((Point) iPointObtain).x, ((Point) iPointObtain).y);
            gLMapState.setMapZoomer(f5);
            gLMapState.recalculate();
            iPointObtain.recycle();
        }
        DPoint dPointObtain = DPoint.obtain();
        s(gLMapState, 0, 0, dPointObtain);
        LatLng latLng2 = new LatLng(dPointObtain.y, dPointObtain.x, false);
        s(gLMapState, mapWidth, mapHeight, dPointObtain);
        LatLng latLng3 = new LatLng(dPointObtain.y, dPointObtain.x, false);
        dPointObtain.recycle();
        gLMapState.recycle();
        return LatLngBounds.builder().include(latLng3).include(latLng2).build();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public MapConfig getMapConfig() {
        return this.W;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public String getMapContentApprovalNumber() {
        MapConfig mapConfig = this.W;
        if (mapConfig == null || mapConfig.isCustomStyleEnable()) {
            return null;
        }
        p3.l(this.C0);
        String strB = h3.b(this.C0, "approval_number", "mc", "");
        return !TextUtils.isEmpty(strB) ? strB : "GS（2017）3426号 | GS（2017）2550号";
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public int getMapHeight() {
        return this.J0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void getMapPrintScreen(AMap.onMapPrintScreenListener onmapprintscreenlistener) {
        try {
            v(this.A, onmapprintscreenlistener);
            this.j0 = true;
            resetRenderTime();
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public GLMapState getMapProjection() {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            return gLMapEngine.getMapState(1);
        }
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public FPoint[] getMapRect() {
        if (this.W.getMapRect() == null) {
            this.W.setMapRect(r3.a0(this, true));
        }
        return this.W.getMapRect();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public List<Marker> getMapScreenMarkers() throws RemoteException {
        return !r3.l0(getMapWidth(), getMapHeight()) ? new ArrayList() : this.O.z();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void getMapScreenShot(AMap.OnMapScreenShotListener onMapScreenShotListener) {
        try {
            v(this.B, onMapScreenShotListener);
            this.j0 = true;
            resetRenderTime();
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public int getMapTextZIndex() throws RemoteException {
        return this.t0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public int getMapType() throws RemoteException {
        return this.m0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public int getMapWidth() {
        return this.I0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float getMapZoomScale() {
        return this.L0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public int getMaskLayerType() {
        return this.w0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public float getMaxZoomLevel() {
        try {
            MapConfig mapConfig = this.W;
            if (mapConfig != null) {
                return mapConfig.getMaxZoomLevel();
            }
            return 20.0f;
        } catch (Throwable th) {
            r3.J(th);
            return 20.0f;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public float getMinZoomLevel() {
        try {
            MapConfig mapConfig = this.W;
            if (mapConfig != null) {
                return mapConfig.getMinZoomLevel();
            }
            return 3.0f;
        } catch (Throwable th) {
            r3.J(th);
            return 3.0f;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public Location getMyLocation() throws RemoteException {
        if (this.b0 != null) {
            return this.m.b;
        }
        return null;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public MyLocationStyle getMyLocationStyle() throws RemoteException {
        x1 x1Var = this.a0;
        if (x1Var != null) {
            return x1Var.a();
        }
        return null;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public long getNativeMapController() {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            return gLMapEngine.getNativeMapController(1);
        }
        return 0L;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public AMap.OnCameraChangeListener getOnCameraChangeListener() throws RemoteException {
        try {
            List<AMap.OnCameraChangeListener> list = this.s;
            if (list == null && list.size() != 0) {
                return this.s.get(0);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void getPixel2Geo(int i2, int i3, IPoint iPoint) {
        GLMapEngine gLMapEngine;
        GLMapState mapState;
        if (!this.R0 || (gLMapEngine = this.E0) == null || (mapState = gLMapEngine.getMapState(1)) == null) {
            return;
        }
        mapState.screenToP20Point(i2, i3, iPoint);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void getPixel2LatLng(int i2, int i3, DPoint dPoint) {
        GLMapEngine gLMapEngine;
        GLMapState mapState;
        if (!this.R0 || (gLMapEngine = this.E0) == null || (mapState = gLMapEngine.getMapState(1)) == null) {
            return;
        }
        IPoint iPointObtain = IPoint.obtain();
        mapState.screenToP20Point(i2, i3, iPointObtain);
        DPoint dPointPixelsToLatLong = VirtualEarthProjection.pixelsToLatLong(((Point) iPointObtain).x, ((Point) iPointObtain).y, 20);
        dPoint.x = dPointPixelsToLatLong.x;
        dPoint.y = dPointPixelsToLatLong.y;
        iPointObtain.recycle();
        dPointPixelsToLatLong.recycle();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float getPreciseLevel(int i2) {
        MapConfig mapConfig = this.W;
        return mapConfig != null ? mapConfig.getSZ() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public IProjectionDelegate getProjection() throws RemoteException {
        return this.G;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public float[] getProjectionMatrix() {
        MapConfig mapConfig = this.W;
        return mapConfig != null ? mapConfig.getProjectionMatrix() : this.D1;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public Rect getRect() {
        return this.l0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public int getRenderMode() {
        return this.K.getRenderMode();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public int getSX() {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            return (int) mapConfig.getSX();
        }
        return -1;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public int getSY() {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            return (int) mapConfig.getSY();
        }
        return -1;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public String getSatelliteImageApprovalNumber() {
        p3.m(this.C0);
        String strB = h3.b(this.C0, "approval_number", "si", "");
        return !TextUtils.isEmpty(strB) ? strB : "GS（2018）984号";
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public float getScalePerPixel() throws RemoteException {
        try {
            return ((float) ((((Math.cos((getCameraPosition().target.latitude * 3.141592653589793d) / 180.0d) * 2.0d) * 3.141592653589793d) * 6378137.0d) / (Math.pow(2.0d, getZoomLevel()) * 256.0d))) * getMapZoomScale();
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "getScalePerPixel");
            r3.J(th);
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public float getSkyHeight() {
        return this.W.getSkyHeight();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public ha getTextureItem(BitmapDescriptor bitmapDescriptor) {
        return getTextureItem(bitmapDescriptor, false);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public IUiSettingsDelegate getUiSettings() {
        return this.H;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float getUnitLengthByZoom(int i2) {
        GLMapState gLMapState = new GLMapState(1, this.E0.getNativeInstance());
        gLMapState.setMapZoomer(i2);
        gLMapState.recalculate();
        float gLUnitWithWin = gLMapState.getGLUnitWithWin(1);
        gLMapState.recycle();
        return gLUnitWithWin;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public View getView() throws RemoteException {
        return this.L;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public float[] getViewMatrix() {
        MapConfig mapConfig = this.W;
        return mapConfig != null ? mapConfig.getViewMatrix() : this.C1;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public Point getWaterMarkerPositon() {
        e4 e4Var = this.L;
        return e4Var != null ? e4Var.b() : new Point();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public String getWorldVectorMapLanguage() {
        return this.u1;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public String getWorldVectorMapStyle() {
        return this.v1;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float getZoomLevel() {
        return b(this.R);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public float getZoomToSpanLevel(LatLng latLng, LatLng latLng2) {
        try {
            MapConfig mapConfig = getMapConfig();
            if (latLng == null || latLng2 == null || !this.R0 || this.S) {
                return mapConfig.getSZ();
            }
            LatLngBounds.Builder builder = new LatLngBounds.Builder();
            builder.include(latLng);
            builder.include(latLng2);
            GLMapState gLMapState = new GLMapState(1, this.E0.getNativeInstance());
            Pair<Float, IPoint> pairT = r3.t(mapConfig, 0, 0, 0, 0, builder.build(), getMapWidth(), getMapHeight());
            gLMapState.recycle();
            return pairT != null ? ((Float) pairT.first).floatValue() : gLMapState.getMapZoomer();
        } catch (Throwable th) {
            r3.J(th);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public void h(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            gLMapEngine.setServiceViewRect(i2, i3, i4, i5, i6, i7, i8);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void hideInfoWindow() {
        com.amap.api.mapcore.util.s sVar = this.D;
        if (sVar != null) {
            sVar.z();
        }
    }

    public synchronized void i(int i2, int i3, int i4, int i5, boolean z2, boolean z3, StyleItem[] styleItemArr) {
        if (this.S0 && this.R0 && this.I) {
            f0(i4);
            queueEvent(new e(i2, i3, i4, i5, z2, z3, styleItemArr));
        } else {
            m0 m0Var = this.i1;
            m0Var.f10573f = i2;
            m0Var.c = i3;
            m0Var.f10571d = i4;
            m0Var.f10572e = i5;
            m0Var.f10570a = true;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public boolean isIndoorEnabled() throws RemoteException {
        return this.W.isIndoorEnable();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean isInfoWindowShown(IMarkerDelegate iMarkerDelegate) throws RemoteException {
        com.amap.api.mapcore.util.s sVar = this.D;
        if (sVar != null) {
            return sVar.A();
        }
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean isLockMapAngle(int i2) {
        return B(i2, 7);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean isLockMapCameraDegree(int i2) {
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public boolean isMaploaded() {
        return this.Y;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public boolean isMyLocationEnabled() throws RemoteException {
        return this.Q;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public boolean isTouchPoiEnable() {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            return mapConfig.isTouchPoiEnable();
        }
        return true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public boolean isTrafficEnabled() throws RemoteException {
        return this.W.isTrafficEnabled();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean isUseAnchor() {
        return this.X;
    }

    public void j(int i2, int i3, FPoint fPoint) {
        GLMapEngine gLMapEngine;
        GLMapState mapState;
        if (!this.R0 || (gLMapEngine = this.E0) == null || (mapState = gLMapEngine.getMapState(1)) == null) {
            return;
        }
        mapState.p20ToScreenPoint(i2, i3, fPoint);
    }

    public void j0(int i2) {
        queueEvent(new f(i2));
    }

    public void l(int i2, boolean z2) {
        if (this.R0 && this.S0) {
            resetRenderTime();
            queueEvent(new g(i2, z2));
        } else {
            m0 m0Var = this.k1;
            m0Var.b = z2;
            m0Var.f10570a = true;
            m0Var.f10573f = i2;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void latlon2Geo(double d2, double d3, IPoint iPoint) {
        Point pointLatLongToPixels = VirtualEarthProjection.latLongToPixels(d2, d3, 20);
        ((Point) iPoint).x = pointLatLongToPixels.x;
        ((Point) iPoint).y = pointLatLongToPixels.y;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void loadWorldVectorMap(boolean z2) {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            mapConfig.setAbroadEnable(z2);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void map2Geo(float f2, float f3, IPoint iPoint) {
        ((Point) iPoint).x = (int) (((double) f2) + this.W.getSX());
        ((Point) iPoint).y = (int) (((double) f3) + this.W.getSY());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void moveCamera(CameraUpdate cameraUpdate) throws RemoteException {
        if (cameraUpdate == null) {
            return;
        }
        try {
            moveCamera(cameraUpdate.getCameraUpdateFactoryDelegate());
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    public void n0(int i2) {
        int i3;
        int i4;
        int i5;
        this.m0 = i2;
        if (i2 == 1) {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        } else if (i2 == 2) {
            i3 = 1;
            i4 = 0;
            i5 = 0;
        } else {
            if (i2 == 3) {
                i3 = 0;
                i4 = 1;
            } else if (i2 == 4) {
                i3 = 0;
                i4 = 0;
            } else if (i2 == 5) {
                i3 = 2;
                i4 = 0;
                i5 = 5;
            } else {
                try {
                    this.m0 = 1;
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                } catch (Throwable th) {
                    e6.r(th, "AMapDelegateImp", "setMaptype");
                    th.printStackTrace();
                    r3.J(th);
                    return;
                }
            }
            i5 = 4;
        }
        this.W.setMapStyleMode(i3);
        this.W.setMapStyleTime(i4);
        this.W.setMapStyleState(i5);
        if (this.W.isCustomStyleEnable()) {
            com.amap.api.mapcore.util.b0 b0Var = this.d1;
            if (b0Var == null || !b0Var.j()) {
                i(1, i3, i4, i5, true, false, null);
                this.W.setCustomStyleEnable(false);
            } else {
                this.d1.k();
            }
            this.H.setLogoEnable(true);
        } else {
            if (this.W.getMapLanguage().equals(AMap.ENGLISH)) {
                setMapLanguage("zh_cn");
            }
            L(1, i3, i4, i5);
        }
        resetRenderTime();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void onActivityPause() {
        this.V = true;
        V(this.R);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void onActivityResume() {
        this.V = false;
        int engineIDWithType = this.R;
        if (engineIDWithType == 0) {
            engineIDWithType = this.E0.getEngineIDWithType(0);
        }
        b0(engineIDWithType);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void onChangeFinish() {
        Message messageObtainMessage = this.f1.obtainMessage();
        messageObtainMessage.what = 11;
        this.f1.sendMessage(messageObtainMessage);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean onDoubleTap(int i2, MotionEvent motionEvent) {
        if (!this.R0) {
            return false;
        }
        C(i2, (int) motionEvent.getX(), (int) motionEvent.getY());
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void onFling() {
        ab abVar = this.M;
        if (abVar != null) {
            abVar.h(true);
        }
        this.i0 = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void onIndoorBuildingActivity(int i2, byte[] bArr) {
        com.amap.api.mapcore.util.q qVar;
        if (bArr != null) {
            try {
                qVar = new com.amap.api.mapcore.util.q();
                byte b2 = bArr[0];
                new String(bArr, 1, b2, "utf-8");
                int i3 = 1 + b2;
                int i4 = i3 + 1;
                byte b3 = bArr[i3];
                new String(bArr, i4, b3, "utf-8");
                int i5 = i4 + b3;
                int i6 = i5 + 1;
                byte b4 = bArr[i5];
                qVar.activeFloorName = new String(bArr, i6, b4, "utf-8");
                int i7 = i6 + b4;
                qVar.activeFloorIndex = GLConvertUtil.getInt(bArr, i7);
                int i8 = i7 + 4;
                int i9 = i8 + 1;
                byte b5 = bArr[i8];
                qVar.poiid = new String(bArr, i9, b5, "utf-8");
                int i10 = i9 + b5;
                int i11 = i10 + 1;
                byte b6 = bArr[i10];
                new String(bArr, i11, b6, "utf-8");
                int i12 = i11 + b6;
                int i13 = GLConvertUtil.getInt(bArr, i12);
                qVar.f11087a = i13;
                int i14 = i12 + 4;
                qVar.floor_indexs = new int[i13];
                qVar.floor_names = new String[i13];
                qVar.b = new String[i13];
                for (int i15 = 0; i15 < qVar.f11087a; i15++) {
                    qVar.floor_indexs[i15] = GLConvertUtil.getInt(bArr, i14);
                    int i16 = i14 + 4;
                    int i17 = i16 + 1;
                    byte b7 = bArr[i16];
                    if (b7 > 0) {
                        qVar.floor_names[i15] = new String(bArr, i17, b7, "utf-8");
                        i17 += b7;
                    }
                    i14 = i17 + 1;
                    byte b8 = bArr[i17];
                    if (b8 > 0) {
                        qVar.b[i15] = new String(bArr, i14, b8, "utf-8");
                        i14 += b8;
                    }
                }
                int i18 = GLConvertUtil.getInt(bArr, i14);
                qVar.c = i18;
                int i19 = i14 + 4;
                if (i18 > 0) {
                    qVar.f11088d = new int[i18];
                    for (int i20 = 0; i20 < qVar.c; i20++) {
                        qVar.f11088d[i20] = GLConvertUtil.getInt(bArr, i19);
                        i19 += 4;
                    }
                }
            } catch (Throwable th) {
                r3.J(th);
                th.printStackTrace();
                return;
            }
        } else {
            qVar = null;
        }
        this.A1 = qVar;
        post(new x());
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void onLongPress(int i2, MotionEvent motionEvent) {
        int i3 = 0;
        try {
            this.f0 = false;
            K(i2);
            BaseOverlayImp baseOverlayImpC = this.O.c(motionEvent);
            this.e0 = baseOverlayImpC;
            if (baseOverlayImpC == null || !baseOverlayImpC.isDraggable()) {
                List<AMap.OnMapLongClickListener> list = this.w;
                if (list != null && list.size() > 0) {
                    DPoint dPointObtain = DPoint.obtain();
                    getPixel2LatLng((int) motionEvent.getX(), (int) motionEvent.getY(), dPointObtain);
                    while (i3 < this.w.size()) {
                        this.w.get(i3).onMapLongClick(new LatLng(dPointObtain.y, dPointObtain.x));
                        i3++;
                    }
                    this.g0 = true;
                    dPointObtain.recycle();
                }
            } else {
                Marker marker = new Marker((w1) this.e0);
                this.d0 = marker;
                LatLng position = marker.getPosition();
                LatLng realPosition = this.e0.getRealPosition();
                if (position != null && realPosition != null) {
                    IPoint iPointObtain = IPoint.obtain();
                    getLatLng2Pixel(realPosition.latitude, realPosition.longitude, iPointObtain);
                    ((Point) iPointObtain).y -= 60;
                    DPoint dPointObtain2 = DPoint.obtain();
                    getPixel2LatLng(((Point) iPointObtain).x, ((Point) iPointObtain).y, dPointObtain2);
                    this.d0.setPosition(new LatLng((position.latitude + dPointObtain2.y) - realPosition.latitude, (position.longitude + dPointObtain2.x) - realPosition.longitude));
                    this.O.m((w1) this.e0);
                    try {
                        List<AMap.OnMarkerDragListener> list2 = this.q;
                        if (list2 != null && list2.size() > 0) {
                            while (i3 < this.q.size()) {
                                this.q.get(i3).onMarkerDragStart(this.d0);
                                i3++;
                            }
                        }
                    } catch (Throwable th) {
                        e6.r(th, "AMapDelegateImp", "onMarkerDragStart");
                        th.printStackTrace();
                    }
                    this.c0 = true;
                    iPointObtain.recycle();
                    dPointObtain2.recycle();
                }
            }
            this.F0.resetTickCount(30);
        } catch (Throwable th2) {
            e6.r(th2, "AMapDelegateImp", "onLongPress");
            th2.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void onPause() {
        e0();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void onResume() {
        try {
            this.F0.setRenderFps(15.0f);
            this.K.setRenderMode(0);
            ab abVar = this.M;
            if (abVar != null) {
                abVar.l();
            }
            x1 x1Var = this.a0;
            if (x1Var != null) {
                x1Var.k();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean onSingleTapConfirmed(int i2, MotionEvent motionEvent) {
        if (!this.R0) {
            return false;
        }
        try {
            K(i2);
            if (o0(motionEvent) || g0(motionEvent) || k0(motionEvent) || c0(motionEvent)) {
                return true;
            }
            N(motionEvent);
            return true;
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "onSingleTapUp");
            th.printStackTrace();
            return true;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.V || !this.R0 || !this.N0) {
            return false;
        }
        EAMapPlatformGestureInfo eAMapPlatformGestureInfo = this.w1;
        eAMapPlatformGestureInfo.mGestureState = 3;
        eAMapPlatformGestureInfo.mGestureType = 8;
        eAMapPlatformGestureInfo.mLocation = new float[]{motionEvent.getX(), motionEvent.getY()};
        int engineIDWithGestureInfo = getEngineIDWithGestureInfo(this.w1);
        J();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            U();
            q0(engineIDWithGestureInfo);
        } else if (action == 1) {
            u0(engineIDWithGestureInfo);
        }
        if (motionEvent.getAction() == 2 && this.c0) {
            try {
                m(motionEvent);
            } catch (Throwable th) {
                e6.r(th, "AMapDelegateImp", "onDragMarker");
                th.printStackTrace();
            }
            return true;
        }
        if (this.H0) {
            try {
                this.G0.e(motionEvent);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        try {
            List<AMap.OnMapTouchListener> list = this.u;
            if (list != null && list.size() > 0) {
                this.f1.removeMessages(14);
                Message messageObtainMessage = this.f1.obtainMessage();
                messageObtainMessage.what = 14;
                messageObtainMessage.obj = MotionEvent.obtain(motionEvent);
                messageObtainMessage.sendToTarget();
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void pixel2Map(int i2, int i3, PointF pointF) {
        if (!this.R0 || this.V || this.E0 == null) {
            return;
        }
        IPoint iPointObtain = IPoint.obtain();
        getPixel2Geo(i2, i3, iPointObtain);
        pointF.x = ((Point) iPointObtain).x - ((float) this.W.getSX());
        pointF.y = ((Point) iPointObtain).y - ((float) this.W.getSY());
        iPointObtain.recycle();
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void post(Runnable runnable) {
        IGLSurfaceView iGLSurfaceView = this.K;
        if (iGLSurfaceView != null) {
            iGLSurfaceView.post(runnable);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void queueEvent(Runnable runnable) {
        try {
            if (this.E0 != null) {
                this.K.queueEvent(runnable);
            }
        } catch (Throwable th) {
            r3.J(th);
            e6.r(th, "AMapdelegateImp", "queueEvent");
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void redrawInfoWindow() {
        if (this.R0) {
            this.f1.sendEmptyMessage(18);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void refreshLogo() {
        e4 e4Var = this.L;
        if (e4Var != null) {
            e4Var.z();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void reloadMap() {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void reloadMapCustomStyle() {
        com.amap.api.mapcore.util.b0 b0Var = this.d1;
        if (b0Var != null) {
            b0Var.f();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void removeEngineGLOverlay(BaseMapOverlay baseMapOverlay) {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine != null) {
            gLMapEngine.getOverlayBundle(1).removeOverlay(baseMapOverlay);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean removeGLModel(String str) {
        try {
            this.T.d(str);
            return false;
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "removeGLModel");
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean removeGLOverlay(String str) throws RemoteException {
        resetRenderTime();
        return this.P.removeOverlay(str);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public boolean removeMarker(String str) {
        try {
            IOverlayImageDelegate iOverlayImageDelegateD = this.O.d(str);
            if (iOverlayImageDelegateD == null) {
                return false;
            }
            resetRenderTime();
            return this.O.p(iOverlayImageDelegateD);
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "removeMarker");
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnCameraChangeListener(AMap.OnCameraChangeListener onCameraChangeListener) throws RemoteException {
        P(this.s, onCameraChangeListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnIndoorBuildingActiveListener(AMap.OnIndoorBuildingActiveListener onIndoorBuildingActiveListener) throws RemoteException {
        P(this.y, onIndoorBuildingActiveListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnInfoWindowClickListener(AMap.OnInfoWindowClickListener onInfoWindowClickListener) throws RemoteException {
        P(this.x, onInfoWindowClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnMapClickListener(AMap.OnMapClickListener onMapClickListener) throws RemoteException {
        P(this.t, onMapClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnMapLoadedListener(AMap.OnMapLoadedListener onMapLoadedListener) {
        P(this.r, onMapLoadedListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnMapLongClickListener(AMap.OnMapLongClickListener onMapLongClickListener) throws RemoteException {
        P(this.w, onMapLongClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnMapTouchListener(AMap.OnMapTouchListener onMapTouchListener) throws RemoteException {
        P(this.u, onMapTouchListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnMarkerClickListener(AMap.OnMarkerClickListener onMarkerClickListener) throws RemoteException {
        P(this.o, onMarkerClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnMarkerDragListener(AMap.OnMarkerDragListener onMarkerDragListener) {
        P(this.q, onMarkerDragListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnMyLocationChangeListener(AMap.OnMyLocationChangeListener onMyLocationChangeListener) throws RemoteException {
        P(this.z, onMyLocationChangeListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnPOIClickListener(AMap.OnPOIClickListener onPOIClickListener) throws RemoteException {
        P(this.v, onPOIClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removeOnPolylineClickListener(AMap.OnPolylineClickListener onPolylineClickListener) throws RemoteException {
        P(this.p, onPolylineClickListener);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void removeTextureItem(String str) {
        synchronized (this.y0) {
            int size = this.y0.size();
            int i2 = -1;
            for (int i3 = 0; i3 < size; i3++) {
                if (this.y0.get(i3).z().equals(str)) {
                    i2 = i3;
                    break;
                }
            }
            if (i2 >= 0) {
                this.y0.remove(i2);
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removecache() throws RemoteException {
        removecache(null);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void renderSurface(GL10 gl10) {
        drawFrame(gl10);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void requestRender() {
        GLMapRender gLMapRender = this.F0;
        if (gLMapRender == null || gLMapRender.isRenderPause()) {
            return;
        }
        this.K.requestRender();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void resetMinMaxZoomPreference() {
        List<AMapWidgetListener> list;
        this.W.resetMinMaxZoomPreference();
        try {
            if (!this.H.isZoomControlsEnabled() || !this.W.isNeedUpdateZoomControllerState() || (list = this.U) == null || list.size() <= 0) {
                return;
            }
            for (int i2 = 0; i2 < this.U.size(); i2++) {
                this.U.get(i2).invalidateZoomController(this.W.getSZ());
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void resetRenderTime() {
        GLMapRender gLMapRender = this.F0;
        if (gLMapRender != null) {
            gLMapRender.resetTickCount(2);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void resetRenderTimeLongLong() {
        GLMapRender gLMapRender = this.F0;
        if (gLMapRender != null) {
            gLMapRender.resetTickCount(30);
        }
    }

    protected void s(GLMapState gLMapState, int i2, int i3, DPoint dPoint) {
        if (!this.R0 || this.E0 == null) {
            return;
        }
        Point point = new Point();
        gLMapState.screenToP20Point(i2, i3, point);
        DPoint dPointPixelsToLatLong = VirtualEarthProjection.pixelsToLatLong(point.x, point.y, 20);
        dPoint.x = dPointPixelsToLatLong.x;
        dPoint.y = dPointPixelsToLatLong.y;
        dPointPixelsToLatLong.recycle();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void set3DBuildingEnabled(boolean z2) throws RemoteException {
        try {
            V(1);
            l(1, z2);
            b0(1);
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setAMapGestureListener(AMapGestureListener aMapGestureListener) {
        aa aaVar = this.G0;
        if (aaVar != null) {
            this.C = aMapGestureListener;
            aaVar.d(aMapGestureListener);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setCenterToPixel(int i2, int i3) throws RemoteException {
        this.X = true;
        this.X0 = i2;
        this.Y0 = i3;
        if (this.S0 && this.R0) {
            if (this.W.getAnchorX() == this.X0 && this.W.getAnchorY() == this.Y0) {
                return;
            }
            this.W.setAnchorX(this.X0);
            this.W.setAnchorY(this.Y0);
            queueEvent(new t());
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setCustomMapStyle(CustomMapStyleOptions customMapStyleOptions) {
        if (customMapStyleOptions != null) {
            try {
                if (customMapStyleOptions.isEnable() && (customMapStyleOptions.getStyleId() != null || customMapStyleOptions.getStyleTexturePath() != null || customMapStyleOptions.getStyleTextureData() != null)) {
                    z0();
                }
                this.d1.h();
                this.d1.c(customMapStyleOptions);
                s8 s8Var = this.t1;
                if (s8Var != null) {
                    s8Var.d("setCustomMapStyle", customMapStyleOptions);
                }
            } catch (Throwable th) {
                r3.J(th);
                return;
            }
        }
        resetRenderTime();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setCustomMapStyleID(String str) {
        if (TextUtils.isEmpty(str) || str.equals(this.W.getCustomStyleID())) {
            return;
        }
        this.W.setCustomStyleID(str);
        this.J = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setCustomMapStylePath(String str) {
        if (TextUtils.isEmpty(str) || str.equals(this.W.getCustomStylePath())) {
            return;
        }
        this.W.setCustomStylePath(str);
        this.J = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setCustomRenderer(CustomRenderer customRenderer) throws RemoteException {
        this.u0 = customRenderer;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setCustomTextureResourcePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.W.setCustomTextureResourcePath(str);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setGestureStatus(int i2, int i3) {
        if (this.W0 == 0 || i3 != 5) {
            this.W0 = i3;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setHideLogoEnble(boolean z2) {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            mapConfig.setHideLogoEnble(z2);
            if (this.W.isCustomStyleEnable()) {
                this.H.setLogoEnable(!z2);
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setIndoorBuildingInfo(IndoorBuildingInfo indoorBuildingInfo) throws RemoteException {
        if (this.S || indoorBuildingInfo == null || indoorBuildingInfo.activeFloorName == null || indoorBuildingInfo.poiid == null) {
            return;
        }
        this.Z = (com.amap.api.mapcore.util.q) indoorBuildingInfo;
        resetRenderTime();
        queueEvent(new u());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setIndoorEnabled(boolean z2) throws RemoteException {
        List<AMapWidgetListener> list;
        try {
            if (!this.R0 || this.S) {
                m0 m0Var = this.p1;
                m0Var.b = z2;
                m0Var.f10570a = true;
                m0Var.f10573f = 1;
                return;
            }
            this.W.setIndoorEnable(z2);
            resetRenderTime();
            if (z2) {
                GLMapEngine gLMapEngine = this.E0;
                if (gLMapEngine != null) {
                    gLMapEngine.setIndoorEnable(1, true);
                }
            } else {
                GLMapEngine gLMapEngine2 = this.E0;
                if (gLMapEngine2 != null) {
                    gLMapEngine2.setIndoorEnable(1, false);
                }
                MapConfig mapConfig = this.W;
                mapConfig.maxZoomLevel = mapConfig.isSetLimitZoomLevel() ? this.W.getMaxZoomLevel() : 20.0f;
                try {
                    if (this.H.isZoomControlsEnabled() && (list = this.U) != null && list.size() > 0) {
                        for (int i2 = 0; i2 < this.U.size(); i2++) {
                            this.U.get(i2).invalidateZoomController(this.W.getSZ());
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            p3.k(this.C0, z2);
            if (this.H.isIndoorSwitchEnabled()) {
                this.f1.post(new n(z2));
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setInfoWindowAdapter(AMap.InfoWindowAdapter infoWindowAdapter) throws RemoteException {
        com.amap.api.mapcore.util.s sVar;
        if (this.S || (sVar = this.D) == null) {
            return;
        }
        sVar.h(infoWindowAdapter);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setLoadOfflineData(boolean z2) throws RemoteException {
        queueEvent(new o(z2));
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setLocationSource(LocationSource locationSource) throws RemoteException {
        try {
            if (this.S) {
                return;
            }
            LocationSource locationSource2 = this.b0;
            if (locationSource2 != null && (locationSource2 instanceof com.amap.api.mapcore.util.t)) {
                locationSource2.deactivate();
            }
            this.b0 = locationSource;
            if (locationSource != null) {
                this.L.O(Boolean.TRUE);
            } else {
                this.L.O(Boolean.FALSE);
            }
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "setLocationSource");
            th.printStackTrace();
            r3.J(th);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setLogoBottomMargin(int i2) {
        e4 e4Var = this.L;
        if (e4Var != null) {
            e4Var.B(Integer.valueOf(i2));
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setLogoLeftMargin(int i2) {
        e4 e4Var = this.L;
        if (e4Var != null) {
            e4Var.F(Integer.valueOf(i2));
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setLogoMarginRate(int i2, float f2) {
        e4 e4Var = this.L;
        if (e4Var != null) {
            e4Var.r(Integer.valueOf(i2), Float.valueOf(f2));
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setLogoPosition(int i2) {
        e4 e4Var = this.L;
        if (e4Var != null) {
            e4Var.w(Integer.valueOf(i2));
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setMapCustomEnable(boolean z2, boolean z3) {
        j2 j2Var;
        if (!this.R0 || this.S) {
            m0 m0Var = this.j1;
            m0Var.f10570a = true;
            m0Var.b = z2;
            return;
        }
        boolean z4 = z3 ? z3 : false;
        if (TextUtils.isEmpty(this.W.getCustomStylePath()) && TextUtils.isEmpty(this.W.getCustomStyleID())) {
            return;
        }
        if (z2) {
            try {
                if (this.W.isProFunctionAuthEnable() && !TextUtils.isEmpty(this.W.getCustomStyleID()) && (j2Var = this.z0) != null) {
                    j2Var.b(this.W.getCustomStyleID());
                    this.z0.c();
                }
            } catch (Throwable th) {
                th.printStackTrace();
                r3.J(th);
                return;
            }
        }
        if (z3 || this.J || (this.W.isCustomStyleEnable() ^ z2)) {
            z(z2, null, z4);
        }
        this.J = false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setMapEnable(boolean z2) {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            mapConfig.setMapEnable(z2);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMapLanguage(String str) {
        MapConfig mapConfig;
        if (TextUtils.isEmpty(str) || (mapConfig = this.W) == null || mapConfig.isCustomStyleEnable() || this.W.getMapLanguage().equals(str)) {
            return;
        }
        if (!str.equals(AMap.ENGLISH)) {
            this.W.setMapLanguage("zh_cn");
            this.t0 = 0;
        } else {
            if (this.m0 != 1) {
                try {
                    setMapType(1);
                } catch (Throwable th) {
                    r3.J(th);
                    th.printStackTrace();
                }
            }
            this.W.setMapLanguage(AMap.ENGLISH);
            this.t0 = -10000;
        }
        try {
            q(getCameraPosition());
            synchronized (this.N) {
                if (this.M == null) {
                    this.M = new ab(this.C0, this);
                }
            }
            ab abVar = this.M;
            if (abVar != null) {
                abVar.e(this.W.getMapLanguage());
            }
        } catch (Throwable th2) {
            r3.J(th2);
            th2.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMapStatusLimits(LatLngBounds latLngBounds) {
        try {
            this.W.setLimitLatLngBounds(latLngBounds);
            B0();
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMapTextEnable(boolean z2) throws RemoteException {
        try {
            if (this.R0 && this.S0) {
                resetRenderTime();
                queueEvent(new p(z2));
            } else {
                m0 m0Var = this.l1;
                m0Var.b = z2;
                m0Var.f10570a = true;
                m0Var.f10573f = 1;
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMapTextZIndex(int i2) throws RemoteException {
        this.t0 = i2;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMapType(int i2) throws RemoteException {
        MapConfig mapConfig;
        if (i2 != this.m0 || ((mapConfig = this.W) != null && mapConfig.isCustomStyleEnable())) {
            a5 a5Var = this.D0;
            if (a5Var != null) {
                a5Var.b(new ga(1, Integer.valueOf(i2)));
            }
            this.m0 = i2;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setMapWidgetListener(AMapWidgetListener aMapWidgetListener) {
        try {
            AMapWidgetListener aMapWidgetListener2 = this.n;
            if (aMapWidgetListener2 != null) {
                O(aMapWidgetListener2);
            }
            this.n = aMapWidgetListener;
            t(aMapWidgetListener);
        } catch (Throwable unused) {
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMaskLayerParams(int i2, int i3, int i4, int i5, int i6, long j2) {
        GLAlphaAnimation gLAlphaAnimation;
        try {
            if (this.v0 != null) {
                float f2 = i5 / 255.0f;
                if (i6 == -1) {
                    gLAlphaAnimation = new GLAlphaAnimation(f2, BitmapDescriptorFactory.HUE_RED);
                    gLAlphaAnimation.setAnimationListener(new w(i6));
                } else {
                    this.w0 = i6;
                    gLAlphaAnimation = new GLAlphaAnimation(BitmapDescriptorFactory.HUE_RED, f2);
                    if (f2 > 0.2f) {
                        e4 e4Var = this.L;
                        if (e4Var != null) {
                            e4Var.S(Boolean.FALSE);
                        }
                    } else {
                        e4 e4Var2 = this.L;
                        if (e4Var2 != null) {
                            e4Var2.S(Boolean.TRUE);
                        }
                    }
                }
                gLAlphaAnimation.setInterpolator(new LinearInterpolator());
                gLAlphaAnimation.setDuration(j2);
                this.v0.a(i2, i3, i4, i5);
                this.v0.b(gLAlphaAnimation);
            }
        } catch (Throwable th) {
            r3.J(th);
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMaxZoomLevel(float f2) {
        this.W.setMaxZoomLevel(f2);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMinZoomLevel(float f2) {
        this.W.setMinZoomLevel(f2);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMyLocationEnabled(boolean z2) throws RemoteException {
        if (this.S) {
            return;
        }
        try {
            e4 e4Var = this.L;
            if (e4Var != null) {
                e4Var.J();
                LocationSource locationSource = this.b0;
                if (locationSource == null) {
                    this.L.O(Boolean.FALSE);
                } else if (z2) {
                    locationSource.activate(this.m);
                    this.L.O(Boolean.TRUE);
                    if (this.a0 == null) {
                        this.a0 = new x1(this, this.C0);
                    }
                } else {
                    x1 x1Var = this.a0;
                    if (x1Var != null) {
                        x1Var.n();
                        this.a0 = null;
                    }
                    this.b0.deactivate();
                }
            }
            if (!z2) {
                this.H.setMyLocationButtonEnabled(z2);
            }
            this.Q = z2;
            resetRenderTime();
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "setMyLocationEnabled");
            th.printStackTrace();
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMyLocationRotateAngle(float f2) throws RemoteException {
        try {
            x1 x1Var = this.a0;
            if (x1Var != null) {
                x1Var.b(f2);
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMyLocationStyle(MyLocationStyle myLocationStyle) throws RemoteException {
        if (this.S) {
            return;
        }
        try {
            if (this.a0 == null) {
                this.a0 = new x1(this, this.C0);
            }
            if (this.a0 != null) {
                long j2 = 1000;
                if (myLocationStyle.getInterval() < j2) {
                    myLocationStyle.interval(j2);
                }
                LocationSource locationSource = this.b0;
                if (locationSource != null && (locationSource instanceof com.amap.api.mapcore.util.t)) {
                    ((com.amap.api.mapcore.util.t) locationSource).b(myLocationStyle.getInterval());
                    ((com.amap.api.mapcore.util.t) this.b0).a(myLocationStyle.getMyLocationType());
                }
                this.a0.h(myLocationStyle);
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMyLocationType(int i2) throws RemoteException {
        try {
            x1 x1Var = this.a0;
            if (x1Var == null || x1Var.a() == null) {
                return;
            }
            this.a0.a().myLocationType(i2);
            setMyLocationStyle(this.a0.a());
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMyTrafficStyle(MyTrafficStyle myTrafficStyle) throws RemoteException {
        if (this.S) {
            return;
        }
        try {
            this.n0 = myTrafficStyle;
            if (this.R0 && this.S0 && myTrafficStyle != null) {
                resetRenderTime();
                queueEvent(new s());
            } else {
                m0 m0Var = this.s1;
                m0Var.b = false;
                m0Var.f10570a = true;
                m0Var.f10573f = 1;
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setNaviLabelEnable(boolean z2, int i2, int i3) throws RemoteException {
        try {
            if (this.R0 && this.S0) {
                resetRenderTime();
                queueEvent(new r(z2, i2, i3));
            } else {
                m0 m0Var = this.n1;
                m0Var.b = z2;
                m0Var.f10574g = i2;
                m0Var.f10575h = i3;
                m0Var.f10570a = true;
                m0Var.f10573f = 1;
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnCameraChangeListener(AMap.OnCameraChangeListener onCameraChangeListener) throws RemoteException {
        AMap.OnCameraChangeListener onCameraChangeListener2 = this.f10546e;
        if (onCameraChangeListener2 != null) {
            removeOnCameraChangeListener(onCameraChangeListener2);
        }
        this.f10546e = onCameraChangeListener;
        addOnCameraChangeListener(onCameraChangeListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnIndoorBuildingActiveListener(AMap.OnIndoorBuildingActiveListener onIndoorBuildingActiveListener) throws RemoteException {
        AMap.OnIndoorBuildingActiveListener onIndoorBuildingActiveListener2 = this.k;
        if (onIndoorBuildingActiveListener2 != null) {
            removeOnIndoorBuildingActiveListener(onIndoorBuildingActiveListener2);
        }
        this.k = onIndoorBuildingActiveListener;
        addOnIndoorBuildingActiveListener(onIndoorBuildingActiveListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnInfoWindowClickListener(AMap.OnInfoWindowClickListener onInfoWindowClickListener) throws RemoteException {
        AMap.OnInfoWindowClickListener onInfoWindowClickListener2 = this.j;
        if (onInfoWindowClickListener2 != null) {
            removeOnInfoWindowClickListener(onInfoWindowClickListener2);
        }
        this.j = onInfoWindowClickListener;
        addOnInfoWindowClickListener(onInfoWindowClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnMapClickListener(AMap.OnMapClickListener onMapClickListener) throws RemoteException {
        AMap.OnMapClickListener onMapClickListener2 = this.f10547f;
        if (onMapClickListener2 != null) {
            removeOnMapClickListener(onMapClickListener2);
        }
        this.f10547f = onMapClickListener;
        addOnMapClickListener(onMapClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnMapLongClickListener(AMap.OnMapLongClickListener onMapLongClickListener) throws RemoteException {
        AMap.OnMapLongClickListener onMapLongClickListener2 = this.i;
        if (onMapLongClickListener2 != null) {
            removeOnMapLongClickListener(onMapLongClickListener2);
        }
        this.i = onMapLongClickListener;
        addOnMapLongClickListener(onMapLongClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnMapTouchListener(AMap.OnMapTouchListener onMapTouchListener) throws RemoteException {
        AMap.OnMapTouchListener onMapTouchListener2 = this.f10548g;
        if (onMapTouchListener2 != null) {
            removeOnMapTouchListener(onMapTouchListener2);
        }
        this.f10548g = onMapTouchListener;
        addOnMapTouchListener(onMapTouchListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnMaploadedListener(AMap.OnMapLoadedListener onMapLoadedListener) throws RemoteException {
        AMap.OnMapLoadedListener onMapLoadedListener2 = this.f10545d;
        if (onMapLoadedListener2 != null) {
            removeOnMapLoadedListener(onMapLoadedListener2);
        }
        this.f10545d = onMapLoadedListener;
        addOnMapLoadedListener(onMapLoadedListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnMarkerClickListener(AMap.OnMarkerClickListener onMarkerClickListener) throws RemoteException {
        AMap.OnMarkerClickListener onMarkerClickListener2 = this.f10544a;
        if (onMarkerClickListener2 != null) {
            removeOnMarkerClickListener(onMarkerClickListener2);
        }
        this.f10544a = onMarkerClickListener;
        addOnMarkerClickListener(onMarkerClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnMarkerDragListener(AMap.OnMarkerDragListener onMarkerDragListener) throws RemoteException {
        AMap.OnMarkerDragListener onMarkerDragListener2 = this.c;
        if (onMarkerDragListener2 != null) {
            removeOnMarkerDragListener(onMarkerDragListener2);
        }
        this.c = onMarkerDragListener;
        addOnMarkerDragListener(onMarkerDragListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnMultiPointClickListener(AMap.OnMultiPointClickListener onMultiPointClickListener) {
        com.amap.api.mapcore.util.z zVar = this.c1;
        if (zVar != null) {
            zVar.e(onMultiPointClickListener);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnMyLocationChangeListener(AMap.OnMyLocationChangeListener onMyLocationChangeListener) {
        try {
            AMap.OnMyLocationChangeListener onMyLocationChangeListener2 = this.l;
            if (onMyLocationChangeListener2 != null) {
                removeOnMyLocationChangeListener(onMyLocationChangeListener2);
            }
            this.l = onMyLocationChangeListener;
            addOnMyLocationChangeListener(onMyLocationChangeListener);
        } catch (Throwable unused) {
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnPOIClickListener(AMap.OnPOIClickListener onPOIClickListener) throws RemoteException {
        AMap.OnPOIClickListener onPOIClickListener2 = this.f10549h;
        if (onPOIClickListener2 != null) {
            removeOnPOIClickListener(onPOIClickListener2);
        }
        this.f10549h = onPOIClickListener;
        addOnPOIClickListener(onPOIClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setOnPolylineClickListener(AMap.OnPolylineClickListener onPolylineClickListener) throws RemoteException {
        AMap.OnPolylineClickListener onPolylineClickListener2 = this.b;
        if (onPolylineClickListener2 != null) {
            removeOnPolylineClickListener(onPolylineClickListener2);
        }
        this.b = onPolylineClickListener;
        addOnPolylineClickListener(onPolylineClickListener);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setRenderFps(int i2) {
        try {
            if (i2 == -1) {
                this.x0 = i2;
            } else {
                this.x0 = Math.max(10, Math.min(i2, 40));
            }
            p3.n(this.C0);
        } catch (Throwable th) {
            r3.J(th);
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setRenderMode(int i2) {
        try {
            IGLSurfaceView iGLSurfaceView = this.K;
            if (iGLSurfaceView != null) {
                iGLSurfaceView.setRenderMode(i2);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setRoadArrowEnable(boolean z2) throws RemoteException {
        try {
            if (this.R0 && this.S0) {
                resetRenderTime();
                queueEvent(new q(z2));
            } else {
                m0 m0Var = this.m1;
                m0Var.b = z2;
                m0Var.f10570a = true;
                m0Var.f10573f = 1;
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setRunLowFrame(boolean z2) {
        if (z2) {
            return;
        }
        try {
            if (this.x0 != -1) {
                return;
            }
            U();
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setTouchPoiEnable(boolean z2) {
        MapConfig mapConfig = this.W;
        if (mapConfig != null) {
            mapConfig.setTouchPoiEnable(z2);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setTrafficEnabled(boolean z2) throws RemoteException {
        try {
            if (!this.R0 || this.S) {
                m0 m0Var = this.g1;
                m0Var.b = z2;
                m0Var.f10570a = true;
                m0Var.f10573f = 1;
            } else {
                queueEvent(new l(z2, z2));
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setVisibilityEx(int i2) {
        IGLSurfaceView iGLSurfaceView = this.K;
        if (iGLSurfaceView != null) {
            try {
                iGLSurfaceView.setVisibility(i2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setWorldVectorMapStyle(String str) {
        if (TextUtils.isEmpty(str) || this.W == null || this.v1.equals(str)) {
            return;
        }
        this.v1 = str;
        s8 s8Var = this.t1;
        if (s8Var != null) {
            s8Var.d("setWorldVectorMapStyle", str);
        }
        resetRenderTime();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setZOrderOnTop(boolean z2) throws RemoteException {
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setZoomPosition(int i2) {
        e4 e4Var;
        if (this.S || (e4Var = this.L) == null) {
            return;
        }
        e4Var.q(Integer.valueOf(i2));
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setZoomScaleParam(float f2) {
        this.L0 = f2;
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void showCompassEnabled(boolean z2) {
        e4 e4Var;
        if (this.S || (e4Var = this.L) == null) {
            return;
        }
        e4Var.E(Boolean.valueOf(z2));
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void showIndoorSwitchControlsEnabled(boolean z2) {
        e4 e4Var;
        if (this.S || (e4Var = this.L) == null) {
            return;
        }
        e4Var.o(Boolean.valueOf(z2));
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void showInfoWindow(BaseOverlayImp baseOverlayImp) throws RemoteException {
        com.amap.api.mapcore.util.s sVar;
        if (baseOverlayImp == null || (sVar = this.D) == null) {
            return;
        }
        try {
            sVar.i(baseOverlayImp);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void showLogoEnabled(boolean z2) {
        if (this.S) {
            return;
        }
        this.L.K(Boolean.valueOf(z2));
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void showMyLocationButtonEnabled(boolean z2) {
        e4 e4Var;
        if (this.S || (e4Var = this.L) == null) {
            return;
        }
        e4Var.A(Boolean.valueOf(z2));
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void showMyLocationOverlay(Location location) throws RemoteException {
        if (location == null) {
            return;
        }
        try {
            if (this.Q && this.b0 != null) {
                if (this.a0 == null) {
                    this.a0 = new x1(this, this.C0);
                }
                if (location.getLongitude() != 0.0d && location.getLatitude() != 0.0d) {
                    this.a0.e(location);
                }
                List<AMap.OnMyLocationChangeListener> list = this.z;
                if (list != null && list.size() > 0) {
                    for (int i2 = 0; i2 < this.z.size(); i2++) {
                        this.z.get(i2).onMyLocationChange(location);
                    }
                }
                resetRenderTime();
                return;
            }
            x1 x1Var = this.a0;
            if (x1Var != null) {
                x1Var.n();
            }
            this.a0 = null;
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "showMyLocationOverlay");
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void showScaleEnabled(boolean z2) {
        e4 e4Var;
        if (this.S || (e4Var = this.L) == null) {
            return;
        }
        e4Var.I(Boolean.valueOf(z2));
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void showZoomControlsEnabled(boolean z2) {
        e4 e4Var;
        if (this.S || (e4Var = this.L) == null) {
            return;
        }
        e4Var.v(Boolean.valueOf(z2));
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void stopAnimation() throws RemoteException {
        try {
            GLMapEngine gLMapEngine = this.E0;
            if (gLMapEngine != null) {
                gLMapEngine.interruptAnimation();
            }
            resetRenderTime();
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    public void t(AMapWidgetListener aMapWidgetListener) throws RemoteException {
        v(this.U, aMapWidgetListener);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public float toMapLenWithWin(int i2) {
        GLMapEngine gLMapEngine;
        return (!this.R0 || this.V || (gLMapEngine = this.E0) == null) ? BitmapDescriptorFactory.HUE_RED : gLMapEngine.getMapState(1).getGLUnitWithWin(i2);
    }

    void x(boolean z2) {
        this.f1.obtainMessage(17, z2 ? 1 : 0, 0).sendToTarget();
    }

    protected void y(boolean z2, CameraPosition cameraPosition) {
        MapConfig mapConfig = this.W;
        if (mapConfig == null || mapConfig.getChangedCounter() == 0) {
            return;
        }
        try {
            if (!this.O0 && this.E0.getAnimateionsCount() == 0 && this.E0.getStateMessageCount() == 0) {
                AMapGestureListener aMapGestureListener = this.C;
                if (aMapGestureListener != null) {
                    aMapGestureListener.onMapStable();
                }
                List<AMap.OnCameraChangeListener> list = this.s;
                if (list == null || list.size() == 0 || !this.K.isEnabled()) {
                    return;
                }
                if (cameraPosition == null) {
                    try {
                        cameraPosition = getCameraPosition();
                    } catch (Throwable th) {
                        e6.r(th, "AMapDelegateImp", "cameraChangeFinish");
                        th.printStackTrace();
                    }
                }
                try {
                    Iterator<AMap.OnCameraChangeListener> it = this.s.iterator();
                    while (it.hasNext()) {
                        it.next().onCameraChangeFinish(cameraPosition);
                    }
                } catch (Throwable unused) {
                }
                this.W.resetChangedCounter();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            r3.J(th2);
        }
    }

    public void z(boolean z2, byte[] bArr, boolean z3) {
        q2 q2VarD;
        try {
            this.W.setCustomStyleEnable(z2);
            boolean z4 = false;
            if (this.W.isHideLogoEnable()) {
                this.H.setLogoEnable(!z2);
            }
            if (!z2) {
                W(1, false);
                i(1, this.W.getMapStyleMode(), this.W.getMapStyleTime(), this.W.getMapStyleState(), true, false, null);
                return;
            }
            W(1, true);
            p2 p2Var = new p2(this.C0);
            MyTrafficStyle myTrafficStyle = this.n0;
            if (myTrafficStyle != null && myTrafficStyle.getTrafficRoadBackgroundColor() != -1) {
                p2Var.i(this.n0.getTrafficRoadBackgroundColor());
            }
            if (this.W.isProFunctionAuthEnable() && !TextUtils.isEmpty(this.W.getCustomTextureResourcePath())) {
                z4 = true;
            }
            StyleItem[] styleItemArrC = null;
            if (bArr != null) {
                q2VarD = p2Var.e(bArr, z4);
                if (q2VarD != null && (styleItemArrC = q2VarD.c()) != null) {
                    this.W.setUseProFunction(true);
                }
            } else {
                q2VarD = null;
            }
            if (styleItemArrC == null && (q2VarD = p2Var.d(this.W.getCustomStylePath(), z4)) != null) {
                styleItemArrC = q2VarD.c();
            }
            if (p2Var.a() != 0) {
                this.W.setCustomBackgroundColor(p2Var.a());
            }
            if (q2VarD == null || q2VarD.d() == null) {
                A(styleItemArrC, z3);
            } else if (this.A0 != null) {
                this.A0.e((String) q2VarD.d());
                this.A0.d(q2VarD);
                this.A0.g();
            }
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void zoomOut(int i2) {
        if (this.R0 && ((int) b(i2)) > this.W.getMinZoomLevel()) {
            try {
                animateCamera(com.amap.api.mapcore.util.h.l());
            } catch (Throwable th) {
                e6.r(th, "AMapDelegateImp", "onDoubleTap");
                th.printStackTrace();
            }
            resetRenderTime();
        }
    }

    public c1(IGLSurfaceView iGLSurfaceView, Context context, AttributeSet attributeSet, boolean z2) {
        this.f10544a = null;
        this.b = null;
        this.c = null;
        this.f10545d = null;
        this.f10546e = null;
        this.f10547f = null;
        this.f10548g = null;
        this.f10549h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = new ArrayList();
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new ArrayList();
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.y = new ArrayList();
        this.z = new ArrayList();
        this.A = new ArrayList();
        this.B = new ArrayList();
        this.E = null;
        this.I = false;
        this.J = false;
        this.M = null;
        this.N = new Object();
        this.Q = false;
        this.S = false;
        this.U = new ArrayList();
        this.V = false;
        this.W = new MapConfig(true);
        this.X = false;
        this.Y = false;
        this.c0 = false;
        this.d0 = null;
        this.e0 = null;
        this.f0 = false;
        this.g0 = false;
        this.h0 = false;
        this.i0 = false;
        this.j0 = false;
        this.k0 = true;
        this.l0 = new Rect();
        this.m0 = 1;
        this.n0 = null;
        this.q0 = false;
        this.r0 = false;
        this.s0 = false;
        this.t0 = 0;
        this.w0 = -1;
        this.x0 = -1;
        this.y0 = new ArrayList();
        this.B0 = null;
        this.H0 = false;
        this.K0 = BitmapDescriptorFactory.HUE_RED;
        this.L0 = 1.0f;
        this.M0 = 1.0f;
        this.N0 = true;
        this.O0 = false;
        this.P0 = false;
        this.Q0 = 0;
        this.R0 = false;
        this.S0 = false;
        this.T0 = false;
        this.U0 = false;
        this.V0 = new ReentrantLock();
        this.W0 = 0;
        this.f1 = new k(Looper.getMainLooper());
        this.g1 = new b();
        this.h1 = new m();
        this.i1 = new y();
        this.j1 = new a0();
        this.k1 = new b0();
        this.l1 = new c0();
        this.m1 = new d0();
        this.n1 = new e0();
        this.o1 = new v();
        this.p1 = new f0();
        this.q1 = new g0();
        this.r1 = new h0();
        this.s1 = new i0();
        this.u1 = "";
        this.v1 = "";
        this.w1 = new EAMapPlatformGestureInfo();
        this.x1 = new Point();
        this.y1 = new Rect();
        this.z1 = 0L;
        this.A1 = null;
        this.B1 = new float[16];
        this.C1 = new float[16];
        this.D1 = new float[16];
        this.C0 = context;
        p8.a();
        this.t1 = new s8(this.C0, this, z2);
        this.D0 = new a5(context, this, iGLSurfaceView);
        e6.h(this.C0);
        b3.a().c(this.C0);
        x9.b = c5.g(context);
        s2.b(this.C0);
        this.G0 = new aa(this);
        this.E0 = new GLMapEngine(this.C0, this);
        GLMapRender gLMapRender = new GLMapRender(this);
        this.F0 = gLMapRender;
        this.K = iGLSurfaceView;
        iGLSurfaceView.setRenderer(gLMapRender);
        this.H = new com.amap.api.mapcore.util.c(this);
        e4 e4Var = new e4(this.C0, this);
        this.L = e4Var;
        e4Var.m(new o0(this, null));
        this.Z0 = new n0();
        this.P = new com.amap.api.mapcore.util.r(this);
        this.O = new com.amap.api.mapcore.util.u(this.C0, this);
        this.T = new z9(this.C0, this);
        iGLSurfaceView.setRenderMode(0);
        this.F0.setRenderFps(15.0f);
        this.E0.setMapListener(this);
        this.G = new ja(this);
        this.m = new a6(this);
        this.E = new d2(this, context);
        com.amap.api.mapcore.util.s sVar = new com.amap.api.mapcore.util.s(this.C0);
        this.D = sVar;
        sVar.j(this.L);
        this.D.s(this.E);
        this.v0 = new fa();
        this.o0 = new d9(this.C0, this);
        this.b0 = new com.amap.api.mapcore.util.t(this.C0);
        this.c1 = new com.amap.api.mapcore.util.z(this);
        this.b1 = new da();
        this.z0 = new j2(this.C0, this);
        l2 l2Var = new l2(this.C0);
        this.A0 = l2Var;
        l2Var.c(this);
        Q(z2);
        MapConfig mapConfig = this.W;
        com.amap.api.mapcore.util.b0 b0Var = new com.amap.api.mapcore.util.b0(this, this.C0, mapConfig != null ? mapConfig.isAbroadEnable() : false);
        this.d1 = b0Var;
        b0Var.b(this);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void animateCamera(AbstractCameraUpdateMessage abstractCameraUpdateMessage) throws RemoteException {
        animateCameraWithDurationAndCallback(abstractCameraUpdateMessage, 250L, (AMap.CancelableCallback) null);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void animateCameraWithDurationAndCallback(AbstractCameraUpdateMessage abstractCameraUpdateMessage, long j2, AMap.CancelableCallback cancelableCallback) {
        if (abstractCameraUpdateMessage == null || this.S || this.E0 == null) {
            return;
        }
        abstractCameraUpdateMessage.mCallback = cancelableCallback;
        abstractCameraUpdateMessage.mDuration = j2;
        if (!this.V && getMapHeight() != 0 && getMapWidth() != 0) {
            try {
                this.E0.interruptAnimation();
                resetRenderTime();
                r(abstractCameraUpdateMessage);
                this.E0.addMessage(abstractCameraUpdateMessage, true);
                return;
            } catch (Throwable th) {
                r3.J(th);
                th.printStackTrace();
                return;
            }
        }
        try {
            moveCamera(abstractCameraUpdateMessage);
            AMap.CancelableCallback cancelableCallback2 = abstractCameraUpdateMessage.mCallback;
            if (cancelableCallback2 != null) {
                cancelableCallback2.onFinish();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            r3.J(th2);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public ha getTextureItem(BitmapDescriptor bitmapDescriptor, boolean z2) {
        if (bitmapDescriptor == null || bitmapDescriptor.getBitmap() == null || bitmapDescriptor.getBitmap().isRecycled()) {
            return null;
        }
        synchronized (this.y0) {
            for (int i2 = 0; i2 < this.y0.size(); i2++) {
                ha haVar = this.y0.get(i2);
                if ((!z2 || haVar.u() != getBaseOverlayTextureID()) && haVar.t().equals(bitmapDescriptor)) {
                    return haVar;
                }
            }
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void removecache(AMap.OnCacheRemoveListener onCacheRemoveListener) throws RemoteException {
        Handler handler = this.f1;
        if (handler == null || this.E0 == null) {
            return;
        }
        try {
            p0 p0Var = new p0(this.C0, onCacheRemoveListener);
            handler.removeCallbacks(p0Var);
            this.f1.post(p0Var);
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "removecache");
            th.printStackTrace();
            r3.J(th);
        }
    }

    @Override // com.amap.api.mapcore.util.l2.a
    public void a(String str, q2 q2Var) {
        setCustomTextureResourcePath(str);
        if (!this.W.isCustomStyleEnable() || q2Var == null) {
            return;
        }
        A(q2Var.c(), false);
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void moveCamera(AbstractCameraUpdateMessage abstractCameraUpdateMessage) throws RemoteException {
        GLMapEngine gLMapEngine = this.E0;
        if (gLMapEngine == null || this.S) {
            return;
        }
        try {
            if (this.V && gLMapEngine.getStateMessageCount() > 0) {
                AbstractCameraUpdateMessage abstractCameraUpdateMessageO = com.amap.api.mapcore.util.h.o();
                abstractCameraUpdateMessageO.nowType = AbstractCameraUpdateMessage.Type.changeGeoCenterZoomTiltBearing;
                abstractCameraUpdateMessageO.geoPoint = new DPoint(this.W.getSX(), this.W.getSY());
                abstractCameraUpdateMessageO.zoom = this.W.getSZ();
                abstractCameraUpdateMessageO.bearing = this.W.getSR();
                abstractCameraUpdateMessageO.tilt = this.W.getSC();
                this.E0.addMessage(abstractCameraUpdateMessage, false);
                while (this.E0.getStateMessageCount() > 0) {
                    AbstractCameraUpdateMessage stateMessage = this.E0.getStateMessage();
                    if (stateMessage != null) {
                        stateMessage.mergeCameraUpdateDelegate(abstractCameraUpdateMessageO);
                    }
                }
                abstractCameraUpdateMessage = abstractCameraUpdateMessageO;
            }
        } catch (Throwable th) {
            r3.J(th);
        }
        resetRenderTime();
        this.E0.clearAnimations(1, false);
        abstractCameraUpdateMessage.isChangeFinished = true;
        r(abstractCameraUpdateMessage);
        this.E0.addMessage(abstractCameraUpdateMessage, false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setInfoWindowAdapter(AMap.CommonInfoWindowAdapter commonInfoWindowAdapter) throws RemoteException {
        com.amap.api.mapcore.util.s sVar;
        if (this.S || (sVar = this.D) == null) {
            return;
        }
        sVar.g(commonInfoWindowAdapter);
    }

    private static abstract class m0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f10570a;
        boolean b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f10571d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f10572e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f10573f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f10574g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f10575h;

        private m0() {
            this.f10570a = false;
            this.b = false;
            this.f10574g = 0;
            this.f10575h = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f10570a = false;
        }

        /* synthetic */ m0(k kVar) {
            this();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void clear(boolean z2) throws RemoteException {
        String str;
        try {
            hideInfoWindow();
            x1 x1Var = this.a0;
            String strR = null;
            if (x1Var == null) {
                str = null;
            } else if (z2) {
                String strP = x1Var.p();
                strR = this.a0.r();
                str = strP;
            } else {
                x1Var.s();
                str = null;
            }
            this.P.u(strR);
            ab abVar = this.M;
            if (abVar != null) {
                abVar.j();
            }
            this.O.s(str);
            this.T.f();
            e4 e4Var = this.L;
            if (e4Var != null) {
                e4Var.R();
            }
            com.amap.api.mapcore.util.z zVar = this.c1;
            if (zVar != null) {
                zVar.i();
            }
            queueEvent(new j());
            resetRenderTime();
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImp", "clear");
            r3.J(th);
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.IAMapDelegate
    public void setCustomMapStyle(boolean z2, byte[] bArr) {
        z(z2, bArr, false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void setMapCustomEnable(boolean z2) {
        if (z2) {
            z0();
        }
        setMapCustomEnable(z2, false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void createSurface(GL10 gl10, EGLConfig eGLConfig) {
        try {
            createSurface(1, gl10, eGLConfig);
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IAMap
    public void changeSurface(GL10 gl10, int i2, int i3) {
        try {
            changeSurface(1, gl10, i2, i3);
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
        }
    }
}
