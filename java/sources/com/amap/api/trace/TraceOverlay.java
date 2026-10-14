package com.amap.api.trace;

import com.amap.api.maps.AMap;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class TraceOverlay {
    public static final int TRACE_STATUS_FAILURE = 3;
    public static final int TRACE_STATUS_FINISH = 2;
    public static final int TRACE_STATUS_PREPARE = 4;
    public static final int TRACE_STATUS_PROCESSING = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Polyline f11587a;
    private PolylineOptions b;
    private AMap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<LatLng> f11588d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11590f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11591g;

    public TraceOverlay(AMap aMap, List<LatLng> list) {
        this.f11588d = new ArrayList();
        this.f11589e = 4;
        this.c = aMap;
        a();
        this.f11588d = list;
        this.b.addAll(list);
        this.f11587a = aMap.addPolyline(this.b);
    }

    private PolylineOptions a() {
        if (this.b == null) {
            PolylineOptions polylineOptions = new PolylineOptions();
            this.b = polylineOptions;
            polylineOptions.setCustomTexture(BitmapDescriptorFactory.fromAsset("tracelinetexture.png"));
            this.b.width(40.0f);
        }
        return this.b;
    }

    public void add(List<LatLng> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f11588d.addAll(list);
        a();
        if (this.f11587a == null) {
            this.f11587a = this.c.addPolyline(this.b);
        }
        Polyline polyline = this.f11587a;
        if (polyline != null) {
            polyline.setPoints(this.f11588d);
        }
    }

    public int getDistance() {
        return this.f11590f;
    }

    public int getTraceStatus() {
        return this.f11589e;
    }

    public int getWaitTime() {
        return this.f11591g;
    }

    public void remove() {
        Polyline polyline = this.f11587a;
        if (polyline != null) {
            polyline.remove();
        }
    }

    public void setDistance(int i) {
        this.f11590f = i;
    }

    public void setProperCamera(List<LatLng> list) {
        LatLngBounds.Builder builder = LatLngBounds.builder();
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<LatLng> it = list.iterator();
        while (it.hasNext()) {
            builder.include(it.next());
        }
        try {
            this.c.moveCamera(CameraUpdateFactory.newLatLngBounds(builder.build(), 20));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setTraceStatus(int i) {
        this.f11589e = i;
    }

    public void setWaitTime(int i) {
        this.f11591g = i;
    }

    public void zoopToSpan() {
        setProperCamera(this.b.getPoints());
    }

    public TraceOverlay(AMap aMap) {
        this.f11588d = new ArrayList();
        this.f11589e = 4;
        this.c = aMap;
        a();
    }
}
