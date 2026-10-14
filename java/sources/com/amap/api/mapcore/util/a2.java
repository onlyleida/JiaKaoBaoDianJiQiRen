package com.amap.api.mapcore.util;

import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.RemoteException;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.AMapPara;
import com.amap.api.maps.model.BaseHoleOptions;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CircleHoleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.PolygonHoleOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IPolygonDelegate;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.autonavi.base.amap.mapcore.Rectangle;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class a2 implements IPolygonDelegate {
    private static float E = 4.0075016E7f;
    private static int F = 256;
    private static int G = 20;
    private static double H = 1.0E10d;
    private int A;
    private int B;
    private FloatBuffer C;
    private FloatBuffer D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f10432a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f10435f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10436g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10437h;
    private List<LatLng> i;
    private List<LatLng> j;
    private List<BaseHoleOptions> m;
    private FloatBuffer n;
    private FloatBuffer o;
    private h2.e z;
    private float b = BitmapDescriptorFactory.HUE_RED;
    private boolean c = true;
    private List<IPoint> k = new Vector();
    private List<BaseHoleOptions> l = new Vector();
    private int p = 0;
    private int q = 0;
    private boolean r = false;
    private float s = BitmapDescriptorFactory.HUE_RED;
    private Object t = new Object();
    private boolean u = false;
    private AMapPara.LineJoinType v = AMapPara.LineJoinType.LineJoinBevel;
    private AMapPara.LineCapType w = AMapPara.LineCapType.LineCapRound;
    Rect x = null;
    private float y = BitmapDescriptorFactory.HUE_RED;

    public a2(IAMapDelegate iAMapDelegate) {
        this.f10432a = iAMapDelegate;
        try {
            this.f10434e = getId();
        } catch (RemoteException e2) {
            e6.r(e2, "PolygonDelegateImp", "create");
            e2.printStackTrace();
        }
    }

    private float a(double d2) {
        return (float) ((Math.cos((d2 * 3.141592653589793d) / 180.0d) * ((double) E)) / ((double) (F << G)));
    }

    private void b() {
        IAMapDelegate iAMapDelegate = this.f10432a;
        if (iAMapDelegate != null) {
            this.z = (h2.e) iAMapDelegate.getGLShader(3);
        }
    }

    private void e(List<LatLng> list) throws RemoteException {
        LatLngBounds.Builder builder = LatLngBounds.builder();
        if (this.x == null) {
            this.x = new Rect();
        }
        r3.H(this.x);
        this.k.clear();
        if (list != null) {
            Object obj = null;
            for (LatLng latLng : list) {
                if (!latLng.equals(obj)) {
                    IPoint iPointObtain = IPoint.obtain();
                    this.f10432a.latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain);
                    this.k.add(iPointObtain);
                    r3.h0(this.x, ((Point) iPointObtain).x, ((Point) iPointObtain).y);
                    builder.include(latLng);
                    obj = latLng;
                }
            }
            int size = this.k.size();
            if (size > 1) {
                IPoint iPoint = this.k.get(0);
                int i = size - 1;
                IPoint iPoint2 = this.k.get(i);
                if (((Point) iPoint).x == ((Point) iPoint2).x && ((Point) iPoint).y == ((Point) iPoint2).y) {
                    this.k.remove(i);
                }
            }
        }
        this.x.sort();
        FloatBuffer floatBuffer = this.n;
        if (floatBuffer != null) {
            floatBuffer.clear();
        }
        FloatBuffer floatBuffer2 = this.o;
        if (floatBuffer2 != null) {
            floatBuffer2.clear();
        }
        List<IPoint> list2 = this.k;
        if (r3.S(list2, 0, list2.size())) {
            Collections.reverse(this.k);
        }
        this.p = 0;
        this.q = 0;
        this.f10432a.setRunLowFrame(false);
    }

    private void f(List<IPoint> list, int i, int i2) throws RemoteException {
        if (list.size() < 2) {
            return;
        }
        float[] fArr = new float[list.size() * 3];
        int size = list.size();
        IPoint[] iPointArr = new IPoint[size];
        int i3 = 0;
        for (IPoint iPoint : list) {
            int i4 = i3 * 3;
            fArr[i4] = ((Point) iPoint).x - i;
            fArr[i4 + 1] = ((Point) iPoint).y - i2;
            fArr[i4 + 2] = 0.0f;
            iPointArr[i3] = iPoint;
            i3++;
        }
        IPoint[] iPointArrK = k(iPointArr);
        if (iPointArrK.length == 0) {
            if (H == 1.0E10d) {
                H = 1.0E8d;
            } else {
                H = 1.0E10d;
            }
            iPointArrK = k(iPointArr);
        }
        float[] fArr2 = new float[iPointArrK.length * 3];
        int i5 = 0;
        for (IPoint iPoint2 : iPointArrK) {
            int i6 = i5 * 3;
            fArr2[i6] = ((Point) iPoint2).x - i;
            fArr2[i6 + 1] = ((Point) iPoint2).y - i2;
            fArr2[i6 + 2] = 0.0f;
            i5++;
        }
        this.A = size;
        this.B = iPointArrK.length;
        this.C = r3.E(fArr);
        this.D = r3.E(fArr2);
    }

    private boolean h(PolygonHoleOptions polygonHoleOptions) {
        boolean zP = true;
        try {
            List<LatLng> points = polygonHoleOptions.getPoints();
            for (int i = 0; i < points.size() && (zP = r3.P(points.get(i), getPoints())); i++) {
            }
        } catch (Throwable th) {
            e6.r(th, "PolygonDelegateImp", "isPolygonInPolygon");
            th.printStackTrace();
        }
        return zP;
    }

    private boolean i(IPoint iPoint, IPoint iPoint2) {
        int i = ((Point) iPoint2).x;
        int i2 = ((Point) iPoint).x;
        float f2 = i - i2;
        float f3 = this.s;
        if (f2 < f3 && i - i2 > (-f3)) {
            int i3 = ((Point) iPoint2).y;
            int i4 = ((Point) iPoint).y;
            if (i3 - i4 < f3 && i3 - i4 > (-f3)) {
                return false;
            }
        }
        return true;
    }

    private boolean j(Rectangle rectangle) {
        this.y = this.f10432a.getZoomLevel();
        r();
        if (this.y > 10 && rectangle != null) {
            try {
                return !rectangle.contains(this.x);
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static IPoint[] k(IPoint[] iPointArr) {
        int length = iPointArr.length;
        double[] dArr = new double[length * 2];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            double d2 = ((Point) iPointArr[i]).x;
            double d3 = H;
            dArr[i2] = d2 * d3;
            dArr[i2 + 1] = ((double) ((Point) iPointArr[i]).y) * d3;
        }
        n3 n3VarC = new w2().c(dArr);
        int i3 = n3VarC.b;
        IPoint[] iPointArr2 = new IPoint[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            iPointArr2[i4] = new IPoint();
            ((Point) iPointArr2[i4]).x = (int) (dArr[n3VarC.a(i4) * 2] / H);
            ((Point) iPointArr2[i4]).y = (int) (dArr[(n3VarC.a(i4) * 2) + 1] / H);
        }
        return iPointArr2;
    }

    private double l(double d2) {
        return 1.0d / ((double) a(d2));
    }

    private List<IPoint> m(List<LatLng> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Object obj = null;
            for (LatLng latLng : list) {
                if (!latLng.equals(obj)) {
                    IPoint iPointObtain = IPoint.obtain();
                    this.f10432a.latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain);
                    arrayList.add(iPointObtain);
                    r3.h0(this.x, ((Point) iPointObtain).x, ((Point) iPointObtain).y);
                    obj = latLng;
                }
            }
            int size = arrayList.size();
            if (size > 1) {
                IPoint iPoint = (IPoint) arrayList.get(0);
                int i = size - 1;
                IPoint iPoint2 = (IPoint) arrayList.get(i);
                if (((Point) iPoint).x == ((Point) iPoint2).x && ((Point) iPoint).y == ((Point) iPoint2).y) {
                    arrayList.remove(i);
                }
            }
        }
        if (r3.S(arrayList, 0, arrayList.size())) {
            Collections.reverse(arrayList);
        }
        return arrayList;
    }

    private void n() throws RemoteException {
        MapConfig mapConfig = this.f10432a.getMapConfig();
        List<BaseHoleOptions> list = this.l;
        if (list == null || list.size() <= 0) {
            return;
        }
        GLES20.glClearStencil(0);
        GLES20.glStencilMask(255);
        GLES20.glClear(1024);
        GLES20.glFlush();
        GLES20.glEnable(2960);
        GLES20.glColorMask(false, false, false, false);
        GLES20.glStencilFunc(512, 1, 255);
        GLES20.glStencilOp(7681, 7680, 7680);
        for (int i = 0; i < this.l.size(); i++) {
            BaseHoleOptions baseHoleOptions = this.l.get(i);
            boolean z = baseHoleOptions instanceof PolygonHoleOptions;
            if (z) {
                f(m(((PolygonHoleOptions) baseHoleOptions).getPoints()), (int) mapConfig.getSX(), (int) mapConfig.getSY());
            } else if (baseHoleOptions instanceof CircleHoleOptions) {
                this.f10432a.changeGLOverlayIndex();
                d((CircleHoleOptions) baseHoleOptions);
            }
            if (this.C != null && this.A > 0) {
                h2.e eVar = this.z;
                if (eVar == null || eVar.i()) {
                    b();
                }
                if (z) {
                    z2.g(this.z, -1, ViewCompat.MEASURED_STATE_MASK, this.C, this.f10435f, this.D, this.A, this.B, this.f10432a.getFinalMatrix(), this.f10432a.getLineTextureID(), this.f10432a.getLineTextureRatio(), mapConfig.getMapPerPixelUnitLength(), this.w.getTypeValue(), this.v.getTypeValue(), this.u, false);
                } else if (baseHoleOptions instanceof CircleHoleOptions) {
                    z2.d(this.z, Color.argb(200, 80, 1, 1), Color.argb(200, 1, 1, 1), this.C, 5.0f, this.A, this.f10432a.getFinalMatrix(), mapConfig.getMapPerPixelUnitLength(), this.f10432a.getLineTextureID(), this.f10432a.getLineTextureRatio(), this.u, false);
                }
            }
        }
        GLES20.glColorMask(true, true, true, true);
        GLES20.glStencilFunc(Videoio.CAP_PROP_XI_LENS_FEATURE_SELECTOR, 1, 255);
        GLES20.glStencilMask(0);
    }

    private void o(List<IPoint> list, int i, int i2) throws RemoteException {
        int i3;
        r();
        ArrayList<IPoint> arrayList = new ArrayList();
        int size = list.size();
        if (size < 2) {
            return;
        }
        IPoint iPoint = list.get(0);
        arrayList.add(iPoint);
        int i4 = 1;
        while (true) {
            i3 = size - 1;
            if (i4 >= i3) {
                break;
            }
            IPoint iPoint2 = list.get(i4);
            if (i(iPoint, iPoint2)) {
                arrayList.add(iPoint2);
                iPoint = iPoint2;
            }
            i4++;
        }
        arrayList.add(list.get(i3));
        float[] fArr = new float[arrayList.size() * 3];
        int size2 = arrayList.size();
        IPoint[] iPointArr = new IPoint[size2];
        int i5 = 0;
        for (IPoint iPoint3 : arrayList) {
            int i6 = i5 * 3;
            fArr[i6] = ((Point) iPoint3).x - i;
            fArr[i6 + 1] = ((Point) iPoint3).y - i2;
            fArr[i6 + 2] = 0.0f;
            iPointArr[i5] = iPoint3;
            i5++;
        }
        IPoint[] iPointArrK = k(iPointArr);
        if (iPointArrK.length == 0) {
            if (H == 1.0E10d) {
                H = 1.0E8d;
            } else {
                H = 1.0E10d;
            }
            iPointArrK = k(iPointArr);
        }
        float[] fArr2 = new float[iPointArrK.length * 3];
        int i7 = 0;
        for (IPoint iPoint4 : iPointArrK) {
            int i8 = i7 * 3;
            fArr2[i8] = ((Point) iPoint4).x - i;
            fArr2[i8 + 1] = ((Point) iPoint4).y - i2;
            fArr2[i8 + 2] = 0.0f;
            i7++;
        }
        this.p = size2;
        this.q = iPointArrK.length;
        this.n = r3.E(fArr);
        this.o = r3.E(fArr2);
    }

    private boolean p(CircleHoleOptions circleHoleOptions) {
        try {
            return !r3.m0(getPoints(), circleHoleOptions) && contains(circleHoleOptions.getCenter());
        } catch (Throwable th) {
            e6.r(th, "PolygonDelegateImp", "isCircleInPolygon");
            th.printStackTrace();
            return false;
        }
    }

    private void q() throws RemoteException {
        GLES20.glClearStencil(0);
        GLES20.glClear(1024);
        GLES20.glDisable(2960);
        MapConfig mapConfig = this.f10432a.getMapConfig();
        List<BaseHoleOptions> list = this.l;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i = 0; i < this.l.size(); i++) {
            BaseHoleOptions baseHoleOptions = this.l.get(i);
            boolean z = baseHoleOptions instanceof PolygonHoleOptions;
            if (z) {
                f(m(((PolygonHoleOptions) baseHoleOptions).getPoints()), (int) mapConfig.getSX(), (int) mapConfig.getSY());
            } else if (baseHoleOptions instanceof CircleHoleOptions) {
                this.f10432a.changeGLOverlayIndex();
                d((CircleHoleOptions) baseHoleOptions);
            }
            if (this.C != null && this.A > 0) {
                h2.e eVar = this.z;
                if (eVar == null || eVar.i()) {
                    b();
                }
                if (z) {
                    z2.f(this.z, 0, this.f10437h, this.C, this.f10435f, this.D, this.A, this.B, mapConfig.getMvpMatrix(), this.f10432a.getLineTextureID(), this.f10432a.getLineTextureRatio(), mapConfig.getMapPerPixelUnitLength(), this.w.getTypeValue(), this.v.getTypeValue(), this.u);
                } else if (baseHoleOptions instanceof CircleHoleOptions) {
                    z2.c(this.z, 0, this.f10437h, this.C, this.f10435f, this.A, this.f10432a.getFinalMatrix(), mapConfig.getMapPerPixelUnitLength(), this.f10432a.getLineTextureID(), this.f10432a.getLineTextureRatio(), this.u);
                }
            }
        }
    }

    private void r() {
        float zoomLevel = this.f10432a.getZoomLevel();
        if (this.k.size() <= 5000) {
            this.s = this.f10432a.getMapProjection().getMapLenWithWin(2);
            return;
        }
        if (zoomLevel > 12) {
            this.s = this.f10432a.getMapProjection().getMapLenWithWin(10);
            return;
        }
        float f2 = (this.f10435f / 2.0f) + (zoomLevel / 2.0f);
        if (f2 > 200.0f) {
            f2 = 200.0f;
        }
        this.s = this.f10432a.getMapProjection().getMapLenWithWin((int) f2);
    }

    public void c(AMapPara.LineJoinType lineJoinType) {
        this.v = lineJoinType;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return this.f10432a.getMapConfig().getGeoRectangle().isOverlap(this.x);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public boolean contains(LatLng latLng) throws RemoteException {
        if (latLng == null) {
            return false;
        }
        try {
            List<BaseHoleOptions> list = this.l;
            if (list != null && list.size() > 0) {
                Iterator<BaseHoleOptions> it = this.l.iterator();
                while (it.hasNext()) {
                    if (r3.N(it.next(), latLng)) {
                        return false;
                    }
                }
            }
            return r3.P(latLng, getPoints());
        } catch (Throwable th) {
            e6.r(th, "PolygonDelegateImp", "contains");
            th.printStackTrace();
            return false;
        }
    }

    public void d(CircleHoleOptions circleHoleOptions) throws RemoteException {
        if (circleHoleOptions.getCenter() != null) {
            IPoint iPointObtain = IPoint.obtain();
            FPoint fPointObtain = FPoint.obtain();
            GLMapState.lonlat2Geo(circleHoleOptions.getCenter().longitude, circleHoleOptions.getCenter().latitude, iPointObtain);
            float[] fArr = new float[1086];
            double dL = l(circleHoleOptions.getCenter().latitude) * circleHoleOptions.getRadius();
            int sx = (int) this.f10432a.getMapConfig().getSX();
            int sy = (int) this.f10432a.getMapConfig().getSY();
            float f2 = ((Point) iPointObtain).x - sx;
            ((PointF) fPointObtain).x = f2;
            float f3 = ((Point) iPointObtain).y - sy;
            ((PointF) fPointObtain).y = f3;
            int i = 0;
            fArr[0] = f2;
            fArr[1] = f3;
            fArr[2] = 0.0f;
            while (i < 361) {
                double d2 = (((double) i) * 3.141592653589793d) / 180.0d;
                double dSin = Math.sin(d2) * dL;
                double dCos = Math.cos(d2) * dL;
                int i2 = (int) (((double) ((Point) iPointObtain).x) + dSin);
                int i3 = (int) (((double) ((Point) iPointObtain).y) + dCos);
                ((PointF) fPointObtain).x = i2 - sx;
                ((PointF) fPointObtain).y = i3 - sy;
                ((PointF) fPointObtain).x = i2 - ((int) this.f10432a.getMapConfig().getSX());
                float sy2 = i3 - ((int) this.f10432a.getMapConfig().getSY());
                ((PointF) fPointObtain).y = sy2;
                i++;
                int i4 = i * 3;
                fArr[i4] = ((PointF) fPointObtain).x;
                fArr[i4 + 1] = sy2;
                fArr[i4 + 2] = 0.0f;
            }
            this.A = 362;
            this.C = r3.E(fArr);
            iPointObtain.recycle();
            fPointObtain.recycle();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        try {
            FloatBuffer floatBuffer = this.n;
            if (floatBuffer != null) {
                floatBuffer.clear();
                this.n = null;
            }
            if (this.o != null) {
                this.o = null;
            }
            FloatBuffer floatBuffer2 = this.C;
            if (floatBuffer2 != null) {
                floatBuffer2.clear();
                this.C = null;
            }
            FloatBuffer floatBuffer3 = this.D;
            if (floatBuffer3 != null) {
                floatBuffer3.clear();
                this.D = null;
            }
            List<BaseHoleOptions> list = this.l;
            if (list != null) {
                list.clear();
            }
            List<BaseHoleOptions> list2 = this.m;
            if (list2 != null) {
                list2.clear();
            }
            this.l = null;
            this.m = null;
        } catch (Throwable th) {
            e6.r(th, "PolygonDelegateImp", "destroy");
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        List<IPoint> list = this.k;
        if (list == null || list.size() == 0) {
            return;
        }
        Rectangle geoRectangle = mapConfig.getGeoRectangle();
        geoRectangle.getClipRect();
        List<IPoint> list2 = this.k;
        j(geoRectangle);
        n();
        if (list2.size() > 2) {
            o(list2, (int) mapConfig.getSX(), (int) mapConfig.getSY());
            if (this.n != null && this.o != null && this.p > 0 && this.q > 0) {
                h2.e eVar = this.z;
                if (eVar == null || eVar.i()) {
                    b();
                }
                z2.g(this.z, this.f10436g, this.f10437h, this.n, this.f10435f, this.o, this.p, this.q, this.f10432a.getFinalMatrix(), this.f10432a.getLineTextureID(), this.f10432a.getLineTextureRatio(), mapConfig.getMapPerPixelUnitLength(), this.w.getTypeValue(), this.v.getTypeValue(), this.u, true);
            }
        }
        q();
        this.r = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return equals(iOverlay) || iOverlay.getId().equals(getId());
    }

    public void g(boolean z) {
        this.u = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public int getFillColor() throws RemoteException {
        return this.f10436g;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public List<BaseHoleOptions> getHoleOptions() {
        return this.l;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolygonDelegate
    public List<LatLng> getHoles() {
        return this.i;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() throws RemoteException {
        if (this.f10434e == null) {
            this.f10434e = this.f10432a.createId("Polygon");
        }
        return this.f10434e;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public List<LatLng> getPoints() throws RemoteException {
        return this.j;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public int getStrokeColor() throws RemoteException {
        return this.f10437h;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public float getStrokeWidth() throws RemoteException {
        return this.f10435f;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() throws RemoteException {
        return this.b;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public int hashCodeRemote() throws RemoteException {
        return super.hashCode();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isAboveMaskLayer() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean isDrawFinish() {
        return this.r;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolygonDelegate
    public boolean isGeodesic() {
        return this.f10433d;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isVisible() throws RemoteException {
        return this.c;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
        this.f10432a.removeGLOverlay(getId());
        this.f10432a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public void setFillColor(int i) throws RemoteException {
        this.f10436g = i;
        this.f10432a.setRunLowFrame(false);
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolygonDelegate
    public void setGeodesic(boolean z) {
        this.f10433d = z;
        this.f10432a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public void setHoleOptions(List<BaseHoleOptions> list) {
        try {
            this.m = list;
            List<BaseHoleOptions> list2 = this.l;
            if (list2 == null) {
                this.l = new ArrayList();
            } else {
                list2.clear();
            }
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    BaseHoleOptions baseHoleOptions = list.get(i);
                    if (baseHoleOptions instanceof PolygonHoleOptions) {
                        PolygonHoleOptions polygonHoleOptions = (PolygonHoleOptions) baseHoleOptions;
                        if (h(polygonHoleOptions) && !r3.U(this.l, polygonHoleOptions)) {
                            this.l.add(polygonHoleOptions);
                        }
                    } else if (baseHoleOptions instanceof CircleHoleOptions) {
                        CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
                        if (p(circleHoleOptions) && !r3.T(this.l, circleHoleOptions)) {
                            this.l.add(circleHoleOptions);
                        }
                    }
                }
            } else {
                this.l.clear();
            }
        } catch (Throwable th) {
            e6.r(th, "PolygonDelegateImp", "setHoleOptions");
            th.printStackTrace();
        }
        this.f10432a.setRunLowFrame(false);
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IPolygonDelegate
    public void setHoles(List<LatLng> list) throws RemoteException {
        this.i = list;
        this.f10432a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public void setPoints(List<LatLng> list) throws RemoteException {
        synchronized (this.t) {
            this.j = list;
            e(list);
            this.f10432a.setRunLowFrame(false);
            setHoleOptions(this.m);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public void setStrokeColor(int i) throws RemoteException {
        this.f10437h = i;
        this.f10432a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IPolygon
    public void setStrokeWidth(float f2) throws RemoteException {
        this.f10435f = f2;
        this.f10432a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) throws RemoteException {
        this.c = z;
        this.f10432a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) throws RemoteException {
        this.b = f2;
        this.f10432a.changeGLOverlayIndex();
        this.f10432a.setRunLowFrame(false);
    }
}
