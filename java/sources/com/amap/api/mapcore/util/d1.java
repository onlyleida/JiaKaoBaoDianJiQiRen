package com.amap.api.mapcore.util;

import com.google.common.net.HttpHeaders;
import java.util.Hashtable;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class d1 extends r2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f10631d;

    public d1(String str) {
        this.f10631d = str;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getIPV6URL() {
        return getURL();
    }

    @Override // com.amap.api.mapcore.util.r2, com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        return null;
    }

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getRequestHead() {
        Hashtable hashtable = new Hashtable(32);
        hashtable.put(HttpHeaders.USER_AGENT, "MAC=channel:amapapi");
        return hashtable;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getURL() {
        return this.f10631d;
    }

    @Override // com.amap.api.mapcore.util.k7
    public boolean isSupportIPV6() {
        return false;
    }
}
