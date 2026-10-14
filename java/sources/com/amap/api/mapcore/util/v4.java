package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class v4<T, V> extends u4<T, V> {
    public v4(Context context, T t) {
        super(context, t);
    }

    @Override // com.amap.api.mapcore.util.k7
    public byte[] getEntityBytes() {
        try {
            return l().getBytes("utf-8");
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.amap.api.mapcore.util.r2, com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        return null;
    }

    @Override // com.amap.api.mapcore.util.u4, com.amap.api.mapcore.util.k7
    public Map<String, String> getRequestHead() {
        HashMap map = new HashMap(16);
        map.put(HttpHeaders.CONTENT_TYPE, " application/json");
        map.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
        map.put(HttpHeaders.USER_AGENT, "AMAP SDK Android Trace 7.4.0");
        map.put("x-INFO", f5.k(this.f11235f));
        map.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", "7.4.0", "trace"));
        map.put("logversion", "2.1");
        return map;
    }

    @Override // com.amap.api.mapcore.util.u4
    protected V j() {
        return null;
    }

    protected abstract String l();
}
