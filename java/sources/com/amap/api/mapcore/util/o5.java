package com.amap.api.mapcore.util;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
class o5 extends k7 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f11043e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, String> f11042d = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, String> f11044f = new HashMap();

    o5() {
    }

    void e(String str) {
        this.f11043e = str;
    }

    void f(Map<String, String> map) {
        this.f11042d.clear();
        this.f11042d.putAll(map);
    }

    void g(Map<String, String> map) {
        this.f11044f.clear();
        this.f11044f.putAll(map);
    }

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        return this.f11044f;
    }

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getRequestHead() {
        return this.f11042d;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getURL() {
        return this.f11043e;
    }
}
