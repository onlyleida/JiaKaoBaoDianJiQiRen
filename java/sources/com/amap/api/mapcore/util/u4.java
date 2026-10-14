package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMapException;
import com.google.common.net.HttpHeaders;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class u4<T, V> extends r2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected T f11233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f11234e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Context f11235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f11236g;

    public u4(Context context, T t) {
        f(context, t);
    }

    private V e(byte[] bArr) throws ft {
        return h(bArr);
    }

    private void f(Context context, T t) {
        this.f11235f = context;
        this.f11233d = t;
        this.f11234e = 1;
        setSoTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
        setConnectionTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
    }

    private V k() throws ft {
        V vE = null;
        int i = 0;
        while (i < this.f11234e) {
            try {
                setProxy(l5.c(this.f11235f));
                vE = e(makeHttpRequest());
                i = this.f11234e;
            } catch (ft e2) {
                i++;
                if (i >= this.f11234e) {
                    throw new ft(e2.a());
                }
            } catch (gb e3) {
                i++;
                if (i >= this.f11234e) {
                    j();
                    if (AMapException.ERROR_CONNECTION.equals(e3.getMessage()) || AMapException.ERROR_SOCKET.equals(e3.getMessage()) || AMapException.ERROR_UNKNOWN.equals(e3.a()) || AMapException.ERROR_UNKNOW_SERVICE.equals(e3.getMessage())) {
                        throw new ft("http或socket连接失败 - ConnectionException");
                    }
                    throw new ft(e3.a());
                }
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                    if (AMapException.ERROR_CONNECTION.equals(e3.getMessage()) || AMapException.ERROR_SOCKET.equals(e3.getMessage()) || AMapException.ERROR_UNKNOW_SERVICE.equals(e3.getMessage())) {
                        throw new ft("http或socket连接失败 - ConnectionException");
                    }
                    throw new ft(e3.a());
                }
            } catch (Throwable unused2) {
                throw new ft("未知错误");
            }
        }
        return vE;
    }

    protected abstract V g(String str) throws ft;

    @Override // com.amap.api.mapcore.util.k7
    public Map<String, String> getRequestHead() {
        m5 m5VarU0 = r3.u0();
        String strE = m5VarU0 != null ? m5VarU0.e() : null;
        Hashtable hashtable = new Hashtable(16);
        hashtable.put(HttpHeaders.USER_AGENT, x9.c);
        hashtable.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
        hashtable.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", strE, "3dmap"));
        hashtable.put("X-INFO", f5.k(this.f11235f));
        hashtable.put("key", c5.j(this.f11235f));
        hashtable.put("logversion", "2.1");
        return hashtable;
    }

    protected V h(byte[] bArr) throws ft {
        String str;
        try {
            str = new String(bArr, "utf-8");
        } catch (Exception e2) {
            e2.printStackTrace();
            str = null;
        }
        if (str == null || "".equals(str)) {
            return null;
        }
        w4.c(str, this.f11236g);
        return g(str);
    }

    public V i() throws ft {
        if (this.f11233d == null) {
            return null;
        }
        try {
            return k();
        } catch (ft e2) {
            r3.J(e2);
            throw e2;
        }
    }

    protected V j() {
        return null;
    }
}
