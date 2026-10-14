package com.amap.api.mapcore.util;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class k2 extends u4<String, a> {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f10955a;
    }

    public k2(Context context, String str) {
        super(context, str);
        this.f11236g = "/map/styles";
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getIPV6URL() {
        return r3.B(getURL());
    }

    @Override // com.amap.api.mapcore.util.r2, com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        HashMap map = new HashMap(16);
        map.put("key", c5.j(this.f11235f));
        map.put("output", "bin");
        String strA = f5.a();
        String strD = f5.d(this.f11235f, strA, n5.u(map));
        map.put("ts", strA);
        map.put("scode", strD);
        return map;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getURL() {
        return this.f11236g;
    }

    @Override // com.amap.api.mapcore.util.k7
    public boolean isSupportIPV6() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amap.api.mapcore.util.u4
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public a h(byte[] bArr) throws ft {
        a aVar = new a();
        aVar.f10955a = bArr;
        return aVar;
    }

    public void m(String str) {
        this.f11236g = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amap.api.mapcore.util.u4
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public a g(String str) throws ft {
        return null;
    }
}
