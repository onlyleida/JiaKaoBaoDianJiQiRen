package com.amap.api.mapcore.util;

import android.os.RemoteException;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.HeatMapItem;
import com.amap.api.maps.model.HeatMapLayerOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.WeightedLatLng;
import com.autonavi.amap.mapcore.interfaces.IHeatMapLayer;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate;
import com.autonavi.base.amap.mapcore.AMapNativeHeatMapLayer;
import com.autonavi.base.amap.mapcore.MapConfig;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public class v1 implements IHeatMapLayer, IOverlayDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r f11256a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11257d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f11259f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private h2 f11260g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HeatMapLayerOptions f11261h;
    private boolean i;
    long b = -1;
    private boolean c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f11258e = BitmapDescriptorFactory.HUE_RED;

    public v1(r rVar) {
        this.i = false;
        try {
            this.i = false;
            this.f11256a = rVar;
            this.f11257d = getId();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean b() {
        HeatMapLayerOptions heatMapLayerOptions = this.f11261h;
        return (heatMapLayerOptions == null || heatMapLayerOptions.getData() == null || this.f11261h.getData().size() <= 0 || this.f11261h.getGradient() == null || this.f11261h.getGradient().getColors() == null || this.f11261h.getGradient().getColors().length <= 0 || this.f11261h.getGradient().getStartPoints() == null || this.f11261h.getGradient().getStartPoints().length <= 0) ? false : true;
    }

    public void a(h2 h2Var) {
        this.f11260g = h2Var;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        synchronized (this) {
            this.i = true;
            long j = this.b;
            if (j != -1) {
                AMapNativeHeatMapLayer.nativeDestroy(j);
                this.b = -1L;
            }
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        h2 h2Var;
        LatLng latLng;
        try {
            if (this.i) {
                return;
            }
            r rVar = this.f11256a;
            if (rVar != null && this.f11260g == null) {
                this.f11260g = rVar.t();
            }
            if (this.f11260g == null || mapConfig == null || !this.c) {
                return;
            }
            if (this.b == -1) {
                long jNativeCreate = AMapNativeHeatMapLayer.nativeCreate();
                this.b = jNativeCreate;
                if (jNativeCreate == -1 || (h2Var = this.f11260g) == null) {
                    return;
                }
                AMapNativeHeatMapLayer.nativeSetGLShaderManager(jNativeCreate, h2Var.a());
                return;
            }
            synchronized (this) {
                if (this.b != -1) {
                    if (this.f11259f && b()) {
                        double[] dArr = new double[this.f11261h.getData().size() * 3];
                        Collection<WeightedLatLng> data = this.f11261h.getData();
                        int size = data.size();
                        double d2 = 0.0d;
                        int i = 0;
                        for (WeightedLatLng weightedLatLng : data) {
                            if (weightedLatLng == null || (latLng = weightedLatLng.latLng) == null) {
                                Log.e("mapcore", "read file failed");
                            } else {
                                int i2 = i * 3;
                                double d3 = latLng.latitude;
                                dArr[i2 + 0] = d3;
                                dArr[i2 + 1] = latLng.longitude;
                                dArr[i2 + 2] = weightedLatLng.intensity;
                                d2 += d3 / ((double) size);
                            }
                            i++;
                        }
                        AMapNativeHeatMapLayer.nativeSetOptions(this.b, dArr, (int) this.f11261h.getMaxIntensity(), this.f11261h.getSize(), this.f11261h.getGradient().getColors(), this.f11261h.getGradient().getStartPoints(), this.f11261h.getMaxZoom(), this.f11261h.getMinZoom(), this.f11261h.getOpacity(), this.f11261h.getGap(), this.f11261h.getType(), d2);
                        this.f11259f = false;
                    }
                    AMapNativeHeatMapLayer.nativeRender(this.b, mapConfig.getViewMatrix(), mapConfig.getProjectionMatrix(), (int) mapConfig.getSX(), (int) mapConfig.getSY(), mapConfig.getSZ());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IHeatMapLayer
    public HeatMapItem getHeatMapItem(LatLng latLng) {
        Object objNativeGetHeatMapItem;
        if (latLng == null) {
            return null;
        }
        long j = this.b;
        if (j == -1 || (objNativeGetHeatMapItem = AMapNativeHeatMapLayer.nativeGetHeatMapItem(j, latLng.latitude, latLng.longitude)) == null || !(objNativeGetHeatMapItem instanceof HeatMapItem)) {
            return null;
        }
        return (HeatMapItem) objNativeGetHeatMapItem;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() {
        if (this.f11257d == null) {
            this.f11257d = this.f11256a.l("HeatMapLayer");
        }
        return this.f11257d;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IHeatMapLayer
    public HeatMapLayerOptions getOptions() {
        return this.f11261h;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() {
        return this.f11258e;
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
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isVisible() {
        return this.c;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
        r rVar = this.f11256a;
        if (rVar == null || rVar.s(this.f11257d, true)) {
            return;
        }
        destroy();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IHeatMapLayer
    public void setOptions(HeatMapLayerOptions heatMapLayerOptions) {
        this.f11261h = heatMapLayerOptions;
        if (heatMapLayerOptions != null) {
            this.f11258e = heatMapLayerOptions.getZIndex();
            this.c = this.f11261h.isVisible();
        }
        this.f11259f = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) {
        this.c = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) {
        try {
            this.f11258e = f2;
            this.f11256a.y();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
