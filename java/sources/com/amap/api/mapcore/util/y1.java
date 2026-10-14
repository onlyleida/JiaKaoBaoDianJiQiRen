package com.amap.api.mapcore.util;

import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.RemoteException;
import android.util.Log;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.AMapEngineUtils;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.ae.gmap.gloverlay.GLOverlay;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.INavigateArrowDelegate;
import com.autonavi.base.amap.mapcore.AMapNativeRenderer;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.autonavi.base.amap.mapcore.Rectangle;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/* JADX INFO: loaded from: classes5.dex */
public class y1 implements INavigateArrowDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f11359a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f11363g;
    float q;
    float r;
    float s;
    float t;
    boolean v;
    float[] w;
    private float b = 10.0f;
    private int c = ViewCompat.MEASURED_STATE_MASK;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11360d = ViewCompat.MEASURED_STATE_MASK;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f11361e = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f11362f = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<IPoint> f11364h = new Vector();
    int[] i = null;
    int[] j = null;
    private int k = 0;
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private boolean o = false;
    private Object p = new Object();
    Rect u = null;
    int x = 0;
    private String y = null;
    private final int z = Color.argb(0, 0, 0, 0);
    private boolean A = true;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y1.this.f11359a == null || y1.this.f11359a.getGLMapEngine() == null) {
                return;
            }
            if (y1.this.y != null) {
                y1.this.f11359a.getGLMapEngine().removeNativeOverlay(1, y1.this.y);
            }
            y1.this.y = null;
        }
    }

    public y1(IAMapDelegate iAMapDelegate) {
        this.v = false;
        this.f11359a = iAMapDelegate;
        try {
            this.f11363g = getId();
        } catch (RemoteException e2) {
            e6.r(e2, "NavigateArrowDelegateImp", "create");
            e2.printStackTrace();
        }
        this.v = false;
    }

    private List<LatLng> c() throws RemoteException {
        ArrayList arrayList;
        if (this.f11364h == null) {
            return null;
        }
        synchronized (this.p) {
            arrayList = new ArrayList();
            for (IPoint iPoint : this.f11364h) {
                if (iPoint != null) {
                    DPoint dPointObtain = DPoint.obtain();
                    this.f11359a.geo2Latlng(((Point) iPoint).x, ((Point) iPoint).y, dPointObtain);
                    arrayList.add(new LatLng(dPointObtain.y, dPointObtain.x));
                    dPointObtain.recycle();
                }
            }
        }
        return arrayList;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        Rectangle geoRectangle;
        return (this.u == null || (geoRectangle = this.f11359a.getMapConfig().getGeoRectangle()) == null || !geoRectangle.isOverlap(this.u)) ? false : true;
    }

    void d(List<LatLng> list) throws RemoteException {
        synchronized (this.p) {
            this.f11364h.clear();
            if (this.u == null) {
                this.u = new Rect();
            }
            r3.H(this.u);
            if (list != null) {
                Object obj = null;
                for (LatLng latLng : list) {
                    if (latLng != null && !latLng.equals(obj)) {
                        IPoint iPointObtain = IPoint.obtain();
                        this.f11359a.latlon2Geo(latLng.latitude, latLng.longitude, iPointObtain);
                        this.f11364h.add(iPointObtain);
                        r3.h0(this.u, ((Point) iPointObtain).x, ((Point) iPointObtain).y);
                        obj = latLng;
                    }
                }
            }
            this.k = 0;
            this.u.sort();
            int size = this.f11364h.size();
            this.i = new int[size];
            this.j = new int[size];
            int i = 0;
            for (IPoint iPoint : this.f11364h) {
                this.i[i] = ((Point) iPoint).x;
                this.j[i] = ((Point) iPoint).y;
                i++;
            }
        }
        this.f11359a.setRunLowFrame(false);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        try {
            remove();
            if (this.w != null) {
                this.w = null;
            }
        } catch (Throwable th) {
            e6.r(th, "NavigateArrowDelegateImp", "destroy");
            th.printStackTrace();
            Log.d("destroy erro", "NavigateArrowDelegateImp destroy");
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        List<IPoint> list;
        if (this.v || (list = this.f11364h) == null || list.size() == 0 || this.b <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (this.m) {
            IAMapDelegate iAMapDelegate = this.f11359a;
            if (iAMapDelegate != null && iAMapDelegate.getGLMapEngine() != null) {
                if (this.y == null) {
                    this.y = this.f11359a.getGLMapEngine().addNativeOverlay(1, GLOverlay.EAMapOverlayTpye.AMAPOVERLAY_ARROW.ordinal(), hashCode());
                }
                if (this.y != null && this.A) {
                    this.f11359a.getGLMapEngine().updateNativeArrowOverlay(1, this.y, this.i, this.j, this.c, this.f11360d, this.z, this.b, 111, 222, AMapEngineUtils.ARROW_LINE_SHADOW_TEXTURE_ID, this.f11362f);
                    this.n = true;
                    this.o = this.f11362f;
                    this.A = false;
                }
            }
        } else {
            if (this.y != null && this.n) {
                this.f11359a.getGLMapEngine().updateNativeArrowOverlay(1, this.y, this.i, this.j, this.c, this.f11360d, this.z, this.b, 111, 222, AMapEngineUtils.ARROW_LINE_SHADOW_TEXTURE_ID, false);
                this.A = false;
            }
            e(this.f11359a.getMapConfig());
            if (this.w != null && this.k > 0) {
                AMapNativeRenderer.nativeDrawLineByTextureID(this.w, this.x, this.f11359a.getMapProjection().getMapLenWithWin((int) this.b), this.f11359a.getLineTextureID(), this.f11359a.getLineTextureRatio(), this.r, this.s, this.t, this.q, BitmapDescriptorFactory.HUE_RED, false, true, true, this.f11359a.getFinalMatrix(), 2, 0);
                this.n = false;
                this.o = false;
            }
        }
        this.l = true;
    }

    public boolean e(MapConfig mapConfig) throws RemoteException {
        synchronized (this.p) {
            int sx = (int) mapConfig.getSX();
            int sy = (int) mapConfig.getSY();
            int i = 0;
            this.l = false;
            int size = this.f11364h.size();
            float[] fArr = this.w;
            if (fArr == null || fArr.length < size * 3) {
                this.w = new float[size * 3];
            }
            this.x = size * 3;
            for (IPoint iPoint : this.f11364h) {
                float[] fArr2 = this.w;
                int i2 = i * 3;
                fArr2[i2] = ((Point) iPoint).x - sx;
                fArr2[i2 + 1] = ((Point) iPoint).y - sy;
                fArr2[i2 + 2] = 0.0f;
                i++;
            }
            this.k = this.f11364h.size();
        }
        return true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return equals(iOverlay) || iOverlay.getId().equals(getId());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() throws RemoteException {
        if (this.f11363g == null) {
            this.f11363g = this.f11359a.createId("NavigateArrow");
        }
        return this.f11363g;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public List<LatLng> getPoints() throws RemoteException {
        return c();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public int getSideColor() throws RemoteException {
        return this.f11360d;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public int getTopColor() throws RemoteException {
        return this.c;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public float getWidth() throws RemoteException {
        return this.b;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() throws RemoteException {
        return this.f11361e;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public int hashCodeRemote() throws RemoteException {
        return super.hashCode();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public boolean is3DModel() {
        return this.m;
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
        if (this.m) {
            return this.f11362f || this.o;
        }
        return this.f11362f;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
        if (this.v) {
            return;
        }
        IAMapDelegate iAMapDelegate = this.f11359a;
        if (iAMapDelegate != null && iAMapDelegate.getGLMapEngine() != null && this.y != null) {
            this.f11359a.queueEvent(new a());
        }
        this.f11359a.removeGLOverlay(getId());
        this.f11359a.setRunLowFrame(false);
        this.v = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public void set3DModel(boolean z) {
        this.m = z;
        this.o = this.f11362f;
        this.A = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public void setPoints(List<LatLng> list) throws RemoteException {
        d(list);
        this.A = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public void setSideColor(int i) throws RemoteException {
        this.f11360d = i;
        this.f11359a.setRunLowFrame(false);
        this.A = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public void setTopColor(int i) throws RemoteException {
        this.c = i;
        this.q = Color.alpha(i) / 255.0f;
        this.r = Color.red(i) / 255.0f;
        this.s = Color.green(i) / 255.0f;
        this.t = Color.blue(i) / 255.0f;
        this.f11359a.setRunLowFrame(false);
        this.A = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) throws RemoteException {
        this.f11362f = z;
        this.f11359a.setRunLowFrame(false);
        this.A = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.INavigateArrow
    public void setWidth(float f2) throws RemoteException {
        this.b = f2;
        this.f11359a.setRunLowFrame(false);
        this.A = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) throws RemoteException {
        this.f11361e = f2;
        this.f11359a.changeGLOverlayIndex();
        this.f11359a.setRunLowFrame(false);
    }
}
