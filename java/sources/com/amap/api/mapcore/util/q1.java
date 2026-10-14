package com.amap.api.mapcore.util;

import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import android.util.Log;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IArcDelegate;
import com.autonavi.base.amap.mapcore.AMapNativeRenderer;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.MapConfig;

/* JADX INFO: loaded from: classes5.dex */
public class q1 implements IArcDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LatLng f11091a;
    private LatLng b;
    private LatLng c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f11096h;
    private IAMapDelegate i;
    private float[] j;
    float r;
    float s;
    float t;
    float u;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f11092d = 10.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11093e = ViewCompat.MEASURED_STATE_MASK;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f11094f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f11095g = true;
    private int k = 0;
    private boolean l = false;
    private double m = 0.0d;
    private double n = 0.0d;
    private double o = 0.0d;
    private double p = 0.0d;
    private double q = 0.0d;

    public q1(IAMapDelegate iAMapDelegate) {
        this.i = iAMapDelegate;
        try {
            this.f11096h = getId();
        } catch (RemoteException e2) {
            e6.r(e2, "ArcDelegateImp", "create");
            e2.printStackTrace();
        }
    }

    private double a(double d2, double d3, double d4, double d5) {
        double dSignum = (d3 - d5) / this.m;
        if (Math.abs(dSignum) > 1.0d) {
            dSignum = Math.signum(dSignum);
        }
        double dAsin = Math.asin(dSignum);
        if (dAsin >= 0.0d) {
            return d4 < d2 ? 3.141592653589793d - Math.abs(dAsin) : dAsin;
        }
        return d4 < d2 ? 3.141592653589793d - dAsin : dAsin + 6.283185307179586d;
    }

    private FPoint b(GLMapState gLMapState, double d2, double d3, double d4) {
        int iCos = (int) (d3 + (Math.cos(d2) * this.m));
        int i = (int) (d4 + ((-Math.sin(d2)) * this.m));
        FPoint fPointObtain = FPoint.obtain();
        MapConfig mapConfig = this.i.getMapConfig();
        if (mapConfig != null) {
            ((PointF) fPointObtain).x = iCos - ((int) mapConfig.getSX());
            ((PointF) fPointObtain).y = i - ((int) mapConfig.getSY());
        }
        return fPointObtain;
    }

    private boolean c() {
        IPoint iPointObtain = IPoint.obtain();
        IAMapDelegate iAMapDelegate = this.i;
        LatLng latLng = this.f11091a;
        iAMapDelegate.latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain);
        IPoint iPointObtain2 = IPoint.obtain();
        IAMapDelegate iAMapDelegate2 = this.i;
        LatLng latLng2 = this.b;
        iAMapDelegate2.latlon2Geo(latLng2.latitude, latLng2.longitude, iPointObtain2);
        IPoint iPointObtain3 = IPoint.obtain();
        IAMapDelegate iAMapDelegate3 = this.i;
        LatLng latLng3 = this.c;
        iAMapDelegate3.latlon2Geo(latLng3.latitude, latLng3.longitude, iPointObtain3);
        double d2 = ((Point) iPointObtain).x;
        double d3 = ((Point) iPointObtain).y;
        double d4 = ((Point) iPointObtain2).x;
        double d5 = ((Point) iPointObtain2).y;
        double d6 = ((Point) iPointObtain3).x;
        double d7 = ((Point) iPointObtain3).y;
        double d8 = d4 - d2;
        double d9 = d7 - d3;
        double d10 = d6 - d2;
        double d11 = d5 - d3;
        double d12 = ((d8 * 2.0d) * d9) - ((d10 * 2.0d) * d11);
        double d13 = ((d11 * 2.0d) * d10) - ((2.0d * d9) * d8);
        if (d12 == 0.0d || d13 == 0.0d) {
            return false;
        }
        double d14 = d5 * d5;
        double d15 = d3 * d3;
        double d16 = d4 * d4;
        double d17 = d2 * d2;
        double d18 = d7 * d7;
        double d19 = d6 * d6;
        double d20 = ((d9 * (((d14 - d15) + d16) - d17)) + (d11 * (((d15 - d18) + d17) - d19))) / d12;
        this.p = d20;
        this.q = ((d10 * (((d16 - d17) + d14) - d15)) + (d8 * (((d17 - d19) + d15) - d18))) / d13;
        if (Double.isNaN(d20) || Double.isNaN(this.q) || Double.isInfinite(this.p) || Double.isInfinite(this.q)) {
            return false;
        }
        double d21 = this.p;
        double d22 = (d2 - d21) * (d2 - d21);
        double d23 = this.q;
        this.m = Math.sqrt(d22 + ((d3 - d23) * (d3 - d23)));
        this.n = a(this.p, this.q, d2, d3);
        double dA = a(this.p, this.q, d4, d5);
        double dA2 = a(this.p, this.q, d6, d7);
        this.o = dA2;
        double d24 = this.n;
        if (d24 < dA2) {
            if (dA <= d24 || dA >= dA2) {
                this.o = dA2 - 6.283185307179586d;
            }
        } else if (dA <= dA2 || dA >= d24) {
            this.o = dA2 + 6.283185307179586d;
        }
        iPointObtain.recycle();
        iPointObtain2.recycle();
        iPointObtain3.recycle();
        return true;
    }

    private void d() {
        this.j = new float[9];
        FPoint fPointObtain = FPoint.obtain();
        IAMapDelegate iAMapDelegate = this.i;
        LatLng latLng = this.f11091a;
        iAMapDelegate.getLatLng2Map(latLng.latitude, latLng.longitude, fPointObtain);
        FPoint fPointObtain2 = FPoint.obtain();
        IAMapDelegate iAMapDelegate2 = this.i;
        LatLng latLng2 = this.b;
        iAMapDelegate2.getLatLng2Map(latLng2.latitude, latLng2.longitude, fPointObtain2);
        FPoint fPointObtain3 = FPoint.obtain();
        IAMapDelegate iAMapDelegate3 = this.i;
        LatLng latLng3 = this.c;
        iAMapDelegate3.getLatLng2Map(latLng3.latitude, latLng3.longitude, fPointObtain3);
        FPoint[] fPointArr = {fPointObtain, fPointObtain2, fPointObtain3};
        for (int i = 0; i < 3; i++) {
            float[] fArr = this.j;
            int i2 = i * 3;
            fArr[i2] = ((PointF) fPointArr[i]).x;
            fArr[i2 + 1] = ((PointF) fPointArr[i]).y;
            fArr[i2 + 2] = 0.0f;
        }
        this.k = 3;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        int i;
        FPoint[] fPointArr;
        if (this.f11091a == null || this.b == null || this.c == null || !this.f11095g) {
            return false;
        }
        try {
            this.l = false;
            GLMapState mapProjection = this.i.getMapProjection();
            if (!c()) {
                d();
                return true;
            }
            DPoint dPointObtain = DPoint.obtain(this.p, this.q);
            int iAbs = (int) ((Math.abs(this.o - this.n) * 180.0d) / 3.141592653589793d);
            if (iAbs == 0) {
                d();
                return true;
            }
            double d2 = (this.o - this.n) / ((double) iAbs);
            int i2 = iAbs + 1;
            FPoint[] fPointArr2 = new FPoint[i2];
            this.j = new float[i2 * 3];
            int i3 = 0;
            while (i3 <= iAbs) {
                if (i3 == iAbs) {
                    FPoint fPointObtain = FPoint.obtain();
                    IAMapDelegate iAMapDelegate = this.i;
                    LatLng latLng = this.c;
                    iAMapDelegate.getLatLng2Map(latLng.latitude, latLng.longitude, fPointObtain);
                    fPointArr2[i3] = fPointObtain;
                    fPointArr = fPointArr2;
                    i = i3;
                } else {
                    i = i3;
                    fPointArr = fPointArr2;
                    fPointArr[i] = b(mapProjection, (((double) i3) * d2) + this.n, dPointObtain.x, dPointObtain.y);
                }
                fPointArr[i] = b(mapProjection, (((double) i) * d2) + this.n, dPointObtain.x, dPointObtain.y);
                float[] fArr = this.j;
                int i4 = i * 3;
                fArr[i4] = ((PointF) fPointArr[i]).x;
                fArr[i4 + 1] = ((PointF) fPointArr[i]).y;
                fArr[i4 + 2] = 0.0f;
                i3 = i + 1;
                i2 = i2;
                fPointArr2 = fPointArr;
                iAbs = iAbs;
            }
            dPointObtain.recycle();
            this.k = i2;
            return true;
        } catch (Throwable th) {
            e6.r(th, "ArcDelegateImp", "calMapFPoint");
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        try {
            this.f11091a = null;
            this.b = null;
            this.c = null;
        } catch (Throwable th) {
            e6.r(th, "ArcDelegateImp", "destroy");
            th.printStackTrace();
            Log.d("destroy erro", "ArcDelegateImp destroy");
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        if (this.f11091a == null || this.b == null || this.c == null || !this.f11095g) {
            return;
        }
        calMapFPoint();
        if (this.j != null && this.k > 0) {
            float mapLenWithWin = this.i.getMapProjection().getMapLenWithWin((int) this.f11092d);
            this.i.getMapProjection().getMapLenWithWin(1);
            float[] fArr = this.j;
            AMapNativeRenderer.nativeDrawLineByTextureID(fArr, fArr.length, mapLenWithWin, this.i.getLineTextureID(), this.i.getLineTextureRatio(), this.s, this.t, this.u, this.r, BitmapDescriptorFactory.HUE_RED, false, true, false, this.i.getFinalMatrix(), 3, 0);
        }
        this.l = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return equals(iOverlay) || iOverlay.getId().equals(getId());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() throws RemoteException {
        if (this.f11096h == null) {
            this.f11096h = this.i.createId("Arc");
        }
        return this.f11096h;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IArc
    public int getStrokeColor() throws RemoteException {
        return this.f11093e;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IArc
    public float getStrokeWidth() throws RemoteException {
        return this.f11092d;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() throws RemoteException {
        return this.f11094f;
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
        return this.f11095g;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
        this.i.removeGLOverlay(getId());
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IArcDelegate
    public void setEnd(LatLng latLng) {
        this.c = latLng;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IArcDelegate
    public void setPassed(LatLng latLng) {
        this.b = latLng;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IArcDelegate
    public void setStart(LatLng latLng) {
        this.f11091a = latLng;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IArc
    public void setStrokeColor(int i) throws RemoteException {
        this.f11093e = i;
        this.r = Color.alpha(i) / 255.0f;
        this.s = Color.red(i) / 255.0f;
        this.t = Color.green(i) / 255.0f;
        this.u = Color.blue(i) / 255.0f;
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IArc
    public void setStrokeWidth(float f2) throws RemoteException {
        this.f11092d = f2;
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) throws RemoteException {
        this.f11095g = z;
        this.i.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) throws RemoteException {
        this.f11094f = f2;
        this.i.changeGLOverlayIndex();
        this.i.setRunLowFrame(false);
    }
}
