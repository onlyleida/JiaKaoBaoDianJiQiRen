package com.amap.api.mapcore.util;

import com.autonavi.base.ae.gmap.style.StyleItem;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class q2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Integer, StyleItem> f11097a = new ConcurrentHashMap();
    private Object b = null;
    private StyleItem[] c;

    public Map<Integer, StyleItem> a() {
        return this.f11097a;
    }

    public StyleItem[] b() {
        Map<Integer, StyleItem> map = this.f11097a;
        if (map != null && map.size() != 0) {
            ArrayList arrayList = new ArrayList();
            for (StyleItem styleItem : this.f11097a.values()) {
                if (styleItem.isValid()) {
                    arrayList.add(styleItem);
                }
            }
            int size = arrayList.size();
            if (size > 0) {
                StyleItem[] styleItemArr = (StyleItem[]) arrayList.toArray(new StyleItem[size]);
                this.c = styleItemArr;
                return styleItemArr;
            }
        }
        return null;
    }

    public StyleItem[] c() {
        return this.c;
    }

    public Object d() {
        return this.b;
    }
}
