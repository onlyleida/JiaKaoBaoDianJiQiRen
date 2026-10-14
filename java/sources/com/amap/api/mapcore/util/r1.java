package com.amap.api.mapcore.util;

import android.os.RemoteException;
import com.amap.api.maps.model.BuildingOverlayOptions;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate;
import com.autonavi.base.amap.mapcore.AMapNativeBuildingRenderer;
import com.autonavi.base.amap.mapcore.MapConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class r1 implements IBuildingDelegate, IOverlayDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r f11117a;
    private BuildingOverlayOptions c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<BuildingOverlayOptions> f11119e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f11121g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f11122h;
    private boolean i;
    private h2 j;
    long b = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<BuildingOverlayOptions> f11118d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f11120f = true;

    public r1(r rVar) {
        try {
            this.f11117a = rVar;
            if (this.c == null) {
                BuildingOverlayOptions buildingOverlayOptions = new BuildingOverlayOptions();
                this.c = buildingOverlayOptions;
                buildingOverlayOptions.setVisible(true);
                ArrayList arrayList = new ArrayList();
                arrayList.add(new LatLng(84.9d, -179.9d));
                arrayList.add(new LatLng(84.9d, 179.9d));
                arrayList.add(new LatLng(-84.9d, 179.9d));
                arrayList.add(new LatLng(-84.9d, -179.9d));
                this.c.setBuildingLatlngs(arrayList);
                this.c.setBuildingTopColor(-65536);
                this.c.setBuildingSideColor(-12303292);
                this.c.setVisible(true);
                this.c.setZIndex(1.0f);
                this.f11118d.add(this.c);
                b(true);
            }
            try {
                this.f11121g = getId();
            } catch (Exception e2) {
                e6.r(e2, "BuildingOverlayDelegateImp", "create");
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    private void b(boolean z) {
        try {
            synchronized (this) {
                try {
                    if (z) {
                        this.f11118d.set(0, this.c);
                    } else {
                        this.f11118d.removeAll(this.f11119e);
                        this.f11118d.set(0, this.c);
                        this.f11118d.addAll(this.f11119e);
                    }
                    this.i = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(h2 h2Var) {
        this.j = h2Var;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return true;
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate, com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        synchronized (this) {
            long j = this.b;
            if (j != -1) {
                AMapNativeBuildingRenderer.nativeDestory(j);
                List<BuildingOverlayOptions> list = this.f11118d;
                if (list != null) {
                    list.clear();
                }
                this.f11119e = null;
                this.c = null;
                this.b = -1L;
            }
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        h2 h2Var;
        if (mapConfig == null) {
            return;
        }
        try {
            if (this.b == -1) {
                long jNativeCreate = AMapNativeBuildingRenderer.nativeCreate();
                this.b = jNativeCreate;
                if (jNativeCreate == -1 || (h2Var = this.j) == null) {
                    return;
                }
                AMapNativeBuildingRenderer.nativeSetGLShaderManager(jNativeCreate, h2Var.a());
                return;
            }
            synchronized (this) {
                long j = this.b;
                if (j != -1) {
                    if (this.i) {
                        AMapNativeBuildingRenderer.nativeClearBuildingOptions(j);
                        for (int i = 0; i < this.f11118d.size(); i++) {
                            AMapNativeBuildingRenderer.addBuildingOptions(this.b, this.f11118d.get(i));
                        }
                        this.i = false;
                    }
                    AMapNativeBuildingRenderer.render(this.b, mapConfig.getViewMatrix(), mapConfig.getProjectionMatrix(), (int) mapConfig.getSX(), (int) mapConfig.getSY(), mapConfig.getSZ(), mapConfig.getCurTileIds());
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

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate
    public List<BuildingOverlayOptions> getCustomOptions() {
        return this.f11119e;
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate
    public BuildingOverlayOptions getDefaultOptions() {
        BuildingOverlayOptions buildingOverlayOptions;
        synchronized (this) {
            buildingOverlayOptions = this.c;
        }
        return buildingOverlayOptions;
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate, com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() {
        if (this.f11121g == null) {
            this.f11121g = this.f11117a.l("Building");
        }
        return this.f11121g;
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate, com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() {
        return this.f11122h;
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

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate, com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isVisible() {
        return this.f11120f;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
        r rVar = this.f11117a;
        if (rVar == null || rVar.s(this.f11121g, true)) {
            return;
        }
        destroy();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate
    public void setCustomOptions(List<BuildingOverlayOptions> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        synchronized (this) {
            this.f11119e = list;
        }
        b(false);
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate
    public void setDefaultOptions(BuildingOverlayOptions buildingOverlayOptions) {
        if (buildingOverlayOptions != null) {
            synchronized (this) {
                this.c = buildingOverlayOptions;
            }
            b(true);
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate, com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) {
        this.f11120f = z;
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IBuildingDelegate, com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) {
        try {
            this.f11122h = f2;
            this.f11117a.y();
            synchronized (this) {
                this.c.setZIndex(this.f11122h);
            }
            b(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
