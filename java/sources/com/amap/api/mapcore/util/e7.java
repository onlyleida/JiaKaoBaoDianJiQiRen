package com.amap.api.mapcore.util;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class e7 extends k7 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f10751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, String> f10752e;

    public e7(byte[] bArr, Map<String, String> map) {
        this.f10751d = bArr;
        this.f10752e = map;
    }

    @Override // com.amap.api.mapcore.util.k7
    public byte[] getEntityBytes() {
        return this.f10751d;
    }

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        return this.f10752e;
    }

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getRequestHead() {
        return null;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getURL() {
        return "https://adiu.amap.com/ws/device/adius";
    }
}
