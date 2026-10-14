package com.amap.api.mapcore.util;

import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.amap.api.maps.interfaces.IGlOverlayLayer;
import com.amap.api.maps.model.ArcOptions;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.GroundOverlayOptions;
import com.amap.api.maps.model.HeatMapLayerOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.NavigateArrowOptions;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.PolylineOptions;
import com.amap.api.maps.model.particle.ParticleOverlayOptions;
import com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate;
import com.autonavi.amap.api.mapcore.overlays.IParticleLatyer;
import com.autonavi.amap.mapcore.interfaces.IHeatMapLayer;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IArcDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.ICircleDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IGroundOverlayDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.INavigateArrowDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IPolygonDelegate;
import com.autonavi.base.amap.api.mapcore.overlays.IPolylineDelegate;
import com.autonavi.base.amap.mapcore.MapConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/* JADX INFO: loaded from: classes5.dex */
public class r implements IGlOverlayLayer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    IAMapDelegate f11109a;
    private h2 b;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<IOverlayDelegate> f11110d = new Vector(500);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<ha> f11111e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f11112f = new int[1];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f11113g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f11114h;
    a i;

    static class a implements Serializable, Comparator<Object> {
        a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            IOverlayDelegate iOverlayDelegate = (IOverlayDelegate) obj;
            IOverlayDelegate iOverlayDelegate2 = (IOverlayDelegate) obj2;
            if (iOverlayDelegate == null || iOverlayDelegate2 == null) {
                return 0;
            }
            try {
                if (iOverlayDelegate.getZIndex() > iOverlayDelegate2.getZIndex()) {
                    return 1;
                }
                return iOverlayDelegate.getZIndex() < iOverlayDelegate2.getZIndex() ? -1 : 0;
            } catch (Throwable th) {
                e6.r(th, "GlOverlayLayer", "compare");
                th.printStackTrace();
                return 0;
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            try {
                synchronized (r.this) {
                    if (r.this.f11110d != null && r.this.f11110d.size() > 0) {
                        Collections.sort(r.this.f11110d, r.this.i);
                    }
                }
            } catch (Throwable th) {
                e6.r(th, "MapOverlayImageView", "changeOverlayIndex");
            }
        }
    }

    public r(IAMapDelegate iAMapDelegate) {
        new Handler(Looper.getMainLooper());
        this.f11114h = new b();
        this.i = new a();
        this.f11109a = iAMapDelegate;
    }

    private void C() {
        for (IOverlayDelegate iOverlayDelegate : this.f11110d) {
            if (iOverlayDelegate != null && ((iOverlayDelegate instanceof r1) || (iOverlayDelegate instanceof v1))) {
                iOverlayDelegate.destroy();
            }
        }
    }

    private void p(IOverlayDelegate iOverlayDelegate) throws RemoteException {
        this.f11110d.add(iOverlayDelegate);
        y();
    }

    public IAMapDelegate A() {
        return this.f11109a;
    }

    public float[] B() {
        IAMapDelegate iAMapDelegate = this.f11109a;
        return iAMapDelegate != null ? iAMapDelegate.getFinalMatrix() : new float[16];
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public boolean IsCircleContainPoint(CircleOptions circleOptions, LatLng latLng) {
        return false;
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public boolean IsPolygonContainsPoint(PolygonOptions polygonOptions, LatLng latLng) {
        return false;
    }

    public ha a(BitmapDescriptor bitmapDescriptor) {
        IAMapDelegate iAMapDelegate = this.f11109a;
        if (iAMapDelegate != null) {
            return iAMapDelegate.getTextureItem(bitmapDescriptor, true);
        }
        return null;
    }

    public synchronized IBuildingDelegate b() throws RemoteException {
        r1 r1Var;
        r1Var = new r1(this);
        r1Var.a(this.b);
        p(r1Var);
        return r1Var;
    }

    public synchronized IParticleLatyer c(ParticleOverlayOptions particleOverlayOptions) throws RemoteException {
        if (particleOverlayOptions == null) {
            return null;
        }
        z1 z1Var = new z1(this);
        z1Var.d(particleOverlayOptions);
        p(z1Var);
        return z1Var;
    }

    public synchronized IHeatMapLayer d(HeatMapLayerOptions heatMapLayerOptions) throws RemoteException {
        v1 v1Var;
        v1Var = new v1(this);
        v1Var.a(this.b);
        v1Var.setOptions(heatMapLayerOptions);
        p(v1Var);
        return v1Var;
    }

    public synchronized IArcDelegate e(ArcOptions arcOptions) throws RemoteException {
        if (arcOptions == null) {
            return null;
        }
        q1 q1Var = new q1(this.f11109a);
        q1Var.setStrokeColor(arcOptions.getStrokeColor());
        q1Var.setStart(arcOptions.getStart());
        q1Var.setPassed(arcOptions.getPassed());
        q1Var.setEnd(arcOptions.getEnd());
        q1Var.setVisible(arcOptions.isVisible());
        q1Var.setStrokeWidth(arcOptions.getStrokeWidth());
        q1Var.setZIndex(arcOptions.getZIndex());
        p(q1Var);
        return q1Var;
    }

    public synchronized ICircleDelegate f(CircleOptions circleOptions) throws RemoteException {
        if (circleOptions == null) {
            return null;
        }
        s1 s1Var = new s1(this.f11109a);
        s1Var.setFillColor(circleOptions.getFillColor());
        s1Var.setCenter(circleOptions.getCenter());
        s1Var.setVisible(circleOptions.isVisible());
        s1Var.setHoleOptions(circleOptions.getHoleOptions());
        s1Var.setStrokeWidth(circleOptions.getStrokeWidth());
        s1Var.setZIndex(circleOptions.getZIndex());
        s1Var.setStrokeColor(circleOptions.getStrokeColor());
        s1Var.setRadius(circleOptions.getRadius());
        s1Var.setDottedLineType(circleOptions.getStrokeDottedLineType());
        s1Var.f(circleOptions.isUsePolylineStroke());
        p(s1Var);
        return s1Var;
    }

    public synchronized IGroundOverlayDelegate g(GroundOverlayOptions groundOverlayOptions) throws RemoteException {
        if (groundOverlayOptions == null) {
            return null;
        }
        u1 u1Var = new u1(this.f11109a, this);
        u1Var.setAnchor(groundOverlayOptions.getAnchorU(), groundOverlayOptions.getAnchorV());
        u1Var.setDimensions(groundOverlayOptions.getWidth(), groundOverlayOptions.getHeight());
        u1Var.setImage(groundOverlayOptions.getImage());
        u1Var.setPosition(groundOverlayOptions.getLocation());
        u1Var.setPositionFromBounds(groundOverlayOptions.getBounds());
        u1Var.setBearing(groundOverlayOptions.getBearing());
        u1Var.setTransparency(groundOverlayOptions.getTransparency());
        u1Var.setVisible(groundOverlayOptions.isVisible());
        u1Var.setZIndex(groundOverlayOptions.getZIndex());
        p(u1Var);
        return u1Var;
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public int getCurrentParticleNum(String str) {
        return 0;
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public LatLng getNearestLatLng(PolylineOptions polylineOptions, LatLng latLng) {
        return null;
    }

    public synchronized INavigateArrowDelegate h(NavigateArrowOptions navigateArrowOptions) throws RemoteException {
        if (navigateArrowOptions == null) {
            return null;
        }
        y1 y1Var = new y1(this.f11109a);
        y1Var.setTopColor(navigateArrowOptions.getTopColor());
        y1Var.setSideColor(navigateArrowOptions.getSideColor());
        y1Var.setPoints(navigateArrowOptions.getPoints());
        y1Var.setVisible(navigateArrowOptions.isVisible());
        y1Var.setWidth(navigateArrowOptions.getWidth());
        y1Var.setZIndex(navigateArrowOptions.getZIndex());
        y1Var.set3DModel(navigateArrowOptions.is3DModel());
        p(y1Var);
        return y1Var;
    }

    public synchronized IOverlayDelegate i(LatLng latLng) {
        for (IOverlayDelegate iOverlayDelegate : this.f11110d) {
            if (iOverlayDelegate != null && iOverlayDelegate.isDrawFinish() && (iOverlayDelegate instanceof IPolylineDelegate) && ((IPolylineDelegate) iOverlayDelegate).contains(latLng)) {
                return iOverlayDelegate;
            }
        }
        return null;
    }

    public synchronized IPolygonDelegate j(PolygonOptions polygonOptions) throws RemoteException {
        if (polygonOptions == null) {
            return null;
        }
        a2 a2Var = new a2(this.f11109a);
        a2Var.setFillColor(polygonOptions.getFillColor());
        a2Var.setPoints(polygonOptions.getPoints());
        a2Var.setHoleOptions(polygonOptions.getHoleOptions());
        a2Var.setVisible(polygonOptions.isVisible());
        a2Var.setStrokeWidth(polygonOptions.getStrokeWidth());
        a2Var.setStrokeColor(polygonOptions.getStrokeColor());
        a2Var.setZIndex(polygonOptions.getZIndex());
        a2Var.c(polygonOptions.getLineJoinType());
        a2Var.g(polygonOptions.isUsePolylineStroke());
        p(a2Var);
        return a2Var;
    }

    public synchronized IPolylineDelegate k(PolylineOptions polylineOptions) throws RemoteException {
        if (polylineOptions == null) {
            return null;
        }
        b2 b2Var = new b2(this, polylineOptions);
        h2 h2Var = this.b;
        if (h2Var != null) {
            b2Var.i(h2Var);
        }
        p(b2Var);
        return b2Var;
    }

    public synchronized String l(String str) {
        this.c++;
        return str + this.c;
    }

    public void n(h2 h2Var) {
        this.b = h2Var;
    }

    public void o(ha haVar) {
        synchronized (this.f11111e) {
            if (haVar != null) {
                this.f11111e.add(haVar);
            }
        }
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public void prepareIcon(Object obj) {
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public void processCircleHoleOption(CircleOptions circleOptions) {
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public void processPolygonHoleOption(PolygonOptions polygonOptions) {
    }

    public void q(boolean z) {
        IAMapDelegate iAMapDelegate = this.f11109a;
        if (iAMapDelegate != null) {
            iAMapDelegate.setRunLowFrame(z);
        }
    }

    public synchronized void r(boolean z, int i) {
        try {
            z();
            MapConfig mapConfig = this.f11109a.getMapConfig();
            if (mapConfig == null) {
                return;
            }
            if (this.f11113g) {
                this.f11114h.run();
                this.f11113g = false;
            }
            int size = this.f11110d.size();
            for (IOverlayDelegate iOverlayDelegate : this.f11110d) {
                if (iOverlayDelegate.isVisible()) {
                    if (size > 20) {
                        if (iOverlayDelegate.checkInBounds()) {
                            if (z) {
                                if (iOverlayDelegate.getZIndex() <= i) {
                                    iOverlayDelegate.draw(mapConfig);
                                }
                            } else if (iOverlayDelegate.getZIndex() > i) {
                                iOverlayDelegate.draw(mapConfig);
                            }
                        }
                    } else if (z) {
                        if (iOverlayDelegate.getZIndex() <= i) {
                            iOverlayDelegate.draw(mapConfig);
                        }
                    } else if (iOverlayDelegate.getZIndex() > i) {
                        iOverlayDelegate.draw(mapConfig);
                    }
                }
            }
        } catch (Throwable th) {
            e6.r(th, "GlOverlayLayer", "draw");
        }
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public boolean removeOverlay(String str) throws RemoteException {
        return s(str, false);
    }

    public synchronized boolean s(String str, boolean z) throws RemoteException {
        IOverlayDelegate iOverlayDelegateV = v(str);
        if (iOverlayDelegateV == null) {
            return false;
        }
        if (z) {
            iOverlayDelegateV.destroy();
        }
        return this.f11110d.remove(iOverlayDelegateV);
    }

    public h2 t() {
        return this.b;
    }

    public synchronized void u(String str) {
        try {
            C();
            if (str == null || str.trim().length() == 0) {
                this.f11110d.clear();
                w();
            } else {
                IOverlayDelegate iOverlayDelegate = null;
                for (IOverlayDelegate iOverlayDelegate2 : this.f11110d) {
                    if (str.equals(iOverlayDelegate2.getId())) {
                        iOverlayDelegate = iOverlayDelegate2;
                        break;
                    }
                }
                this.f11110d.clear();
                if (iOverlayDelegate != null) {
                    this.f11110d.add(iOverlayDelegate);
                }
            }
        } catch (Throwable th) {
            e6.r(th, "GlOverlayLayer", "clear");
            th.printStackTrace();
        }
    }

    @Override // com.amap.api.maps.interfaces.IGlOverlayLayer
    public void updateOption(String str, Object obj) {
    }

    synchronized IOverlayDelegate v(String str) throws RemoteException {
        for (IOverlayDelegate iOverlayDelegate : this.f11110d) {
            if (iOverlayDelegate != null && iOverlayDelegate.getId().equals(str)) {
                return iOverlayDelegate;
            }
        }
        return null;
    }

    public synchronized void w() {
        this.c = 0;
    }

    public synchronized void x() {
        try {
            Iterator<IOverlayDelegate> it = this.f11110d.iterator();
            while (it.hasNext()) {
                it.next().destroy();
            }
            u(null);
        } catch (Throwable th) {
            e6.r(th, "GlOverlayLayer", "destory");
            th.printStackTrace();
        }
    }

    public synchronized void y() {
        this.f11113g = true;
    }

    public void z() {
        synchronized (this.f11111e) {
            for (int i = 0; i < this.f11111e.size(); i++) {
                ha haVar = this.f11111e.get(i);
                if (haVar != null) {
                    haVar.x();
                    if (haVar.y() <= 0) {
                        this.f11112f[0] = haVar.u();
                        GLES20.glDeleteTextures(1, this.f11112f, 0);
                        haVar.b(0);
                        IAMapDelegate iAMapDelegate = this.f11109a;
                        if (iAMapDelegate != null) {
                            iAMapDelegate.removeTextureItem(haVar.z());
                        }
                    }
                }
            }
            this.f11111e.clear();
        }
    }
}
