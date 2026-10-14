package com.amap.api.maps.model;

import com.amap.api.mapcore.util.v2;
import com.autonavi.amap.mapcore.DPoint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v2 f11533a;
    private final int b;
    private List<WeightedLatLng> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<a> f11534d;

    protected a(v2 v2Var) {
        this(v2Var, 0);
    }

    protected void a(WeightedLatLng weightedLatLng) {
        DPoint point = weightedLatLng.getPoint();
        if (this.f11533a.a(point.x, point.y)) {
            a(point.x, point.y, weightedLatLng);
        }
    }

    private a(double d2, double d3, double d4, double d5, int i) {
        this(new v2(d2, d3, d4, d5), i);
    }

    private a(v2 v2Var, int i) {
        this.f11534d = null;
        this.f11533a = v2Var;
        this.b = i;
    }

    private void a(double d2, double d3, WeightedLatLng weightedLatLng) {
        List<a> list = this.f11534d;
        if (list != null) {
            v2 v2Var = this.f11533a;
            if (d3 < v2Var.f11265f) {
                if (d2 < v2Var.f11264e) {
                    list.get(0).a(d2, d3, weightedLatLng);
                    return;
                } else {
                    list.get(1).a(d2, d3, weightedLatLng);
                    return;
                }
            }
            if (d2 < v2Var.f11264e) {
                list.get(2).a(d2, d3, weightedLatLng);
                return;
            } else {
                list.get(3).a(d2, d3, weightedLatLng);
                return;
            }
        }
        if (this.c == null) {
            this.c = new ArrayList();
        }
        this.c.add(weightedLatLng);
        if (this.c.size() <= 50 || this.b >= 40) {
            return;
        }
        a();
    }

    private void a() {
        ArrayList arrayList = new ArrayList(4);
        this.f11534d = arrayList;
        v2 v2Var = this.f11533a;
        arrayList.add(new a(v2Var.f11262a, v2Var.f11264e, v2Var.b, v2Var.f11265f, this.b + 1));
        List<a> list = this.f11534d;
        v2 v2Var2 = this.f11533a;
        list.add(new a(v2Var2.f11264e, v2Var2.c, v2Var2.b, v2Var2.f11265f, this.b + 1));
        List<a> list2 = this.f11534d;
        v2 v2Var3 = this.f11533a;
        list2.add(new a(v2Var3.f11262a, v2Var3.f11264e, v2Var3.f11265f, v2Var3.f11263d, this.b + 1));
        List<a> list3 = this.f11534d;
        v2 v2Var4 = this.f11533a;
        list3.add(new a(v2Var4.f11264e, v2Var4.c, v2Var4.f11265f, v2Var4.f11263d, this.b + 1));
        List<WeightedLatLng> list4 = this.c;
        this.c = null;
        for (WeightedLatLng weightedLatLng : list4) {
            a(weightedLatLng.getPoint().x, weightedLatLng.getPoint().y, weightedLatLng);
        }
    }

    protected Collection<WeightedLatLng> a(v2 v2Var) {
        ArrayList arrayList = new ArrayList();
        a(v2Var, arrayList);
        return arrayList;
    }

    private void a(v2 v2Var, Collection<WeightedLatLng> collection) {
        if (this.f11533a.c(v2Var)) {
            List<a> list = this.f11534d;
            if (list != null) {
                Iterator<a> it = list.iterator();
                while (it.hasNext()) {
                    it.next().a(v2Var, collection);
                }
            } else if (this.c != null) {
                if (v2Var.e(this.f11533a)) {
                    collection.addAll(this.c);
                    return;
                }
                for (WeightedLatLng weightedLatLng : this.c) {
                    if (v2Var.d(weightedLatLng.getPoint())) {
                        collection.add(weightedLatLng);
                    }
                }
            }
        }
    }
}
