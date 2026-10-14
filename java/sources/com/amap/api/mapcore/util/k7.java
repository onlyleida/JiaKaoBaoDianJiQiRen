package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.mobile.auth.gatewayauth.Constant;
import java.net.Proxy;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k7 {
    public static final int DEFAULT_RETRY_TIMEOUT = 5000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f10964a = Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT;
    int b = Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT;
    Proxy c = null;

    private String a(String str) {
        Map<String, String> params;
        byte[] entityBytes = getEntityBytes();
        if (entityBytes == null || entityBytes.length == 0 || (params = getParams()) == null) {
            return str;
        }
        String strI = i7.i(params);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("?");
        stringBuffer.append(strI);
        return stringBuffer.toString();
    }

    String b() {
        return a(getURL());
    }

    String c() {
        return a(getIPV6URL());
    }

    byte[] d() {
        byte[] entityBytes = getEntityBytes();
        if (entityBytes != null && entityBytes.length != 0) {
            return entityBytes;
        }
        String strI = i7.i(getParams());
        return !TextUtils.isEmpty(strI) ? n5.o(strI) : entityBytes;
    }

    public int getConntectionTimeout() {
        return this.f10964a;
    }

    public byte[] getEntityBytes() {
        return null;
    }

    protected String getIPDNSName() {
        return "";
    }

    public String getIPV6URL() {
        return getURL();
    }

    public abstract Map<String, String> getParams();

    public abstract Map<String, String> getRequestHead();

    public int getSoTimeout() {
        return this.b;
    }

    public abstract String getURL();

    protected boolean isIPRequest() {
        return !TextUtils.isEmpty(getIPDNSName());
    }

    public boolean isIgnoreGZip() {
        return false;
    }

    public boolean isSupportIPV6() {
        return false;
    }

    public final void setConnectionTimeout(int i) {
        this.f10964a = i;
    }

    public final void setProxy(Proxy proxy) {
        this.c = proxy;
    }

    public final void setSoTimeout(int i) {
        this.b = i;
    }
}
