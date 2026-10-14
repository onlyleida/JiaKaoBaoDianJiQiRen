package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import android.view.animation.AnimationUtils;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.animation.Animation;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.animation.GLAnimation;
import com.autonavi.amap.mapcore.animation.GLAnimationSet;
import com.autonavi.amap.mapcore.animation.GLTransformation;
import com.autonavi.amap.mapcore.animation.GLTranslateAnimation;
import com.autonavi.amap.mapcore.interfaces.IMarkerAction;
import com.autonavi.amap.mapcore.interfaces.IOverlayImage;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.BaseOverlayImp;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IMarkerDelegate;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.Rectangle;
import com.autonavi.base.amap.mapcore.interfaces.IAnimation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class w1 extends BaseOverlayImp implements IMarkerAction, IMarkerDelegate, IAnimation {
    private static int r0;
    private Point E;
    private float F;
    private float G;
    private int H;
    private int I;
    private ha J;
    private ha[] K;
    float[] L;
    float[] M;
    Rect N;
    private boolean O;
    private String P;
    private LatLng Q;
    private LatLng R;
    private String S;
    private String T;
    private float U;
    private float V;
    private boolean W;
    private boolean X;
    private u Y;
    private Object Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f11304a;
    private boolean a0;
    private float b;
    private List<BitmapDescriptor> b0;
    private boolean c0;
    private boolean d0;
    GLTransformation e0;
    GLTransformation f0;
    private boolean g0;
    private boolean h0;
    private int i0;
    private int j0;
    private boolean k0;
    private int l0;
    private int m;
    private int m0;
    private int n;
    private long n0;
    GLAnimation o0;
    GLAnimation p0;
    Object q0;
    private MarkerOptions u;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11305d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f11306e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f11307f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f11308g = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f11309h = false;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private FPoint o = FPoint.obtain();
    private float[] p = {-1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, -1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};
    private float q = BitmapDescriptorFactory.HUE_RED;
    private float r = 1.0f;
    private float s = 1.0f;
    private float t = 1.0f;
    private boolean v = false;
    private boolean w = true;
    private int x = 5;
    private boolean y = true;
    private boolean z = true;
    private boolean A = false;
    private boolean B = false;
    private boolean C = false;
    private boolean D = true;

    public w1(MarkerOptions markerOptions, u uVar) {
        FPoint.obtain();
        this.E = new Point();
        this.H = 0;
        this.I = 0;
        this.K = null;
        this.N = new Rect(0, 0, 0, 0);
        this.O = false;
        this.U = 0.5f;
        this.V = 1.0f;
        this.W = false;
        this.X = true;
        this.a0 = false;
        this.b0 = new CopyOnWriteArrayList();
        this.c0 = false;
        this.d0 = false;
        this.e0 = null;
        this.f0 = null;
        this.g0 = false;
        this.h0 = true;
        this.i0 = 0;
        this.j0 = 20;
        this.k0 = false;
        this.n0 = 0L;
        this.q0 = new Object();
        this.Y = uVar;
        setMarkerOptions(markerOptions);
    }

    private Bitmap a(Bitmap bitmap) {
        if (bitmap == null) {
            return bitmap;
        }
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        return config != config2 ? bitmap.copy(config2, true) : bitmap;
    }

    private static String b(String str) {
        r0++;
        return str + r0;
    }

    private void d(double d2, double d3) {
        if (!this.k0) {
            e((int) d2, (int) d3);
            return;
        }
        IPoint iPointObtain = IPoint.obtain();
        this.Y.v().getPixel2Geo((int) d2, (int) d3, iPointObtain);
        e(((Point) iPointObtain).x, ((Point) iPointObtain).y);
        iPointObtain.recycle();
        this.k0 = true;
    }

    private void e(int i, int i2) {
        this.m = i;
        this.n = i2;
        DPoint dPointObtain = DPoint.obtain();
        GLMapState.geo2LonLat(this.m, this.n, dPointObtain);
        this.Q = new LatLng(dPointObtain.y, dPointObtain.x, false);
        u uVar = this.Y;
        if (uVar != null && uVar.v() != null) {
            ((PointF) this.o).x = this.m - ((int) this.Y.v().getMapConfig().getSX());
            ((PointF) this.o).y = this.n - ((int) this.Y.v().getMapConfig().getSY());
        }
        dPointObtain.recycle();
        k();
    }

    private void f(GLAnimation gLAnimation) {
        if (gLAnimation instanceof GLTranslateAnimation) {
            if (this.k0) {
                LatLng position = getPosition();
                this.Q = position;
                setPosition(position);
                this.k0 = true;
            }
            if (this.k0) {
                GLTranslateAnimation gLTranslateAnimation = (GLTranslateAnimation) gLAnimation;
                gLTranslateAnimation.mFromXDelta = this.l0;
                gLTranslateAnimation.mFromYDelta = this.m0;
                IPoint iPointObtain = IPoint.obtain();
                this.Y.v().getLatLng2Pixel(gLTranslateAnimation.mToYDelta, gLTranslateAnimation.mToXDelta, iPointObtain);
                gLTranslateAnimation.mToXDelta = ((Point) iPointObtain).x;
                gLTranslateAnimation.mToYDelta = ((Point) iPointObtain).y;
                iPointObtain.recycle();
                return;
            }
            GLTranslateAnimation gLTranslateAnimation2 = (GLTranslateAnimation) gLAnimation;
            gLTranslateAnimation2.mFromXDelta = this.m;
            gLTranslateAnimation2.mFromYDelta = this.n;
            IPoint iPointObtain2 = IPoint.obtain();
            GLMapState.lonlat2Geo(gLTranslateAnimation2.mToXDelta, gLTranslateAnimation2.mToYDelta, iPointObtain2);
            gLTranslateAnimation2.mToXDelta = ((Point) iPointObtain2).x;
            gLTranslateAnimation2.mToYDelta = ((Point) iPointObtain2).y;
            iPointObtain2.recycle();
        }
    }

    private void g(IAMapDelegate iAMapDelegate, float f2, int i, int i2) throws RemoteException {
        float f3 = ((int) (this.r * i)) * f2;
        float f4 = ((int) (this.s * i2)) * f2;
        FPoint fPoint = this.o;
        float f5 = ((PointF) fPoint).x;
        float f6 = ((PointF) fPoint).y;
        float sc = iAMapDelegate.getMapConfig().getSC();
        float sr = this.f11307f;
        List<BitmapDescriptor> list = this.b0;
        if (list != null && list.size() > 0) {
            if (this.f11304a) {
                ha[] haVarArr = this.K;
                int length = haVarArr.length;
                float f7 = this.f11307f;
                float f8 = this.b;
                int i3 = (int) (f7 / f8);
                if (i3 > length) {
                    i3 = 0;
                } else {
                    sr = f7 % f8;
                }
                this.J = haVarArr[(i3 + length) % length];
            } else {
                this.i0++;
                if (this.i0 >= this.j0 * this.b0.size()) {
                    this.i0 = 0;
                }
                if (this.j0 == 0) {
                    this.j0 = 1;
                }
                this.J = this.K[this.i0 / this.j0];
                if (!this.h0) {
                    k();
                }
            }
        }
        boolean z = this.f11309h;
        float f9 = BitmapDescriptorFactory.HUE_RED;
        if (z) {
            sr -= iAMapDelegate.getMapConfig().getSR();
            sc = BitmapDescriptorFactory.HUE_RED;
        }
        float f10 = this.t;
        if (f10 >= BitmapDescriptorFactory.HUE_RED) {
            f9 = f10;
        }
        if (f9 > 1.0f) {
            f9 = 1.0f;
        }
        float[] fArr = this.p;
        float f11 = this.U;
        fArr[0] = f5 - (f3 * f11);
        float f12 = this.V;
        fArr[1] = ((1.0f - f12) * f4) + f6;
        fArr[2] = f5;
        fArr[3] = f6;
        fArr[6] = sr;
        fArr[7] = sc;
        fArr[8] = f9;
        fArr[9] = ((1.0f - f11) * f3) + f5;
        fArr[10] = ((1.0f - f12) * f4) + f6;
        fArr[11] = f5;
        fArr[12] = f6;
        fArr[15] = sr;
        fArr[16] = sc;
        fArr[17] = f9;
        fArr[18] = ((1.0f - f11) * f3) + f5;
        fArr[19] = f6 - (f4 * f12);
        fArr[20] = f5;
        fArr[21] = f6;
        fArr[24] = sr;
        fArr[25] = sc;
        fArr[26] = f9;
        fArr[27] = f5 - (f3 * f11);
        fArr[28] = f6 - (f4 * f12);
        fArr[29] = f5;
        fArr[30] = f6;
        fArr[33] = sr;
        fArr[34] = sc;
        fArr[35] = f9;
    }

    private void i(float[] fArr, int i) {
        ha[] haVarArr = this.K;
        if (haVarArr == null || haVarArr.length <= 0) {
            return;
        }
        float[] fArr2 = this.p;
        System.arraycopy(fArr2, 0, fArr, i, fArr2.length);
    }

    private void k() {
        if (this.Y.v() != null) {
            this.Y.v().setRunLowFrame(false);
        }
    }

    private void l() {
        try {
            if (this.J.d()) {
                this.p[4] = this.J.i();
                this.p[5] = this.J.g();
                this.p[13] = this.J.e();
                this.p[14] = this.J.g();
                this.p[22] = this.J.e();
                this.p[23] = this.J.k();
                this.p[31] = this.J.i();
                this.p[32] = this.J.k();
            } else {
                this.p[4] = this.J.o();
                this.p[5] = this.J.s();
                this.p[13] = this.J.q();
                this.p[14] = this.J.s();
                this.p[22] = this.J.q();
                this.p[23] = this.J.m();
                this.p[31] = this.J.o();
                this.p[32] = this.J.m();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void m() {
        GLTransformation gLTransformation;
        GLAnimation gLAnimation;
        if (!this.D && (gLAnimation = this.o0) != null && !gLAnimation.hasEnded()) {
            k();
            synchronized (this.q0) {
                if (this.f0 == null || this.g0) {
                    GLTransformation gLTransformation2 = new GLTransformation();
                    this.f0 = gLTransformation2;
                    gLTransformation2.scaleX = this.r;
                    gLTransformation2.scaleY = this.s;
                    gLTransformation2.rotate = this.f11307f;
                    gLTransformation2.y = this.n;
                    gLTransformation2.x = this.m;
                    gLTransformation2.alpha = this.t;
                    this.g0 = false;
                }
                if (this.e0 == null) {
                    this.e0 = new GLTransformation();
                }
                this.e0.clear();
                this.o0.getTransformation(AnimationUtils.currentAnimationTimeMillis(), this.e0);
                GLTransformation gLTransformation3 = this.e0;
                if (gLTransformation3 != null) {
                    if (!Double.isNaN(gLTransformation3.scaleX) && !Double.isNaN(this.e0.scaleY)) {
                        GLTransformation gLTransformation4 = this.e0;
                        this.r = (float) gLTransformation4.scaleX;
                        this.s = (float) gLTransformation4.scaleY;
                    }
                    if (!Double.isNaN(this.e0.rotate)) {
                        setRotateAngle((float) this.e0.rotate);
                    }
                    if (!Double.isNaN(this.e0.x) && !Double.isNaN(this.e0.y)) {
                        GLTransformation gLTransformation5 = this.e0;
                        d(gLTransformation5.x, gLTransformation5.y);
                    }
                    if (!Double.isNaN(this.e0.alpha)) {
                        this.t = (float) this.e0.alpha;
                    }
                }
            }
            this.f11306e = true;
            this.h0 = false;
            return;
        }
        if (this.o0 != null && ((gLTransformation = this.e0) != null || this.f0 != null)) {
            if (gLTransformation == null || Double.isNaN(gLTransformation.scaleX) || Double.isNaN(this.e0.scaleY)) {
                GLTransformation gLTransformation6 = this.f0;
                if (gLTransformation6 != null && !Double.isNaN(gLTransformation6.scaleX) && !Double.isNaN(this.f0.scaleY)) {
                    double d2 = this.r;
                    GLTransformation gLTransformation7 = this.f0;
                    double d3 = gLTransformation7.scaleX;
                    if (d2 != d3 || this.s != gLTransformation7.scaleY) {
                        this.r = (float) d3;
                        this.s = (float) gLTransformation7.scaleY;
                    }
                }
            } else {
                GLTransformation gLTransformation8 = this.e0;
                this.r = (float) gLTransformation8.scaleX;
                this.s = (float) gLTransformation8.scaleY;
            }
            GLTransformation gLTransformation9 = this.e0;
            if (gLTransformation9 == null || Double.isNaN(gLTransformation9.rotate)) {
                GLTransformation gLTransformation10 = this.f0;
                if (gLTransformation10 != null && !Double.isNaN(gLTransformation10.rotate)) {
                    double d4 = this.f11307f;
                    double d5 = this.f0.rotate;
                    if (d4 != d5) {
                        setRotateAngle((float) d5);
                    }
                }
            } else {
                setRotateAngle((float) this.e0.rotate);
            }
            GLTransformation gLTransformation11 = this.e0;
            if (gLTransformation11 == null || Double.isNaN(gLTransformation11.x) || Double.isNaN(this.e0.y)) {
                GLTransformation gLTransformation12 = this.f0;
                if (gLTransformation12 != null && !Double.isNaN(gLTransformation12.x) && !Double.isNaN(this.f0.y)) {
                    double d6 = this.m;
                    GLTransformation gLTransformation13 = this.f0;
                    double d7 = gLTransformation13.x;
                    if (d6 != d7 || this.n != gLTransformation13.y) {
                        d(d7, gLTransformation13.y);
                    }
                }
            } else {
                GLTransformation gLTransformation14 = this.e0;
                d(gLTransformation14.x, gLTransformation14.y);
            }
            GLTransformation gLTransformation15 = this.e0;
            if (gLTransformation15 == null || Double.isNaN(gLTransformation15.alpha)) {
                GLTransformation gLTransformation16 = this.f0;
                if (gLTransformation16 != null && !Double.isNaN(gLTransformation16.alpha)) {
                    double d8 = this.t;
                    double d9 = this.f0.alpha;
                    if (d8 != d9) {
                        this.t = (float) d9;
                    }
                }
            } else {
                this.t = (float) this.e0.alpha;
            }
        }
        this.D = true;
        this.e0 = null;
        this.f0 = null;
        List<BitmapDescriptor> list = this.b0;
        if (list == null || list.size() != 1) {
            return;
        }
        this.h0 = true;
    }

    private int n() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    private void o() {
        if (this.Y.v() == null || this.Y.v().getMapConfig() == null) {
            return;
        }
        this.F = this.Y.v().getMapConfig().getMapPerPixelUnitLength() * getWidth();
        this.G = this.Y.v().getMapConfig().getMapPerPixelUnitLength() * getHeight();
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IMarkerDelegate
    public FPoint anchorUVoff() {
        FPoint fPointObtain = FPoint.obtain();
        List<BitmapDescriptor> list = this.b0;
        if (list != null && list.size() != 0) {
            ((PointF) fPointObtain).x = getWidth() * this.U;
            ((PointF) fPointObtain).y = getHeight() * this.V;
        }
        return fPointObtain;
    }

    synchronized void c() {
        List<BitmapDescriptor> list = this.b0;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean calFPoint() {
        try {
            u uVar = this.Y;
            if (uVar != null && uVar.v() != null && this.Y.v().getMapProjection() != null) {
                if (this.o == null) {
                    this.o = FPoint.obtain();
                }
                if (this.k0) {
                    IPoint iPointObtain = IPoint.obtain();
                    this.Y.v().getPixel2Geo(this.l0, this.m0, iPointObtain);
                    this.m = ((Point) iPointObtain).x;
                    this.n = ((Point) iPointObtain).y;
                    iPointObtain.recycle();
                    this.Y.v().geo2Map(this.m, this.n, this.o);
                } else {
                    this.Y.v().geo2Map(this.m, this.n, this.o);
                }
                return true;
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean checkInBounds() {
        if (this.k0) {
            return true;
        }
        try {
            if (this.o == null) {
                return false;
            }
            if (!this.D) {
                return true;
            }
            Point point = this.E;
            point.x = this.m;
            point.y = this.n;
            Rectangle geoRectangle = this.Y.v().getMapConfig().getGeoRectangle();
            if (geoRectangle.contains(this.m, this.n)) {
                return true;
            }
            o();
            int i = (int) (this.r * this.F);
            int i2 = (int) (this.s * this.G);
            int i3 = (int) (this.m - (i * this.U));
            int i4 = (int) (this.n - (i2 * this.V));
            return geoRectangle.contains(i3, i4) || geoRectangle.isOverlap(i3, i4, i, i2);
        } catch (Throwable th) {
            e6.r(th, "MarkerDelegateImp", "checkInBounds");
            return false;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void destroy(boolean z) {
        try {
            this.O = true;
            if (z) {
                remove();
            }
            int i = 0;
            if (this.Y != null) {
                int i2 = 0;
                while (true) {
                    ha[] haVarArr = this.K;
                    if (haVarArr == null || i2 >= haVarArr.length) {
                        break;
                    }
                    ha haVar = haVarArr[i2];
                    if (haVar != null) {
                        this.Y.k(haVar);
                        this.Y.v().removeTextureItem(haVar.z());
                    }
                    i2++;
                }
            }
            while (true) {
                List<BitmapDescriptor> list = this.b0;
                if (list == null || i >= list.size()) {
                    break;
                }
                this.b0.get(i).recycle();
                i++;
            }
            this.Q = null;
            this.Z = null;
            this.K = null;
        } catch (Throwable th) {
            e6.r(th, "MarkerDelegateImp", "destroy");
            th.printStackTrace();
            Log.d("destroy erro", "MarkerDelegateImp destroy");
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void drawMarker(IAMapDelegate iAMapDelegate) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void drawMarker(IAMapDelegate iAMapDelegate, float[] fArr, int i, float f2) {
        if (this.O || (this.Q == null && !this.k0) || this.b0 == null) {
            return;
        }
        try {
            if (!this.c) {
                this.n0 = System.currentTimeMillis();
                this.c = true;
            }
            if (this.k0 && this.z) {
                IPoint iPointObtain = IPoint.obtain();
                iAMapDelegate.getPixel2Geo(this.l0, this.m0, iPointObtain);
                this.m = ((Point) iPointObtain).x;
                this.n = ((Point) iPointObtain).y;
                iPointObtain.recycle();
            }
            ((PointF) this.o).x = this.m - ((int) iAMapDelegate.getMapConfig().getSX());
            FPoint fPoint = this.o;
            float f3 = ((PointF) fPoint).x;
            if (f3 > 1.3421773E8f) {
                ((PointF) fPoint).x = f3 - 2.6843546E8f;
            } else if (f3 < -1.3421773E8f) {
                ((PointF) fPoint).x = f3 + 2.6843546E8f;
            }
            ((PointF) fPoint).y = this.n - ((int) iAMapDelegate.getMapConfig().getSY());
            int width = getWidth();
            int height = getHeight();
            m();
            g(iAMapDelegate, f2, width, height);
            if (!this.A || !this.h0) {
                l();
                this.A = true;
            }
            i(fArr, i);
            if (this.f11306e && isInfoWindowShown()) {
                this.Y.v().redrawInfoWindow();
                if (System.currentTimeMillis() - this.n0 > 1000) {
                    this.f11306e = false;
                }
            }
        } catch (Throwable th) {
            e6.r(th, "MarkerDelegateImp", "drawMarker");
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public boolean equalsRemote(IOverlayImage iOverlayImage) throws RemoteException {
        return equals(iOverlayImage) || iOverlayImage.getId().equals(getId());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public float getAlpha() {
        return this.t;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public IPoint getAnchor() {
        IPoint iPointJ = j();
        if (iPointJ == null) {
            return null;
        }
        return iPointJ;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public float getAnchorU() {
        return this.U;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public float getAnchorV() {
        return this.V;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public synchronized BitmapDescriptor getBitmapDescriptor() {
        try {
            List<BitmapDescriptor> list = this.b0;
            if (list == null) {
                return null;
            }
            if (list.size() == 0) {
                c();
                this.b0.add(BitmapDescriptorFactory.defaultMarker());
            } else if (this.b0.get(0) == null) {
                this.b0.clear();
                return getBitmapDescriptor();
            }
            return this.b0.get(0);
        } catch (Throwable th) {
            e6.r(th, "MarkerDelegateImp", "getBitmapDescriptor");
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public int getDisplayLevel() {
        return this.x;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public IPoint getGeoPoint() {
        IPoint iPointObtain = IPoint.obtain();
        if (this.k0) {
            this.Y.v().getPixel2Geo(this.l0, this.m0, iPointObtain);
            return iPointObtain;
        }
        iPointObtain.set(this.m, this.n);
        return iPointObtain;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public FPoint getGeoPosition() {
        IPoint geoPoint = getGeoPoint();
        return FPoint.obtain(((Point) geoPoint).x, ((Point) geoPoint).y);
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getHeight() {
        try {
            return this.I;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public IAnimation getIAnimation() {
        return this;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker, com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public IMarkerAction getIMarkerAction() {
        return this;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public synchronized ArrayList<BitmapDescriptor> getIcons() {
        List<BitmapDescriptor> list = this.b0;
        if (list == null || list.size() <= 0) {
            return null;
        }
        ArrayList<BitmapDescriptor> arrayList = new ArrayList<>();
        Iterator<BitmapDescriptor> it = this.b0.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public String getId() {
        if (this.P == null) {
            this.P = b("Marker");
        }
        return this.P;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getInfoWindowOffsetX() {
        return this.i;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getInfoWindowOffsetY() {
        return this.j;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public Object getObject() {
        return this.Z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public MarkerOptions getOptions() {
        return this.u;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public int getPeriod() {
        return this.j0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public LatLng getPosition() {
        if (!this.k0 || this.o == null) {
            return this.Q;
        }
        DPoint dPointObtain = DPoint.obtain();
        IPoint iPointObtain = IPoint.obtain();
        calFPoint();
        if (this.Y.v() == null) {
            return this.Q;
        }
        IAMapDelegate iAMapDelegateV = this.Y.v();
        FPoint fPoint = this.o;
        iAMapDelegateV.map2Geo(((PointF) fPoint).x, ((PointF) fPoint).y, iPointObtain);
        GLMapState.geo2LonLat(((Point) iPointObtain).x, ((Point) iPointObtain).y, dPointObtain);
        LatLng latLng = new LatLng(dPointObtain.y, dPointObtain.x);
        iPointObtain.recycle();
        dPointObtain.recycle();
        return latLng;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getRealInfoWindowOffsetX() {
        return this.k;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getRealInfoWindowOffsetY() {
        return this.l;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public LatLng getRealPosition() {
        try {
            if (!this.k0) {
                return this.c0 ? this.R : this.Q;
            }
            DPoint dPointObtain = DPoint.obtain();
            this.Y.v().getPixel2LatLng(this.l0, this.m0, dPointObtain);
            double d2 = dPointObtain.y;
            LatLng latLng = new LatLng(d2, d2);
            dPointObtain.recycle();
            return latLng;
        } catch (Throwable th) {
            e6.r(th, "MarkerDelegateImp", "getRealPosition");
            return null;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public Rect getRect() {
        if (this.p == null) {
            this.N.set(0, 0, 0, 0);
            return this.N;
        }
        try {
            GLMapState mapProjection = this.Y.v().getMapProjection();
            if (mapProjection == null) {
                return new Rect(0, 0, 0, 0);
            }
            int width = getWidth();
            int height = getHeight();
            FPoint fPointObtain = FPoint.obtain();
            if (this.k0) {
                ((PointF) fPointObtain).x = this.l0;
                ((PointF) fPointObtain).y = this.m0;
            } else {
                mapProjection.p20ToScreenPoint(this.m, this.n, fPointObtain);
            }
            Matrix.setIdentityM(this.L, 0);
            Matrix.rotateM(this.L, 0, -this.f11307f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            if (this.f11309h) {
                Matrix.rotateM(this.L, 0, this.Y.v().getMapConfig().getSC(), 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                Matrix.rotateM(this.L, 0, this.Y.v().getMapConfig().getSR(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            }
            float[] fArr = new float[4];
            float[] fArr2 = this.M;
            float f2 = -width;
            fArr2[0] = this.U * f2;
            float f3 = height;
            fArr2[1] = this.V * f3;
            fArr2[2] = 0.0f;
            fArr2[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.L, 0, fArr2, 0);
            Rect rect = this.N;
            float f4 = ((PointF) fPointObtain).x;
            int i = (int) (fArr[0] + f4);
            float f5 = ((PointF) fPointObtain).y;
            rect.set(i, (int) (f5 - fArr[1]), (int) (f4 + fArr[0]), (int) (f5 - fArr[1]));
            float[] fArr3 = this.M;
            float f6 = width;
            fArr3[0] = (1.0f - this.U) * f6;
            fArr3[1] = f3 * this.V;
            fArr3[2] = 0.0f;
            fArr3[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.L, 0, fArr3, 0);
            this.N.union((int) (((PointF) fPointObtain).x + fArr[0]), (int) (((PointF) fPointObtain).y - fArr[1]));
            float[] fArr4 = this.M;
            fArr4[0] = f6 * (1.0f - this.U);
            float f7 = -height;
            fArr4[1] = (1.0f - this.V) * f7;
            fArr4[2] = 0.0f;
            fArr4[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.L, 0, fArr4, 0);
            this.N.union((int) (((PointF) fPointObtain).x + fArr[0]), (int) (((PointF) fPointObtain).y - fArr[1]));
            float[] fArr5 = this.M;
            fArr5[0] = f2 * this.U;
            fArr5[1] = f7 * (1.0f - this.V);
            fArr5[2] = 0.0f;
            fArr5[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.L, 0, fArr5, 0);
            this.N.union((int) (((PointF) fPointObtain).x + fArr[0]), (int) (((PointF) fPointObtain).y - fArr[1]));
            this.k = (int) (this.N.centerX() - ((PointF) fPointObtain).x);
            this.l = (int) (this.N.top - ((PointF) fPointObtain).y);
            fPointObtain.recycle();
            return this.N;
        } catch (Throwable th) {
            e6.r(th, "MarkerDelegateImp", "getRect");
            th.printStackTrace();
            return new Rect(0, 0, 0, 0);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public float getRotateAngle() {
        k();
        return this.f11308g;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public String getSnippet() {
        return this.T;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public int getTextureId() {
        try {
            List<BitmapDescriptor> list = this.b0;
            if (list != null && list.size() > 0) {
                return this.J.u();
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public String getTitle() {
        return this.S;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getWidth() {
        try {
            return this.H;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public float getZIndex() {
        return this.q;
    }

    public synchronized void h(ArrayList<BitmapDescriptor> arrayList) {
        BitmapDescriptor bitmapDescriptor;
        c();
        if (arrayList != null) {
            for (BitmapDescriptor bitmapDescriptor2 : arrayList) {
                if (bitmapDescriptor2 != null) {
                    this.b0.add(bitmapDescriptor2);
                }
            }
        }
        if (this.b0.size() == 0) {
            this.b0.add(BitmapDescriptorFactory.defaultMarker());
        }
        if (this.b0.size() > 0 && (bitmapDescriptor = this.b0.get(0)) != null) {
            this.H = bitmapDescriptor.getWidth();
            this.I = bitmapDescriptor.getHeight();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public int hashCodeRemote() {
        return super.hashCode();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void hideInfoWindow() {
        if (isInfoWindowShown()) {
            this.Y.r(this);
            k();
            this.f11305d = false;
        }
        this.f11306e = false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean isAllowLow() {
        return this.h0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean isBelowMaskLayer() {
        return this.B;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public boolean isClickable() {
        return this.y;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean isContains() {
        return this.Y.w(this);
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean isDestory() {
        return this.O;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IMarker
    public boolean isDraggable() {
        return this.W;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public boolean isFlat() {
        return this.f11309h;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public boolean isInfoWindowAutoOverturn() {
        return this.v;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean isInfoWindowEnable() {
        return this.w;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker, com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean isInfoWindowShown() {
        return this.f11305d;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public boolean isOnTap() {
        return this.C;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public boolean isPerspective() {
        return this.a0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public boolean isRemoved() {
        try {
            return !this.Y.w(this);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean isViewMode() {
        return this.k0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public boolean isVisible() {
        return this.X;
    }

    public IPoint j() {
        if (this.Q == null && !this.k0) {
            return null;
        }
        FPoint fPointObtain = FPoint.obtain();
        this.Y.v().getMapProjection().p20ToScreenPoint(this.m, this.n, fPointObtain);
        return IPoint.obtain((int) ((PointF) fPointObtain).x, (int) ((PointF) fPointObtain).y);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0057 A[Catch: all -> 0x00e7, TryCatch #1 {all -> 0x00e7, blocks: (B:5:0x0005, B:7:0x000a, B:9:0x000e, B:11:0x0012, B:12:0x0017, B:13:0x001a, B:15:0x0021, B:19:0x0033, B:20:0x003a, B:22:0x0040, B:24:0x0048, B:26:0x004e, B:30:0x0057, B:32:0x005e, B:34:0x0064, B:36:0x006a, B:38:0x0082, B:40:0x008b, B:41:0x008e, B:42:0x0092, B:44:0x009a, B:47:0x00c3, B:45:0x00b7, B:48:0x00c6, B:49:0x00d1, B:51:0x00d9, B:53:0x00de, B:52:0x00dc), top: B:65:0x0005, outer: #0 }] */
    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void loadTexture(IAMapDelegate iAMapDelegate) {
        ha haVar;
        int iU;
        Bitmap bitmap;
        if (this.d0) {
            return;
        }
        synchronized (this) {
            try {
                ha[] haVarArr = this.K;
                if (haVarArr != null) {
                    for (ha haVar2 : haVarArr) {
                        if (haVar2 != null) {
                            this.Y.k(haVar2);
                        }
                    }
                }
                this.K = null;
                List<BitmapDescriptor> list = this.b0;
                if (list != null) {
                    this.K = new ha[list.size()];
                    boolean z = Build.VERSION.SDK_INT >= 12;
                    int i = 0;
                    for (BitmapDescriptor bitmapDescriptor : this.b0) {
                        if (z) {
                            haVar = iAMapDelegate.getTextureItem(bitmapDescriptor);
                            iU = haVar != null ? haVar.u() : 0;
                            if (haVar == null) {
                                haVar = new ha(bitmapDescriptor, iU);
                            }
                            if (iU != 0 && (bitmap = bitmapDescriptor.getBitmap()) != null && !bitmap.isRecycled()) {
                                this.H = bitmap.getWidth();
                                this.I = bitmap.getHeight();
                                int baseOverlayTextureID = this.Y.v().getBaseOverlayTextureID();
                                if (baseOverlayTextureID == 0) {
                                    int iN = n();
                                    haVar.b(iN);
                                    if (z) {
                                        iAMapDelegate.addTextureItem(haVar);
                                    }
                                    r3.c0(iN, bitmap, false);
                                } else {
                                    if (this.Y.o(bitmap, haVar)) {
                                        r3.i(baseOverlayTextureID, a(bitmap), (int) (haVar.o() * 512.0f), (int) (haVar.m() * 1024.0f));
                                        haVar.b(baseOverlayTextureID);
                                    } else {
                                        int iN2 = n();
                                        r3.c0(iN2, bitmap, false);
                                        haVar.b(iN2);
                                    }
                                    if (z) {
                                        iAMapDelegate.addTextureItem(haVar);
                                    }
                                }
                            }
                            haVar.w();
                            this.K[i] = haVar;
                            i++;
                        } else {
                            haVar = null;
                        }
                        if (haVar == null) {
                            haVar = new ha(bitmapDescriptor, iU);
                        }
                        if (iU != 0) {
                        }
                        haVar.w();
                        this.K[i] = haVar;
                        i++;
                    }
                    if (this.b0.size() == 1) {
                        this.h0 = true;
                    } else {
                        this.h0 = false;
                    }
                    this.A = false;
                    this.d0 = true;
                }
                calFPoint();
            } catch (Throwable th) {
                e6.r(th, "MarkerDelegateImp", "loadtexture");
            }
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public synchronized void reLoadTexture() {
        this.d0 = false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public boolean remove() {
        k();
        this.X = false;
        u uVar = this.Y;
        if (uVar != null) {
            return uVar.p(this);
        }
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void set2Top() {
        this.Y.m(this);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setAlpha(float f2) {
        this.t = f2;
        this.u.alpha(f2);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void setAnchor(float f2, float f3) {
        if (this.U == f2 && this.V == f3) {
            return;
        }
        this.u.anchor(f2, f3);
        this.U = f2;
        this.V = f3;
        this.f11306e = true;
        k();
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setAnimation(Animation animation) {
        getIAnimation();
        setAnimation(animation == null ? null : animation.glAnimation);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker, com.autonavi.base.amap.mapcore.interfaces.IAnimation
    public void setAnimationListener(Animation.AnimationListener animationListener) {
        GLAnimation gLAnimation = this.p0;
        if (gLAnimation != null) {
            gLAnimation.setAnimationListener(animationListener);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setAutoOverturnInfoWindow(boolean z) {
        this.v = z;
        this.u.autoOverturnInfoWindow(z);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void setBelowMaskLayer(boolean z) {
        this.B = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setClickable(boolean z) {
        this.y = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setDisplayLevel(int i) {
        this.x = i;
        this.u.displayLevel(i);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void setDraggable(boolean z) {
        this.W = z;
        this.u.draggable(z);
        k();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setFixingPointEnable(boolean z) {
        this.z = z;
        if (!z) {
            boolean z2 = this.k0;
            LatLng position = getPosition();
            this.Q = position;
            setPosition(position);
            if (z2) {
                this.k0 = true;
                return;
            }
            return;
        }
        if (!this.k0 || this.Q == null) {
            return;
        }
        FPoint fPointObtain = FPoint.obtain();
        this.Y.v().getMapProjection().p20ToScreenPoint(this.m, this.n, fPointObtain);
        this.l0 = (int) ((PointF) fPointObtain).x;
        this.m0 = (int) ((PointF) fPointObtain).y;
        fPointObtain.recycle();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void setFlat(boolean z) throws RemoteException {
        this.f11309h = z;
        k();
        this.u.setFlat(z);
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setGeoPoint(IPoint iPoint) {
        this.k0 = false;
        e(((Point) iPoint).x, ((Point) iPoint).y);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void setIcon(BitmapDescriptor bitmapDescriptor) {
        if (bitmapDescriptor != null) {
            try {
                if (this.b0 == null) {
                    return;
                }
                synchronized (this) {
                    this.f11304a = false;
                    this.b0.clear();
                    this.b0.add(bitmapDescriptor);
                    this.A = false;
                    this.d0 = false;
                    this.c = false;
                    k();
                    this.f11306e = true;
                    this.H = bitmapDescriptor.getWidth();
                    this.I = bitmapDescriptor.getHeight();
                }
            } catch (Throwable th) {
                e6.r(th, "MarkerDelegateImp", "setIcon");
                th.printStackTrace();
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public synchronized void setIcons(ArrayList<BitmapDescriptor> arrayList) {
        if (arrayList != null) {
            try {
                if (this.b0 != null) {
                    this.f11304a = false;
                    h(arrayList);
                    this.d0 = false;
                    this.c = false;
                    this.A = false;
                    k();
                    this.f11306e = true;
                }
            } catch (Throwable th) {
                e6.r(th, "MarkerDelegateImp", "setIcons");
                th.printStackTrace();
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setInfoWindowEnable(boolean z) {
        this.w = z;
        if (!z) {
            hideInfoWindow();
        }
        this.u.infoWindowEnable(z);
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public void setInfoWindowOffset(int i, int i2) throws RemoteException {
        this.i = i;
        this.j = i2;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public void setInfoWindowShown(boolean z) {
        this.f11305d = z;
        this.f11306e = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setMarkerOptions(MarkerOptions markerOptions) {
        if (markerOptions == null) {
            return;
        }
        this.u = markerOptions;
        this.Q = markerOptions.getPosition();
        IPoint iPointObtain = IPoint.obtain();
        this.c0 = this.u.isGps();
        if (this.u.getPosition() != null) {
            if (this.c0) {
                try {
                    double[] dArrB = t8.b(this.u.getPosition().longitude, this.u.getPosition().latitude);
                    this.R = new LatLng(dArrB[1], dArrB[0]);
                    GLMapState.lonlat2Geo(dArrB[0], dArrB[1], iPointObtain);
                } catch (Throwable th) {
                    e6.r(th, "MarkerDelegateImp", "create");
                    this.R = this.u.getPosition();
                }
            } else {
                LatLng latLng = this.Q;
                GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
            }
        }
        this.m = ((Point) iPointObtain).x;
        this.n = ((Point) iPointObtain).y;
        this.U = this.u.getAnchorU();
        this.V = this.u.getAnchorV();
        this.i = this.u.getInfoWindowOffsetX();
        this.j = this.u.getInfoWindowOffsetY();
        this.j0 = this.u.getPeriod();
        this.q = this.u.getZIndex();
        this.B = this.u.isBelowMaskLayer();
        calFPoint();
        setIcons(this.u.getIcons());
        this.f11304a = this.u.isRotatingMode();
        this.b = this.u.getAngleOffset();
        this.X = this.u.isVisible();
        this.T = this.u.getSnippet();
        this.S = this.u.getTitle();
        this.W = this.u.isDraggable();
        this.P = getId();
        this.a0 = this.u.isPerspective();
        this.f11309h = this.u.isFlat();
        this.B = this.u.isBelowMaskLayer();
        this.t = this.u.getAlpha();
        setRotateAngle(this.u.getRotateAngle());
        this.x = this.u.getDisplayLevel();
        this.v = this.u.isInfoWindowAutoOverturn();
        this.w = this.u.isInfoWindowEnable();
        this.L = new float[16];
        this.M = new float[4];
        iPointObtain.recycle();
        b3.a().d(this.Q, this.S, this.T);
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setObject(Object obj) {
        this.Z = obj;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayImageDelegate
    public void setOnTap(boolean z) {
        this.C = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void setPeriod(int i) {
        if (i <= 1) {
            this.j0 = 1;
        } else {
            this.j0 = i;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void setPerspective(boolean z) {
        this.a0 = z;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setPosition(LatLng latLng) {
        if (latLng == null) {
            e6.r(new AMapException("非法坐标值 latlng is null"), "setPosition", "Marker");
            return;
        }
        this.Q = latLng;
        IPoint iPointObtain = IPoint.obtain();
        if (this.c0) {
            try {
                double[] dArrB = t8.b(latLng.longitude, latLng.latitude);
                this.R = new LatLng(dArrB[1], dArrB[0]);
                GLMapState.lonlat2Geo(dArrB[0], dArrB[1], iPointObtain);
            } catch (Throwable unused) {
                this.R = latLng;
            }
        } else {
            GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
        }
        this.m = ((Point) iPointObtain).x;
        this.n = ((Point) iPointObtain).y;
        this.k0 = false;
        calFPoint();
        k();
        this.f11306e = true;
        iPointObtain.recycle();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void setPositionByPixels(int i, int i2) {
        this.l0 = i;
        this.m0 = i2;
        this.k0 = true;
        calFPoint();
        k();
        this.f11306e = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setPositionNotUpdate(LatLng latLng) {
        setPosition(latLng);
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setRotateAngle(float f2) {
        this.u.rotateAngle(f2);
        this.f11308g = f2;
        this.f11307f = (((-f2) % 360.0f) + 360.0f) % 360.0f;
        this.f11306e = true;
        k();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarkerAction
    public void setRotateAngleNotUpdate(float f2) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setSnippet(String str) {
        this.T = str;
        k();
        this.u.snippet(str);
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setTitle(String str) {
        this.S = str;
        k();
        this.u.title(str);
        b3.a().d(this.Q, this.S, this.T);
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setVisible(boolean z) {
        if (this.X == z) {
            return;
        }
        this.u.visible(z);
        this.X = z;
        if (!z) {
            this.C = false;
            if (isInfoWindowShown()) {
                this.Y.r(this);
            }
        }
        k();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlayImage
    public void setZIndex(float f2) {
        this.q = f2;
        this.u.zIndex(f2);
        if (this.C) {
            this.C = false;
            this.Y.g();
        }
        this.Y.A();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker
    public void showInfoWindow() {
        if (this.X && isContains() && !isRemoved() && isInfoWindowEnable()) {
            this.Y.l(this);
            k();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMarker, com.autonavi.base.amap.mapcore.interfaces.IAnimation
    public boolean startAnimation() {
        if (this.p0 != null) {
            synchronized (this.q0) {
                GLAnimation gLAnimation = this.p0;
                if (gLAnimation instanceof GLAnimationSet) {
                    GLAnimationSet gLAnimationSet = (GLAnimationSet) gLAnimation;
                    for (GLAnimation gLAnimation2 : gLAnimationSet.getAnimations()) {
                        f(gLAnimation2);
                        gLAnimation2.setDuration(gLAnimationSet.getDuration());
                    }
                } else {
                    f(gLAnimation);
                }
                this.D = false;
                GLAnimation gLAnimation3 = this.p0;
                this.o0 = gLAnimation3;
                this.g0 = true;
                gLAnimation3.start();
            }
            k();
        }
        return false;
    }

    @Override // com.autonavi.base.amap.mapcore.interfaces.IAnimation
    public void setAnimation(GLAnimation gLAnimation) {
        if (gLAnimation == null) {
            return;
        }
        this.p0 = gLAnimation;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void destroy() {
        destroy(true);
    }
}
