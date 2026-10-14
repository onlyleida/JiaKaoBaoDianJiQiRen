package com.amap.api.maps.model;

import android.text.TextUtils;
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

    public Polyline(IGlOverlayLayer r2, PolylineOptions r3) {
        this.glOverlayLayerRef = new WeakReference(r2);
        this.options = r3;
    }

    private void a() {
        monitor-enter(this);     // Catch: Throwable -> L15
        IGlOverlayLayer r0 = this.glOverlayLayerRef.get();     // Catch: Throwable -> L11
        if (TextUtils.isEmpty(this.overlayName) == true) goto L9;
        if (r0 == null) goto L9;
        setOptionPointList(this.options);     // Catch: Throwable -> L11
        if (r0 == null) goto L9;
        r0.updateOption(this.overlayName, this.options);     // Catch: Throwable -> L11
    L9:
        monitor-exit(this);     // Catch: Throwable -> L11
        goto L20
    L14:
        return;
    L11:
        th = move-exception;
        throw th;     // Catch: Throwable -> L15
    }

    public boolean equals(Object r3) {
        if ((r3 instanceof Polyline) == true) goto L18;
        return false;
    L18:
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L15
        if (r0 == null) goto L10;
        return r0.equalsRemote(((Polyline) r3).polylineDelegate);
    L10:
        if (super.equals(r3) == false) goto L12;
    L13:
        return true;
    L12:
        if (((Polyline) r3).getId() == getId()) goto L13;
        return false;
    L15:
        th = move-exception;
        th.printStackTrace();
        return false;
    }

    public int getColor() {
        IPolyline r1 = this.polylineDelegate;     // Catch: Throwable -> L11
        if (r1 != null) goto L6;
        PolylineOptions r2 = this.options;     // Catch: Throwable -> L11
        if (r2 != null) goto L10;
        return 0;
    L10:
        return r2.getColor();
    L6:
        return r1.getColor();
    L11:
        th = move-exception;
        th.printStackTrace();
        return 0;
    }

    public String getId() {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L8
        if (r0 == null) goto L7;
        return r0.getId();
    L7:
        return this.overlayName;
    L8:
        th = move-exception;
        th.printStackTrace();
        return null;
    }

    public LatLng getNearestLatLng(LatLng r3) {
        IPolyline r0 = this.polylineDelegate;
        if (r0 != null) goto L5;
        IGlOverlayLayer r1 = this.glOverlayLayerRef.get();
        if (r1 != null) goto L9;
        return null;
    L9:
        return r1.getNearestLatLng(this.options, r3);
    L5:
        return r0.getNearestLatLng(r3);
    }

    public PolylineOptions getOptions() {
        IPolyline r0 = this.polylineDelegate;
        if (r0 == null) goto L7;
        return r0.getOptions();
    L7:
        return this.options;
    }

    public List<LatLng> getPoints() {
        IPolyline r1 = this.polylineDelegate;     // Catch: Throwable -> L11
        if (r1 != null) goto L6;
        PolylineOptions r2 = this.options;     // Catch: Throwable -> L11
        if (r2 != null) goto L10;
        return null;
    L10:
        return r2.getPoints();
    L6:
        return r1.getPoints();
    L11:
        th = move-exception;
        th.printStackTrace();
        return null;
    }

    public float getShownRatio() {
        IPolyline r1 = this.polylineDelegate;     // Catch: Throwable -> L11
        if (r1 != null) goto L6;
        PolylineOptions r2 = this.options;     // Catch: Throwable -> L11
        if (r2 != null) goto L10;
        return -1.0f;
    L10:
        return r2.getShownRatio();
    L6:
        return r1.getShownRatio();
    L11:
        th = move-exception;
        th.printStackTrace();
        return -1.0f;
    }

    public float getWidth() {
        IPolyline r1 = this.polylineDelegate;     // Catch: Throwable -> L11
        if (r1 != null) goto L6;
        PolylineOptions r2 = this.options;     // Catch: Throwable -> L11
        if (r2 != null) goto L10;
        return BitmapDescriptorFactory.HUE_RED;
    L10:
        return r2.getWidth();
    L6:
        return r1.getWidth();
    L11:
        th = move-exception;
        th.printStackTrace();
        return BitmapDescriptorFactory.HUE_RED;
    }

    public float getZIndex() {
        IPolyline r1 = this.polylineDelegate;     // Catch: Throwable -> L11
        if (r1 != null) goto L6;
        PolylineOptions r2 = this.options;     // Catch: Throwable -> L11
        if (r2 != null) goto L10;
        return BitmapDescriptorFactory.HUE_RED;
    L10:
        return r2.getZIndex();
    L6:
        return r1.getZIndex();
    L11:
        th = move-exception;
        th.printStackTrace();
        return BitmapDescriptorFactory.HUE_RED;
    }

    public int hashCode() {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L8
        if (r0 == null) goto L7;
        return r0.hashCodeRemote();
    L7:
        return super.hashCode();
    L8:
        th = move-exception;
        th.printStackTrace();
        return 0;
    }

    public boolean isDottedLine() {
        IPolyline r0 = this.polylineDelegate;
        if (r0 != null) goto L5;
        PolylineOptions r1 = this.options;
        if (r1 != null) goto L11;
        return false;
    L11:
        return r1.isDottedLine();
    L5:
        return r0.isDottedLine();
    }

    public boolean isGeodesic() {
        if (this.polylineDelegate.isGeodesic() == false) goto L5;
        return true;
    L5:
        PolylineOptions r0 = this.options;
        if (r0 != null) goto L8;
    L10:
        return false;
    L8:
        if (r0.isGeodesic() == false) goto L10;
        return true;
    }

    public boolean isVisible() {
        IPolyline r1 = this.polylineDelegate;     // Catch: Throwable -> L11
        if (r1 != null) goto L6;
        PolylineOptions r2 = this.options;     // Catch: Throwable -> L11
        if (r2 != null) goto L10;
        return false;
    L10:
        return r2.isVisible();
    L6:
        return r1.isVisible();
    L11:
        th = move-exception;
        th.printStackTrace();
        return false;
    }

    public void remove() {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L20
        if (r0 == null) goto L5;
        r0.remove();     // Catch: Throwable -> L20
        return;
    L5:
        IGlOverlayLayer r1 = this.glOverlayLayerRef.get();     // Catch: Throwable -> L20
        if (r1 == null) goto L8;
        r1.removeOverlay(this.overlayName);     // Catch: Throwable -> L20
    L8:
        BitmapDescriptor r2 = this.options.getCustomTexture();     // Catch: Throwable -> L20
        if (r2 == null) goto L12;
        r2.recycle();     // Catch: Throwable -> L20
    L12:
        if (this.options.getCustomTextureList() == null) goto L18;
        Iterator<BitmapDescriptor> r3 = this.options.getCustomTextureList().iterator();     // Catch: Throwable -> L20
    L15:
        if (r3.hasNext() == false) goto L17;
        r3.next().recycle();     // Catch: Throwable -> L20
        goto L15
    L17:
        this.options.getCustomTextureList().clear();     // Catch: Throwable -> L20
    L18:
        this.options = null;     // Catch: Throwable -> L20
        this.overlayName = null;     // Catch: Throwable -> L20
        return;
    L20:
        th = move-exception;
        th.printStackTrace();
    }

    public void setAboveMaskLayer(boolean r2) {
        IPolyline r0 = this.polylineDelegate;
        if (r0 == null) goto L5;
        r0.setAboveMaskLayer(r2);
        return;
    L5:
        PolylineOptions r1 = this.options;
        if (r1 == null) goto L10;
        r1.aboveMaskLayer(r2);
        a();
        return;
    }

    public void setColor(int r2) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L9
        if (r0 == null) goto L5;
        r0.setColor(r2);     // Catch: Throwable -> L9
    L12:
        return;
    L5:
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L9
        if (r1 == null) goto L12;
        r1.color(r2);     // Catch: Throwable -> L9
        a();     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        th.printStackTrace();
    }

    public void setCustemTextureIndex(List<Integer> r2) {
        IPolyline r0 = this.polylineDelegate;
        if (r0 == null) goto L5;
        r0.setCustemTextureIndex(r2);
        return;
    L5:
        monitor-enter(this);
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L11
        if (r1 == null) goto L9;
        r1.setCustomTextureIndex(r2);     // Catch: Throwable -> L11
        a();     // Catch: Throwable -> L11
    L9:
        monitor-exit(this);     // Catch: Throwable -> L11
        return;
    L11:
        th = move-exception;
        throw th;
    }

    public void setCustomTexture(BitmapDescriptor r2) {
        IPolyline r0 = this.polylineDelegate;
        if (r0 == null) goto L5;
        r0.setCustomTexture(r2);
        return;
    L5:
        PolylineOptions r1 = this.options;
        if (r1 == null) goto L10;
        r1.setCustomTexture(r2);
        a();
        return;
    }

    public void setCustomTextureList(List<BitmapDescriptor> r2) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L7
        if (r0 == null) goto L5;
        r0.setCustomTextureList(r2);     // Catch: Throwable -> L7
    L10:
        return;
    L5:
        this.options.setCustomTextureList(r2);     // Catch: Throwable -> L7
        a();     // Catch: Throwable -> L7
    L7:
        th = move-exception;
        th.printStackTrace();
    }

    public void setDottedLine(boolean r2) {
        IPolyline r0 = this.polylineDelegate;
        if (r0 == null) goto L5;
        r0.setDottedLine(r2);
        return;
    L5:
        PolylineOptions r1 = this.options;
        if (r1 == null) goto L10;
        r1.setDottedLine(r2);
        a();
        return;
    }

    public void setGeodesic(boolean r3) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L11
        if (r0 != null) goto L5;
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L11
        if (r1 == null) goto L14;
        r1.geodesic(r3);     // Catch: Throwable -> L11
        a();     // Catch: Throwable -> L11
    L14:
        return;
    L5:
        if (r0.isGeodesic() == r3) goto L14;
        List<LatLng> r2 = getPoints();     // Catch: Throwable -> L11
        this.polylineDelegate.setGeodesic(r3);     // Catch: Throwable -> L11
        setPoints(r2);     // Catch: Throwable -> L11
    L11:
        th = move-exception;
        th.printStackTrace();
    }

    protected void setOptionPointList(Object r9) {
        Class<?> r0 = r9.getClass();     // Catch: Throwable -> L16
        Field r1 = r0.getDeclaredField("isPointsUpdated");     // Catch: Throwable -> L16
        if (r1 != null) goto L5;
        return;
    L5:
        r1.setAccessible(true);     // Catch: Throwable -> L16
        if (r1.getBoolean(r9) == false) goto L22;
        List<LatLng> r2 = ((PolylineOptions) r9).getPoints();     // Catch: Throwable -> L16
        double[] r3 = new double[r2.size() * 2];     // Catch: Throwable -> L16
        int r4 = 0;
    L9:
        if (r4 >= r2.size()) goto L11;
        int r5 = r4 * 2;     // Catch: Throwable -> L16
        r3[r5] = r2.get(r4).latitude;     // Catch: Throwable -> L16
        r3[r5 + 1] = r2.get(r4).longitude;     // Catch: Throwable -> L16
        r4 = r4 + 1;     // Catch: Throwable -> L16
        goto L9
    L11:
        Field r6 = r0.getDeclaredField("pointList");     // Catch: Throwable -> L16
        if (r6 != null) goto L14;
        return;
    L14:
        r6.setAccessible(true);     // Catch: Throwable -> L16
        r6.set(r9, r3);     // Catch: Throwable -> L16
        return;
    L22:
        return;
    L16:
        th = move-exception;
        e6.r(th, "Polyline", "setOptionPointList");
    }

    public void setOptions(PolylineOptions r2) {
        IPolyline r0 = this.polylineDelegate;
        if (r0 == null) goto L5;
        r0.setOptions(r2);
        return;
    L5:
        this.options = r2;
        a();
    }

    public void setPoints(List<LatLng> r2) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L14
        if (r0 == null) goto L5;
        r0.setPoints(r2);     // Catch: Throwable -> L14
        return;
    L5:
        monitor-enter(this);     // Catch: Throwable -> L14
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L11
        if (r1 == null) goto L9;
        r1.setPoints(r2);     // Catch: Throwable -> L11
        a();     // Catch: Throwable -> L11
    L9:
        monitor-exit(this);     // Catch: Throwable -> L11
    L21:
        return;
    L11:
        th = move-exception;
        throw th;     // Catch: Throwable -> L14
    L14:
        th = move-exception;
        th.printStackTrace();
    }

    public void setShownRange(float r2, float r3) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L9
        if (r0 == null) goto L5;
        r0.setShowRange(r2, r3);     // Catch: Throwable -> L9
    L12:
        return;
    L5:
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L9
        if (r1 == null) goto L12;
        r1.setShownRange(r2, r3);     // Catch: Throwable -> L9
        a();     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        th.printStackTrace();
    }

    public void setShownRatio(float r2) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L9
        if (r0 == null) goto L5;
        r0.setShownRatio(r2);     // Catch: Throwable -> L9
    L12:
        return;
    L5:
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L9
        if (r1 == null) goto L12;
        r1.setShownRatio(r2);     // Catch: Throwable -> L9
        a();     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        th.printStackTrace();
    }

    public void setTransparency(float r2) {
        IPolyline r0 = this.polylineDelegate;
        if (r0 == null) goto L5;
        r0.setTransparency(r2);
        return;
    L5:
        PolylineOptions r1 = this.options;
        if (r1 == null) goto L10;
        r1.transparency(r2);
        a();
        return;
    }

    public void setVisible(boolean r2) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L9
        if (r0 == null) goto L5;
        r0.setVisible(r2);     // Catch: Throwable -> L9
    L12:
        return;
    L5:
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L9
        if (r1 == null) goto L12;
        r1.visible(r2);     // Catch: Throwable -> L9
        a();     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        th.printStackTrace();
    }

    public void setWidth(float r2) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L9
        if (r0 == null) goto L5;
        r0.setWidth(r2);     // Catch: Throwable -> L9
    L12:
        return;
    L5:
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L9
        if (r1 == null) goto L12;
        r1.width(r2);     // Catch: Throwable -> L9
        a();     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        th.printStackTrace();
    }

    public void setZIndex(float r2) {
        IPolyline r0 = this.polylineDelegate;     // Catch: Throwable -> L9
        if (r0 == null) goto L5;
        r0.setZIndex(r2);     // Catch: Throwable -> L9
    L12:
        return;
    L5:
        PolylineOptions r1 = this.options;     // Catch: Throwable -> L9
        if (r1 == null) goto L12;
        r1.zIndex(r2);     // Catch: Throwable -> L9
        a();     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        th.printStackTrace();
    }

    public Polyline(IGlOverlayLayer r2, PolylineOptions r3, String r4) {
        this.glOverlayLayerRef = new WeakReference(r2);
        this.options = r3;
        this.overlayName = r4;
    }

    public Polyline(IPolyline r1) {
        this.polylineDelegate = r1;
    }
}
