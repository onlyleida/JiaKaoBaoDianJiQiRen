package com.amap.api.mapcore.util;

import android.graphics.Point;
import android.graphics.PointF;
import android.opengl.GLES20;
import android.os.RemoteException;
import android.util.Log;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BaseHoleOptions;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CircleHoleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.PolygonHoleOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.ICircleDelegate;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.MapConfig;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class s1 implements ICircleDelegate {
    private static int A = 256;
    private static int B = 20;
    private static double C = 1.0E10d;
    private static Object y = new Object();
    private static float z = 4.0075016E7f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f11164h;
    private IAMapDelegate i;
    private FloatBuffer j;
    private List<BaseHoleOptions> o;
    private List<BaseHoleOptions> p;
    private int q;
    private int r;
    private FloatBuffer s;
    private FloatBuffer t;
    private h2.e x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LatLng f11159a = null;
    private double b = 0.0d;
    private float c = 10.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11160d = ViewCompat.MEASURED_STATE_MASK;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11161e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f11162f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f11163g = true;
    private int k = 0;
    private boolean l = false;
    private IPoint m = IPoint.obtain();
    private FPoint n = FPoint.obtain();
    private int u = -1;
    float v = BitmapDescriptorFactory.HUE_RED;
    private boolean w = false;

    public s1(IAMapDelegate iAMapDelegate) {
        this.i = iAMapDelegate;
        try {
            this.f11164h = getId();
        } catch (RemoteException e2) {
            e6.r(e2, "CircleDelegateImp", "create");
            e2.printStackTrace();
        }
    }

    private float a(double d2) {
        return (float) ((Math.cos((d2 * 3.141592653589793d) / 180.0d) * ((double) z)) / ((double) (A << B)));
    }

    private List<IPoint> b(List<LatLng> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Object obj = null;
            for (LatLng latLng : list) {
                if (!latLng.equals(obj)) {
                    IPoint iPointObtain = IPoint.obtain();
                    this.i.latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain);
                    arrayList.add(iPointObtain);
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

    private void e(List<IPoint> list, int i, int i2) throws RemoteException {
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
        IPoint[] iPointArrH = h(iPointArr);
        if (iPointArrH.length == 0) {
            if (C == 1.0E10d) {
                C = 1.0E8d;
            } else {
                C = 1.0E10d;
            }
            iPointArrH = h(iPointArr);
        }
        float[] fArr2 = new float[iPointArrH.length * 3];
        int i5 = 0;
        for (IPoint iPoint2 : iPointArrH) {
            int i6 = i5 * 3;
            fArr2[i6] = ((Point) iPoint2).x - i;
            fArr2[i6 + 1] = ((Point) iPoint2).y - i2;
            fArr2[i6 + 2] = 0.0f;
            i5++;
        }
        this.q = size;
        this.r = iPointArrH.length;
        this.s = r3.E(fArr);
        this.t = r3.E(fArr2);
    }

    private boolean g(PolygonHoleOptions polygonHoleOptions) {
        boolean zContains = true;
        try {
            List<LatLng> points = polygonHoleOptions.getPoints();
            for (int i = 0; i < points.size() && (zContains = contains(points.get(i))); i++) {
            }
        } catch (Throwable th) {
            e6.r(th, "CircleDelegateImp", "isPolygonInCircle");
            th.printStackTrace();
        }
        return zContains;
    }

    static IPoint[] h(IPoint[] iPointArr) {
        int length = iPointArr.length;
        double[] dArr = new double[length * 2];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            double d2 = ((Point) iPointArr[i]).x;
            double d3 = C;
            dArr[i2] = d2 * d3;
            dArr[i2 + 1] = ((double) ((Point) iPointArr[i]).y) * d3;
        }
        n3 n3VarC = new w2().c(dArr);
        int i3 = n3VarC.b;
        IPoint[] iPointArr2 = new IPoint[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            iPointArr2[i4] = new IPoint();
            ((Point) iPointArr2[i4]).x = (int) (dArr[n3VarC.a(i4) * 2] / C);
            ((Point) iPointArr2[i4]).y = (int) (dArr[(n3VarC.a(i4) * 2) + 1] / C);
        }
        return iPointArr2;
    }

    private double i(double d2) {
        return 1.0d / ((double) a(d2));
    }

    private void j() {
        IAMapDelegate iAMapDelegate = this.i;
        if (iAMapDelegate != null) {
            this.x = (h2.e) iAMapDelegate.getGLShader(3);
        }
    }

    private boolean k(CircleHoleOptions circleHoleOptions) {
        try {
            return ((double) AMapUtils.calculateLineDistance(circleHoleOptions.getCenter(), getCenter())) <= getRadius() - circleHoleOptions.getRadius();
        } catch (Throwable th) {
            e6.r(th, "CircleDelegateImp", "isCircleInCircle");
            th.printStackTrace();
            return true;
        }
    }

    private void l() throws RemoteException {
        MapConfig mapConfig = this.i.getMapConfig();
        List<BaseHoleOptions> list = this.o;
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
        for (int i = 0; i < this.o.size(); i++) {
            BaseHoleOptions baseHoleOptions = this.o.get(i);
            boolean z2 = baseHoleOptions instanceof PolygonHoleOptions;
            if (z2) {
                e(b(((PolygonHoleOptions) baseHoleOptions).getPoints()), (int) mapConfig.getSX(), (int) mapConfig.getSY());
            } else if (baseHoleOptions instanceof CircleHoleOptions) {
                this.i.changeGLOverlayIndex();
                d((CircleHoleOptions) baseHoleOptions);
            }
            if (this.s != null && this.q > 0) {
                h2.e eVar = this.x;
                if (eVar == null || eVar.i()) {
                    j();
                }
                if (z2) {
                    z2.g(this.x, -1, this.f11161e, this.s, getStrokeWidth(), this.t, this.q, this.r, this.i.getFinalMatrix(), this.i.getLineTextureID(), this.i.getLineTextureRatio(), mapConfig.getMapPerPixelUnitLength(), 3, 0, this.w, false);
                } else if (baseHoleOptions instanceof CircleHoleOptions) {
                    z2.d(this.x, -1, -1, this.s, 10.0f, this.q, this.i.getFinalMatrix(), mapConfig.getMapPerPixelUnitLength(), this.i.getLineTextureID(), this.i.getLineTextureRatio(), this.w, false);
                }
            }
        }
        GLES20.glColorMask(true, true, true, true);
        GLES20.glStencilFunc(Videoio.CAP_PROP_XI_LENS_FEATURE_SELECTOR, 1, 255);
        GLES20.glStencilMask(0);
    }

    private void m() throws RemoteException {
        GLES20.glClearStencil(0);
        GLES20.glClear(1024);
        GLES20.glDisable(2960);
        MapConfig mapConfig = this.i.getMapConfig();
        List<BaseHoleOptions> list = this.o;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i = 0; i < this.o.size(); i++) {
            BaseHoleOptions baseHoleOptions = this.o.get(i);
            boolean z2 = baseHoleOptions instanceof PolygonHoleOptions;
            if (z2) {
                e(b(((PolygonHoleOptions) baseHoleOptions).getPoints()), (int) mapConfig.getSX(), (int) mapConfig.getSY());
            } else if (baseHoleOptions instanceof CircleHoleOptions) {
                this.i.changeGLOverlayIndex();
                d((CircleHoleOptions) baseHoleOptions);
            }
            if (this.s != null && this.q > 0) {
                h2.e eVar = this.x;
                if (eVar == null || eVar.i()) {
                    j();
                }
                if (z2) {
                    z2.f(this.x, 0, this.f11160d, this.s, this.c, this.t, this.q, this.r, this.i.getFinalMatrix(), this.i.getLineTextureID(), this.i.getLineTextureRatio(), mapConfig.getMapPerPixelUnitLength(), 3, 0, this.w);
                } else if (baseHoleOptions instanceof CircleHoleOptions) {
                    z2.c(this.x, 0, this.f11160d, this.s, this.c, this.q, this.i.getFinalMatrix(), mapConfig.getMapPerPixelUnitLength(), this.i.getLineTextureID(), this.i.getLineTextureRatio(), this.w);
                }
            }
        }
    }

    void c() {
        this.k = 0;
        FloatBuffer floatBuffer = this.j;
        if (floatBuffer != null) {
            floatBuffer.clear();
        }
        this.i.setRunLowFrame(false);
        setHoleOptions(this.p);
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        synchronized (y) {
            int i = 0;
            this.l = false;
            LatLng latLng = this.f11159a;
            if (latLng != null) {
                float[] fArr = new float[1086];
                double dI = i(latLng.latitude) * this.b;
                this.i.getMapProjection();
                ((PointF) this.n).x = ((Point) this.m).x - ((int) this.i.getMapConfig().getSX());
                ((PointF) this.n).y = ((Point) this.m).y - ((int) this.i.getMapConfig().getSY());
                FPoint fPoint = this.n;
                fArr[0] = ((PointF) fPoint).x;
                fArr[1] = ((PointF) fPoint).y;
                fArr[2] = 0.0f;
                while (i < 361) {
                    double d2 = (((double) i) * 3.141592653589793d) / 180.0d;
                    double dSin = Math.sin(d2) * dI;
                    double dCos = Math.cos(d2) * dI;
                    IPoint iPoint = this.m;
                    int i2 = (int) (((double) ((Point) iPoint).x) + dSin);
                    int i3 = (int) (((double) ((Point) iPoint).y) + dCos);
                    ((PointF) this.n).x = i2 - ((int) this.i.getMapConfig().getSX());
                    ((PointF) this.n).y = i3 - ((int) this.i.getMapConfig().getSY());
                    i++;
                    int i4 = i * 3;
                    FPoint fPoint2 = this.n;
                    fArr[i4] = ((PointF) fPoint2).x;
                    fArr[i4 + 1] = ((PointF) fPoint2).y;
                    fArr[i4 + 2] = 0.0f;
                }
                this.k = 362;
                this.j = r3.E(fArr);
            }
        }
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public boolean contains(LatLng latLng) throws RemoteException {
        List<BaseHoleOptions> list = this.o;
        if (list != null && list.size() > 0) {
            Iterator<BaseHoleOptions> it = this.o.iterator();
            while (it.hasNext()) {
                if (r3.N(it.next(), latLng)) {
                    return false;
                }
            }
        }
        return this.b >= ((double) AMapUtils.calculateLineDistance(this.f11159a, latLng));
    }

    public void d(CircleHoleOptions circleHoleOptions) throws RemoteException {
        if (circleHoleOptions.getCenter() != null) {
            IPoint iPointObtain = IPoint.obtain();
            FPoint fPointObtain = FPoint.obtain();
            GLMapState.lonlat2Geo(circleHoleOptions.getCenter().longitude, circleHoleOptions.getCenter().latitude, iPointObtain);
            float[] fArr = new float[1086];
            double dI = i(circleHoleOptions.getCenter().latitude) * circleHoleOptions.getRadius();
            ((PointF) fPointObtain).x = ((Point) iPointObtain).x - ((int) this.i.getMapConfig().getSX());
            float sy = ((Point) iPointObtain).y - ((int) this.i.getMapConfig().getSY());
            ((PointF) fPointObtain).y = sy;
            int i = 0;
            fArr[0] = ((PointF) fPointObtain).x;
            fArr[1] = sy;
            fArr[2] = 0.0f;
            while (i < 361) {
                double d2 = (((double) i) * 3.141592653589793d) / 180.0d;
                double dSin = Math.sin(d2) * dI;
                double dCos = Math.cos(d2) * dI;
                int i2 = (int) (((double) ((Point) iPointObtain).x) + dSin);
                int i3 = (int) (((double) ((Point) iPointObtain).y) + dCos);
                ((PointF) fPointObtain).x = i2 - ((int) this.i.getMapConfig().getSX());
                float sy2 = i3 - ((int) this.i.getMapConfig().getSY());
                ((PointF) fPointObtain).y = sy2;
                i++;
                int i4 = i * 3;
                fArr[i4] = ((PointF) fPointObtain).x;
                fArr[i4 + 1] = sy2;
                fArr[i4 + 2] = 0.0f;
            }
            this.q = 362;
            this.s = r3.E(fArr);
            iPointObtain.recycle();
            fPointObtain.recycle();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        try {
            this.f11159a = null;
            FloatBuffer floatBuffer = this.j;
            if (floatBuffer != null) {
                floatBuffer.clear();
                this.j = null;
            }
            FloatBuffer floatBuffer2 = this.s;
            if (floatBuffer2 != null) {
                floatBuffer2.clear();
                this.s = null;
            }
            FloatBuffer floatBuffer3 = this.t;
            if (floatBuffer3 != null) {
                floatBuffer3.clear();
                this.t = null;
            }
            List<BaseHoleOptions> list = this.o;
            if (list != null) {
                list.clear();
            }
            List<BaseHoleOptions> list2 = this.p;
            if (list2 != null) {
                list2.clear();
            }
            this.o = null;
            this.p = null;
        } catch (Throwable th) {
            e6.r(th, "CircleDelegateImp", "destroy");
            th.printStackTrace();
            Log.d("destroy erro", "CircleDelegateImp destroy");
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        if (this.f11159a == null || this.b <= 0.0d || !this.f11163g) {
            return;
        }
        calMapFPoint();
        l();
        if (this.j != null && this.k > 0) {
            h2.e eVar = this.x;
            if (eVar == null || eVar.i()) {
                j();
            }
            this.v = this.i.getMapConfig().getMapPerPixelUnitLength();
            int dottedLineTextureID = this.i.getDottedLineTextureID(this.u);
            if (dottedLineTextureID == -1) {
                dottedLineTextureID = this.i.getLineTextureID();
            }
            z2.d(this.x, this.f11161e, this.f11160d, this.j, this.c, this.k, this.i.getFinalMatrix(), this.v, dottedLineTextureID, this.i.getLineTextureRatio(), this.w || (this.u != -1), true);
        }
        m();
        this.l = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return equals(iOverlay) || iOverlay.getId().equals(getId());
    }

    public void f(boolean z2) {
        this.w = z2;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public LatLng getCenter() throws RemoteException {
        return this.f11159a;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public int getDottedLineType() {
        return this.u;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public int getFillColor() throws RemoteException {
        return this.f11161e;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public List<BaseHoleOptions> getHoleOptions() throws RemoteException {
        return this.o;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() throws RemoteException {
        if (this.f11164h == null) {
            this.f11164h = this.i.createId("Circle");
        }
        return this.f11164h;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public double getRadius() throws RemoteException {
        return this.b;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public int getStrokeColor() throws RemoteException {
        return this.f11160d;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public float getStrokeWidth() throws RemoteException {
        return this.c;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() throws RemoteException {
        return this.f11162f;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public int hashCodeRemote() throws RemoteException {
        return 0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isAboveMaskLayer() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean isDrawFinish() {
        return this.l;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isVisible() throws RemoteException {
        return this.f11163g;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
        this.i.removeGLOverlay(getId());
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z2) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public void setCenter(LatLng latLng) throws RemoteException {
        synchronized (y) {
            if (latLng != null) {
                this.f11159a = latLng;
                GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, this.m);
                c();
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public void setDottedLineType(int i) {
        this.u = i;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public void setFillColor(int i) throws RemoteException {
        this.f11161e = i;
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public void setHoleOptions(List<BaseHoleOptions> list) {
        try {
            this.p = list;
            List<BaseHoleOptions> list2 = this.o;
            if (list2 == null) {
                this.o = new ArrayList();
            } else {
                list2.clear();
            }
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    BaseHoleOptions baseHoleOptions = list.get(i);
                    if (baseHoleOptions instanceof PolygonHoleOptions) {
                        PolygonHoleOptions polygonHoleOptions = (PolygonHoleOptions) baseHoleOptions;
                        if (g(polygonHoleOptions) && !r3.U(this.o, polygonHoleOptions)) {
                            this.o.add(polygonHoleOptions);
                        }
                    } else if (baseHoleOptions instanceof CircleHoleOptions) {
                        CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
                        if (k(circleHoleOptions) && !r3.T(this.o, circleHoleOptions)) {
                            this.o.add(circleHoleOptions);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            e6.r(th, "PolygonDelegateImp", "setHoleOptions");
            th.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public void setRadius(double d2) throws RemoteException {
        this.b = d2;
        c();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public void setStrokeColor(int i) throws RemoteException {
        this.f11160d = i;
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.ICircle
    public void setStrokeWidth(float f2) throws RemoteException {
        this.c = f2;
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z2) throws RemoteException {
        this.f11163g = z2;
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) throws RemoteException {
        this.f11162f = f2;
        this.i.changeGLOverlayIndex();
        this.i.setRunLowFrame(false);
    }
}
