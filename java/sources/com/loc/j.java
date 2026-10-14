package com.loc;

import com.amap.api.maps.AMapException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f12958a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f12959d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f12960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12961f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12962g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f12963h;
    private String i;
    private Map<String, List<String>> j;

    /* JADX WARN: Code duplicated, block: B:52:0x012a  */
    /* JADX WARN: Code duplicated, block: B:77:0x0181  */
    /* JADX WARN: Code duplicated, block: B:79:0x0184  */
    /* JADX WARN: Code duplicated, block: B:81:0x018a  */
    /* JADX WARN: Code duplicated, block: B:83:0x018d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0193  */
    /* JADX WARN: Code duplicated, block: B:87:0x0196  */
    /* JADX WARN: Code duplicated, block: B:89:0x019c  */
    /* JADX WARN: Code duplicated, block: B:91:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:93:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:95:0x01ab  */
    public j(String str) {
        int i;
        String str2;
        String str3;
        super(str);
        this.f12958a = AMapException.ERROR_UNKNOWN;
        this.b = "";
        this.c = "";
        this.f12959d = "1900";
        this.f12960e = "UnknownError";
        this.f12961f = -1;
        this.f12962g = -1;
        this.f12963h = false;
        this.f12958a = str;
        if (!AMapException.ERROR_IO.equals(str)) {
            if (AMapException.ERROR_SOCKET.equals(str)) {
                i = 22;
            } else if (AMapException.ERROR_SOCKE_TIME_OUT.equals(str)) {
                this.f12961f = 23;
                this.f12959d = "1802";
                str3 = "SocketTimeoutException";
            } else if (AMapException.ERROR_INVALID_PARAMETER.equals(str)) {
                this.f12961f = 24;
                this.f12959d = "1901";
                str3 = "IllegalArgumentException";
            } else if (AMapException.ERROR_NULL_PARAMETER.equals(str)) {
                this.f12961f = 25;
                this.f12959d = "1903";
                str3 = "NullPointException";
            } else if (AMapException.ERROR_URL.equals(str)) {
                this.f12961f = 26;
                this.f12959d = "1803";
                str3 = "MalformedURLException";
            } else if (AMapException.ERROR_UNKNOW_HOST.equals(str)) {
                this.f12961f = 27;
                this.f12959d = "1804";
                str3 = "UnknownHostException";
            } else {
                if (!AMapException.ERROR_UNKNOW_SERVICE.equals(str)) {
                    if (AMapException.ERROR_PROTOCOL.equals(str)) {
                        this.f12961f = 29;
                        this.f12959d = "1801";
                        str3 = "ProtocolException";
                    } else {
                        if (AMapException.ERROR_CONNECTION.equals(str)) {
                            this.f12961f = 30;
                            str2 = "1806";
                        } else if ("服务QPS超限".equalsIgnoreCase(str)) {
                            this.f12961f = 30;
                            str2 = "2001";
                        } else if (AMapException.ERROR_UNKNOWN.equals(str)) {
                            i = 31;
                        } else if (AMapException.ERROR_FAILURE_AUTH.equals(str)) {
                            i = 32;
                        } else if ("requeust is null".equals(str)) {
                            i = 1;
                        } else if ("request url is empty".equals(str)) {
                            this.f12961f = 2;
                        } else if ("response is null".equals(str)) {
                            this.f12961f = 3;
                        } else if ("thread pool has exception".equals(str)) {
                            i = 4;
                        } else if ("sdk name is invalid".equals(str)) {
                            i = 5;
                        } else if ("sdk info is null".equals(str)) {
                            this.f12961f = 6;
                        } else if ("sdk packages is null".equals(str)) {
                            this.f12961f = 7;
                        } else if ("线程池为空".equals(str)) {
                            i = 8;
                        } else if ("获取对象错误".equals(str)) {
                            i = 101;
                        } else if ("DNS解析失败".equals(str)) {
                            this.f12961f = 3;
                        } else {
                            i = -1;
                        }
                        this.f12959d = str2;
                        this.f12960e = "ConnectionException";
                    }
                    if (AMapException.ERROR_IO.equals(str)) {
                        this.f12962g = 7;
                        return;
                    }
                    if (AMapException.ERROR_SOCKET.equals(str)) {
                        this.f12962g = 6;
                        return;
                    }
                    if (AMapException.ERROR_SOCKE_TIME_OUT.equals(str)) {
                        this.f12962g = 2;
                        return;
                    }
                    if (!AMapException.ERROR_UNKNOW_HOST.equals(str)) {
                        if (AMapException.ERROR_CONNECTION.equals(str)) {
                            this.f12962g = 6;
                            return;
                        } else if (!AMapException.ERROR_UNKNOWN.equals(str) && "DNS解析失败".equals(str)) {
                            this.f12962g = 3;
                            return;
                        }
                    }
                    this.f12962g = 9;
                }
                this.f12961f = 28;
                this.f12959d = "1805";
                str3 = "CannotConnectToHostException";
            }
            this.f12961f = i;
            if (AMapException.ERROR_IO.equals(str)) {
                this.f12962g = 7;
                return;
            }
            if (AMapException.ERROR_SOCKET.equals(str)) {
                this.f12962g = 6;
                return;
            }
            if (AMapException.ERROR_SOCKE_TIME_OUT.equals(str)) {
                this.f12962g = 2;
                return;
            }
            if (!AMapException.ERROR_UNKNOW_HOST.equals(str)) {
                if (AMapException.ERROR_CONNECTION.equals(str)) {
                    this.f12962g = 6;
                    return;
                } else if (!AMapException.ERROR_UNKNOWN.equals(str)) {
                    this.f12962g = 3;
                    return;
                }
            }
            this.f12962g = 9;
        }
        this.f12961f = 21;
        this.f12959d = "1902";
        str3 = "IOException";
        this.f12960e = str3;
        if (AMapException.ERROR_IO.equals(str)) {
            this.f12962g = 7;
            return;
        }
        if (AMapException.ERROR_SOCKET.equals(str)) {
            this.f12962g = 6;
            return;
        }
        if (AMapException.ERROR_SOCKE_TIME_OUT.equals(str)) {
            this.f12962g = 2;
            return;
        }
        if (!AMapException.ERROR_UNKNOW_HOST.equals(str)) {
            if (AMapException.ERROR_CONNECTION.equals(str)) {
                this.f12962g = 6;
                return;
            } else if (!AMapException.ERROR_UNKNOWN.equals(str)) {
                this.f12962g = 3;
                return;
            }
        }
        this.f12962g = 9;
    }

    public j(String str, String str2, String str3) {
        this(str);
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.f12958a;
    }

    public final void a(String str) {
        this.i = str;
    }

    public final void a(Map<String, List<String>> map) {
        this.j = map;
    }

    public final String b() {
        return this.f12959d;
    }

    public final String c() {
        return this.f12960e;
    }

    public final String d() {
        return this.b;
    }

    public final String e() {
        return this.c;
    }

    public final int f() {
        return this.f12961f;
    }

    public final int g() {
        return this.f12962g;
    }

    public final int h() {
        this.f12962g = 10;
        return 10;
    }

    public final boolean i() {
        return this.f12963h;
    }

    public final void j() {
        this.f12963h = true;
    }
}
