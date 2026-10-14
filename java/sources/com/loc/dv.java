package com.loc;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class dv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12736a;
    public long b = 0;
    public long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f12737d = 0.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f12738e = 0.0d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f12739f = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f12740g = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f12741h = BitmapDescriptorFactory.HUE_RED;
    public float i = BitmapDescriptorFactory.HUE_RED;
    public boolean j = false;

    public dv(String str) {
        this.f12736a = str;
    }

    public final double a(dv dvVar) {
        if (dvVar != null) {
            return eg.a(this.f12738e, this.f12737d, dvVar.f12738e, dvVar.f12737d);
        }
        return 0.0d;
    }
}
