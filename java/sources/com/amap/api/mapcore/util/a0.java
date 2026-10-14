package com.amap.api.mapcore.util;

import android.graphics.Point;
import com.amap.api.maps.model.MultiPointItem;
import com.autonavi.amap.mapcore.IPoint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w f10428a;
    private final int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<MultiPointItem> f10429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<a0> f10430e;

    protected a0(w wVar) {
        this(wVar, 0);
    }

    private int a(int i) {
        switch (i) {
            case 0:
                return 50;
            case 1:
                return 30;
            case 2:
            case 3:
                return 20;
            case 4:
            case 5:
                return 10;
            case 6:
            default:
                return 5;
        }
    }

    private void c(int i, int i2, MultiPointItem multiPointItem) {
        if (this.f10429d == null) {
            this.f10429d = new ArrayList();
        }
        if (this.f10429d.size() <= this.c || this.b >= 40) {
            this.f10429d.add(multiPointItem);
            return;
        }
        if (this.f10430e == null) {
            g();
        }
        List<a0> list = this.f10430e;
        if (list != null) {
            w wVar = this.f10428a;
            if (i2 < wVar.f11296f) {
                if (i < wVar.f11295e) {
                    list.get(0).c(i, i2, multiPointItem);
                    return;
                } else {
                    list.get(1).c(i, i2, multiPointItem);
                    return;
                }
            }
            if (i < wVar.f11295e) {
                list.get(2).c(i, i2, multiPointItem);
            } else {
                list.get(3).c(i, i2, multiPointItem);
            }
        }
    }

    private void e(w wVar, Collection<MultiPointItem> collection, float f2, double d2) {
        if (this.f10428a.c(wVar)) {
            List<MultiPointItem> list = this.f10429d;
            if (list != null) {
                int size = (int) (list.size() * f2);
                for (int i = 0; i < size; i++) {
                    MultiPointItem multiPointItem = this.f10429d.get(i);
                    if (wVar.d(multiPointItem.getIPoint())) {
                        collection.add(multiPointItem);
                    }
                }
            }
            if (d2 > 0.0d) {
                w wVar2 = this.f10428a;
                double d3 = ((((double) wVar2.f11294d) - ((double) wVar2.b)) * (((double) wVar2.c) - ((double) wVar2.f11293a))) / d2;
                if (d3 < 0.7f) {
                    return;
                } else {
                    f2 = d3 > 1.0d ? 1.0f : (float) ((((4.8188d * d3) * d3) - (d3 * 4.9339d)) + 1.1093d);
                }
            }
            List<a0> list2 = this.f10430e;
            if (list2 != null) {
                Iterator<a0> it = list2.iterator();
                while (it.hasNext()) {
                    it.next().e(wVar, collection, f2, d2);
                }
            }
        }
    }

    private void g() {
        ArrayList arrayList = new ArrayList(4);
        this.f10430e = arrayList;
        w wVar = this.f10428a;
        arrayList.add(new a0(wVar.f11293a, wVar.f11295e, wVar.b, wVar.f11296f, this.b + 1));
        List<a0> list = this.f10430e;
        w wVar2 = this.f10428a;
        list.add(new a0(wVar2.f11295e, wVar2.c, wVar2.b, wVar2.f11296f, this.b + 1));
        List<a0> list2 = this.f10430e;
        w wVar3 = this.f10428a;
        list2.add(new a0(wVar3.f11293a, wVar3.f11295e, wVar3.f11296f, wVar3.f11294d, this.b + 1));
        List<a0> list3 = this.f10430e;
        w wVar4 = this.f10428a;
        list3.add(new a0(wVar4.f11295e, wVar4.c, wVar4.f11296f, wVar4.f11294d, this.b + 1));
    }

    protected void b() {
        this.f10430e = null;
        List<MultiPointItem> list = this.f10429d;
        if (list != null) {
            list.clear();
        }
    }

    protected void d(w wVar, Collection<MultiPointItem> collection, double d2) {
        e(wVar, collection, 1.0f, d2);
    }

    protected void f(MultiPointItem multiPointItem) {
        IPoint iPoint = multiPointItem.getIPoint();
        if (this.f10428a.b(((Point) iPoint).x, ((Point) iPoint).y)) {
            c(((Point) iPoint).x, ((Point) iPoint).y, multiPointItem);
        }
    }

    private a0(int i, int i2, int i3, int i4, int i5) {
        this(new w(i, i2, i3, i4), i5);
    }

    private a0(w wVar, int i) {
        this.c = 30;
        this.f10430e = null;
        this.f10428a = wVar;
        this.b = i;
        this.c = a(i);
    }
}
