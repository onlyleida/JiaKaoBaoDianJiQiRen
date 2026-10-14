package com.amap.api.maps.model;

import com.amap.api.mapcore.util.e6;
import com.amap.api.maps.interfaces.IGlOverlayLayer;
import com.autonavi.amap.mapcore.interfaces.IPolyline;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class Polyline extends BaseOverlay {
    private WeakReference<IGlOverlayLayer> glOverlayLayerRef;
    private PolylineOptions options;
    private IPolyline polylineDelegate;

    public Polyline(IGlOverlayLayer iGlOverlayLayer, PolylineOptions polylineOptions) {
        this.glOverlayLayerRef = new WeakReference<>(iGlOverlayLayer);
        this.options = polylineOptions;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() {
        /*
            r3 = this;
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L26
            java.lang.ref.WeakReference<com.amap.api.maps.interfaces.IGlOverlayLayer> r0 = r3.glOverlayLayerRef     // Catch: java.lang.Throwable -> L23
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L23
            com.amap.api.maps.interfaces.IGlOverlayLayer r0 = (com.amap.api.maps.interfaces.IGlOverlayLayer) r0     // Catch: java.lang.Throwable -> L23
            java.lang.String r1 = r3.overlayName     // Catch: java.lang.Throwable -> L23
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L23
            if (r1 != 0) goto L21
            if (r0 == 0) goto L21
            com.amap.api.maps.model.PolylineOptions r1 = r3.options     // Catch: java.lang.Throwable -> L23
            r3.setOptionPointList(r1)     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L21
            java.lang.String r1 = r3.overlayName     // Catch: java.lang.Throwable -> L23
            com.amap.api.maps.model.PolylineOptions r2 = r3.options     // Catch: java.lang.Throwable -> L23
            r0.updateOption(r1, r2)     // Catch: java.lang.Throwable -> L23
        L21:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L23
            goto L26
        L23:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L23
            throw r0     // Catch: java.lang.Throwable -> L26
        L26:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.maps.model.Polyline.a():void");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Polyline)) {
            return false;
        }
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                return iPolyline.equalsRemote(((Polyline) obj).polylineDelegate);
            }
            return super.equals(obj) || ((Polyline) obj).getId() == getId();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public int getColor() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                return iPolyline.getColor();
            }
            PolylineOptions polylineOptions = this.options;
            if (polylineOptions != null) {
                return polylineOptions.getColor();
            }
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public String getId() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            return iPolyline != null ? iPolyline.getId() : this.overlayName;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public LatLng getNearestLatLng(LatLng latLng) {
        IPolyline iPolyline = this.polylineDelegate;
        if (iPolyline != null) {
            return iPolyline.getNearestLatLng(latLng);
        }
        IGlOverlayLayer iGlOverlayLayer = this.glOverlayLayerRef.get();
        if (iGlOverlayLayer != null) {
            return iGlOverlayLayer.getNearestLatLng(this.options, latLng);
        }
        return null;
    }

    public PolylineOptions getOptions() {
        IPolyline iPolyline = this.polylineDelegate;
        return iPolyline != null ? iPolyline.getOptions() : this.options;
    }

    public List<LatLng> getPoints() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                return iPolyline.getPoints();
            }
            PolylineOptions polylineOptions = this.options;
            if (polylineOptions != null) {
                return polylineOptions.getPoints();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public float getShownRatio() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                return iPolyline.getShownRatio();
            }
            PolylineOptions polylineOptions = this.options;
            if (polylineOptions != null) {
                return polylineOptions.getShownRatio();
            }
            return -1.0f;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1.0f;
        }
    }

    public float getWidth() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                return iPolyline.getWidth();
            }
            PolylineOptions polylineOptions = this.options;
            return polylineOptions != null ? polylineOptions.getWidth() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public float getZIndex() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                return iPolyline.getZIndex();
            }
            PolylineOptions polylineOptions = this.options;
            return polylineOptions != null ? polylineOptions.getZIndex() : BitmapDescriptorFactory.HUE_RED;
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public int hashCode() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            return iPolyline != null ? iPolyline.hashCodeRemote() : super.hashCode();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public boolean isDottedLine() {
        IPolyline iPolyline = this.polylineDelegate;
        if (iPolyline != null) {
            return iPolyline.isDottedLine();
        }
        PolylineOptions polylineOptions = this.options;
        if (polylineOptions != null) {
            return polylineOptions.isDottedLine();
        }
        return false;
    }

    public boolean isGeodesic() {
        if (this.polylineDelegate.isGeodesic()) {
            return true;
        }
        PolylineOptions polylineOptions = this.options;
        return polylineOptions != null && polylineOptions.isGeodesic();
    }

    public boolean isVisible() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                return iPolyline.isVisible();
            }
            PolylineOptions polylineOptions = this.options;
            if (polylineOptions != null) {
                return polylineOptions.isVisible();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public void remove() {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.remove();
                return;
            }
            IGlOverlayLayer iGlOverlayLayer = this.glOverlayLayerRef.get();
            if (iGlOverlayLayer != null) {
                iGlOverlayLayer.removeOverlay(this.overlayName);
            }
            BitmapDescriptor customTexture = this.options.getCustomTexture();
            if (customTexture != null) {
                customTexture.recycle();
            }
            if (this.options.getCustomTextureList() != null) {
                Iterator<BitmapDescriptor> it = this.options.getCustomTextureList().iterator();
                while (it.hasNext()) {
                    it.next().recycle();
                }
                this.options.getCustomTextureList().clear();
            }
            this.options = null;
            this.overlayName = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setAboveMaskLayer(boolean z) {
        IPolyline iPolyline = this.polylineDelegate;
        if (iPolyline != null) {
            iPolyline.setAboveMaskLayer(z);
            return;
        }
        PolylineOptions polylineOptions = this.options;
        if (polylineOptions != null) {
            polylineOptions.aboveMaskLayer(z);
            a();
        }
    }

    public void setColor(int i) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.setColor(i);
            } else {
                PolylineOptions polylineOptions = this.options;
                if (polylineOptions != null) {
                    polylineOptions.color(i);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setCustemTextureIndex(List<Integer> list) {
        IPolyline iPolyline = this.polylineDelegate;
        if (iPolyline != null) {
            iPolyline.setCustemTextureIndex(list);
            return;
        }
        synchronized (this) {
            PolylineOptions polylineOptions = this.options;
            if (polylineOptions != null) {
                polylineOptions.setCustomTextureIndex(list);
                a();
            }
        }
    }

    public void setCustomTexture(BitmapDescriptor bitmapDescriptor) {
        IPolyline iPolyline = this.polylineDelegate;
        if (iPolyline != null) {
            iPolyline.setCustomTexture(bitmapDescriptor);
            return;
        }
        PolylineOptions polylineOptions = this.options;
        if (polylineOptions != null) {
            polylineOptions.setCustomTexture(bitmapDescriptor);
            a();
        }
    }

    public void setCustomTextureList(List<BitmapDescriptor> list) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.setCustomTextureList(list);
            } else {
                this.options.setCustomTextureList(list);
                a();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setDottedLine(boolean z) {
        IPolyline iPolyline = this.polylineDelegate;
        if (iPolyline != null) {
            iPolyline.setDottedLine(z);
            return;
        }
        PolylineOptions polylineOptions = this.options;
        if (polylineOptions != null) {
            polylineOptions.setDottedLine(z);
            a();
        }
    }

    public void setGeodesic(boolean z) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline == null) {
                PolylineOptions polylineOptions = this.options;
                if (polylineOptions != null) {
                    polylineOptions.geodesic(z);
                    a();
                }
            } else if (iPolyline.isGeodesic() != z) {
                List<LatLng> points = getPoints();
                this.polylineDelegate.setGeodesic(z);
                setPoints(points);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    protected void setOptionPointList(Object obj) {
        try {
            Class<?> cls = obj.getClass();
            Field declaredField = cls.getDeclaredField("isPointsUpdated");
            if (declaredField == null) {
                return;
            }
            declaredField.setAccessible(true);
            if (declaredField.getBoolean(obj)) {
                List<LatLng> points = ((PolylineOptions) obj).getPoints();
                double[] dArr = new double[points.size() * 2];
                for (int i = 0; i < points.size(); i++) {
                    int i2 = i * 2;
                    dArr[i2] = points.get(i).latitude;
                    dArr[i2 + 1] = points.get(i).longitude;
                }
                Field declaredField2 = cls.getDeclaredField("pointList");
                if (declaredField2 == null) {
                    return;
                }
                declaredField2.setAccessible(true);
                declaredField2.set(obj, dArr);
            }
        } catch (Throwable th) {
            e6.r(th, "Polyline", "setOptionPointList");
        }
    }

    public void setOptions(PolylineOptions polylineOptions) {
        IPolyline iPolyline = this.polylineDelegate;
        if (iPolyline != null) {
            iPolyline.setOptions(polylineOptions);
        } else {
            this.options = polylineOptions;
            a();
        }
    }

    public void setPoints(List<LatLng> list) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.setPoints(list);
                return;
            }
            synchronized (this) {
                PolylineOptions polylineOptions = this.options;
                if (polylineOptions != null) {
                    polylineOptions.setPoints(list);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setShownRange(float f2, float f3) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.setShowRange(f2, f3);
            } else {
                PolylineOptions polylineOptions = this.options;
                if (polylineOptions != null) {
                    polylineOptions.setShownRange(f2, f3);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setShownRatio(float f2) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.setShownRatio(f2);
            } else {
                PolylineOptions polylineOptions = this.options;
                if (polylineOptions != null) {
                    polylineOptions.setShownRatio(f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setTransparency(float f2) {
        IPolyline iPolyline = this.polylineDelegate;
        if (iPolyline != null) {
            iPolyline.setTransparency(f2);
            return;
        }
        PolylineOptions polylineOptions = this.options;
        if (polylineOptions != null) {
            polylineOptions.transparency(f2);
            a();
        }
    }

    public void setVisible(boolean z) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.setVisible(z);
            } else {
                PolylineOptions polylineOptions = this.options;
                if (polylineOptions != null) {
                    polylineOptions.visible(z);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setWidth(float f2) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.setWidth(f2);
            } else {
                PolylineOptions polylineOptions = this.options;
                if (polylineOptions != null) {
                    polylineOptions.width(f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setZIndex(float f2) {
        try {
            IPolyline iPolyline = this.polylineDelegate;
            if (iPolyline != null) {
                iPolyline.setZIndex(f2);
            } else {
                PolylineOptions polylineOptions = this.options;
                if (polylineOptions != null) {
                    polylineOptions.zIndex(f2);
                    a();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public Polyline(IGlOverlayLayer iGlOverlayLayer, PolylineOptions polylineOptions, String str) {
        this.glOverlayLayerRef = new WeakReference<>(iGlOverlayLayer);
        this.options = polylineOptions;
        this.overlayName = str;
    }

    public Polyline(IPolyline iPolyline) {
        this.polylineDelegate = iPolyline;
    }
}
