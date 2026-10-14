package com.amap.api.mapcore.util;

import com.amap.api.maps.AMapException;

/* JADX INFO: loaded from: classes5.dex */
public class gb extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f10829a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f10830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10832f;

    public gb(String str) {
        super(str);
        this.f10829a = AMapException.ERROR_UNKNOWN;
        this.b = "";
        this.c = "";
        this.f10830d = "1900";
        this.f10831e = "UnknownError";
        this.f10832f = -1;
        this.f10829a = str;
        a(str);
    }

    public String a() {
        return this.f10829a;
    }

    public String b() {
        return this.f10830d;
    }

    public String c() {
        return this.f10831e;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.c;
    }

    public void a(int i) {
        this.f10832f = i;
    }

    private void a(String str) {
        if (AMapException.ERROR_IO.equals(str)) {
            this.f10832f = 21;
            this.f10830d = "1902";
            this.f10831e = "IOException";
            return;
        }
        if (AMapException.ERROR_SOCKET.equals(str)) {
            this.f10832f = 22;
            return;
        }
        if (AMapException.ERROR_SOCKE_TIME_OUT.equals(str)) {
            this.f10832f = 23;
            this.f10830d = "1802";
            this.f10831e = "SocketTimeoutException";
            return;
        }
        if (AMapException.ERROR_INVALID_PARAMETER.equals(str)) {
            this.f10832f = 24;
            this.f10830d = "1901";
            this.f10831e = "IllegalArgumentException";
            return;
        }
        if (AMapException.ERROR_NULL_PARAMETER.equals(str)) {
            this.f10832f = 25;
            this.f10830d = "1903";
            this.f10831e = "NullPointException";
            return;
        }
        if (AMapException.ERROR_URL.equals(str)) {
            this.f10832f = 26;
            this.f10830d = "1803";
            this.f10831e = "MalformedURLException";
            return;
        }
        if (AMapException.ERROR_UNKNOW_HOST.equals(str)) {
            this.f10832f = 27;
            this.f10830d = "1804";
            this.f10831e = "UnknownHostException";
            return;
        }
        if (AMapException.ERROR_UNKNOW_SERVICE.equals(str)) {
            this.f10832f = 28;
            this.f10830d = "1805";
            this.f10831e = "CannotConnectToHostException";
            return;
        }
        if (AMapException.ERROR_PROTOCOL.equals(str)) {
            this.f10832f = 29;
            this.f10830d = "1801";
            this.f10831e = "ProtocolException";
            return;
        }
        if (AMapException.ERROR_CONNECTION.equals(str)) {
            this.f10832f = 30;
            this.f10830d = "1806";
            this.f10831e = "ConnectionException";
            return;
        }
        if (AMapException.ERROR_UNKNOWN.equals(str)) {
            this.f10832f = 31;
            return;
        }
        if (AMapException.ERROR_FAILURE_AUTH.equals(str)) {
            this.f10832f = 32;
            return;
        }
        if ("requeust is null".equals(str)) {
            this.f10832f = 1;
            return;
        }
        if ("request url is empty".equals(str)) {
            this.f10832f = 2;
            return;
        }
        if ("response is null".equals(str)) {
            this.f10832f = 3;
            return;
        }
        if ("thread pool has exception".equals(str)) {
            this.f10832f = 4;
            return;
        }
        if ("sdk name is invalid".equals(str)) {
            this.f10832f = 5;
            return;
        }
        if ("sdk info is null".equals(str)) {
            this.f10832f = 6;
            return;
        }
        if ("sdk packages is null".equals(str)) {
            this.f10832f = 7;
            return;
        }
        if ("线程池为空".equals(str)) {
            this.f10832f = 8;
        } else if ("获取对象错误".equals(str)) {
            this.f10832f = 101;
        } else {
            this.f10832f = -1;
        }
    }

    public gb(String str, String str2, String str3) {
        this(str);
        this.b = str2;
        this.c = str3;
    }
}
